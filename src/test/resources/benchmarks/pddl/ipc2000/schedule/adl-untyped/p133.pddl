(define (problem schedule-46-0)
(:domain schedule)
(:objects
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
    (SURFACE-CONDITION A0 POLISHED)
    (PAINTED A0 RED)
    (HAS-HOLE A0 TWO BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CIRCULAR)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED B0 BLACK)
    (HAS-HOLE B0 TWO BACK)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 OBLONG)
    (SURFACE-CONDITION C0 SMOOTH)
    (PAINTED C0 BLUE)
    (HAS-HOLE C0 TWO FRONT)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 OBLONG)
    (SURFACE-CONDITION D0 POLISHED)
    (PAINTED D0 BLACK)
    (HAS-HOLE D0 TWO FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION E0 ROUGH)
    (PAINTED E0 BLACK)
    (HAS-HOLE E0 THREE FRONT)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CYLINDRICAL)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 BLACK)
    (HAS-HOLE F0 THREE BACK)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 OBLONG)
    (SURFACE-CONDITION G0 ROUGH)
    (PAINTED G0 RED)
    (HAS-HOLE G0 THREE FRONT)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CIRCULAR)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 YELLOW)
    (HAS-HOLE H0 TWO BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 OBLONG)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 BLACK)
    (HAS-HOLE I0 TWO FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CYLINDRICAL)
    (SURFACE-CONDITION J0 POLISHED)
    (PAINTED J0 BLACK)
    (HAS-HOLE J0 THREE FRONT)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 SMOOTH)
    (PAINTED K0 YELLOW)
    (HAS-HOLE K0 TWO BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CIRCULAR)
    (SURFACE-CONDITION L0 ROUGH)
    (PAINTED L0 RED)
    (HAS-HOLE L0 ONE FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CYLINDRICAL)
    (SURFACE-CONDITION M0 POLISHED)
    (PAINTED M0 YELLOW)
    (HAS-HOLE M0 ONE BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 OBLONG)
    (SURFACE-CONDITION N0 POLISHED)
    (PAINTED N0 BLUE)
    (HAS-HOLE N0 ONE BACK)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 CYLINDRICAL)
    (SURFACE-CONDITION O0 SMOOTH)
    (PAINTED O0 BLUE)
    (HAS-HOLE O0 THREE BACK)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 SMOOTH)
    (PAINTED Q0 BLUE)
    (HAS-HOLE Q0 ONE BACK)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 OBLONG)
    (SURFACE-CONDITION P0 POLISHED)
    (PAINTED P0 BLACK)
    (HAS-HOLE P0 TWO FRONT)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CYLINDRICAL)
    (SURFACE-CONDITION R0 SMOOTH)
    (PAINTED R0 YELLOW)
    (HAS-HOLE R0 TWO FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CIRCULAR)
    (SURFACE-CONDITION S0 SMOOTH)
    (PAINTED S0 BLUE)
    (HAS-HOLE S0 TWO FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 OBLONG)
    (SURFACE-CONDITION U0 ROUGH)
    (PAINTED U0 RED)
    (HAS-HOLE U0 TWO FRONT)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CYLINDRICAL)
    (SURFACE-CONDITION V0 ROUGH)
    (PAINTED V0 RED)
    (HAS-HOLE V0 TWO FRONT)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 CIRCULAR)
    (SURFACE-CONDITION W0 ROUGH)
    (PAINTED W0 BLUE)
    (HAS-HOLE W0 THREE BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 CIRCULAR)
    (SURFACE-CONDITION Z0 ROUGH)
    (PAINTED Z0 BLACK)
    (HAS-HOLE Z0 THREE BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 OBLONG)
    (SURFACE-CONDITION A1 POLISHED)
    (PAINTED A1 BLUE)
    (HAS-HOLE A1 ONE FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 CIRCULAR)
    (SURFACE-CONDITION B1 SMOOTH)
    (PAINTED B1 BLUE)
    (HAS-HOLE B1 ONE BACK)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 OBLONG)
    (SURFACE-CONDITION C1 SMOOTH)
    (PAINTED C1 RED)
    (HAS-HOLE C1 TWO BACK)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CYLINDRICAL)
    (SURFACE-CONDITION D1 POLISHED)
    (PAINTED D1 YELLOW)
    (HAS-HOLE D1 TWO BACK)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CIRCULAR)
    (SURFACE-CONDITION E1 SMOOTH)
    (PAINTED E1 RED)
    (HAS-HOLE E1 ONE FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 CYLINDRICAL)
    (SURFACE-CONDITION F1 ROUGH)
    (PAINTED F1 BLACK)
    (HAS-HOLE F1 TWO BACK)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CIRCULAR)
    (SURFACE-CONDITION G1 ROUGH)
    (PAINTED G1 YELLOW)
    (HAS-HOLE G1 THREE FRONT)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 CYLINDRICAL)
    (SURFACE-CONDITION H1 SMOOTH)
    (PAINTED H1 BLACK)
    (HAS-HOLE H1 TWO FRONT)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 CIRCULAR)
    (SURFACE-CONDITION I1 POLISHED)
    (PAINTED I1 BLACK)
    (HAS-HOLE I1 THREE FRONT)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 OBLONG)
    (SURFACE-CONDITION J1 SMOOTH)
    (PAINTED J1 BLACK)
    (HAS-HOLE J1 THREE FRONT)
    (TEMPERATURE J1 COLD)
    (SHAPE K1 CYLINDRICAL)
    (SURFACE-CONDITION K1 SMOOTH)
    (PAINTED K1 YELLOW)
    (HAS-HOLE K1 TWO BACK)
    (TEMPERATURE K1 COLD)
    (SHAPE L1 OBLONG)
    (SURFACE-CONDITION L1 ROUGH)
    (PAINTED L1 BLACK)
    (HAS-HOLE L1 TWO BACK)
    (TEMPERATURE L1 COLD)
    (SHAPE M1 OBLONG)
    (SURFACE-CONDITION M1 ROUGH)
    (PAINTED M1 RED)
    (HAS-HOLE M1 THREE FRONT)
    (TEMPERATURE M1 COLD)
    (SHAPE N1 CIRCULAR)
    (SURFACE-CONDITION N1 SMOOTH)
    (PAINTED N1 RED)
    (HAS-HOLE N1 TWO FRONT)
    (TEMPERATURE N1 COLD)
    (SHAPE O1 CIRCULAR)
    (SURFACE-CONDITION O1 ROUGH)
    (PAINTED O1 RED)
    (HAS-HOLE O1 TWO FRONT)
    (TEMPERATURE O1 COLD)
    (SHAPE Q1 CYLINDRICAL)
    (SURFACE-CONDITION Q1 SMOOTH)
    (PAINTED Q1 BLUE)
    (HAS-HOLE Q1 TWO BACK)
    (TEMPERATURE Q1 COLD)
    (SHAPE P1 OBLONG)
    (SURFACE-CONDITION P1 ROUGH)
    (PAINTED P1 RED)
    (HAS-HOLE P1 THREE FRONT)
    (TEMPERATURE P1 COLD)
    (SHAPE R1 CYLINDRICAL)
    (SURFACE-CONDITION R1 ROUGH)
    (PAINTED R1 YELLOW)
    (HAS-HOLE R1 THREE BACK)
    (TEMPERATURE R1 COLD)
    (SHAPE S1 OBLONG)
    (SURFACE-CONDITION S1 ROUGH)
    (PAINTED S1 RED)
    (HAS-HOLE S1 ONE FRONT)
    (TEMPERATURE S1 COLD)
    (SHAPE U1 CIRCULAR)
    (SURFACE-CONDITION U1 SMOOTH)
    (PAINTED U1 BLACK)
    (HAS-HOLE U1 ONE FRONT)
    (TEMPERATURE U1 COLD)
    (SHAPE V1 CIRCULAR)
    (SURFACE-CONDITION V1 ROUGH)
    (PAINTED V1 BLUE)
    (HAS-HOLE V1 THREE FRONT)
    (TEMPERATURE V1 COLD)
    (SHAPE W1 CIRCULAR)
    (SURFACE-CONDITION W1 POLISHED)
    (PAINTED W1 BLUE)
    (HAS-HOLE W1 ONE BACK)
    (TEMPERATURE W1 COLD)
    (SHAPE Z1 CYLINDRICAL)
    (SURFACE-CONDITION Z1 POLISHED)
    (PAINTED Z1 BLACK)
    (HAS-HOLE Z1 ONE BACK)
    (TEMPERATURE Z1 COLD)
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
    (PAINTED R0 BLUE)
    (PAINTED Q0 RED)
    (SURFACE-CONDITION U1 POLISHED)
    (SHAPE C0 CYLINDRICAL)
    (SURFACE-CONDITION N1 ROUGH)
    (SURFACE-CONDITION E0 POLISHED)
    (SURFACE-CONDITION N0 SMOOTH)
    (SHAPE N0 CYLINDRICAL)
    (SHAPE L0 CYLINDRICAL)
    (SHAPE E1 CYLINDRICAL)
    (SURFACE-CONDITION D1 SMOOTH)
    (PAINTED B0 YELLOW)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION I0 POLISHED)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED D0 YELLOW)
    (SURFACE-CONDITION K1 ROUGH)
    (SURFACE-CONDITION B1 ROUGH)
    (SHAPE Q0 CYLINDRICAL)
    (PAINTED L1 RED)
    (PAINTED R1 BLACK)
    (SURFACE-CONDITION G0 POLISHED)
    (SURFACE-CONDITION A1 ROUGH)
    (PAINTED M1 BLACK)
    (PAINTED L0 YELLOW)
    (PAINTED U0 BLUE)
    (SHAPE A0 CYLINDRICAL)
    (SURFACE-CONDITION M1 POLISHED)
    (PAINTED C1 BLUE)
    (SURFACE-CONDITION I1 SMOOTH)
    (PAINTED K1 BLACK)
    (SHAPE N1 CYLINDRICAL)
    (PAINTED E0 RED)
    (PAINTED P1 BLUE)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED U1 RED)
    (SHAPE W1 CYLINDRICAL)
    (SHAPE U0 CYLINDRICAL)
    (SHAPE Z0 CYLINDRICAL)
    (SHAPE W0 CYLINDRICAL)
    (SURFACE-CONDITION O0 ROUGH)
    (SURFACE-CONDITION V1 POLISHED)
    (PAINTED I0 BLUE)
    (PAINTED J1 BLUE)
    (PAINTED W1 RED)
    (PAINTED O1 YELLOW)
)))
