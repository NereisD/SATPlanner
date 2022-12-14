(define (problem schedule-36-0)
(:domain schedule)
(:objects
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
    (SHAPE A0 CYLINDRICAL)
    (SURFACE-CONDITION A0 ROUGH)
    (PAINTED A0 YELLOW)
    (HAS-HOLE A0 ONE FRONT)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 OBLONG)
    (SURFACE-CONDITION B0 POLISHED)
    (PAINTED B0 RED)
    (HAS-HOLE B0 TWO FRONT)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 ROUGH)
    (PAINTED C0 YELLOW)
    (HAS-HOLE C0 THREE BACK)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CYLINDRICAL)
    (SURFACE-CONDITION D0 POLISHED)
    (PAINTED D0 RED)
    (HAS-HOLE D0 ONE BACK)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CIRCULAR)
    (SURFACE-CONDITION E0 POLISHED)
    (PAINTED E0 RED)
    (HAS-HOLE E0 THREE FRONT)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CIRCULAR)
    (SURFACE-CONDITION F0 POLISHED)
    (PAINTED F0 RED)
    (HAS-HOLE F0 TWO BACK)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 OBLONG)
    (SURFACE-CONDITION G0 SMOOTH)
    (PAINTED G0 BLUE)
    (HAS-HOLE G0 TWO FRONT)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CIRCULAR)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 RED)
    (HAS-HOLE H0 TWO FRONT)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 YELLOW)
    (HAS-HOLE I0 ONE FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 OBLONG)
    (SURFACE-CONDITION J0 SMOOTH)
    (PAINTED J0 BLUE)
    (HAS-HOLE J0 TWO BACK)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 ROUGH)
    (PAINTED K0 BLUE)
    (HAS-HOLE K0 THREE BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CYLINDRICAL)
    (SURFACE-CONDITION L0 POLISHED)
    (PAINTED L0 BLACK)
    (HAS-HOLE L0 THREE FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CYLINDRICAL)
    (SURFACE-CONDITION M0 POLISHED)
    (PAINTED M0 RED)
    (HAS-HOLE M0 TWO FRONT)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CYLINDRICAL)
    (SURFACE-CONDITION N0 SMOOTH)
    (PAINTED N0 RED)
    (HAS-HOLE N0 THREE BACK)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 OBLONG)
    (SURFACE-CONDITION O0 POLISHED)
    (PAINTED O0 YELLOW)
    (HAS-HOLE O0 ONE FRONT)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 OBLONG)
    (SURFACE-CONDITION Q0 POLISHED)
    (PAINTED Q0 BLUE)
    (HAS-HOLE Q0 TWO FRONT)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 CYLINDRICAL)
    (SURFACE-CONDITION P0 SMOOTH)
    (PAINTED P0 BLUE)
    (HAS-HOLE P0 TWO BACK)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CIRCULAR)
    (SURFACE-CONDITION R0 POLISHED)
    (PAINTED R0 RED)
    (HAS-HOLE R0 ONE BACK)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CIRCULAR)
    (SURFACE-CONDITION S0 ROUGH)
    (PAINTED S0 RED)
    (HAS-HOLE S0 ONE FRONT)
    (TEMPERATURE S0 COLD)
    (SHAPE U0 OBLONG)
    (SURFACE-CONDITION U0 ROUGH)
    (PAINTED U0 YELLOW)
    (HAS-HOLE U0 THREE FRONT)
    (TEMPERATURE U0 COLD)
    (SHAPE V0 OBLONG)
    (SURFACE-CONDITION V0 SMOOTH)
    (PAINTED V0 BLUE)
    (HAS-HOLE V0 ONE FRONT)
    (TEMPERATURE V0 COLD)
    (SHAPE W0 OBLONG)
    (SURFACE-CONDITION W0 ROUGH)
    (PAINTED W0 YELLOW)
    (HAS-HOLE W0 TWO BACK)
    (TEMPERATURE W0 COLD)
    (SHAPE Z0 CIRCULAR)
    (SURFACE-CONDITION Z0 POLISHED)
    (PAINTED Z0 YELLOW)
    (HAS-HOLE Z0 ONE FRONT)
    (TEMPERATURE Z0 COLD)
    (SHAPE A1 OBLONG)
    (SURFACE-CONDITION A1 ROUGH)
    (PAINTED A1 RED)
    (HAS-HOLE A1 THREE FRONT)
    (TEMPERATURE A1 COLD)
    (SHAPE B1 CYLINDRICAL)
    (SURFACE-CONDITION B1 POLISHED)
    (PAINTED B1 YELLOW)
    (HAS-HOLE B1 THREE BACK)
    (TEMPERATURE B1 COLD)
    (SHAPE C1 CYLINDRICAL)
    (SURFACE-CONDITION C1 POLISHED)
    (PAINTED C1 RED)
    (HAS-HOLE C1 ONE BACK)
    (TEMPERATURE C1 COLD)
    (SHAPE D1 CIRCULAR)
    (SURFACE-CONDITION D1 SMOOTH)
    (PAINTED D1 YELLOW)
    (HAS-HOLE D1 TWO FRONT)
    (TEMPERATURE D1 COLD)
    (SHAPE E1 CIRCULAR)
    (SURFACE-CONDITION E1 ROUGH)
    (PAINTED E1 RED)
    (HAS-HOLE E1 THREE FRONT)
    (TEMPERATURE E1 COLD)
    (SHAPE F1 CYLINDRICAL)
    (SURFACE-CONDITION F1 ROUGH)
    (PAINTED F1 RED)
    (HAS-HOLE F1 ONE FRONT)
    (TEMPERATURE F1 COLD)
    (SHAPE G1 CIRCULAR)
    (SURFACE-CONDITION G1 POLISHED)
    (PAINTED G1 BLACK)
    (HAS-HOLE G1 TWO FRONT)
    (TEMPERATURE G1 COLD)
    (SHAPE H1 OBLONG)
    (SURFACE-CONDITION H1 SMOOTH)
    (PAINTED H1 YELLOW)
    (HAS-HOLE H1 ONE BACK)
    (TEMPERATURE H1 COLD)
    (SHAPE I1 CIRCULAR)
    (SURFACE-CONDITION I1 SMOOTH)
    (PAINTED I1 BLUE)
    (HAS-HOLE I1 ONE FRONT)
    (TEMPERATURE I1 COLD)
    (SHAPE J1 OBLONG)
    (SURFACE-CONDITION J1 SMOOTH)
    (PAINTED J1 RED)
    (HAS-HOLE J1 TWO FRONT)
    (TEMPERATURE J1 COLD)
    (SHAPE K1 CYLINDRICAL)
    (SURFACE-CONDITION K1 ROUGH)
    (PAINTED K1 YELLOW)
    (HAS-HOLE K1 THREE FRONT)
    (TEMPERATURE K1 COLD)
    (SHAPE L1 CIRCULAR)
    (SURFACE-CONDITION L1 ROUGH)
    (PAINTED L1 BLACK)
    (HAS-HOLE L1 TWO FRONT)
    (TEMPERATURE L1 COLD)
    (SHAPE M1 CIRCULAR)
    (SURFACE-CONDITION M1 SMOOTH)
    (PAINTED M1 YELLOW)
    (HAS-HOLE M1 THREE FRONT)
    (TEMPERATURE M1 COLD)
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
    (SURFACE-CONDITION C0 POLISHED)
    (SHAPE W0 CYLINDRICAL)
    (SURFACE-CONDITION G0 ROUGH)
    (SHAPE J0 CYLINDRICAL)
    (PAINTED Z0 RED)
    (SURFACE-CONDITION U0 POLISHED)
    (SHAPE A1 CYLINDRICAL)
    (SURFACE-CONDITION C1 ROUGH)
    (SURFACE-CONDITION O0 ROUGH)
    (PAINTED L1 RED)
    (PAINTED G0 RED)
    (PAINTED F0 YELLOW)
    (SURFACE-CONDITION I0 POLISHED)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION E1 SMOOTH)
    (PAINTED D0 YELLOW)
    (SURFACE-CONDITION L1 SMOOTH)
    (SURFACE-CONDITION S0 POLISHED)
    (SURFACE-CONDITION I1 POLISHED)
    (SURFACE-CONDITION K0 POLISHED)
    (SHAPE K0 CYLINDRICAL)
    (SURFACE-CONDITION G1 SMOOTH)
    (PAINTED H1 RED)
    (SURFACE-CONDITION Q0 SMOOTH)
    (SHAPE I1 CYLINDRICAL)
    (SURFACE-CONDITION B0 ROUGH)
    (PAINTED U0 RED)
    (SHAPE L1 CYLINDRICAL)
    (PAINTED I0 RED)
    (SHAPE Q0 CYLINDRICAL)
    (SHAPE O0 CYLINDRICAL)
    (PAINTED A0 BLUE)
    (SHAPE J1 CYLINDRICAL)
    (SURFACE-CONDITION N0 ROUGH)
    (PAINTED Q0 YELLOW)
    (SURFACE-CONDITION H1 ROUGH)
)))
