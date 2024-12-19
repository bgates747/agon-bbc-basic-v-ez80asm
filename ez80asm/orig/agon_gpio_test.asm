        ASSUME ADL = 0
        
PB_DDR: EQU 9Bh

        MACRO RES_GPIO REG, VAL
        PUSH    BC
        LD      A, VAL
        CPL
        LD      C, A
        IN0     A, (REG)
        AND     C
        OUT0    (REG), A
        POP     BC
        ENDMACRO

        RES_GPIO PB_DDR,B