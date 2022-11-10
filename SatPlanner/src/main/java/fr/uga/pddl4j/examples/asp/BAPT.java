package fr.uga.pddl4j.examples.asp;


import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.parser.DefaultParsedProblem;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.plan.SequentialPlan;
import fr.uga.pddl4j.planners.AbstractPlanner;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.PlannerConfiguration;
import fr.uga.pddl4j.planners.statespace.search.Node;
import fr.uga.pddl4j.problem.DefaultProblem;
import fr.uga.pddl4j.problem.Fluent;
import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.problem.operator.ConditionalEffect;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.sat4j.core.VecInt;
import org.sat4j.minisat.SolverFactory;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;
import org.sat4j.specs.ISolver;

import org.sat4j.specs.TimeoutException;
import picocli.CommandLine;

import java.util.*;
import java.lang.*;

import static fr.uga.pddl4j.examples.asp.Encoder.unpair;

public class BAPT extends AbstractPlanner {


    /**
     * The class logger.
     */
    private static final Logger LOGGER = LogManager.getLogger(ASP.class.getName());
    /**
     * Instantiates the planning problem from a parsed problem.
     *
     * @param problem the problem to instantiate.
     * @return the instantiated planning problem or null if the problem cannot be instantiated.
     */
    /**
     * The HEURISTIC property used for planner configuration.
     */
    public static final String HEURISTIC_SETTING = "HEURISTIC";

    /**
     * The default value of the HEURISTIC property used for planner configuration.
     */
    public static final StateHeuristic.Name DEFAULT_HEURISTIC = StateHeuristic.Name.FAST_FORWARD;

    /**
     * The WEIGHT_HEURISTIC property used for planner configuration.
     */
    public static final String WEIGHT_HEURISTIC_SETTING = "WEIGHT_HEURISTIC";

    /**
     * The default value of the WEIGHT_HEURISTIC property used for planner configuration.
     */
    public static final double DEFAULT_WEIGHT_HEURISTIC = 1.0;
    /**
     * The weight of the heuristic.
     */
    private double heuristicWeight;

    /**
     * The name of the heuristic used by the planner.
     */
    private StateHeuristic.Name heuristic;

    private List<String> tabActionFluent = new ArrayList<String>();

    private List<Integer> indexActionFluent = new ArrayList<Integer>();



    private  int numeroEncryptage = 0;


    /**
     * Returns the configuration of the planner.
     *
     * @return the configuration of the planner.
     */
    @Override
    public PlannerConfiguration getConfiguration() {
        final PlannerConfiguration config = super.getConfiguration();
        config.setProperty(ASP.HEURISTIC_SETTING, this.getHeuristic().toString());
        config.setProperty(ASP.WEIGHT_HEURISTIC_SETTING, Double.toString(this.getHeuristicWeight()));
        return config;
    }

    /**
     * Sets the configuration of the planner. If a planner setting is not defined in
     * the specified configuration, the setting is initialized with its default value.
     *
     * @param configuration the configuration to set.
     */
    @Override
    public void setConfiguration(final PlannerConfiguration configuration) {
        super.setConfiguration(configuration);
        if (configuration.getProperty(ASP.WEIGHT_HEURISTIC_SETTING) == null) {
            this.setHeuristicWeight(ASP.DEFAULT_WEIGHT_HEURISTIC);
        } else {
            this.setHeuristicWeight(Double.parseDouble(configuration.getProperty(
                    ASP.WEIGHT_HEURISTIC_SETTING)));
        }
        if (configuration.getProperty(ASP.HEURISTIC_SETTING) == null) {
            this.setHeuristic(ASP.DEFAULT_HEURISTIC);
        } else {
            this.setHeuristic(StateHeuristic.Name.valueOf(configuration.getProperty(
                    ASP.HEURISTIC_SETTING)));
        }
    }

    /**
     * This method return the default arguments of the planner.
     *
     * @return the default arguments of the planner.
     * @see PlannerConfiguration
     */
    public static PlannerConfiguration getDefaultConfiguration() {
        PlannerConfiguration config = Planner.getDefaultConfiguration();
        config.setProperty(ASP.HEURISTIC_SETTING, ASP.DEFAULT_HEURISTIC.toString());
        config.setProperty(ASP.WEIGHT_HEURISTIC_SETTING,
                Double.toString(ASP.DEFAULT_WEIGHT_HEURISTIC));
        return config;
    }

    /**
     * Checks the planner configuration and returns if the configuration is valid.
     * A configuration is valid if (1) the domain and the problem files exist and
     * can be read, (2) the timeout is greater than 0, (3) the weight of the
     * heuristic is greater than 0 and (4) the heuristic is a not null.
     *
     * @return <code>true</code> if the configuration is valid <code>false</code> otherwise.
     */
    public boolean hasValidConfiguration() {
        return super.hasValidConfiguration()
                && this.getHeuristicWeight() > 0.0
                && this.getHeuristic() != null;
    }

    /**
     * Creates a new A* search planner with the default configuration.
     */
    public BAPT() {
        this(ASP.getDefaultConfiguration());
    }

    /**
     * Creates a new A* search planner with a specified configuration.
     *
     * @param configuration the configuration of the planner.
     */
    public BAPT(final PlannerConfiguration configuration) {
        super();
        this.setConfiguration(configuration);
    }
    /**
     * Sets the weight of the heuristic.
     *
     * @param weight the weight of the heuristic. The weight must be greater than 0.
     * @throws IllegalArgumentException if the weight is strictly less than 0.
     */
    @CommandLine.Option(names = {"-w", "--weight"}, defaultValue = "1.0",
            paramLabel = "<weight>", description = "Set the weight of the heuristic (preset 1.0).")
    public void setHeuristicWeight(final double weight) {
        if (weight <= 0) {
            throw new IllegalArgumentException("Weight <= 0");
        }
        this.heuristicWeight = weight;
    }

    /**
     * Set the name of heuristic used by the planner to the solve a planning problem.
     *
     * @param heuristic the name of the heuristic.
     */
    @CommandLine.Option(names = {"-e", "--heuristic"}, defaultValue = "FAST_FORWARD",
            description = "Set the heuristic : AJUSTED_SUM, AJUSTED_SUM2, AJUSTED_SUM2M, COMBO, "
                    + "MAX, FAST_FORWARD SET_LEVEL, SUM, SUM_MUTEX (preset: FAST_FORWARD)")
    public void setHeuristic(StateHeuristic.Name heuristic) {
        this.heuristic = heuristic;
    }

    /**
     * Returns the name of the heuristic used by the planner to solve a planning problem.
     *
     * @return the name of the heuristic used by the planner to solve a planning problem.
     */
    public final StateHeuristic.Name getHeuristic() {
        return this.heuristic;
    }

    /**
     * Returns the weight of the heuristic.
     *
     * @return the weight of the heuristic.
     */
    public final double getHeuristicWeight() {
        return this.heuristicWeight;
    }
    @Override
    public Problem instantiate(DefaultParsedProblem problem) {
        final Problem pb = new DefaultProblem(problem);
        pb.instantiate();
        return pb;
    }

    /**
     * Search a solution plan to a specified domain and problem using A*.
     *
     * @param problem the problem to solve.
     * @return the plan found or null if no plan was found.
     */
    public Plan solve(final Problem problem) {

        final Plan plan = new SequentialPlan();
        // We get the initial state from the planning problem
        final State init = new State(problem.getInitialState());
        // We get the goal from the planning problem
        final State goal = new State(problem.getGoal());
        // Nothing to do, goal is already satisfied by the initial state
        if (init.satisfy(problem.getGoal())) {
            return plan;
        }
        // Otherwise, we start the search
        else {

            List<int[]> clauses = null;
            // SAT solver timeout
            final int timeout = 1000;
            // SAT solver max number of var
            int MAXVAR = 50000;
            // SAT solver max number of clauses
            int NBCLAUSES = 100000;



            int max_step = 10000;
            //On a pas eu le temps d optimiser pour avoir une étape initial cohérente avec le probleme donc on commence a 1
            int current_step = 1;
            Encoder encoder = new Encoder(problem, current_step);


            IProblem ip = null;
            boolean solutionFound = false;
            //boucle tant que le sat solver ne trouve pas de solution ou que l'on atteint pas une limite (nb clauses ou temps)
            try {
                while ((current_step <= max_step) && !solutionFound) {
                    try {
                        //Initialize solver
                        ISolver solver = SolverFactory.newDefault();
                        solver.setTimeout(60);
                        solver.newVar(MAXVAR);
                        solver.setExpectedNumberOfClauses(NBCLAUSES);

                        //on genere les clauses a l'etape +1
                        clauses = encoder.next();
                        //ajout des clauses au solver
                        for (int[] clause : clauses) {
                            solver.addClause(new VecInt(clause));
                        }
                        ip = solver;
                        //si c'est solvable on s'arrete
                        if (ip.isSatisfiable()) {
                            solutionFound = true;
                        }
                        //si ce n'est pas solvable a l'etape n on boucle pour tester a n+1
                        current_step++;
                    } catch (ContradictionException e) {
                        current_step++;
                    }
                }
                //si on atteint la borne temporelle on s'arrete
            } catch (TimeoutException e) {
                System.out.println("Timeout! No solution found!");
                System.exit(1);
            }

            int factSize = problem.getFluents().size();
            Action[] actions = new Action[current_step];
            //réalisation du plan a partir de la solution rendu par le SAT solver
            for (int variable : ip.model()) {
                //traduction la variable pour obtenir le bitnum et l'etape
                int[] resDecoded = unpair(variable);
                int bitnum = resDecoded[0];
                int step = resDecoded[1];
                // si le bitnum est plus grand que le nombre de fait alors c'est une action
                if (bitnum > factSize) {
                    //on récupere l'encodage de l'action
                    Action action = problem.getActions().get(bitnum - factSize - 1);
                    //on la sauvegarde dans l'ordre grace a son étape
                    actions[step - 1] = action;
                }
            }
            //on sauvegarde les actions dans le plan
            for (int i = 0; i < current_step - 1; i++) {
                plan.add(0, actions[i + 1]);
            }

            System.out.println(problem.toString(plan));
            return plan;
        }
    }


    public int encryptageAction(Action action){

        if (!tabActionFluent.contains(action.getConditionalEffects().get(0).getEffect().toString()))
        {
            tabActionFluent.add(action.getConditionalEffects().get(0).getEffect().toString());
            indexActionFluent.add(numeroEncryptage);
            numeroEncryptage++;
        }

        return numeroEncryptage;
    }

    public int encryptageFluent(Fluent fluent){

        if (!tabActionFluent.contains(fluent.toString()))
        {
            tabActionFluent.add(fluent.toString());
            indexActionFluent.add(numeroEncryptage);
            numeroEncryptage++;
        }

        return numeroEncryptage;

    }

    /**
     * Search a solution plan for a planning problem using an A* search strategy.
     *
     * @param problem the problem to solve.
     * @return a plan solution for the problem or null if there is no solution
     */
    public Plan astar(Problem problem) {

        // First we create an instance of the heuristic to use to guide the search
        final StateHeuristic heuristic = StateHeuristic.getInstance(this.getHeuristic(), problem);

        // We get the initial state from the planning problem
        final State init = new State(problem.getInitialState());

        // We initialize the closed list of nodes (store the nodes explored)
        final Set<fr.uga.pddl4j.planners.statespace.search.Node> close = new HashSet<>();

        // We initialize the opened list to store the pending node according to function f
        final double weight = this.getHeuristicWeight();
        final PriorityQueue<fr.uga.pddl4j.planners.statespace.search.Node> open = new PriorityQueue<>(100, new Comparator<fr.uga.pddl4j.planners.statespace.search.Node>() {
            public int compare(fr.uga.pddl4j.planners.statespace.search.Node n1, fr.uga.pddl4j.planners.statespace.search.Node n2) {
                double f1 = weight * n1.getHeuristic() + n1.getCost();
                double f2 = weight * n2.getHeuristic() + n2.getCost();
                return Double.compare(f1, f2);
            }
        });

        // We create the root node of the tree search
        final fr.uga.pddl4j.planners.statespace.search.Node root = new fr.uga.pddl4j.planners.statespace.search.Node(init, null, -1, 0, heuristic.estimate(init, problem.getGoal()));

        // We add the root to the list of pending nodes
        open.add(root);
        Plan plan = null;

        // We set the timeout in ms allocated to the search
        final int timeout = this.getTimeout() * 1000;
        long time = 0;

        // We start the search
        while (!open.isEmpty() && plan == null && time < timeout) {

            // We pop the first node in the pending list open
            final fr.uga.pddl4j.planners.statespace.search.Node current = open.poll();
            close.add(current);

            // If the goal is satisfied in the current node then extract the search and return it
            if (current.satisfy(problem.getGoal())) {
                return this.extractPlan(current, problem);
            } else { // Else we try to apply the actions of the problem to the current node
                for (int i = 0; i < problem.getActions().size(); i++) {
                    // We get the actions of the problem
                    Action a = problem.getActions().get(i);
                    // If the action is applicable in the current node
                    if (a.isApplicable(current)) {
                        fr.uga.pddl4j.planners.statespace.search.Node next = new fr.uga.pddl4j.planners.statespace.search.Node(current);
                        // We apply the effect of the action
                        final List<ConditionalEffect> effects = a.getConditionalEffects();
                        for (ConditionalEffect ce : effects) {
                            if (current.satisfy(ce.getCondition())) {
                                next.apply(ce.getEffect());
                            }
                        }
                        // We set the new child node information
                        final double g = current.getCost() + 1;
                        if (!close.contains(next)) {
                            next.setCost(g);
                            next.setParent(current);
                            next.setAction(i);
                            next.setHeuristic(heuristic.estimate(next, problem.getGoal()));
                            open.add(next);
                        }
                    }
                }
            }
        }

        // Finally, we return the search computed or null if no search was found
        return plan;
    }

    /**
     * Extracts a search from a specified node.
     *
     * @param node    the node.
     * @param problem the problem.
     * @return the search extracted from the specified node.
     */
    private Plan extractPlan(final fr.uga.pddl4j.planners.statespace.search.Node node, final Problem problem) {
        Node n = node;
        final Plan plan = new SequentialPlan();
        while (n.getAction() != -1) {
            final Action a = problem.getActions().get(n.getAction());
            plan.add(0, a);
            n = n.getParent();
        }
        return plan;
    }

//    /**
//     * The main method of the <code>ASP</code> planner.
//     *
//     * @param args the arguments of the command line.
//     */
//    public static void main(String[] args) {
//        try {
//            final ASP planner = new ASP();
//            CommandLine cmd = new CommandLine(planner);
//            cmd.execute(args);
//        } catch (IllegalArgumentException e) {
//            LOGGER.fatal(e.getMessage());
//        }
//    }


    public static void main(String[] args) {
        try {
            final BAPT planner = new BAPT();
            CommandLine cmd = new CommandLine(planner);
            cmd.execute(args);
        } catch (IllegalArgumentException e) {
            LOGGER.fatal(e.getMessage());
        }


    }
}


