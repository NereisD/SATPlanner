for i in `seq 1 9`;
do
  echo $i >> ./SIMONLogistics.txt
  java -classpath "target/classes;lib/pddl4j-4.0.0.jar;lib/org.ow2.sat4j.core-2.3.4.jar" fr.uga.pddl4j.examples.asp.SIMON ../src/test/resources/benchmarks/pddl/ipc2000/logistics/strips-typed/domain.pddl ../src/test/resources/benchmarks/pddl/ipc2000/logistics/strips-typed/"p0"$i".pddl" -e FAST_FORWARD -w 1.2 -t 1000 | grep "seconds total time" ./SIMONLogistics.txt
done

for i in `seq 10 20`;
do
  echo $i >> ./SIMONLogistics.txt
  java -classpath "target/classes;lib/pddl4j-4.0.0.jar;lib/org.ow2.sat4j.core-2.3.4.jar" fr.uga.pddl4j.examples.asp.SIMON ../src/test/resources/benchmarks/pddl/ipc2000/blocks/strips-typed/domain.pddl ../src/test/resources/benchmarks/pddl/ipc2000/blocks/strips-typed/"p"$i".pddl" -e FAST_FORWARD -w 1.2 -t 1000 | grep "seconds total time" ./SIMONLogistics.txt
done