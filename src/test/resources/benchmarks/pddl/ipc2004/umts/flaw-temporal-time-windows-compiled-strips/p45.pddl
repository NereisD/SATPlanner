;; The execution of mobile applications requires a proper configuration
;; of mobile network components. This domain is modeled with 
;; resources of mobile network components and negotiation of MAC.
;; Applicable for 10 applications. The duration of an action is modeled
;; via the delay predicate. The delay varies for each application and
;; module according to their execution duration in the radio bearer/ network.

;; Intra-application constraint: yes
;; Inter-application constraint: no
;; Roman Englert, December 2003

(define (problem BS)
 (:domain INCOMPATIBEL-APPLICATION-CONFIGURATION)
 (:objects	
	MS1 MS2 - message
	A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 - application
        M1 M2 M3 M4 M5 M6 M7 M8 M9 M10 - mobile
        L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 - list
 )

 (:init
 	(= (time-trm A1) 69) 
	(= (time-ct A1) 59) 
	(= (time-am A1) 71) 
	(= (time-aeem A1) 77) 
	(= (time-rrc A1) 212) 
	(= (time-rab A1) 64) 
	(= (time-aeei A1) 37) 
	(= (time-bs A1) 39)

	(= (time-trm A2) 64) 
	(= (time-ct A2) 52) 
	(= (time-am A2) 43) 
	(= (time-aeem A2) 65) 
	(= (time-rrc A2) 172) 
	(= (time-rab A2) 63) 
	(= (time-aeei A2) 89) 
	(= (time-bs A2) 12) 

	(= (time-trm A3) 70) 
	(= (time-ct A3) 59) 
	(= (time-am A3) 42) 
	(= (time-aeem A3) 65) 
	(= (time-rrc A3) 184) 
	(= (time-rab A3) 79) 
	(= (time-aeei A3) 87) 
	(= (time-bs A3) 14) 

	(= (time-trm A4) 69) 
	(= (time-ct A4) 55) 
	(= (time-am A4) 48) 
	(= (time-aeem A4) 70) 
	(= (time-rrc A4) 172) 
	(= (time-rab A4) 61) 
	(= (time-aeei A4) 81) 
	(= (time-bs A4) 14)

	(= (time-trm A5) 68) 
	(= (time-ct A5) 44) 
	(= (time-am A5) 36) 
	(= (time-aeem A5) 73) 
	(= (time-rrc A5) 180) 
	(= (time-rab A5) 62) 
	(= (time-aeei A5) 71) 
	(= (time-bs A5) 21) 

 	(= (time-trm A6) 64) 
	(= (time-ct A6) 58) 
	(= (time-am A6) 64) 
	(= (time-aeem A6) 66) 
	(= (time-rrc A6) 213) 
	(= (time-rab A6) 70) 
	(= (time-aeei A6) 32) 
	(= (time-bs A6) 21)

	(= (time-trm A7) 61) 
	(= (time-ct A7) 44) 
	(= (time-am A7) 48) 
	(= (time-aeem A7) 64) 
	(= (time-rrc A7) 176) 
	(= (time-rab A7) 73) 
	(= (time-aeei A7) 80) 
	(= (time-bs A7) 12) 

	(= (time-trm A8) 51) 
	(= (time-ct A8) 51) 
	(= (time-am A8) 34) 
	(= (time-aeem A8) 78) 
	(= (time-rrc A8) 174) 
	(= (time-rab A8) 66) 
	(= (time-aeei A8) 83) 
	(= (time-bs A8) 20) 

	(= (time-trm A9) 52) 
	(= (time-ct A9) 41) 
	(= (time-am A9) 41) 
	(= (time-aeem A9) 64) 
	(= (time-rrc A9) 188) 
	(= (time-rab A9) 64) 
	(= (time-aeei A9) 76) 
	(= (time-bs A9) 23) 

	(= (time-trm A10) 60) 
	(= (time-ct A10) 42) 
	(= (time-am A10) 31) 
	(= (time-aeem A10) 71) 
	(= (time-rrc A10) 174) 
	(= (time-rab A10) 78) 
	(= (time-aeei A10) 74) 
	(= (time-bs A10) 16) 

        ;; types
        (location M1) 
	(authentification M1)
        (location M2) 
	(authentification M2)
        (location M3) 
	(authentification M3)
        (location M4) 
	(authentification M4)
        (location M5) 
	(authentification M5)
        (location M6) 
	(authentification M6)
        (location M7) 
	(authentification M7)
        (location M8) 
	(authentification M8)
        (location M9) 
	(authentification M9)
        (location M10) 
	(authentification M10)

	;; Game
	(initiated A1 M1) 
        (qos-params A1 L1)
	(= (list-pdu L1) 131)
 	(= (app-cpu A1 M1) 80) 
        (= (app-display A1 M1) 32) 
        (= (app-keyboard A1 M1) 1) 
        (= (app-energy A1 M1) 21) 
        (= (app-channels A1 M1) 1)
	(message-trm M1 MS1)
	(message-aeei A1 MS2)

 	;; Ticker
	(initiated A2 M1) 
        (qos-params A2 L2)
	(= (list-pdu L2) 72)
 	(= (app-cpu A2 M1) 4) 
        (= (app-display A2 M1) 6) 
        (= (app-keyboard A2 M1) 4) 
        (= (app-energy A2 M1) 20) 
        (= (app-channels A2 M1) 1)
	(message-aeei A2 MS2)

 	;; A3
	(initiated A3 M1) 
        (qos-params A3 L3)
	(= (list-pdu L3) 247)
 	(= (app-cpu A3 M1) 11) 
        (= (app-display A3 M1) 4) 
        (= (app-keyboard A3 M1) 9) 
        (= (app-energy A3 M1) 4) 
        (= (app-channels A3 M1) 1)
	(message-aeei A3 MS2)

 	;; A4
	(initiated A4 M1) 
	(qos-params A4 L4)
	(= (list-pdu L4) 259)
 	(= (app-cpu A4 M1) 10) 
	(= (app-display A4 M1) 1) 
	(= (app-keyboard A4 M1) 1) 
	(= (app-energy A4 M1) 11) 
	(= (app-channels A4 M1) 1)
	(message-aeei A4 MS2)

 	;; A5
	(initiated A5 M1) 
	(qos-params A5 L5)
	(= (list-pdu L5) 264)
 	(= (app-cpu A5 M1) 4) 
	(= (app-display A5 M1) 1) 
	(= (app-keyboard A5 M1) 4) 
	(= (app-energy A5 M1) 5) 
	(= (app-channels A5 M1) 1)
	(message-aeei A5 MS2)

 	;; A6
	(initiated A6 M1) 
	(qos-params A6 L6)
	(= (list-pdu L6) 247)
 	(= (app-cpu A6 M1) 11) 
	(= (app-display A6 M1) 1) 
	(= (app-keyboard A6 M1) 9) 
	(= (app-energy A6 M1) 4) 
	(= (app-channels A6 M1) 1)
	(message-aeei A6 MS2)

 	;; A7
	(initiated A7 M1) 
	(qos-params A7 L7)
	(= (list-pdu L7) 259)
 	(= (app-cpu A7 M1) 10) 
	(= (app-display A7 M1) 1) 
	(= (app-keyboard A7 M1) 1) 
	(= (app-energy A7 M1) 6) 
	(= (app-channels A7 M1) 1)
	(message-aeei A7 MS2)

 	;; A8
	(initiated A8 M1) 
	(qos-params A8 L8)
	(= (list-pdu L8) 264)
 	(= (app-cpu A8 M1) 4) 
	(= (app-display A8 M1) 1) 
	(= (app-keyboard A8 M1) 4) 
	(= (app-energy A8 M1) 5) 
	(= (app-channels A8 M1) 1)
	(message-aeei A8 MS2)

 	;; A9
	(initiated A9 M1) 
	(qos-params A9 L9)
	(= (list-pdu L9) 256)
 	(= (app-cpu A9 M1) 10) 
	(= (app-display A9 M1) 5) 
	(= (app-keyboard A9 M1) 1) 
	(= (app-energy A9 M1) 10) 
	(= (app-channels A9 M1) 1)
	(message-aeei A9 MS2)

 	;; A10
	(initiated A10 M1) 
	(qos-params A10 L10)
	(= (list-pdu L10) 256)
 	(= (app-cpu A10 M1) 10) 
	(= (app-display A10 M1) 5) 
	(= (app-keyboard A10 M1) 1) 
	(= (app-energy A10 M1) 5) 
	(= (app-channels A10 M1) 1)
	(message-aeei A10 MS2)
 
	;; TRM
	(= (max-mobile-cpu) 300)
	(= (max-d-available) 140)
	(= (max-k-available) 12)
	(= (max-e-load) 150)
	(= (max-mobile-channels-available) 12)
	;; CT
	(= (max-num-mobiles) 256)
	(= (max-num-calls) 10)
	(= (max-mobile-storage) 2000)
	;; RRC
	(= (max-logical-channels) 100)
	(= (max-cell-update) 10)
	(= (max-handover) 10)
	(= (max-active-set-up) 10)
	;; AEEI
	(= (max-ggsn-bitrate) 10000)
	(= (max-no-pdp) 20)
	(= (max-no-apn) 20)

  ;; current status

	(= (has-mobile-cpu) 0)
	(= (has-d-available) 0)
	(= (has-k-available) 0)
	(= (has-e-load) 0)
	(= (has-mobile-channels-available) 0)
	;; CT
	(= (has-num-mobiles) 0)
	(= (has-num-calls) 0)
	(= (has-mobile-storage) 0)
	;; RRC
	(= (has-logical-channels) 0)
	(= (has-cell-update) 0)
	(= (has-handover) 0)
	(= (has-active-set-up) 0)
	;; AEEI
	(= (has-ggsn-bitrate) 0)
	(= (has-max-no-pdp) 0)
	(= (has-max-no-apn) 0)
	(M)
 )

 (:goal 
    (and 	
	(P4)
	(bs-ok A1 M1 L1 ae) 
	(bs-ok A2 M1 L2 ae) 
	(bs-ok A3 M1 L3 ae) 
	(bs-ok A4 M1 L4 ae) 
	(bs-ok A5 M1 L5 ae)
	(bs-ok A6 M1 L6 ae) 
	(bs-ok A7 M1 L7 ae) 
	(bs-ok A8 M1 L8 ae) 
	(bs-ok A9 M1 L9 ae) 
   )
 )

 (:metric minimize (total-time))
)
