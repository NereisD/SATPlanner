(define (problem schedule-50-1)
(:domain schedule)
(:objects
    D2
    C2
    B2
    A2
    Z1
    W1
    V1
    U1
    S1
    R1
    P1
    Q1
    O1
    N1
    M1
    L1
    K1
    J1
    I1
    H1
    G1
    F1
    E1
    D1
    C1
    B1
    A1
    Z0
    W0
    V0
    U0
    S0
    R0
    P0
    Q0
    O0
    N0
    M0
    L0
    K0
    J0
    I0
    H0
    G0
    F0
    E0
    D0
    C0
    CIRCULAR
    TWO
    THREE
    BLUE
    YELLOW
    BACK
    RED
    B0
    FRONT
    ONE
    BLACK
    OBLONG
    A0
)
(:init
    (SHAPE A0 OBLONG)
    (SURFACE-CONDITION A0 ROUGH)
    (PAINTED A0 BLACK)
    (HAS-HOLE A0 TWO BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CIRCULAR)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED B0 BLUE)
    (HAS-HOLE B0 ONE FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 OBLONG)
    (SURFACE-CONDITION C0 POLISHED)
    (PAINTED C0 BLUE)
    (HAS-HOLE C0 THREE FRONT)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 OBLONG)
    (SURFACE-CONDITION D0 POLISHED)
    (PAINTED D0 RED)
    (HAS-HOLE D0 TWO FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION E0 ROUGH)
    (PAINTED E0 RED)
    (HAS-HOLE E0 THREE FRONT)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 OBLONG)
    (SURFACE-CONDITION F0 SMOOTH)
    (PAINTED F0 BLACK)
    (HAS-HOLE F0 ONE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 CYLINDRICAL)
    (SURFACE-CONDITION G0 POLISHED)
    (PAINTED G0 BLUE)
    (HAS-HOLE G0 ONE BACK)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 OBLONG)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED H0 BLACK)
    (HAS-HOLE H0 ONE FRONT)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 YELLOW)
    (HAS-HOLE I0 THREE BACK)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CYLINDRICAL)
    (SURFACE-CONDITION J0 SMOOTH)
    (PAINTED J0 RED)
    (HAS-HOLE J0 ONE BACK)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED K0 BLUE)
    (HAS-HOLE K0 ONE BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 OBLONG)
    (SURFACE-CONDITION L0 POLISHED)
    (PAINTED L0 YELLOW)
    (HAS-HOLE L0 TWO FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CIRCULAR)
    (SURFACE-CONDITION M0 SMOOTH)
    (PAINTED M0 BLUE)
    (HAS-HOLE M0 ONE FRONT)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 OBLONG)
    (SURFACE-CONDITION N0 POLISHED)
    (PAINTED N0 RED)
    (HAS-HOLE N0 TWO BACK)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 CYLINDRICAL)
    (SURFACE-CONDITION O0 ROUGH)
    (PAINTED O0 BLUE)
    (HAS-HOLE O0 TWO BACK)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 CYLINDRICAL)
    (SURFACE-CONDITION Q0 ROUGH)
    (PAINTED Q0 BLUE)
    (HAS-HOLE Q0 THREE FRONT)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 OBLONG)
    (SURFACE-CONDITION P0 SMOOTH)
    (PAINTED P0 BLACK)
    (HAS-HOLE P0 ONE FRONT)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CYLINDRICAL)
    (SURFACE-CONDITION R0 POLISHED)
    (PAINTED R0 YELLOW)
    (HAS-HOLE R0 THREE FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CYLINDRICAL)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 RED)
    (HAS-HOLE S0 ONE FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 CIRCULAR)
    (SURFACE-CONDITION U0 ROUGH)
    (PAINTED U0 RED)
    (HAS-HOLE U0 TWO BACK)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CIRCULAR)
    (SURFACE-CONDITION V0 SMOOTH)
    (PAINTED V0 BLUE)
    (HAS-HOLE V0 ONE BACK)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 CIRCULAR)
    (SURFACE-CONDITION W0 POLISHED)
    (PAINTED W0 BLUE)
    (HAS-HOLE W0 TWO BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 OBLONG)
    (SURFACE-CONDITION Z0 SMOOTH)
    (PAINTED Z0 RED)
    (HAS-HOLE Z0 ONE BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 OBLONG)
    (SURFACE-CONDITION A1 POLISHED)
    (PAINTED A1 RED)
    (HAS-HOLE A1 TWO BACK)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 OBLONG)
    (SURFACE-CONDITION B1 ROUGH)
    (PAINTED B1 YELLOW)
    (HAS-HOLE B1 THREE BACK)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 CIRCULAR)
    (SURFACE-CONDITION C1 SMOOTH)
    (PAINTED C1 RED)
    (HAS-HOLE C1 ONE BACK)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CIRCULAR)
    (SURFACE-CONDITION D1 POLISHED)
    (PAINTED D1 RED)
    (HAS-HOLE D1 THREE FRONT)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 OBLONG)
    (SURFACE-CONDITION E1 POLISHED)
    (PAINTED E1 YELLOW)
    (HAS-HOLE E1 THREE FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 OBLONG)
    (SURFACE-CONDITION F1 SMOOTH)
    (PAINTED F1 YELLOW)
    (HAS-HOLE F1 ONE FRONT)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CIRCULAR)
    (SURFACE-CONDITION G1 SMOOTH)
    (PAINTED G1 YELLOW)
    (HAS-HOLE G1 TWO FRONT)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 OBLONG)
    (SURFACE-CONDITION H1 POLISHED)
    (PAINTED H1 YELLOW)
    (HAS-HOLE H1 TWO FRONT)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 CIRCULAR)
    (SURFACE-CONDITION I1 POLISHED)
    (PAINTED I1 BLACK)
    (HAS-HOLE I1 THREE BACK)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 CIRCULAR)
    (SURFACE-CONDITION J1 ROUGH)
    (PAINTED J1 RED)
    (HAS-HOLE J1 THREE BACK)
    (TEMPERATURE J1 COLD)
    (SHAPE K1 OBLONG)
    (SURFACE-CONDITION K1 SMOOTH)
    (PAINTED K1 BLACK)
    (HAS-HOLE K1 THREE FRONT)
    (TEMPERATURE K1 COLD)
    (SHAPE L1 CIRCULAR)
    (SURFACE-CONDITION L1 SMOOTH)
    (PAINTED L1 RED)
    (HAS-HOLE L1 THREE FRONT)
    (TEMPERATURE L1 COLD)
    (SHAPE M1 OBLONG)
    (SURFACE-CONDITION M1 POLISHED)
    (PAINTED M1 BLACK)
    (HAS-HOLE M1 ONE FRONT)
    (TEMPERATURE M1 COLD)
    (SHAPE N1 OBLONG)
    (SURFACE-CONDITION N1 SMOOTH)
    (PAINTED N1 YELLOW)
    (HAS-HOLE N1 TWO FRONT)
    (TEMPERATURE N1 COLD)
    (SHAPE O1 OBLONG)
    (SURFACE-CONDITION O1 ROUGH)
    (PAINTED O1 RED)
    (HAS-HOLE O1 THREE BACK)
    (TEMPERATURE O1 COLD)
    (SHAPE Q1 CIRCULAR)
    (SURFACE-CONDITION Q1 ROUGH)
    (PAINTED Q1 BLUE)
    (HAS-HOLE Q1 THREE FRONT)
    (TEMPERATURE Q1 COLD)
    (SHAPE P1 CIRCULAR)
    (SURFACE-CONDITION P1 ROUGH)
    (PAINTED P1 BLACK)
    (HAS-HOLE P1 TWO BACK)
    (TEMPERATURE P1 COLD)
    (SHAPE R1 CYLINDRICAL)
    (SURFACE-CONDITION R1 POLISHED)
    (PAINTED R1 RED)
    (HAS-HOLE R1 THREE FRONT)
    (TEMPERATURE R1 COLD)
    (SHAPE S1 OBLONG)
    (SURFACE-CONDITION S1 POLISHED)
    (PAINTED S1 YELLOW)
    (HAS-HOLE S1 TWO BACK)
    (TEMPERATURE S1 COLD)
    (SHAPE U1 CIRCULAR)
    (SURFACE-CONDITION U1 POLISHED)
    (PAINTED U1 RED)
    (HAS-HOLE U1 THREE FRONT)
    (TEMPERATURE U1 COLD)
    (SHAPE V1 OBLONG)
    (SURFACE-CONDITION V1 POLISHED)
    (PAINTED V1 YELLOW)
    (HAS-HOLE V1 ONE BACK)
    (TEMPERATURE V1 COLD)
    (SHAPE W1 CIRCULAR)
    (SURFACE-CONDITION W1 ROUGH)
    (PAINTED W1 RED)
    (HAS-HOLE W1 ONE FRONT)
    (TEMPERATURE W1 COLD)
    (SHAPE Z1 CYLINDRICAL)
    (SURFACE-CONDITION Z1 ROUGH)
    (PAINTED Z1 BLACK)
    (HAS-HOLE Z1 TWO BACK)
    (TEMPERATURE Z1 COLD)
    (SHAPE A2 CIRCULAR)
    (SURFACE-CONDITION A2 ROUGH)
    (PAINTED A2 BLACK)
    (HAS-HOLE A2 ONE FRONT)
    (TEMPERATURE A2 COLD)
    (SHAPE B2 OBLONG)
    (SURFACE-CONDITION B2 ROUGH)
    (PAINTED B2 YELLOW)
    (HAS-HOLE B2 ONE BACK)
    (TEMPERATURE B2 COLD)
    (SHAPE C2 CYLINDRICAL)
    (SURFACE-CONDITION C2 POLISHED)
    (PAINTED C2 YELLOW)
    (HAS-HOLE C2 ONE BACK)
    (TEMPERATURE C2 COLD)
    (SHAPE D2 CIRCULAR)
    (SURFACE-CONDITION D2 ROUGH)
    (PAINTED D2 RED)
    (HAS-HOLE D2 THREE BACK)
    (TEMPERATURE D2 COLD)
    (CAN-ORIENT DRILL-PRESS BACK)
    (CAN-ORIENT PUNCH BACK)
    (CAN-ORIENT DRILL-PRESS FRONT)
    (CAN-ORIENT PUNCH FRONT)
    (HAS-PAINT IMMERSION-PAINTER YELLOW)
    (HAS-PAINT SPRAY-PAINTER YELLOW)
    (HAS-PAINT IMMERSION-PAINTER BLUE)
    (HAS-PAINT SPRAY-PAINTER BLUE)
    (HAS-PAINT IMMERSION-PAINTER BLACK)
    (HAS-PAINT SPRAY-PAINTER BLACK)
    (HAS-PAINT IMMERSION-PAINTER RED)
    (HAS-PAINT SPRAY-PAINTER RED)
    (HAS-BIT DRILL-PRESS THREE)
    (HAS-BIT PUNCH THREE)
    (HAS-BIT DRILL-PRESS TWO)
    (HAS-BIT PUNCH TWO)
    (HAS-BIT DRILL-PRESS ONE)
    (HAS-BIT PUNCH ONE)
    (PART D2)
    (PART C2)
    (PART B2)
    (PART A2)
    (PART Z1)
    (PART W1)
    (PART V1)
    (PART U1)
    (PART S1)
    (PART R1)
    (PART P1)
    (PART Q1)
    (PART O1)
    (PART N1)
    (PART M1)
    (PART L1)
    (PART K1)
    (PART J1)
    (PART I1)
    (PART H1)
    (PART G1)
    (PART F1)
    (PART E1)
    (PART D1)
    (PART C1)
    (PART B1)
    (PART A1)
    (PART Z0)
    (PART W0)
    (PART V0)
    (PART U0)
    (PART S0)
    (PART R0)
    (PART P0)
    (PART Q0)
    (PART O0)
    (PART N0)
    (PART M0)
    (PART L0)
    (PART K0)
    (PART J0)
    (PART I0)
    (PART H0)
    (PART G0)
    (PART F0)
    (PART E0)
    (PART D0)
    (PART C0)
    (PART B0)
    (PART A0)
)
(:goal (and
    (PAINTED I0 BLUE)
    (SHAPE W1 CYLINDRICAL)
    (PAINTED M0 YELLOW)
    (SHAPE E1 CYLINDRICAL)
    (SHAPE S1 CYLINDRICAL)
    (PAINTED D0 BLACK)
    (PAINTED U0 BLUE)
    (PAINTED S0 BLUE)
    (PAINTED H0 RED)
    (SHAPE H1 CYLINDRICAL)
    (PAINTED B2 BLACK)
    (PAINTED B1 RED)
    (SURFACE-CONDITION C2 SMOOTH)
    (SURFACE-CONDITION B1 SMOOTH)
    (PAINTED A0 YELLOW)
    (SURFACE-CONDITION O1 POLISHED)
    (SURFACE-CONDITION O0 SMOOTH)
    (SHAPE M0 CYLINDRICAL)
    (PAINTED M1 BLUE)
    (SHAPE A2 CYLINDRICAL)
    (SURFACE-CONDITION W1 POLISHED)
    (PAINTED Q0 YELLOW)
    (PAINTED A1 BLACK)
    (PAINTED O0 RED)
    (PAINTED V0 RED)
    (SURFACE-CONDITION W0 ROUGH)
    (SHAPE N1 CYLINDRICAL)
    (PAINTED H1 BLACK)
    (SHAPE U1 CYLINDRICAL)
    (PAINTED D2 YELLOW)
    (PAINTED F0 YELLOW)
    (SURFACE-CONDITION B0 SMOOTH)
    (SHAPE B1 CYLINDRICAL)
    (PAINTED R1 YELLOW)
    (SHAPE A1 CYLINDRICAL)
    (SHAPE I1 CYLINDRICAL)
    (PAINTED J1 BLUE)
    (PAINTED U1 BLACK)
    (PAINTED Q1 RED)
    (SURFACE-CONDITION I0 POLISHED)
    (SURFACE-CONDITION A1 ROUGH)
    (SURFACE-CONDITION H0 ROUGH)
    (SHAPE C1 CYLINDRICAL)
    (SURFACE-CONDITION A0 POLISHED)
    (SHAPE W0 CYLINDRICAL)
    (SURFACE-CONDITION R1 SMOOTH)
    (SURFACE-CONDITION M0 POLISHED)
    (SHAPE O1 CYLINDRICAL)
    (PAINTED G0 YELLOW)
    (PAINTED P0 RED)
)))
