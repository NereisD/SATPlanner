(define (problem ZTRAVEL-5-100)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
	person31 - person
	person32 - person
	person33 - person
	person34 - person
	person35 - person
	person36 - person
	person37 - person
	person38 - person
	person39 - person
	person40 - person
	person41 - person
	person42 - person
	person43 - person
	person44 - person
	person45 - person
	person46 - person
	person47 - person
	person48 - person
	person49 - person
	person50 - person
	person51 - person
	person52 - person
	person53 - person
	person54 - person
	person55 - person
	person56 - person
	person57 - person
	person58 - person
	person59 - person
	person60 - person
	person61 - person
	person62 - person
	person63 - person
	person64 - person
	person65 - person
	person66 - person
	person67 - person
	person68 - person
	person69 - person
	person70 - person
	person71 - person
	person72 - person
	person73 - person
	person74 - person
	person75 - person
	person76 - person
	person77 - person
	person78 - person
	person79 - person
	person80 - person
	person81 - person
	person82 - person
	person83 - person
	person84 - person
	person85 - person
	person86 - person
	person87 - person
	person88 - person
	person89 - person
	person90 - person
	person91 - person
	person92 - person
	person93 - person
	person94 - person
	person95 - person
	person96 - person
	person97 - person
	person98 - person
	person99 - person
	person100 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(at plane1 city6)
	(fuel-level plane1 fl3)
	(at plane2 city7)
	(fuel-level plane2 fl0)
	(at plane3 city3)
	(fuel-level plane3 fl6)
	(at plane4 city2)
	(fuel-level plane4 fl5)
	(at plane5 city2)
	(fuel-level plane5 fl6)
	(at person1 city4)
	(at person2 city8)
	(at person3 city7)
	(at person4 city0)
	(at person5 city8)
	(at person6 city9)
	(at person7 city7)
	(at person8 city5)
	(at person9 city6)
	(at person10 city3)
	(at person11 city5)
	(at person12 city4)
	(at person13 city7)
	(at person14 city0)
	(at person15 city9)
	(at person16 city4)
	(at person17 city9)
	(at person18 city7)
	(at person19 city6)
	(at person20 city4)
	(at person21 city3)
	(at person22 city0)
	(at person23 city9)
	(at person24 city1)
	(at person25 city9)
	(at person26 city6)
	(at person27 city7)
	(at person28 city5)
	(at person29 city9)
	(at person30 city0)
	(at person31 city6)
	(at person32 city1)
	(at person33 city2)
	(at person34 city8)
	(at person35 city9)
	(at person36 city4)
	(at person37 city3)
	(at person38 city2)
	(at person39 city6)
	(at person40 city2)
	(at person41 city4)
	(at person42 city6)
	(at person43 city3)
	(at person44 city2)
	(at person45 city4)
	(at person46 city8)
	(at person47 city8)
	(at person48 city4)
	(at person49 city4)
	(at person50 city3)
	(at person51 city7)
	(at person52 city0)
	(at person53 city1)
	(at person54 city2)
	(at person55 city4)
	(at person56 city7)
	(at person57 city8)
	(at person58 city3)
	(at person59 city9)
	(at person60 city4)
	(at person61 city9)
	(at person62 city1)
	(at person63 city1)
	(at person64 city2)
	(at person65 city3)
	(at person66 city2)
	(at person67 city4)
	(at person68 city3)
	(at person69 city0)
	(at person70 city2)
	(at person71 city3)
	(at person72 city5)
	(at person73 city7)
	(at person74 city1)
	(at person75 city0)
	(at person76 city8)
	(at person77 city3)
	(at person78 city4)
	(at person79 city6)
	(at person80 city3)
	(at person81 city8)
	(at person82 city1)
	(at person83 city9)
	(at person84 city6)
	(at person85 city4)
	(at person86 city8)
	(at person87 city6)
	(at person88 city6)
	(at person89 city0)
	(at person90 city9)
	(at person91 city7)
	(at person92 city2)
	(at person93 city7)
	(at person94 city2)
	(at person95 city1)
	(at person96 city7)
	(at person97 city3)
	(at person98 city3)
	(at person99 city1)
	(at person100 city8)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(at person1 city7)
	(at person2 city1)
	(at person3 city2)
	(at person4 city6)
	(at person5 city8)
	(at person6 city3)
	(at person7 city7)
	(at person8 city6)
	(at person9 city7)
	(at person10 city3)
	(at person11 city8)
	(at person12 city6)
	(at person13 city4)
	(at person14 city5)
	(at person15 city4)
	(at person16 city3)
	(at person17 city0)
	(at person18 city5)
	(at person19 city1)
	(at person20 city5)
	(at person21 city0)
	(at person22 city4)
	(at person23 city2)
	(at person24 city2)
	(at person25 city2)
	(at person26 city6)
	(at person27 city5)
	(at person28 city3)
	(at person29 city0)
	(at person30 city4)
	(at person31 city8)
	(at person32 city9)
	(at person33 city9)
	(at person34 city0)
	(at person35 city0)
	(at person36 city7)
	(at person37 city5)
	(at person38 city0)
	(at person39 city9)
	(at person40 city0)
	(at person41 city7)
	(at person42 city8)
	(at person43 city0)
	(at person44 city9)
	(at person45 city8)
	(at person46 city3)
	(at person47 city6)
	(at person48 city8)
	(at person49 city5)
	(at person50 city7)
	(at person51 city2)
	(at person52 city9)
	(at person53 city2)
	(at person54 city4)
	(at person55 city8)
	(at person56 city7)
	(at person57 city5)
	(at person58 city0)
	(at person59 city5)
	(at person61 city6)
	(at person62 city6)
	(at person63 city8)
	(at person64 city1)
	(at person65 city5)
	(at person66 city3)
	(at person67 city1)
	(at person68 city5)
	(at person69 city4)
	(at person70 city8)
	(at person71 city7)
	(at person72 city9)
	(at person73 city0)
	(at person74 city3)
	(at person75 city7)
	(at person76 city9)
	(at person77 city4)
	(at person78 city8)
	(at person79 city8)
	(at person80 city1)
	(at person81 city4)
	(at person82 city0)
	(at person83 city7)
	(at person84 city9)
	(at person85 city0)
	(at person86 city8)
	(at person88 city6)
	(at person89 city3)
	(at person90 city6)
	(at person91 city5)
	(at person92 city6)
	(at person93 city6)
	(at person94 city3)
	(at person95 city7)
	(at person97 city3)
	(at person98 city9)
	(at person99 city0)
	(at person100 city0)
	))

)
