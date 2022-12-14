;;
;; PDDL file for the AIPS2000 Planning Competition
;; based on the data generated by the airport simulator Astras.
;;

;; Author: Sebastian Trueg thisshouldbethecurrentdateandtime :(
;; Created with SegmentSplitterAirportExporter 0.1 by Sebastian Trueg <trueg@informatik.uni-freiburg.de>
;;



(define (problem PROBLEM_X)

(:domain airport_durative)

(:objects

      ;; the airplanes (2)
      dummy_landing_airplane
      airplane_CFBEG
      airplane_DAEWH - airplane

      ;; the airplanetypes (1)
      medium - airplanetype

      ;; the directions (2)
      north
      south - direction

      ;; the segments (17)
      seg_pp_0_60
      seg_ppdoor_0_40
      seg_tww1_0_200
      seg_twe1_0_200
      seg_tww2_0_50
      seg_tww3_0_50
      seg_tww4_0_50
      seg_rww_0_50
      seg_rwtw1_0_10
      seg_rw_0_400
      seg_rwe_0_50
      seg_twe4_0_50
      seg_rwte1_0_10
      seg_twe3_0_50
      seg_twe2_0_50
      seg_rwte2_0_10
      seg_rwtw2_0_10 - segment
)

(:init

      (at-segment airplane_CFBEG seg_rw_0_400)
      (at-segment airplane_DAEWH seg_pp_0_60)

      (blocked seg_rw_0_400 airplane_CFBEG)
      (blocked seg_pp_0_60 airplane_DAEWH)
      (blocked seg_rwe_0_50 airplane_CFBEG)

      (can-move seg_pp_0_60 seg_ppdoor_0_40 north)
      (can-move seg_ppdoor_0_40 seg_tww1_0_200 north)
      (can-move seg_tww1_0_200 seg_twe1_0_200 north)
      (can-move seg_twe1_0_200 seg_twe2_0_50 south)
      (can-move seg_twe2_0_50 seg_twe3_0_50 south)
      (can-move seg_twe3_0_50 seg_twe4_0_50 south)
      (can-move seg_twe4_0_50 seg_rwe_0_50 south)
      (can-move seg_rwe_0_50 seg_rw_0_400 south)
      (can-move seg_rw_0_400 seg_rww_0_50 south)
      (can-move seg_rww_0_50 seg_tww4_0_50 south)
      (can-move seg_tww4_0_50 seg_tww3_0_50 north)
      (can-move seg_tww3_0_50 seg_tww2_0_50 north)
      (can-move seg_tww2_0_50 seg_tww1_0_200 north)
      (can-move seg_tww1_0_200 seg_ppdoor_0_40 north)
      (can-move seg_ppdoor_0_40 seg_pp_0_60 south)

      (can-pushback seg_pp_0_60 seg_ppdoor_0_40 south)
      (can-pushback seg_ppdoor_0_40 seg_tww1_0_200 south)

      (facing airplane_CFBEG south)
      (facing airplane_DAEWH south)

      (has-type airplane_CFBEG medium)
      (has-type airplane_DAEWH medium)

      (is-blocked seg_ppdoor_0_40 medium seg_pp_0_60 south)
      (is-blocked seg_pp_0_60 medium seg_ppdoor_0_40 north)
      (is-blocked seg_tww1_0_200 medium seg_ppdoor_0_40 south)
      (is-blocked seg_twe1_0_200 medium seg_ppdoor_0_40 south)
      (is-blocked seg_tww2_0_50 medium seg_tww1_0_200 north)
      (is-blocked seg_ppdoor_0_40 medium seg_tww1_0_200 south)
      (is-blocked seg_twe1_0_200 medium seg_tww1_0_200 south)
      (is-blocked seg_twe2_0_50 medium seg_twe1_0_200 north)
      (is-blocked seg_ppdoor_0_40 medium seg_twe1_0_200 south)
      (is-blocked seg_tww1_0_200 medium seg_twe1_0_200 south)
      (is-blocked seg_tww3_0_50 medium seg_tww2_0_50 north)
      (is-blocked seg_tww1_0_200 medium seg_tww2_0_50 south)
      (is-blocked seg_tww4_0_50 medium seg_tww3_0_50 north)
      (is-blocked seg_tww2_0_50 medium seg_tww3_0_50 south)
      (is-blocked seg_rww_0_50 medium seg_tww4_0_50 north)
      (is-blocked seg_rwtw1_0_10 medium seg_tww4_0_50 north)
      (is-blocked seg_tww3_0_50 medium seg_tww4_0_50 south)
      (is-blocked seg_rwte1_0_10 medium seg_twe4_0_50 north)
      (is-blocked seg_rwe_0_50 medium seg_twe4_0_50 north)
      (is-blocked seg_twe3_0_50 medium seg_twe4_0_50 south)
      (is-blocked seg_twe4_0_50 medium seg_twe3_0_50 north)
      (is-blocked seg_twe2_0_50 medium seg_twe3_0_50 south)
      (is-blocked seg_twe3_0_50 medium seg_twe2_0_50 north)
      (is-blocked seg_twe1_0_200 medium seg_twe2_0_50 south)
      (is-blocked seg_tww4_0_50 medium seg_rww_0_50 north)
      (is-blocked seg_rww_0_50 medium seg_rw_0_400 north)
      (is-blocked seg_rww_0_50 medium seg_rwe_0_50 north)
      (is-blocked seg_rw_0_400 medium seg_rwe_0_50 north)
      (is-blocked seg_twe4_0_50 medium seg_rwe_0_50 south)
      (is-blocked seg_rwe_0_50 medium seg_rw_0_400 south)
      (is-blocked seg_rwe_0_50 medium seg_rww_0_50 south)
      (is-blocked seg_rw_0_400 medium seg_rww_0_50 south)

      (is-moving airplane_CFBEG)

      (is-pushing airplane_DAEWH)

      (is-start-runway seg_rww_0_50 north)
      (is-start-runway seg_rwe_0_50 south)


      (move-back-dir seg_pp_0_60 seg_ppdoor_0_40 south)
      (move-back-dir seg_ppdoor_0_40 seg_tww1_0_200 north)

      (move-dir seg_pp_0_60 seg_ppdoor_0_40 north)
      (move-dir seg_ppdoor_0_40 seg_tww1_0_200 south)
      (move-dir seg_tww1_0_200 seg_twe1_0_200 south)
      (move-dir seg_twe1_0_200 seg_twe2_0_50 south)
      (move-dir seg_twe2_0_50 seg_twe3_0_50 south)
      (move-dir seg_twe3_0_50 seg_twe4_0_50 south)
      (move-dir seg_twe4_0_50 seg_rwe_0_50 south)
      (move-dir seg_rwe_0_50 seg_rw_0_400 south)
      (move-dir seg_rw_0_400 seg_rww_0_50 south)
      (move-dir seg_rww_0_50 seg_tww4_0_50 north)
      (move-dir seg_tww4_0_50 seg_tww3_0_50 north)
      (move-dir seg_tww3_0_50 seg_tww2_0_50 north)
      (move-dir seg_tww2_0_50 seg_tww1_0_200 north)
      (move-dir seg_tww1_0_200 seg_ppdoor_0_40 south)
      (move-dir seg_ppdoor_0_40 seg_pp_0_60 south)

      (occupied seg_rw_0_400)
      (occupied seg_pp_0_60)
      (= (length seg_pp_0_60) 60)
      (= (length seg_ppdoor_0_40) 40)
      (= (length seg_tww1_0_200) 200)
      (= (length seg_twe1_0_200) 200)
      (= (length seg_tww2_0_50) 50)
      (= (length seg_tww3_0_50) 50)
      (= (length seg_tww4_0_50) 50)
      (= (length seg_rww_0_50) 50)
      (= (length seg_rwtw1_0_10) 10)
      (= (length seg_rw_0_400) 400)
      (= (length seg_rwe_0_50) 50)
      (= (length seg_twe4_0_50) 50)
      (= (length seg_rwte1_0_10) 10)
      (= (length seg_twe3_0_50) 50)
      (= (length seg_twe2_0_50) 50)
      (= (length seg_rwte2_0_10) 10)
      (= (length seg_rwtw2_0_10) 10)
      (= (engines airplane_CFBEG) 2)
      (= (engines airplane_DAEWH) 2)
      (at 34 (blocked seg_rwtw2_0_10 dummy_landing_airplane))
      (at 64 (not (blocked seg_rwtw2_0_10 dummy_landing_airplane)))
      (at 34 (blocked seg_rwtw1_0_10 dummy_landing_airplane))
      (at 64 (not (blocked seg_rwtw1_0_10 dummy_landing_airplane)))
      (at 34 (blocked seg_rww_0_50 dummy_landing_airplane))
      (at 64 (not (blocked seg_rww_0_50 dummy_landing_airplane)))
      (at 34 (blocked seg_rw_0_400 dummy_landing_airplane))
      (at 64 (not (blocked seg_rw_0_400 dummy_landing_airplane)))
      (at 34 (blocked seg_rwe_0_50 dummy_landing_airplane))
      (at 64 (not (blocked seg_rwe_0_50 dummy_landing_airplane)))
      (at 34 (blocked seg_rwte1_0_10 dummy_landing_airplane))
      (at 64 (not (blocked seg_rwte1_0_10 dummy_landing_airplane)))
      (at 34 (blocked seg_rwte2_0_10 dummy_landing_airplane))
      (at 64 (not (blocked seg_rwte2_0_10 dummy_landing_airplane)))
)

(:goal
      (and



            (is-parked airplane_CFBEG seg_pp_0_60)
            (airborne airplane_DAEWH seg_rwe_0_50)
      )
)

(:metric minimize (total-time))

)

