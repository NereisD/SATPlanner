package fr.uga.pddl4j.examples.asp;

import fr.uga.pddl4j.problem.Goal;
import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.problem.operator.Condition;
import fr.uga.pddl4j.problem.operator.ConditionalEffect;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public final class MonteCarlo {

    static Node PureRandomWalk(Problem problem, Node s, Condition goal, int num_walk, int lenght_Walk ){

        //proble deuristic mauvais calcul
        double hMin = Double.MAX_VALUE;
        Node sMin = null;
        Node current_Node = null;
        for (int i = 1; i < num_walk; i++) {
            current_Node = s;
            for (int j = 1; j < lenght_Walk; j++) {
                List<Action> A = ApplicableActions(current_Node, problem);
                if (A.isEmpty()){
                    break;
                }
                int indexAction = UniformlyRandomSelectFrom(A);
                Action a = A.get(indexAction);
                indexAction = problem.getActions().indexOf(a);
                current_Node = apply(current_Node, a, indexAction);
                if (current_Node.satisfy(goal)){
                    return current_Node;
                }
            }
            if(current_Node.getHeuristic() < hMin){
                sMin = current_Node;
                hMin = current_Node.getHeuristic();
            }
        }
        if (sMin == null) {
            return s;
        }
        else {
            return  sMin;
        }

    }

    private static int UniformlyRandomSelectFrom(List<Action> a) {
        Random rand = new Random();
        return rand.nextInt(a.size());
    }


    private static Node apply(Node current_Node , Action a, int indexAction){
        Node next = new Node(current_Node);
        // We apply the effect of the action
        final List<ConditionalEffect> effects = a.getConditionalEffects();
        for (ConditionalEffect ce : effects) {
            if (current_Node.satisfy(ce.getCondition())) {
                next.apply(ce.getEffect());
            }
        }
        next.setAction(indexAction);
        next.setParent(current_Node);
        return next;
    }

    private static List<Action> ApplicableActions(Node current_node, Problem _problem){
        List<Action> listApllicableAction = new ArrayList<Action>();
        for (int i = 0; i < _problem.getActions().size(); i++) {
            // We get the actions of the problem
            Action a = _problem.getActions().get(i);
            // If the action is applicable in the current node
            if (a.isApplicable(current_node)) {
                listApllicableAction.add(a);
            }
            // We set the new child node information
        }
        return listApllicableAction;
    }

}
