(define (problem schedule-19-2)
(:domain schedule)
(:objects
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
    (PAINTED A0 BLUE)
    (HAS-HOLE A0 THREE BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION B0 POLISHED)
    (PAINTED B0 YELLOW)
    (HAS-HOLE B0 ONE BACK)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 SMOOTH)
    (PAINTED C0 RED)
    (HAS-HOLE C0 ONE FRONT)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 OBLONG)
    (SURFACE-CONDITION D0 POLISHED)
    (PAINTED D0 RED)
    (HAS-HOLE D0 THREE BACK)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION E0 ROUGH)
    (PAINTED E0 YELLOW)
    (HAS-HOLE E0 TWO BACK)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CIRCULAR)
    (SURFACE-CONDITION F0 SMOOTH)
    (PAINTED F0 BLUE)
    (HAS-HOLE F0 THREE FRONT)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 CYLINDRICAL)
    (SURFACE-CONDITION G0 SMOOTH)
    (PAINTED G0 BLUE)
    (HAS-HOLE G0 THREE BACK)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CYLINDRICAL)
    (SURFACE-CONDITION H0 ROUGH)
    (PAINTED H0 BLUE)
    (HAS-HOLE H0 THREE BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 OBLONG)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 YELLOW)
    (HAS-HOLE I0 THREE BACK)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 CIRCULAR)
    (SURFACE-CONDITION J0 POLISHED)
    (PAINTED J0 RED)
    (HAS-HOLE J0 THREE BACK)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 OBLONG)
    (SURFACE-CONDITION K0 SMOOTH)
    (PAINTED K0 YELLOW)
    (HAS-HOLE K0 ONE FRONT)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 CIRCULAR)
    (SURFACE-CONDITION L0 POLISHED)
    (PAINTED L0 BLACK)
    (HAS-HOLE L0 ONE BACK)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 OBLONG)
    (SURFACE-CONDITION M0 POLISHED)
    (PAINTED M0 BLUE)
    (HAS-HOLE M0 ONE BACK)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CIRCULAR)
    (SURFACE-CONDITION N0 POLISHED)
    (PAINTED N0 RED)
    (HAS-HOLE N0 ONE FRONT)
    (TEMPERATURE N0 COLD)
    (SHAPE O0 CIRCULAR)
    (SURFACE-CONDITION O0 POLISHED)
    (PAINTED O0 BLUE)
    (HAS-HOLE O0 TWO FRONT)
    (TEMPERATURE O0 COLD)
    (SHAPE Q0 CYLINDRICAL)
    (SURFACE-CONDITION Q0 SMOOTH)
    (PAINTED Q0 BLUE)
    (HAS-HOLE Q0 TWO BACK)
    (TEMPERATURE Q0 COLD)
    (SHAPE P0 CYLINDRICAL)
    (SURFACE-CONDITION P0 ROUGH)
    (PAINTED P0 RED)
    (HAS-HOLE P0 ONE BACK)
    (TEMPERATURE P0 COLD)
    (SHAPE R0 CIRCULAR)
    (SURFACE-CONDITION R0 ROUGH)
    (PAINTED R0 RED)
    (HAS-HOLE R0 THREE FRONT)
    (TEMPERATURE R0 COLD)
    (SHAPE S0 CYLINDRICAL)
    (SURFACE-CONDITION S0 ROUGH)
    (PAINTED S0 BLACK)
    (HAS-HOLE S0 ONE BACK)
    (TEMPERATURE S0 COLD)
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
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 POLISHED)
    (SURFACE-CONDITION K0 ROUGH)
    (PAINTED E0 BLUE)
    (SURFACE-CONDITION A0 POLISHED)
    (SURFACE-CONDITION P0 POLISHED)
    (SHAPE N0 CYLINDRICAL)
    (SHAPE L0 CYLINDRICAL)
    (PAINTED B0 BLACK)
    (PAINTED O0 RED)
    (PAINTED D0 BLUE)
    (SURFACE-CONDITION L0 ROUGH)
    (SHAPE F0 CYLINDRICAL)
    (PAINTED A0 YELLOW)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED J0 YELLOW)
    (PAINTED R0 YELLOW)
    (PAINTED L0 YELLOW)
    (SURFACE-CONDITION E0 SMOOTH)
)))
