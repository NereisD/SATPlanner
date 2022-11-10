package fr.uga.pddl4j.examples.asp;

import fr.uga.pddl4j.problem.Fluent;
import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.util.*;
import java.util.*;


public final class Encoder {


    private final List<int[]> dimacs;

    private HashMap<Integer, ArrayList<Integer>> transitions;

    private final State goal;

    private final List<Fluent> facts;
    private final Problem problem;


    private int steps;


    public Encoder(final Problem problem, final int steps) {
        dimacs = new ArrayList<>();
        this.steps = steps;
        this.problem = problem;
        goal = new State(problem.getGoal());
        facts = problem.getFluents();


        final State init = new State(problem.getInitialState());
        for (int i = 0; i < facts.size(); i++) {
            int actionEncode = pair(i, 1);
            if (init.get(i)) {
                dimacs.add(new int[]{actionEncode});
            } else {
                dimacs.add(new int[]{-actionEncode});
            }
        }

        for (int i = 1; i < steps; i++) {
            next();
        }
    }

    private List<int[]> getGoal() {
        List<int[]> list = new ArrayList<>();
        for (int i = 0; i < facts.size(); i++) {
            int[] clause = new int[1];
            if (goal.get(i)) {
                clause[0] = pair(i, steps + 1);
                list.add(clause);
            }
        }
        return list;
    }


    private void addClause(int[] clauseTab) {
        dimacs.add(clauseTab);
    }

    public List<int[]> next() {
        transitions = new HashMap<>();
        for (int i = 0; i < problem.getActions().size(); i++) {
            addAction(i);
        }

        addTransitionsToDimacs();

        List<int[]> res = new ArrayList<>(dimacs);
        res.addAll(getGoal());
        steps++;
        return res;
    }



    private void addAction(int actionIndex) {
        final Action action = problem.getActions().get(actionIndex);
        final BitVector precond = action.getPrecondition().getPositiveFluents();
        final BitVector positive = action.getUnconditionalEffect().getPositiveFluents();
        final BitVector negative = action.getUnconditionalEffect().getNegativeFluents();

        int code_op = pair(actionIndex + facts.size(), steps);

        for (int i = actionIndex + 1; i < problem.getActions().size(); i++) {
            int code_other_op = pair(i + facts.size(), steps);
            int[] clause = new int[2];
            clause[0] = -code_op;
            clause[1] = -code_other_op;
            addClause(clause);
        }

        for (int i = 0; i < facts.size(); i++) {

            if (precond.get(i)) {
                int[] clause = new int[2];
                clause[0] = -code_op;
                clause[1] = pair(i, steps);
                addClause(clause);
            }

            if (positive.get(i)) {
                int[] clause = new int[2];
                clause[0] = -code_op;
                clause[1] = pair(i, steps + 1);
                addClause(clause);

                transitions.putIfAbsent(i, new ArrayList<>());
                transitions.get(i).add(code_op);
            }
            if (negative.get(i)) {
                int[] clause = new int[2];
                clause[0] = -code_op;
                clause[1] = -pair(i, steps + 1);
                addClause(clause);

                transitions.putIfAbsent(-i, new ArrayList<>());
                transitions.get(-i).add(code_op);
            }
        }
    }


    private void addTransitionsToDimacs() {
        for (Map.Entry<Integer, ArrayList<Integer>> operations_fi : transitions.entrySet()) {
            ArrayList<Integer> clause = operations_fi.getValue();

            if (operations_fi.getKey() > 0) {
                clause.add(pair(operations_fi.getKey(), steps));
                clause.add(-pair(operations_fi.getKey(), steps + 1));

            } else {
                clause.add(-pair(-operations_fi.getKey(), steps));
                clause.add(pair(-operations_fi.getKey(), steps + 1));
            }
            int[] clauseTab = new int[clause.size()];
            for (int i=0; i<clause.size();i++) {
                clauseTab[i] = clause.get(i);
            }
            addClause(clauseTab);
        }

    }

    private static int pair(int a, int b) {
        return ((a + b) * (a + b + 1) / 2 + b) + 1;
    }

    public static int[] unpair(int z) {
        int[] tmp = decodage(Math.abs(z));

        if (z >= 0) {
            return tmp;
        } else {
            return new int[]{-tmp[0], tmp[1]};
        }
    }

    private static int[] decodage(int z) {
        z--;

        int t = (int) (Math.floor((Math.sqrt(8 * z + 1) - 1) / 2));
        int x = t * (t + 3) / 2 - z;
        int y = z - t * (t + 1) / 2;
        x++;
        y++;
        return new int[]{x,y};
    }


    public void showClause(List<int[]> clauses) {
        for (int[] clause : clauses) {
            System.out.print("[ ");
            for (int variable : clause) {
                System.out.print(variable + " v");
            }
            System.out.println(" ] ^");
        }
    }


    public void showUnpairing(List<int[]> clauses) {
        for (int[] clause : clauses) {
            for (int variable : clause) {
                int[] tmp = unpair(variable);
                System.out.print("( " + tmp[0] + " , " + tmp[1] + " ) ");
            }
            System.out.println(" ^");
        }
    }

}