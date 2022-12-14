(define (problem schedule-14-2)
(:domain schedule)
(:objects
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
    (HAS-HOLE A0 ONE BACK)
    (TEMPERATURE A0 COLD)
    (SHAPE B0 CYLINDRICAL)
    (SURFACE-CONDITION B0 SMOOTH)
    (PAINTED B0 RED)
    (HAS-HOLE B0 THREE BACK)
    (TEMPERATURE B0 COLD)
    (SHAPE C0 CIRCULAR)
    (SURFACE-CONDITION C0 POLISHED)
    (PAINTED C0 RED)
    (HAS-HOLE C0 ONE FRONT)
    (TEMPERATURE C0 COLD)
    (SHAPE D0 CYLINDRICAL)
    (SURFACE-CONDITION D0 ROUGH)
    (PAINTED D0 RED)
    (HAS-HOLE D0 ONE FRONT)
    (TEMPERATURE D0 COLD)
    (SHAPE E0 CYLINDRICAL)
    (SURFACE-CONDITION E0 ROUGH)
    (PAINTED E0 BLACK)
    (HAS-HOLE E0 THREE FRONT)
    (TEMPERATURE E0 COLD)
    (SHAPE F0 CYLINDRICAL)
    (SURFACE-CONDITION F0 SMOOTH)
    (PAINTED F0 YELLOW)
    (HAS-HOLE F0 THREE BACK)
    (TEMPERATURE F0 COLD)
    (SHAPE G0 CIRCULAR)
    (SURFACE-CONDITION G0 POLISHED)
    (PAINTED G0 YELLOW)
    (HAS-HOLE G0 TWO FRONT)
    (TEMPERATURE G0 COLD)
    (SHAPE H0 CIRCULAR)
    (SURFACE-CONDITION H0 POLISHED)
    (PAINTED H0 YELLOW)
    (HAS-HOLE H0 ONE BACK)
    (TEMPERATURE H0 COLD)
    (SHAPE I0 CYLINDRICAL)
    (SURFACE-CONDITION I0 ROUGH)
    (PAINTED I0 BLUE)
    (HAS-HOLE I0 TWO FRONT)
    (TEMPERATURE I0 COLD)
    (SHAPE J0 OBLONG)
    (SURFACE-CONDITION J0 SMOOTH)
    (PAINTED J0 BLACK)
    (HAS-HOLE J0 TWO BACK)
    (TEMPERATURE J0 COLD)
    (SHAPE K0 CIRCULAR)
    (SURFACE-CONDITION K0 POLISHED)
    (PAINTED K0 BLUE)
    (HAS-HOLE K0 THREE BACK)
    (TEMPERATURE K0 COLD)
    (SHAPE L0 OBLONG)
    (SURFACE-CONDITION L0 ROUGH)
    (PAINTED L0 RED)
    (HAS-HOLE L0 THREE FRONT)
    (TEMPERATURE L0 COLD)
    (SHAPE M0 CYLINDRICAL)
    (SURFACE-CONDITION M0 POLISHED)
    (PAINTED M0 BLUE)
    (HAS-HOLE M0 THREE FRONT)
    (TEMPERATURE M0 COLD)
    (SHAPE N0 CYLINDRICAL)
    (SURFACE-CONDITION N0 ROUGH)
    (PAINTED N0 BLUE)
    (HAS-HOLE N0 TWO BACK)
    (TEMPERATURE N0 COLD)
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
    (PAINTED L0 YELLOW)
    (PAINTED K0 YELLOW)
    (SURFACE-CONDITION A0 SMOOTH)
    (SURFACE-CONDITION B0 POLISHED)
    (PAINTED C0 BLACK)
    (PAINTED B0 YELLOW)
    (SURFACE-CONDITION I0 SMOOTH)
    (SHAPE G0 CYLINDRICAL)
    (PAINTED J0 YELLOW)
    (SURFACE-CONDITION F0 ROUGH)
    (SHAPE C0 CYLINDRICAL)
    (PAINTED E0 BLUE)
    (SHAPE L0 CYLINDRICAL)
    (PAINTED N0 RED)
)))
