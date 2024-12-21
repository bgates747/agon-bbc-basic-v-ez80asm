        .ASSUME ADL = 0	
        .ORG 0x0000

        include "mos_api.inc"
        include "equs.inc"
        include "macros.inc"
        include "agon_init.asm"
        include "agon_graphics.asm"
        include "agon_gpio.asm"
        include "agon_interrupt.asm"
        include "agon_misc.asm"
        include "agon_os.asm"
        include "agon_sound.asm"
        include "acorn.asm"
        include "asmb.asm"
        include "eval.asm"
        include "exec.asm"
        include "main.asm"
        include "math.asm"
        include "data.asm"
