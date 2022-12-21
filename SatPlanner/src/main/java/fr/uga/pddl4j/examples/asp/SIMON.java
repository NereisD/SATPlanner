package fr.uga.pddl4j.examples.asp;

import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.parser.DefaultParsedProblem;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.plan.SequentialPlan;
import fr.uga.pddl4j.planners.AbstractPlanner;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.PlannerConfiguration;
import fr.uga.pddl4j.problem.DefaultProblem;
import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Action;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import picocli.CommandLine;

import java.util.*;

/**
 * The class is an example. It shows how to create a simple A* search planner able to
 * solve an ADL problem by choosing the heuristic to used and its weight.
 *
 * @author D. Pellier
 * @version 4.0 - 30.11.2021
 */
@CommandLine.Command(name = "SIMON",
    version = "ASP 1.0",
    description = "Solves a specified planning problem using monte carlo",
    sortOptions = false,
    mixinStandardHelpOptions = true,
    headerHeading = "Usage:%n",
    synopsisHeading = "%n",
    descriptionHeading = "%nDescription:%n%n",
    parameterListHeading = "%nParameters:%n",
    optionListHeading = "%nOptions:%n")


public class SIMON extends AbstractPlanner {

    /**
     * The class logger.
     */
    private static final Logger LOGGER = LogManager.getLogger(SIMON.class.getName());
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

    private int MAX_STEPS = 4;


    /**
     * Returns the configuration of the planner.
     *
     * @return the configuration of the planner.
     */
    @Override
    public PlannerConfiguration getConfiguration() {
        final PlannerConfiguration config = super.getConfiguration();
        config.setProperty(SIMON.HEURISTIC_SETTING, this.getHeuristic().toString());
        config.setProperty(SIMON.WEIGHT_HEURISTIC_SETTING, Double.toString(this.getHeuristicWeight()));
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
        if (configuration.getProperty(SIMON.WEIGHT_HEURISTIC_SETTING) == null) {
            this.setHeuristicWeight(SIMON.DEFAULT_WEIGHT_HEURISTIC);
        } else {
            this.setHeuristicWeight(Double.parseDouble(configuration.getProperty(
                    SIMON.WEIGHT_HEURISTIC_SETTING)));
        }
        if (configuration.getProperty(SIMON.HEURISTIC_SETTING) == null) {
            this.setHeuristic(SIMON.DEFAULT_HEURISTIC);
        } else {
            this.setHeuristic(StateHeuristic.Name.valueOf(configuration.getProperty(
                    SIMON.HEURISTIC_SETTING)));
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
        config.setProperty(SIMON.HEURISTIC_SETTING, SIMON.DEFAULT_HEURISTIC.toString());
        config.setProperty(SIMON.WEIGHT_HEURISTIC_SETTING,
                Double.toString(SIMON.DEFAULT_WEIGHT_HEURISTIC));
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
    public SIMON() {
        this(SIMON.getDefaultConfiguration());
    }

    /**
     * Creates a new A* search planner with a specified configuration.
     *
     * @param configuration the configuration of the planner.
     */
    public SIMON(final PlannerConfiguration configuration) {
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
        LOGGER.info("* Starting MoteCarlo search \n");
        // Search a solution
        final long begin = System.currentTimeMillis();
        final Plan plan = this.montecarlo(problem);
        final long end = System.currentTimeMillis();


        if (plan != null) {
            LOGGER.info("* MonteCarlo search succeeded\n");
            this.getStatistics().setTimeToSearch(end - begin);
        } else {
            LOGGER.info("* MonteCarlo search failed\n");
        }
        // Return the plan found or null if the search fails.
        return plan;
    }

    /**
     * Search a solution plan for a planning problem using an MonteCarlo search strategy.
     *
     * @param problem the problem to solve.
     * @return a plan solution for the problem or null if there is no solution
     */
    public Plan montecarlo(Problem problem) {

        // First we create an instance of the heuristic to use to guide the search
        final StateHeuristic heuristic = StateHeuristic.getInstance(this.getHeuristic(), problem);

        // We get the initial state from the planning problem
        final State init = new State(problem.getInitialState());

        // We initialize the closed list of nodes (store the nodes explored)
        final Set<Node> close = new HashSet<>();

        // We initialize the opened list to store the pending node according to function f
        final double weight = this.getHeuristicWeight();
        final PriorityQueue<Node> open = new PriorityQueue<>(100, new Comparator<Node>() {
            public int compare(Node n1, Node n2) {
                double f1 = weight * n1.getHeuristic() + n1.getCost();
                double f2 = weight * n2.getHeuristic() + n2.getCost();
                return Double.compare(f1, f2);
            }
        });

        // We create the root node of the tree search
        final Node root = new Node(init, null, -1, 0, heuristic.estimate(init, problem.getGoal()));

        // We add the root to the list of pending nodes
        open.add(root);
        Plan plan = null;

        //parcour de la liste open et set la variable deadend de chaque
        for (Node _node: open) {
            _node.setDeadEnd(deadEnd(problem, _node));
        }
        //setmontecarlo
        //utiliser FF pour le modele probabiliste

        // We set the timeout in ms allocated to the search
        final int timeout = this.getTimeout() * 1000;
        long time = 0;


        Node s = root;
        double hMin = root.getHeuristic();
        int counter = 0;

        double CoupMinimum= Double.MAX_VALUE;
        int iteration = 10;

        Node BetterFinalNode = getFinalNode(problem, root, hMin);
        if (BetterFinalNode.getHeuristic() == 0.0){
            CoupMinimum = this.extractPlan(BetterFinalNode, problem).actions().size();
        }

        for (int i = 0; i < iteration; i++) {
            s = getFinalNode(problem, BetterFinalNode, hMin);

            if (this.extractPlan(BetterFinalNode, problem).actions().size() < CoupMinimum) {
                CoupMinimum = this.extractPlan(s, problem).actions().size();
                BetterFinalNode = s;
            }
        }

        // Finally, we return the search computed or null if no search was found
        return this.extractPlan(BetterFinalNode, problem);
    }

    private Node getFinalNode(Problem problem, Node root, double hMin) {
        Node s = root;
        int counter = 0;
        int nbCoupMin = 0;
        while (!s.satisfy(problem.getGoal())){
            if (counter > MAX_STEPS || deadEnd(problem, s)) {
                s = root;
                counter = 0;
            }
            s = MonteCarlo.PureRandomWalk(problem, s, problem.getGoal(), 5 , 40);
            if (s.getHeuristic() < hMin) {
                hMin = s.getHeuristic();
                counter = 0;
            }else {
                counter++;
            }
            nbCoupMin = this.extractPlan(s, problem).actions().size();
        }
        return s;
    }

    private boolean deadEnd(Problem problem, Node current) {
        for (int i = 0; i < problem.getActions().size(); i++) {
            // We get the actions of the problem
            Action a = problem.getActions().get(i);
            // If the action is applicable in the current node
            if (a.isApplicable(current)) {
                return true;
            }
        }
        return false;
    }


    /**
     * Extracts a search from a specified node.
     *
     * @param node    the node.
     * @param problem the problem.
     * @return the search extracted from the specified node.
     */
    private Plan extractPlan(final Node node, final Problem problem) {
        Node n = node;
        final Plan plan = new SequentialPlan();
        while (n.getAction() != -1) {
            final Action a = problem.getActions().get(n.getAction());
            plan.add(0, a);
            n = n.getParent();
        }
        return plan;
    }

    /**
     * The main method of the <code>ASP</code> planner.
     *
     * @param args the arguments of the command line.
     */
    public static void main(String[] args) {
        try {
            final SIMON planner = new SIMON();
            CommandLine cmd = new CommandLine(planner);
            cmd.execute(args);
        } catch (IllegalArgumentException e) {
            LOGGER.fatal(e.getMessage());
        }
    }



}

