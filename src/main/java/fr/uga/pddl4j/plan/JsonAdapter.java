/*
 * Copyright (c) 2016 by Damien Pellier <Damien.Pellier@imag.fr>.
 *
 * This file is part of PDDL4J library.
 *
 * PDDL4J is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * PDDL4J is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with PDDL4J.  If not, see <http://www.gnu.org/licenses/>
 */

package fr.uga.pddl4j.plan;

import fr.uga.pddl4j.problem.Problem;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.problem.operator.Condition;
import fr.uga.pddl4j.problem.operator.ConditionalEffect;
import fr.uga.pddl4j.problem.operator.Effect;
import fr.uga.pddl4j.util.BitSet;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/**
 * This class is used to convert Java plan into its JSON representation.
 * Its also provide methods to save the JSON String into a file.
 *
 * @author Samy Ouastani
 * @author Cedric Gerard
 * @author Damien Pellier
 * @version 1.0 - 07.19.2016
 */
public class JsonAdapter implements Serializable {

    /**
     * The current coded problem the plan is based on.
     */
    private Problem problem;

    /**
     * Plan in its JSON form.
     */
    private JSONObject jsonPlan;

    /**
     * Create a new adapter.
     *
     * @param problem the pddl4j problem representation.
     */
    public JsonAdapter(Problem problem) {
        this.problem = problem;
    }

    /**
     * Save the current jsonPlan into a file.
     *
     * @param name the name of the saved file.
     */
    public void saveInFile(String name) {
        if (jsonPlan == null) {
            return;
        }
        // Creation of the json files
        try (Writer writer = new OutputStreamWriter(new FileOutputStream(name), "UTF-8")) {
            // Editing the first json file
            writer.write(this.jsonPlan.toJSONString());
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

    /**
     * Return a string of the plan in a json format.
     *
     * @param plan to convert into json string.
     * @return the plan in a json string format.
     */
    @SuppressWarnings("unchecked")
    public final String toJsonString(final Plan plan) {

        JSONObject planJson = new JSONObject();

        int positionAction = 0;

        for (int i = 0; i < plan.timeSpecifiers().size(); i++) {
            JSONObject actionJson = new JSONObject();

            // Actions
            for (Action action : plan.getActionSet(i)) {

                List<String> parameters = new ArrayList<>();
                // Parameters
                for (int j = 0; j < action.arity(); j++) {
                    final int index = action.getValueOfParameter(j);
                    if (index != -1) {
                        parameters.add(this.problem.getConstantSymbols().get(index));
                    }
                }

                // Preconditions
                List<List<String>> preconds = this.toJsonString(action.getPrecondition());
                JSONObject precondJson = new JSONObject();

                List<String> positives = preconds.get(0);
                List<String> negatives = preconds.get(1);

                JSONArray positivesJsonPrecondition = listToJson(positives);
                JSONArray negativeJsonPrecondition = listToJson(negatives);

                precondJson.put("Positives", positivesJsonPrecondition);
                precondJson.put("Negatives", negativeJsonPrecondition);

                //CondExp
                List<ConditionalEffect> condExp = action.getConditionalEffects();

                // Condition object
                JSONArray condExpJsonArray = new JSONArray();
                JSONObject condExpJson = new JSONObject();

                for (int k = 0; k < condExp.size(); k++) {

                    JSONObject expJsonCondition = new JSONObject();
                    JSONObject expJsonEffects = new JSONObject();

                    List<List<String>> condExpElementsCondition =
                        this.toJsonString(condExp.get(k).getCondition());

                    JSONArray positivesConditionJson = listToJson(condExpElementsCondition.get(0));
                    JSONArray negativesConditionJson = listToJson(condExpElementsCondition.get(1));


                    expJsonCondition.put("Positives", positivesConditionJson);
                    expJsonCondition.put("Negatives", negativesConditionJson);

                    List<List<String>> condExpElementsEffect = this.toJsonString(condExp.get(k).getEffect());

                    JSONArray positivesEffectJson = listToJson(condExpElementsEffect.get(0));
                    JSONArray negativesEffectJson = listToJson(condExpElementsEffect.get(1));


                    expJsonEffects.put("Positives", positivesEffectJson);
                    expJsonEffects.put("Negatives", negativesEffectJson);


                    condExpJson.put("Condition", expJsonCondition);
                    condExpJson.put("Effect", expJsonEffects);
                    condExpJsonArray.add(k, condExpJson);
                }

                actionJson.put("Names", action.getName());
                actionJson.put("Position", positionAction);
                actionJson.put("Parameters", listToJson(parameters));
                actionJson.put("Preconditions", precondJson);
                actionJson.put("Condition_Expressions", condExpJsonArray);
                planJson.put("Action " + i, actionJson);
                planJson.put("Type_de_plan", 1);
                planJson.put("Size", plan.size());
                planJson.put("Makespan", plan.makespan());
                planJson.put("Cost", plan.cost());
                planJson.put("timeSpecifiers", plan.timeSpecifiers());

                positionAction = positionAction + 1;
            }
        }

        this.jsonPlan = planJson;
        return planJson.toJSONString();
    }

    /**
     * Convert a BitExp into a String collection.
     *
     * @param exp the BitExp instance to convert.
     * @return an 2D collection of Strings.
     */
    private List<List<String>> toJsonString(final Condition exp) {
        List<String> fluentsPos = new ArrayList<>();
        List<String> fluentsNeg = new ArrayList<>();
        List<List<String>> fluents = new ArrayList<>();

        final BitSet positive = exp.getPositiveFluents();
        for (int i = positive.nextSetBit(0); i >= 0; i = positive.nextSetBit(i + 1)) {
            fluentsPos.add(this.problem.toString(this.problem.getFluents().get(i)));
        }

        final BitSet negative = exp.getNegativeFluents();
        for (int i = negative.nextSetBit(0); i >= 0; i = negative.nextSetBit(i + 1)) {
            fluentsNeg.add(this.problem.toString(this.problem.getFluents().get(i)));
        }

        fluents.add(fluentsPos);
        fluents.add(fluentsNeg);
        return fluents;
    }

    /**
     * Convert a BitExp into a String collection.
     *
     * @param exp the BitExp instance to convert.
     * @return an 2D collection of Strings.
     */
    private List<List<String>> toJsonString(final Effect exp) {
        List<String> fluentsPos = new ArrayList<>();
        List<String> fluentsNeg = new ArrayList<>();
        List<List<String>> fluents = new ArrayList<>();

        final BitSet positive = exp.getPositiveFluents();
        for (int i = positive.nextSetBit(0); i >= 0; i = positive.nextSetBit(i + 1)) {
            fluentsPos.add(this.problem.toString(this.problem.getFluents().get(i)));
        }

        final BitSet negative = exp.getNegativeFluents();
        for (int i = negative.nextSetBit(0); i >= 0; i = negative.nextSetBit(i + 1)) {
            fluentsNeg.add(this.problem.toString(this.problem.getFluents().get(i)));
        }

        fluents.add(fluentsPos);
        fluents.add(fluentsNeg);
        return fluents;
    }

    /**
     * Transform an ArrayList into a JSONArray.
     *
     * @param list an ArrayList that we want to convert into a List.
     * @return list the list parameter.
     */
    @SuppressWarnings("unchecked")
    private static JSONArray listToJson(List<String> list) {
        final JSONArray array = new JSONArray();
        array.addAll(list);
        return array;
    }
}
