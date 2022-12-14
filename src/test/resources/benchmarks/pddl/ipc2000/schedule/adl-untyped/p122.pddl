(define (problem schedule-42-1)
(:domain schedule)
(:objects
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
    (SHAPE A0 CIRCULAR)
    (SURFACE-CONDITION A0 ROUGH)
    (PAINTED A0 RED)
    (HAS-HOLE A0 ONE FRONT)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CIRCULAR)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED B0 BLUE)
    (HAS-HOLE B0 TWO BACK)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 ROUGH)
    (PAINTED C0 BLACK)
    (HAS-HOLE C0 TWO BACK)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CIRCULAR)
    (SURFACE-CONDITION D0 SMOOTH)
    (PAINTED D0 BLACK)
    (HAS-HOLE D0 ONE FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 OBLONG)
    (SURFACE-CONDITION E0 POLISHED)
    (PAINTED E0 BLUE)
    (HAS-HOLE E0 TWO BACK)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CYLINDRICAL)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 RED)
    (HAS-HOLE F0 ONE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 CYLINDRICAL)
    (SURFACE-CONDITION G0 POLISHED)
    (PAINTED G0 BLUE)
    (HAS-HOLE G0 ONE FRONT)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 OBLONG)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 YELLOW)
    (HAS-HOLE H0 THREE BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 OBLONG)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 BLACK)
    (HAS-HOLE I0 ONE BACK)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CIRCULAR)
    (SURFACE-CONDITION J0 ROUGH)
    (PAINTED J0 RED)
    (HAS-HOLE J0 TWO FRONT)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 CIRCULAR)
    (SURFACE-CONDITION K0 SMOOTH)
    (PAINTED K0 BLUE)
    (HAS-HOLE K0 TWO BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CYLINDRICAL)
    (SURFACE-CONDITION L0 SMOOTH)
    (PAINTED L0 BLUE)
    (HAS-HOLE L0 TWO FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 OBLONG)
    (SURFACE-CONDITION M0 ROUGH)
    (PAINTED M0 BLACK)
    (HAS-HOLE M0 THREE BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 OBLONG)
    (SURFACE-CONDITION N0 ROUGH)
    (PAINTED N0 RED)
    (HAS-HOLE N0 TWO FRONT)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 CYLINDRICAL)
    (SURFACE-CONDITION O0 SMOOTH)
    (PAINTED O0 RED)
    (HAS-HOLE O0 TWO BACK)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 ROUGH)
    (PAINTED Q0 BLACK)
    (HAS-HOLE Q0 ONE BACK)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 CIRCULAR)
    (SURFACE-CONDITION P0 ROUGH)
    (PAINTED P0 YELLOW)
    (HAS-HOLE P0 ONE FRONT)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CIRCULAR)
    (SURFACE-CONDITION R0 ROUGH)
    (PAINTED R0 BLACK)
    (HAS-HOLE R0 THREE FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CIRCULAR)
    (SURFACE-CONDITION S0 ROUGH)
    (PAINTED S0 RED)
    (HAS-HOLE S0 THREE FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 OBLONG)
    (SURFACE-CONDITION U0 ROUGH)
    (PAINTED U0 BLUE)
    (HAS-HOLE U0 TWO BACK)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 CYLINDRICAL)
    (SURFACE-CONDITION V0 SMOOTH)
    (PAINTED V0 BLACK)
    (HAS-HOLE V0 TWO FRONT)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 OBLONG)
    (SURFACE-CONDITION W0 ROUGH)
    (PAINTED W0 BLUE)
    (HAS-HOLE W0 THREE FRONT)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 CYLINDRICAL)
    (SURFACE-CONDITION Z0 ROUGH)
    (PAINTED Z0 BLUE)
    (HAS-HOLE Z0 TWO BACK)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 CYLINDRICAL)
    (SURFACE-CONDITION A1 POLISHED)
    (PAINTED A1 YELLOW)
    (HAS-HOLE A1 THREE FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 OBLONG)
    (SURFACE-CONDITION B1 SMOOTH)
    (PAINTED B1 RED)
    (HAS-HOLE B1 TWO FRONT)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 CYLINDRICAL)
    (SURFACE-CONDITION C1 SMOOTH)
    (PAINTED C1 YELLOW)
    (HAS-HOLE C1 THREE BACK)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CYLINDRICAL)
    (SURFACE-CONDITION D1 ROUGH)
    (PAINTED D1 BLACK)
    (HAS-HOLE D1 TWO FRONT)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CYLINDRICAL)
    (SURFACE-CONDITION E1 POLISHED)
    (PAINTED E1 BLACK)
    (HAS-HOLE E1 THREE FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 CIRCULAR)
    (SURFACE-CONDITION F1 ROUGH)
    (PAINTED F1 BLUE)
    (HAS-HOLE F1 ONE FRONT)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CYLINDRICAL)
    (SURFACE-CONDITION G1 ROUGH)
    (PAINTED G1 BLUE)
    (HAS-HOLE G1 TWO BACK)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 CIRCULAR)
    (SURFACE-CONDITION H1 ROUGH)
    (PAINTED H1 BLUE)
    (HAS-HOLE H1 THREE BACK)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 CIRCULAR)
    (SURFACE-CONDITION I1 SMOOTH)
    (PAINTED I1 BLACK)
    (HAS-HOLE I1 TWO BACK)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 CIRCULAR)
    (SURFACE-CONDITION J1 SMOOTH)
    (PAINTED J1 BLACK)
    (HAS-HOLE J1 TWO BACK)
    (TEMPERATURE J1 COLD)
    (SHAPE K1 OBLONG)
    (SURFACE-CONDITION K1 ROUGH)
    (PAINTED K1 BLACK)
    (HAS-HOLE K1 THREE FRONT)
    (TEMPERATURE K1 COLD)
    (SHAPE L1 OBLONG)
    (SURFACE-CONDITION L1 ROUGH)
    (PAINTED L1 YELLOW)
    (HAS-HOLE L1 THREE FRONT)
    (TEMPERATURE L1 COLD)
    (SHAPE M1 OBLONG)
    (SURFACE-CONDITION M1 SMOOTH)
    (PAINTED M1 BLUE)
    (HAS-HOLE M1 ONE FRONT)
    (TEMPERATURE M1 COLD)
    (SHAPE N1 CIRCULAR)
    (SURFACE-CONDITION N1 POLISHED)
    (PAINTED N1 YELLOW)
    (HAS-HOLE N1 THREE BACK)
    (TEMPERATURE N1 COLD)
    (SHAPE O1 CYLINDRICAL)
    (SURFACE-CONDITION O1 POLISHED)
    (PAINTED O1 BLUE)
    (HAS-HOLE O1 THREE BACK)
    (TEMPERATURE O1 COLD)
    (SHAPE Q1 OBLONG)
    (SURFACE-CONDITION Q1 SMOOTH)
    (PAINTED Q1 RED)
    (HAS-HOLE Q1 ONE BACK)
    (TEMPERATURE Q1 COLD)
    (SHAPE P1 CYLINDRICAL)
    (SURFACE-CONDITION P1 ROUGH)
    (PAINTED P1 YELLOW)
    (HAS-HOLE P1 ONE BACK)
    (TEMPERATURE P1 COLD)
    (SHAPE R1 OBLONG)
    (SURFACE-CONDITION R1 ROUGH)
    (PAINTED R1 BLUE)
    (HAS-HOLE R1 ONE FRONT)
    (TEMPERATURE R1 COLD)
    (SHAPE S1 CYLINDRICAL)
    (SURFACE-CONDITION S1 POLISHED)
    (PAINTED S1 RED)
    (HAS-HOLE S1 ONE BACK)
    (TEMPERATURE S1 COLD)
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
    (SHAPE P0 CYLINDRICAL)
    (PAINTED I0 YELLOW)
    (PAINTED Z0 RED)
    (PAINTED K0 BLACK)
    (SHAPE U0 CYLINDRICAL)
    (SURFACE-CONDITION J1 POLISHED)
    (PAINTED U0 BLACK)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION W0 SMOOTH)
    (SHAPE H0 CYLINDRICAL)
    (SHAPE N1 CYLINDRICAL)
    (PAINTED G1 YELLOW)
    (PAINTED H1 BLACK)
    (SHAPE N0 CYLINDRICAL)
    (PAINTED V0 BLUE)
    (PAINTED P0 RED)
    (SHAPE R0 CYLINDRICAL)
    (PAINTED B1 BLACK)
    (SURFACE-CONDITION G0 ROUGH)
    (PAINTED G0 YELLOW)
    (SURFACE-CONDITION P1 SMOOTH)
    (PAINTED N1 BLUE)
    (SURFACE-CONDITION D0 ROUGH)
    (PAINTED R0 YELLOW)
    (PAINTED I1 BLUE)
    (SURFACE-CONDITION H0 SMOOTH)
    (SURFACE-CONDITION N1 SMOOTH)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION S1 ROUGH)
    (SURFACE-CONDITION S0 POLISHED)
    (SHAPE R1 CYLINDRICAL)
    (SHAPE K1 CYLINDRICAL)
    (PAINTED A1 BLUE)
    (SURFACE-CONDITION P0 SMOOTH)
    (PAINTED Q1 YELLOW)
    (SHAPE A0 CYLINDRICAL)
    (PAINTED L1 BLACK)
    (PAINTED Q0 RED)
    (SHAPE C0 CYLINDRICAL)
    (SHAPE S0 CYLINDRICAL)
    (PAINTED F0 BLUE)
    (PAINTED O0 BLUE)
)))
