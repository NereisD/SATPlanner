(define (problem depotprob5451) (:domain Depot)
(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate2)
	(at pallet1 distributor0)
	(clear crate14)
	(at pallet2 distributor1)
	(clear crate13)
	(at pallet3 distributor1)
	(clear crate10)
	(at pallet4 distributor0)
	(clear crate12)
	(at pallet5 depot0)
	(clear crate8)
	(at truck0 distributor0)
	(= (speed truck0) 6)
	(at truck1 distributor0)
	(= (speed truck1) 3)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 1)
	(at hoist1 distributor0)
	(available hoist1)
	(= (power hoist1) 1)
	(at hoist2 distributor1)
	(available hoist2)
	(= (power hoist2) 1)
	(at crate0 distributor1)
	(on crate0 pallet2)
	(= (weight crate0) 13)
	(at crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 94)
	(at crate2 depot0)
	(on crate2 crate1)
	(= (weight crate2) 45)
	(at crate3 distributor0)
	(on crate3 pallet1)
	(= (weight crate3) 26)
	(at crate4 distributor1)
	(on crate4 crate0)
	(= (weight crate4) 96)
	(at crate5 distributor1)
	(on crate5 pallet3)
	(= (weight crate5) 74)
	(at crate6 distributor0)
	(on crate6 crate3)
	(= (weight crate6) 68)
	(at crate7 distributor0)
	(on crate7 crate6)
	(= (weight crate7) 71)
	(at crate8 depot0)
	(on crate8 pallet5)
	(= (weight crate8) 81)
	(at crate9 distributor0)
	(on crate9 crate7)
	(= (weight crate9) 51)
	(at crate10 distributor1)
	(on crate10 crate5)
	(= (weight crate10) 94)
	(at crate11 distributor0)
	(on crate11 pallet4)
	(= (weight crate11) 36)
	(at crate12 distributor0)
	(on crate12 crate11)
	(= (weight crate12) 70)
	(at crate13 distributor1)
	(on crate13 crate4)
	(= (weight crate13) 66)
	(at crate14 distributor0)
	(on crate14 crate9)
	(= (weight crate14) 55)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 distributor0) 2)
	(= (distance depot0 distributor1) 3)
	(= (distance distributor0 depot0) 9)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 2)
	(= (distance distributor1 depot0) 4)
	(= (distance distributor1 distributor0) 7)
	(= (distance distributor1 distributor1) 0)
)

(:goal (and
		(on crate0 crate5)
		(on crate1 crate2)
		(on crate2 crate10)
		(on crate3 pallet0)
		(on crate4 crate6)
		(on crate5 pallet5)
		(on crate6 pallet4)
		(on crate9 crate1)
		(on crate10 pallet2)
		(on crate11 pallet1)
		(on crate12 crate14)
		(on crate13 crate3)
		(on crate14 pallet3)
	)
)

(:metric minimize (total-time)))
