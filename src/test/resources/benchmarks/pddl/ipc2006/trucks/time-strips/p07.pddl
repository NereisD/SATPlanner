; Time: 0.02 seconds
(define (problem GROUNDED-TRUCK-7)
(:domain GROUNDED-TRUCKS-TIME)
(:init
(FOO)
(at_package9_l2)
(at_package8_l2)
(at_package7_l2)
(at_package6_l4)
(at_package5_l4)
(at_package4_l4)
(at_package3_l2)
(at_package2_l2)
(at_package1_l2)
(free_a3_truck2)
(free_a2_truck2)
(free_a1_truck2)
(free_a3_truck1)
(free_a2_truck1)
(free_a1_truck1)
(at_truck2_l3)
(at_truck1_l4)
)
(:goal
(and
(delivered_package9_l1)
(delivered_package8_l3)
(delivered_package7_l3)
(delivered_package6_l2)
(delivered_package5_l3)
(delivered_package4_l1)
(delivered_package3_l1)
(delivered_package2_l3)
(delivered_package1_l1)
)
)
(:metric MINIMIZE (TOTAL-TIME))
)