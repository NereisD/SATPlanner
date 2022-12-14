(define (problem log-x-5)
   (:domain logistics-adl)
   (:objects package4 package3 package2 package1 - obj
             city9 city8 city7 city6 city5 city4 city3 city2 city1 - city
             truck11 truck10 truck9 truck8 truck7 truck6 truck5 truck4
             truck3 truck2 truck1 - truck
             plane1 - airplane
             city9-1 city8-1 city7-1 city6-1 city5-1 city4-1 city3-1
             city2-1 city1-1 - location
             city9-2 city8-2 city7-2 city6-2 city5-2 city4-2 city3-2
             city2-2 city1-2 - airport)
   (:init (in-city city9-2 city9)
          (in-city city9-1 city9)
          (in-city city8-2 city8)
          (in-city city8-1 city8)
          (in-city city7-2 city7)
          (in-city city7-1 city7)
          (in-city city6-2 city6)
          (in-city city6-1 city6)
          (in-city city5-2 city5)
          (in-city city5-1 city5)
          (in-city city4-2 city4)
          (in-city city4-1 city4)
          (in-city city3-2 city3)
          (in-city city3-1 city3)
          (in-city city2-2 city2)
          (in-city city2-1 city2)
          (in-city city1-2 city1)
          (in-city city1-1 city1)
          (at plane1 city8-2)
          (at truck11 city9-1)
          (at truck10 city8-1)
          (at truck9 city7-1)
          (at truck8 city6-1)
          (at truck7 city5-1)
          (at truck6 city4-1)
          (at truck5 city3-1)
          (at truck4 city2-1)
          (at truck3 city1-1)
          (at truck2 city8-1)
          (at truck1 city3-2)
          (at package4 city8-1)
          (at package3 city9-1)
          (at package2 city8-2)
          (at package1 city6-2))
   (:goal (and (at package4 city2-2)
               (at package3 city7-2)
               (at package2 city3-1)
               (at package1 city9-2))))