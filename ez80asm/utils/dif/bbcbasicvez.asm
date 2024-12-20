; --- Begin mos_api.inc ---
;
; Title:	AGON MOS - API for user projects
; Author:	Dean Belfield
; Created:	03/08/2022
; Last Updated:	11/11/2023
;
; Modified: 11/14/2024 by Brandon R. Gates for ez80asm compatibility
;
; Modinfo:
; 05/08/2022:	Added mos_feof
; 09/08/2022:	Added system variables: cursorX, cursorY
; 18/08/2022:	Added system variables: scrchar, scrpixel, audioChannel, audioSuccess, vpd_pflags
; 05/09/2022:	Added mos_ren, vdp_pflag_mode
; 24/09/2022:	Added mos_getError, mos_mkdir
; 13/10/2022:	Added mos_oscli
; 23/02/2023:	Added more sysvars, fixed typo in sysvar_audioSuccess, offsets for sysvar_scrCols, sysvar_scrRows
; 04/03/2023:	Added sysvar_scrpixelIndex
; 08/03/2023:	Renamed sysvar_keycode to sysvar_keyascii, added sysvar_vkeycode
; 15/03/2023:	Added mos_copy, mos_getrtc, mos_setrtc, rtc, vdp_pflag_rtc
; 21/03/2023:	Added mos_setintvector, sysvars for keyboard status, vdu codes for vdp
; 22/03/2023:	The VDP commands are now indexed from 0x80
; 29/03/2023:	Added mos_uopen, mos_uclose, mos_ugetc, mos_uputc
; 13/04/2023:	Added FatFS file structures (FFOBJID, FIL, DIR, FILINFO)
; 15/04/2023:	Added mos_getfil, mos_fread, mos_fwrite and mos_flseek
; 19/05/2023:	Added sysvar_scrMode
; 05/06/2023:	Added sysvar_rtcEnable
; 03/08/2023:	Added mos_setkbvector
; 10/08/2023:	Added mos_getkbmap
; 11/11/2023:	Added mos_i2c_open, mos_i2c_close, mos_i2c_write and mos_i2c_read
; 11/14/2024:   FatFS structs modified for ez80asm compatibility
;
; VDP control (VDU 23, 0, n)
;
vdp_gp:			EQU 	80h
vdp_keycode:		EQU 	81h
vdp_cursor:		EQU	82h
vdp_scrchar:		EQU	83h
vdp_scrpixel:		EQU	84h
vdp_audio:		EQU	85h
vdp_mode:		EQU	86h
vdp_rtc:		EQU	87h
vdp_keystate:		EQU	88h
vdp_logicalcoords:	EQU	C0h
vdp_terminalmode:	EQU	FFh

; MOS high level functions
;
mos_getkey:		EQU	00h
mos_load:		EQU	01h
mos_save:		EQU	02h
mos_cd:			EQU	03h
mos_dir:		EQU	04h
mos_del:		EQU	05h
mos_ren:		EQU	06h
mos_mkdir:		EQU	07h
mos_sysvars:		EQU	08h
mos_editline:		EQU	09h
mos_fopen:		EQU	0Ah
mos_fclose:		EQU	0Bh
mos_fgetc:		EQU	0Ch
mos_fputc:		EQU	0Dh
mos_feof:		EQU	0Eh
mos_getError:		EQU	0Fh
mos_oscli:		EQU	10h
mos_copy:		EQU	11h
mos_getrtc:		EQU	12h
mos_setrtc:		EQU	13h
mos_setintvector:	EQU	14h
mos_uopen:		EQU	15h
mos_uclose:		EQU	16h
mos_ugetc:		EQU	17h
mos_uputc:		EQU 	18h
mos_getfil:		EQU	19h
mos_fread:		EQU	1Ah
mos_fwrite:		EQU	1Bh
mos_flseek:		EQU	1Ch
mos_setkbvector:	EQU	1Dh
mos_getkbmap:		EQU	1Eh
mos_i2c_open:		EQU	1Fh
mos_i2c_close:		EQU	20h
mos_i2c_write:		EQU	21h
mos_i2c_read:		EQU	22h


; FatFS file access functions
;
ffs_fopen:		EQU	80h
ffs_fclose:		EQU	81h
ffs_fread:		EQU	82h
ffs_fwrite:		EQU	83h
ffs_flseek:		EQU	84h
ffs_ftruncate:		EQU	85h
ffs_fsync:		EQU	86h
ffs_fforward:		EQU	87h
ffs_fexpand:		EQU	88h
ffs_fgets:		EQU	89h
ffs_fputc:		EQU	8Ah
ffs_fputs:		EQU	8Bh
ffs_fprintf:		EQU	8Ch
ffs_ftell:		EQU	8Dh
ffs_feof:		EQU	8Eh
ffs_fsize:		EQU	8Fh
ffs_ferror:		EQU	90h

; FatFS directory access functions
;
ffs_dopen:		EQU	91h
ffs_dclose:		EQU	92h
ffs_dread:		EQU	93h
ffs_dfindfirst:		EQU	94h
ffs_dfindnext:		EQU	95h

; FatFS file and directory management functions
;
ffs_stat:		EQU	96h
ffs_unlink:		EQU	97h
ffs_rename:		EQU	98h
ffs_chmod:		EQU	99h
ffs_utime:		EQU	9Ah
ffs_mkdir:		EQU	9Bh
ffs_chdir:		EQU	9Ch
ffs_chdrive:		EQU	9Dh
ffs_getcwd:		EQU	9Eh

; FatFS volume management and system configuration functions
;
ffs_mount:		EQU	9Fh
ffs_mkfs:		EQU	A0h
ffs_fdisk:		EQU	A1h
ffs_getfree:		EQU	A2h
ffs_getlabel:		EQU	A3h
ffs_setlabel:		EQU	A4h
ffs_setcp:		EQU	A5h
	
; File access modes
;
fa_read:		EQU	01h
fa_write:		EQU	02h
fa_open_existing:	EQU	00h
fa_create_new:		EQU	04h
fa_create_always:	EQU	08h
fa_open_always:		EQU	10h
fa_open_append:		EQU	30h
	
; System variable indexes for api_sysvars
; Index into _sysvars in globals.asm
;
sysvar_time:		EQU	00h	; 4: Clock timer in centiseconds (incremented by 2 every VBLANK)
sysvar_vpd_pflags:	EQU	04h	; 1: Flags to indicate completion of VDP commands
sysvar_keyascii:	EQU	05h	; 1: ASCII keycode, or 0 if no key is pressed
sysvar_keymods:		EQU	06h	; 1: Keycode modifiers
sysvar_cursorX:		EQU	07h	; 1: Cursor X position
sysvar_cursorY:		EQU	08h	; 1: Cursor Y position
sysvar_scrchar:		EQU	09h	; 1: Character read from screen
sysvar_scrpixel:	EQU	0Ah	; 3: Pixel data read from screen (R,B,G)
sysvar_audioChannel:	EQU	0Dh	; 1: Audio channel 
sysvar_audioSuccess:	EQU	0Eh	; 1: Audio channel note queued (0 = no, 1 = yes)
sysvar_scrWidth:	EQU	0Fh	; 2: Screen width in pixels
sysvar_scrHeight:	EQU	11h	; 2: Screen height in pixels
sysvar_scrCols:		EQU	13h	; 1: Screen columns in characters
sysvar_scrRows:		EQU	14h	; 1: Screen rows in characters
sysvar_scrColours:	EQU	15h	; 1: Number of colours displayed
sysvar_scrpixelIndex:	EQU	16h	; 1: Index of pixel data read from screen
sysvar_vkeycode:	EQU	17h	; 1: Virtual key code from FabGL
sysvar_vkeydown:	EQU	18h	; 1: Virtual key state from FabGL (0=up, 1=down)
sysvar_vkeycount:	EQU	19h	; 1: Incremented every time a key packet is received
sysvar_rtc:		EQU	1Ah	; 6: Real time clock data
sysvar_spare:		EQU	20h	; 2: Spare, previously used by rtc
sysvar_keydelay:	EQU	22h	; 2: Keyboard repeat delay
sysvar_keyrate:		EQU	24h	; 2: Keyboard repeat reat
sysvar_keyled:		EQU	26h	; 1: Keyboard LED status
sysvar_scrMode:		EQU	27h	; 1: Screen mode
sysvar_rtcEnable:	EQU	28h	; 1: RTC enable flag (0: disabled, 1: use ESP32 RTC)
sysvar_mouseX:		EQU	29h	; 2: Mouse X position
sysvar_mouseY:		EQU	2Bh	; 2: Mouse Y position
sysvar_mouseButtons:	EQU	2Dh	; 1: Mouse button state
sysvar_mouseWheel:	EQU	2Eh	; 1: Mouse wheel delta
sysvar_mouseXDelta:	EQU	2Fh	; 2: Mouse X delta
sysvar_mouseYDelta:	EQU	31h	; 2: Mouse Y delta
;
; Flags for the VPD protocol
;
vdp_pflag_cursor:	EQU	00000001b
vdp_pflag_scrchar:	EQU	00000010b
vdp_pflag_point:	EQU	00000100b
vdp_pflag_audio:	EQU	00001000b
vdp_pflag_mode:		EQU	00010000b
vdp_pflag_rtc:		EQU	00100000b
vdp_pflag_mouse:	EQU	01000000b
; vdp_pflag_buffered:	EQU	10000000b


; FatFS structures
; These mirror the structures contained in src_fatfs/ff.h in the MOS project
;
; Object ID and allocation information (FFOBJID)
FFOBJID.fs:       EQU 0    ; Pointer to the hosting volume of this object
FFOBJID.id:       EQU 3    ; Hosting volume mount ID
FFOBJID.attr:     EQU 5    ; Object attribute
FFOBJID.stat:     EQU 6    ; Object chain status
FFOBJID.sclust:   EQU 7    ; Object data start cluster
FFOBJID.objsize:  EQU 11   ; Object size
FFOBJID_SIZE:     EQU 15   ; Total size of FFOBJID structure
;
; File object structure (FIL)
;
FIL.obj:          EQU 0                  ; Object identifier (FFOBJID fields start here)
FIL.flag:         EQU FFOBJID_SIZE       ; File status flags
FIL.err:          EQU FFOBJID_SIZE + 1   ; Abort flag (error code)
FIL.fptr:         EQU FFOBJID_SIZE + 2   ; File read/write pointer
FIL.clust:        EQU FFOBJID_SIZE + 6   ; Current cluster of fptr
FIL.sect:         EQU FFOBJID_SIZE + 10  ; Sector number appearing in buf[]
FIL.dir_sect:     EQU FFOBJID_SIZE + 14  ; Sector number containing the directory entry
FIL.dir_ptr:      EQU FFOBJID_SIZE + 18  ; Pointer to the directory entry in the win[]
FIL.obj.objsize:         EQU FFOBJID_SIZE + 21  ; Total size of FIL structure
;
; Directory object structure (DIR)
; 
DIR.obj:          EQU 0                  ; Object identifier (FFOBJID fields start here)
DIR.dptr:         EQU FFOBJID_SIZE       ; Current read/write offset
DIR.clust:        EQU FFOBJID_SIZE + 4   ; Current cluster
DIR.sect:         EQU FFOBJID_SIZE + 8   ; Current sector
DIR.dir:          EQU FFOBJID_SIZE + 12  ; Pointer to the directory item in the win[]
DIR.fn:           EQU FFOBJID_SIZE + 15  ; SFN (in/out) {body[8],ext[3],status[1]}
DIR.blk_ofs:      EQU FFOBJID_SIZE + 27  ; Offset of current entry block being processed
DIR_SIZE:         EQU FFOBJID_SIZE + 31  ; Total size of DIR structure
;
; File information structure (FILINFO)
;
FILINFO.fsize:    EQU 0    ; File size
FILINFO.fdate:    EQU 4    ; Modified date
FILINFO.ftime:    EQU 6    ; Modified time
FILINFO.fattrib:  EQU 8    ; File attribute
FILINFO.altname:  EQU 9    ; Alternative file name
FILINFO.fname:    EQU 22   ; Primary file name
FILINFO_SIZE:     EQU 278  ; Total size of FILINFO structure
;
; Macro for calling the API
; Parameters:
; - function: One of the function numbers listed above
;
			MACRO MOSCALL	function
			LD	A, function
			RST.LIS	08h
			ENDMACRO 	; --- End mos_api.inc ---

; --- Begin equs.inc ---
; ; TEMPORARY LABELS FOR PIECEMEAL ASSEMBLY
; STAVAR: EQU 0
; ACCS: EQU 0
; ; END TEMPORARY LABELS FOR PIECEMEAL ASSEMBLY

;
; Title:	BBC Basic for AGON - Equs
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	05/12/2024
;
; Modinfo:
; 05/12/2024:	Removed Stack_Top

;			XREF		STAVAR
;			XREF		ACCS
			
RAM_Top:		EQU		0FF00h
	
; For GPIO
; PA not available on eZ80L92
;
PA_DR:			EQU		96h
PA_DDR:			EQU		97h
PA_ALT1:		EQU		98h
PA_ALT2:		EQU		99h
PB_DR:          	EQU		9Ah
PB_DDR:        	 	EQU		9Bh
PB_ALT1:        	EQU		9Ch
PB_ALT2:        	EQU		9Dh
PC_DR:          	EQU		9Eh
PC_DDR:         	EQU		9Fh
PC_ALT1:        	EQU		A0h
PC_ALT2:        	EQU		A1h
PD_DR:          	EQU		A2h
PD_DDR:			EQU		A3h
PD_ALT1:		EQU		A4h
PD_ALT2:		EQU		A5h
	
GPIOMODE_OUT:		EQU		0	; Output
GPIOMODE_IN:		EQU		1	; Input
GPIOMODE_DIO:		EQU		2	; Open Drain IO
GPIOMODE_SIO:		EQU		3	; Open Source IO
GPIOMODE_INTD:		EQU		4	; Interrupt, Dual Edge
GPIOMODE_ALTF:		EQU		5;	; Alt Function
GPIOMODE_INTAL:		EQU		6	; Interrupt, Active Low
GPIOMODE_INTAH:		EQU		7	; Interrupt, Active High
GPIOMODE_INTFE:		EQU		8	; Interrupt, Falling Edge
GPIOMODE_INTRE:		EQU		9	; Interrupt, Rising Edge
	
; Originally in ram.asm
;
; OC:			EQU     STAVAR+15*4     ; CODE ORIGIN (O%) ; back to data.asm
; PC:			EQU     STAVAR+16*4     ; PROGRAM COUNTER (P%) ; back to data.asm
; VDU_BUFFER:		EQU	ACCS		; Storage for VDU commands ; moved to data.asm

; Originally in main.asm
;
CR:			EQU     0DH
LF:			EQU     0AH
ESC:			EQU     1BH
; --- End equs.inc ---

; --- Begin macros.inc ---
;
; Title:	BBC Basic Interpreter - Z80 version
;		Useful macros
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	04/12/2024
;
; Modinfo:

        MACRO EXREG rp1, rp2
        PUSH    rp1 
        POP     rp2
        ENDMACRO 

        MACRO ADD8U_DE ; reg
        ADD     A, E 
        LD      E, A 
        ADC     A, D
        SUB     E
        LD      D, A 
        ENDMACRO 

        MACRO ADD8U_HL ; reg
        ADD     A, L 
        LD      L, A 
        ADC     A, H
        SUB     L
        LD      H, A 
        ENDMACRO 

        MACRO VDU VAL
        LD      A, VAL
        CALL    OSWRCH
        ENDMACRO

        MACRO SET_GPIO REG, VAL
        IN0     A, (REG)
        OR      VAL
        OUT0    (REG), A
        ENDMACRO
                
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
; --- End macros.inc ---

; --- Begin agon_init.asm ---
;
; Title:	BBC Basic for AGON - Initialisation Code
;		Initialisation Code
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	14/12/2024
;
; Modinfo:
; 14/12/2024:	Fix for *BYE command

;			SEGMENT __VECTORS
			
;			XREF	START
;			XREF	ACCS
;			XREF	TELL
		
			.ASSUME	ADL = 0
			.ORG 0x0000
				
			; INCLUDE	"equs.inc"
			
argv_ptrs_max:		EQU	16				; Maximum number of arguments allowed in argv
			
;
; Start in mixed mode. Assumes MBASE is set to correct segment
;	
			JP	_start				; Jump to start
			DS	5

RST_08:			RST.LIS	08h				; API call
			RET
			DS 	5
			
RST_10:			RST.LIS 10h				; Output
			RET
			DS	5
			
RST_18:			RST.LIS	18h				; Block Output
			RET
			DS	5
			
RST_20:			DS	8
RST_28:			DS	8
RST_30:			DS	8	

;	
; The NMI interrupt vector (not currently used by AGON)
;
RST_38:			EI
			RETI
;
; The header stuff is from byte 64 onwards
;
			ALIGN	64
			
			DB	"MOS"				; Flag for MOS - to confirm this is a valid MOS command
			DB	00h				; MOS header version 0
			DB	00h				; Flag for run mode (0: Z80, 1: ADL)
			
_exec_name:		DB	"BBCBASIC.BIN", 0		; The executable name, only used in argv	
	
;
; And the code follows on immediately after the header
;
_start:			PUSH.LIL	IY			; Preserve IY

			LD		IY, 0			; Preserve SPS
			ADD		IY, SP
			PUSH.LIL	IY

			EX		(SP), HL		; Get the SPS part of the return address
			PUSH.LIL	HL
			EX		(SP), HL		; And restore it for BASIC
	
			PUSH.LIL	AF			; Preserve the rest of the registers
			PUSH.LIL	BC
			PUSH.LIL	DE
			PUSH.LIL	IX

			LD		A, MB			; Segment base
			LD		IX, argv_ptrs		; The argv array pointer address
			CALL		_set_aix24		; Convert to a 24-bit address			
			PUSH.LIL	IX
			CALL		_parse_params		; Parse the parameters
			POP.LIL		IX			; IX: argv
			LD		B, 0			;  C: argc
			CALL		_main			; Start user code

			POP.LIL		IX			; Restore the registers
			POP.LIL		DE
			POP.LIL		BC
			POP.LIL		AF

			EX		DE, HL 			; DE: Return code from BASIC
			POP.LIL		HL 			; The SPS part of the return address
			POP.LIL		IY			; Get the preserved SPS
			LD		SP, IY			; Restore SPS
			EX		(SP), HL		; Store the SPS part of the return address on the stack
			EX		DE, HL 			; HL: Return code from BASIC
			
			POP.LIL		IY			; Restore IY
			RET.L					; Return to MOS

; The main routine
; IXU: argv - pointer to array of parameters
;   C: argc - number of parameters
; Returns:
;  HL: Error code, or 0 if OK
;
_main:			LD	HL, ACCS		; Clear the ACCS
			LD	(HL), 0
			LD	A, C			
			CP	2
			JR	Z, _autoload		; 2 parameters = autoload
			JR	C, _startbasic		; 1 parameter = normal start
;			CALL	STAR_VERSION		; Output the AGON version
			CALL	TELL
			DB	"Usage:\n\r"
			DB	"RUN . <filename>\n\r", 0
			LD	HL, 0			; The error code
			RET
;							
_autoload:		LD.LIL	HL, (IX+3)		; HLU: Address of filename
			LD	DE, ACCS		;  DE: Destination address
@@:			LD.LIL	A, (HL)			; Fetch the filename byte
			LD	(DE), A			; 
			INC.LIL	HL			; Increase the source pointer
			INC	E			; We only need to increase E as ACCS is on a page boundary
			JR	NZ, @B			; Loop until we hit a 0 byte
			DEC	E
			LD	A, CR
			LD	(DE), A			; Replace the 0 byte with a CR for BBC BASIC
;
_startbasic:		POP	 HL			; Pop the return address to init off SPS
			PUSH.LIL HL 			; Stack it on SPL (*BYE will use this as the return address)
			JP	 START			; And start BASIC

; Parse the parameter string into a C array
; Parameters
; -   A: Segment base
; - HLU: Address of parameter string
; - IXU: Address for array pointer storage
; Returns:
; -   C: Number of parameters parsed
;
_parse_params:		LD		BC, _exec_name		; Get the address of the app name in this segment			
			CALL		_set_abc24		; Convert it to a 24-bit address based upon segment base
			LD.LIL		(IX+0), BC		; ARGV[0] = the executable name
			INC.LIL		IX
			INC.LIL		IX
			INC.LIL		IX
			CALL		_skip_spaces		; Skip HL past any leading spaces
;
			LD		BC, 1			; C: ARGC = 1 - also clears out top 16 bits of BCU
			LD		B, argv_ptrs_max - 1	; B: Maximum number of argv_ptrs
;
_parse_params_1:	PUSH		BC			; Stack ARGC	
			PUSH.LIL	HL			; Stack start address of token
			CALL		_get_token		; Get the next token
			LD		A, C			; A: Length of the token in characters
			POP.LIL		DE			; Start address of token (was in HL)
			POP		BC			; ARGC
			OR		A			; Check for A=0 (no token found) OR at end of string
			RET		Z
;
			LD.LIL		(IX+0), DE		; Store the pointer to the token
			PUSH.LIL	HL			; DE=HL
			POP.LIL		DE
			CALL		_skip_spaces		; And skip HL past any spaces onto the next character
			XOR		A
			LD.LIL		(DE), A			; Zero-terminate the token
			INC.LIL		IX
			INC.LIL		IX
			INC.LIL		IX			; Advance to next pointer position
			INC		C			; Increment ARGC
			LD		A, C			; Check for C >= A
			CP		B
			JR		C, _parse_params_1	; And loop
			RET

; Get the next token
; Parameters:
; - HL: Address of parameter string
; Returns:
; - HL: Address of first character after token
; -  C: Length of token (in characters)
;
_get_token:		LD		C, 0			; Initialise length
@@:			LD.LIL		A, (HL)			; Get the character from the parameter string
			OR		A			; Exit if 0 (end of parameter string in MOS)
			RET 		Z
			CP		13			; Exit if CR (end of parameter string in BBC BASIC)
			RET		Z
			CP		' '			; Exit if space (end of token)
			RET		Z
			INC.LIL		HL			; Advance to next character
			INC 		C			; Increment length
			JR		@B
	
; Skip spaces in the parameter string
; Parameters:
; - HL: Address of parameter string
; Returns:
; - HL: Address of next none-space character
;    F: Z if at end of string, otherwise NZ if there are more tokens to be parsed
;
_skip_spaces:		LD.LIL		A, (HL)			; Get the character from the parameter string	
			CP		' '			; Exit if not space
			RET		NZ
			INC.LIL		HL			; Advance to next character
			JR		_skip_spaces		; Increment length
			
; Set the MSB of BC (U) to A
; Parameters:
; - BC: 16-bit address
; -  A: Value to stick in U of BC
; Returns:
; - BCU
;
_set_abc24:		PUSH.LIL	HL			; Preserve HL
			PUSH.LIL	BC			; Stick BC onto SPL
			LD.LIL		HL, 2			; HL: SP+2
			ADD.LIL		HL, SP
			LD.LIL		(HL), A			; Store A in it
			POP.LIL		BC			; Fetch ammended BC
			POP.LIL		HL			; Restore HL
			RET

; Set the MSB of BC (U) to A
; Parameters:
; - IX: 16-bit address
; -  A: Value to stick in U of BC
; Returns:
; - IXU
;
_set_aix24:		PUSH.LIL	IX			; Stick IX onto SPL
			LD.LIL		IX, 2			; IX: SP+2
			ADD.LIL		IX, SP
			LD.LIL		(IX), A			; Store A in it
			POP.LIL		IX			; Fetch ammended IX
			RET
			
; Storage for the argv array pointers
;
argv_ptrs:		BLKP	argv_ptrs_max, 0		; Storage for the argv array pointers
; --- End agon_init.asm ---

; --- Begin acorn.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;PATCH FOR BBC BASIC TO CP/M 2.2 & 3.0
;* ACORN COMPUTERS Z80 TUBE VERSION  *
;(C) COPYRIGHT R.T.RUSSELL, 02-01-1984
;VERSION 5.0, 12-07-2024
;
;                XREF	OSWRCH	
;                XREF	OSWORD	
;                XREF	OSBYTE	
;
; ESC            EQU	1BH	
TBY:            EQU	0FH	
; TTO:            EQU	0B8H in main.asm
TFILL:          EQU	03H	
;
;                XREF	ITEMI	
;                XREF	EXPRI	
;                XREF	COMMA	
;                XREF	TERMQ	
;                XREF	BRAKET	
;                XREF	EXTERR	
;                XREF	STOREN	
;                XREF	TRAP	
;                XREF	VAR_	
;                XREF	NXT	
;                XREF	XEQ	
;
;                XREF	ACCS	
;                XREF	COUNT	
;                XREF	WIDTH	
;                XREF	SCRAP	
;
;                XDEF	OSCALL	
;                XDEF	CLRSCN	
;                XDEF	PUTCSR	
;                XDEF	GETCSR	
;                XDEF	PUTIME	
;                XDEF	GETIME	
;                XDEF	OSKEY	
;
;                XDEF	CLG	
;                XDEF	MOVE	
;                XDEF	DRAW	
;                XDEF	PLOT	
;                XDEF	MODE	
;                XDEF	COLOUR	
;                XDEF	GCOL	
;                XDEF	ADVAL	
;                XDEF	SOUND	
;                XDEF	ENVEL	
;                XDEF	POINT	
;
;                XDEF	CIRCLE	
;                XDEF	ELLIPS	
;                XDEF	FILL	
;                XDEF	MOUSE	
;                XDEF	ORIGIN	
;                XDEF	RECTAN	
;                XDEF	LINE	
;                XDEF	TINT	
;                XDEF	WAIT	
;                XDEF	SYS	
;                XDEF	CSRON	
;                XDEF	CSROFF	
;
;                XDEF	PUTIMS	
;                XDEF	GETIMS	
;                XDEF	TINTFN	
;                XDEF	MODEFN	
;                XDEF	WIDFN	
;
;GETIME	- Read elapsed-time clock.
;  	  Outputs:  DEHL = elapsed time (centiseconds)
; 	  Destroys: A,D,E,H,L,F
;
GETIME:         LD	A,1	
                LD	HL,SCRAP	
                CALL	OSWORD	
                LD	HL,SCRAP	
                LD	E,(HL)	
                INC	HL	
                LD	D,(HL)	
                INC	HL	
                LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                EX	DE,HL	
                RET	
;
;GETIMS	- Read real-time clock as string.
;  	  Outputs:  TIME$ in string accumulator
;                   E = string length (25)
; 	  Destroys: A,B,C,D,E,H,L,F
;
GETIMS:         LD	A,14	
                LD	HL,SCRAP	
                LD	(HL),0	
                CALL	OSWORD	
                LD	HL,SCRAP	
                LD	DE,ACCS	
                LD	A,(HL)	
                CP	E	
                RET	Z	
                LD	BC,25	
                LDIR	
                RET	
;
;
;PUTIME	- Load elapsed-time clock.
;   	  Inputs:   DEHL = time to load (centiseconds)
; 	  Destroys: A,D,E,H,L,F
;
PUTIME:         PUSH	IX	
                LD	IX,SCRAP	
                LD	(IX+0),L	
                LD	(IX+1),H	
                LD	(IX+2),E	
                LD	(IX+3),D	
                LD	A,2	
                LD	HL,SCRAP	
                CALL	OSWORD	
                POP	IX	
                RET	
;
;PUTIMS	- Wtite real-time clock as string.
;  	  Inputs:   string in string accumulator
;                   E = string length
; 	  Destroys: A,B,C,D,E,H,L,F
;
PUTIMS:         LD	A,E		;Length	
                CP	26	
                RET	NC	
                LD	B,0	
                LD	C,A	
                LD	DE,SCRAP+1	
                LD	HL,ACCS	
                LDIR	
                LD	HL,SCRAP	
                LD	(HL),A	
                LD	A,15	
                JP	OSWORD	
;
;
;CLRSCN	- Clear screen.
; 	  Destroys: A,D,E,H,L,F
;
CLRSCN:         LD	A,0CH	
                JP	OSWRCH	
;
;
;OSKEY	- Sample keyboard with specified wait.
;   	  Inputs:   HL = Time to wait (centiseconds)
;  	  Outputs:  Carry reset indicates time-out.
;                   If carry set, A = character typed.
; 	  Destroys: A,D,E,H,L,F
;
OSKEY:          LD	A,129	
                CALL	OSBYTE	
                LD	A,H	
                OR	A	
                RET	NZ		;TIME-OUT, CARRY RESET	
                LD	A,L	
                SCF	
                RET			;NORMAL, CARRY SET	
;
;PUTCSR	- Move cursor to specified position.
;   	  Inputs:   DE = horizontal position (LHS=0)
;                   HL = vertical position (TOP=0)
; 	  Destroys: A,D,E,H,L,F
;
PUTCSR:         LD	A,1FH	
                CALL	OSWRCH	
                LD	A,E	
                CALL	OSWRCH	
                LD	A,L	
                JP	OSWRCH	
;
;GETCSR	- Return cursor coordinates.
;   	  Outputs:  DE = X coordinate (POS)
;                   HL = Y coordinate (VPOS)
;  	  Destroys: A,D,E,H,L,F
;
GETCSR:         LD	A,134	
                CALL	OSBYTE	
                LD	E,L	
                LD	L,H	
                LD	D,0	
                LD	H,D	
                RET	
;
;POINT - var=POINT(x,y)
;
POINT:          CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	DE	
                CALL	BRAKET	
                LD	IX,SCRAP	
                LD	(IX+0),E	
                LD	(IX+1),D	
                LD	(IX+2),L	
                LD	(IX+3),H	
                LD	HL,SCRAP	
                LD	A,9	
                CALL	OSWORD	
                LD	A,(IX+4)	
                LD	L,A	
                ADD	A,1	
                SBC	A,A	
                LD	H,A	
RETEXX:         EXX	
                LD	H,A	
                LD	L,A	
                XOR	A	
                LD	C,A	
                RET	
;
;ADVAL - var=ADVAL(n)
;
ADVAL:          CALL	ITEMI	
                EXX	
                LD	A,128	
                CALL	OSBYTE	
                XOR	A	
                JR	RETEXX	
;
;MODEFN - var=MODE
;
MODEFN:         LD	A,135	
                CALL	OSBYTE	
                LD	L,H	
RETU8:          XOR	A	
                LD	H,A	
                JR	RETEXX	
;
;WIDFN - var=WIDTH
;
WIDFN:          LD	A,(WIDTH)	
                LD	L,A	
                JR	RETU8	
;
;ENVEL - ENVELOPE var,var,var,var,var,var,var,
;                 var,var,var,var,var,var,var
;
ENVEL:          LD	B,0	
                LD	IX,SCRAP	
                PUSH	BC	
                PUSH	IX	
ENVEL1:         CALL	EXPRI	
                EXX	
                POP	IX	
                POP	BC	
                LD	(IX),L	
                LD	A,B	
                CP	13	
                JR	Z,ENVEL2	
                INC	B	
                INC	IX	
                PUSH	BC	
                PUSH	IX	
                CALL	COMMA	
                JR	ENVEL1	
ENVEL2:         LD	HL,SCRAP	
                LD	A,8	
                CALL	OSWORD	
                JP	XEQ	
;
;SOUND - SOUND var,var,var,var
;
SOUND:          LD	B,0	
                LD	IX,SCRAP	
                PUSH	BC	
                PUSH	IX	
SOUND1:         CALL	EXPRI	
                EXX	
                POP	IX	
                POP	BC	
                LD	(IX+0),L	
                LD	(IX+1),H	
                INC	IX	
                INC	IX	
                INC	B	
                INC	B	
                LD	A,B	
                CP	8	
                JR	Z,SOUND2	
                PUSH	BC	
                PUSH	IX	
                CALL	COMMA	
                JR	SOUND1	
SOUND2:         LD	HL,SCRAP	
                LD	A,7	
                CALL	OSWORD	
                JP	XEQ	
;
;MODE - MODE n
;
MODE:           CALL	EXPRI	
                XOR	A	
                LD	(COUNT),A	
                EXX	
                LD	H,L	
                LD	L,22	
                CALL	WRCH2	
                JR	XEQGO1	
;
;CLG
;
CLG:            LD	A,16	
                CALL	OSWRCH	
                JR	XEQGO1	
;
;ORIGIN x,y
;
ORIGIN:         CALL    EXPRI	
                EXX	
                PUSH	HL	
                CALL    CEXPRI	
                EXX	
                POP	DE	
                LD	C,29	
                CALL	WRCH5	
                JR	XEQGO1	
;
;COLOUR n
;COLOUR n,p
;COLOUR n,r,g,b
;
COLOUR:         CALL	EXPRI		;n	
                EXX	
                LD	A,(IY)	
                CP	','	
                JR      Z,PALCOL	
                LD	H,L	
                LD	L,17	
                CALL	WRCH2	
                JR	XEQGO1	
;
PALCOL:         PUSH	HL	
                CALL	CEXPRI		;p or r	
                EXX	
                EX	DE,HL	
                LD	HL,0	
                LD	A,(IY)	
                CP	','	
                JR	NZ,PALET1	
                PUSH	DE	
                CALL	CEXPRI		;g	
                EXX	
                PUSH	HL	
                CALL	CEXPRI		;b	
                EXX	
                POP	DE	
                POP	BC	
                LD	A,L	
                POP	HL	
                LD	D,C		;r	
                LD	C,L		;n	
                LD	L,E		;g	
                LD	H,A		;b	
                LD	E,16	
                PUSH	BC	
PALET1:         POP	BC	
                LD	B,19	
                CALL	WRCH6	
                JR	XEQGO1	
;
;GCOL [a,]b
;
GCOL:           CALL	EXPRI	
                EXX	
                LD	E,0	
                LD	A,(IY)	
                CP	','	
                JR	NZ,GCOL0	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	DE	
GCOL0:          LD	H,L	
                LD	L,E	
                LD	D,18	
                CALL	WRCH3		;DLH	
XEQGO1:         JP	XEQ	
;
;CSRON  - Turn caret on
;CSROFF - Turn caret off
;
CSRON:          LD	C,1	
                JR	CSRGO	
;
CSROFF:         LD	C,0	
CSRGO:          LD	A,23	
                CALL	OSWRCH	
                LD	A,1	
                CALL	OSWRCH	
                LD	A,C	
                LD	B,8	
CSRGO1:         CALL	OSWRCH	
                XOR	A	
                DJNZ	CSRGO1	
                JR	XEQGO1	
;
;LINE x1,y1,x2,y2
;
LINE:           CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	EXPR3	
                EX	(SP),HL		;HL <- x1, (SP) <- y2	
                PUSH	BC	
                EX	DE,HL	
                LD	C,4	
                CALL	VDU25	
                POP	DE	
                POP	HL	
                LD	C,5	
                JR	PLOT4A	
;
;CIRCLE [FILL] x,y,r
;
CIRCLE:         CP	TFILL	
                PUSH	AF	
                JR	NZ,CIRCL0	
                INC	IY	
CIRCL0:         CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	BC		;y	
                POP	DE		;x	
                PUSH	HL	
                LD	L,C	
                LD	H,B	
                LD	C,4		; PLOT 4 = MOVE	
                CALL	VDU25	
                POP	DE		;r	
                LD	HL,0	
                POP	AF	
                LD	C,145		; PLOT 145 = outline circle	
                JR	NZ,PLOT4A	
                LD	C,153		; PLOT 153 = filled circle	
PLOT4A:         JR	PLOT4	
;
;ELLIPSE [FILL] x,y,a,b
;
ELLIPS:         CP	TFILL	
                PUSH	AF	
                JR	NZ,ELLIP0	
                INC	IY	
ELLIP0:         CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	EXPR3	
                EX	(SP),HL		;HL <- x, (SP) <- b	
                PUSH	BC	
                EX	DE,HL	
                LD	C,4		; PLOT 4 = Move absolute	
                CALL	VDU25	
                POP	DE		;a	
                PUSH	DE	
                LD	HL,0	
                LD	C,L		; PLOT 0 - Move relative	
                CALL	VDU25	
                POP	DE		;a	
                XOR	A	
                LD	L,A	
                LD	H,A	
                SBC	HL,DE	
                EX	DE,HL	
                POP	HL		;b	
                POP	AF	
                LD	C,193		; PLOT 193 = outline ellipse	
                JR	NZ,PLOT4	
                LD	C,201		; PLOT 201 = filled ellipse	
                JR	PLOT4	
;
;MOVE [BY} x,y
;DRAW [BY] x,y
;PLOT [BY] [n,]x,y
;FILL [BY] x,y
;
MOVE:           LD	C,4	
                JR	PLOT1	
;
DRAW:           LD	C,5	
                JR	PLOT1	
;
FILL:           LD	C,133	
                JR	PLOT1	
;
PLOT:           LD	C,69	
                CP	TBY	
                JR	Z,PLOT1	
                CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                LD	A,(IY)	
                CP	','	
                JR	Z,PLOT3	
                POP	DE	
                LD	C,69	
                JR	PLOT4	
;
PLOT1:          CP	TBY	
                JR	NZ,PLOT2	
                INC	IY	
                RES	2,C		;Change absolute to relative	
PLOT2:          PUSH	BC	
                CALL	EXPRI	
                EXX	
PLOT3:          PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	DE	
                POP	BC	
PLOT4:          CALL	VDU25	
                JP	XEQ	
;
;RECTANGLE [FILL] x,y,w[,h] [TO xnew,ynew]
;
RECTAN:         CP	TFILL	
                PUSH	AF	
                JR	NZ,RECT0	
                INC	IY	
RECT0:          CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                PUSH	HL	
                LD	A,(IY)	
                CP	','	
                JR	NZ,RECT1	
                CALL	CEXPRI	
                EXX	
RECT1:          POP	BC		;w	
                POP	DE		;y	
                EX	(SP),HL		;HL <- x, (SP) <- h	
                PUSH	BC	
                EX	DE,HL	
                LD	C,4	
                CALL	VDU25	
                LD	A,(IY)	
                CP	TTO	
                JR	Z,RECTTO	
                POP	DE		;w	
                POP	HL		;h	
                POP	AF	
                JR	NZ,OUTLIN	
                LD	C,97	
                JR	PLOT4	
;
;Block copy / move:
;
RECTTO:         INC	IY		; Bump over TO	
                CALL	EXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	BC		;newx	
                POP	DE		;w	
                EX	(SP),HL		;HL <- h, (SP) <- newy	
                PUSH	BC	
                LD	C,0	
                CALL	VDU25	
                POP	DE		;newx	
                POP	HL		;newy	
                POP	AF	
                LD	C,190		; PLOT 190 - Block copy	
                JR	NZ,PLOT4B	
                DEC	C		; PLOT 189 - Block move	
PLOT4B:         JR	PLOT4	
;
;Outline rectangle:
;
OUTLIN:         LD	C,9		; PLOT 9 - draw relative	
                PUSH	HL	
                LD	HL,0	
                CALL	VDU25		; side 1	
                POP	HL	
                PUSH	DE	
                LD	DE,0	
                CALL	VDU25		; side 2	
                POP	DE	
                PUSH	HL	
                XOR	A	
                LD	L,A	
                LD	H,A	
                SBC	HL,DE	
                EX	DE,HL	
                LD	L,A	
                LD	H,A	
                CALL 	VDU25		; side 3	
                POP	DE	
                XOR	A	
                LD	L,A	
                LD	H,A	
                SBC	HL,DE	
                LD	E,A	
                LD	D,A	
                JR	PLOT4B	
;
;MOUSE x, y, b
;
MOUSE:          LD	A,128	
                LD	HL,9	
                CALL	OSBYTE	
                PUSH	HL	
                LD	A,128	
                LD	HL,8	
                CALL	OSBYTE	
                PUSH	HL	
                LD	A,128	
                LD	HL,7	
                CALL	OSBYTE	
                PUSH	HL	
                CALL	VAR_	
                POP	HL	
                CALL	STOREI	
                CALL	COMMA	
                CALL	NXT	
                CALL	VAR_	
                POP	HL	
                CALL	STOREI	
                CALL	COMMA	
                CALL	NXT	
                CALL	VAR_	
                POP	HL	
                CALL	STOREI	
XEQGO2:         JP	XEQ	
;
;WAIT [n]
;
WAIT:           CALL	TERMQ	
                JR	Z,XEQGO2	
                CALL	EXPRI	
                EXX	
                LD	B,H	
                LD	C,L	
                CALL	GETIME	
                ADD	HL,BC	
                LD	BC,0	
                EX	DE,HL	
                ADC	HL,BC	
                EX	DE,HL	
WAIT1:          CALL	TRAP	
                PUSH	DE	
                PUSH	HL	
                CALL	GETIME	
                POP	BC	
                OR	A	
                SBC	HL,BC	
                LD	H,B	
                LD	L,C	
                EX	DE,HL	
                POP	BC	
                SBC	HL,BC	
                JR	NC,XEQGO2	
                EX	DE,HL	
                LD	D,B	
                LD	E,C	
                JR	WAIT1	
;
;OSCALL - Trap call to FFxx
;
OSCALL:         POP	HL		;DITCH RETURN ADDRESS	
                LD	HL,OSRET	
                PUSH	HL		;NEW RETURN ADDRESS	
                LD	A,(IX+4)	;A%	
                LD	E,(IX+20)	;E%	
                LD	H,(IX+100)	;Y%	
                LD	L,(IX+96)	;X%	
                JP	(IY)	
OSRET:          PUSH	AF	
                LD	A,L		;F  H  L  A	
                LD	L,H		;|  |  |  |	
                EXX			;|  |  |  |	
                POP	BC		;|  |  |  |	
                LD	H,A		;|  |  |  |	
                LD	L,B		;H  L  H' L'	
                LD	A,C	
                EXX	
                LD	H,A	
                RET	
;
VDU25:          LD	B,25	
WRCH6:          LD	A,B	
                CALL	OSWRCH	
WRCH5:          LD	A,C	
                CALL	OSWRCH	
WRCH4:          LD	A,E	
                CALL	OSWRCH	
WRCH3:          LD	A,D	
                CALL	OSWRCH	
WRCH2:          LD	A,L	
                CALL	OSWRCH	
                LD	A,H	
                JP	OSWRCH	
;
EXPR3:          CALL	CEXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                PUSH	HL	
                CALL	CEXPRI	
                EXX	
                POP	BC		;x2	
                POP	DE		;y1	
                RET	
;
CEXPRI:         CALL	COMMA	
                JP	EXPRI	
;
STOREI:         BIT	7,A	
                JR	NZ,EEK	
                BIT	6,A	
                JR	NZ,EEK	
                EXX	
                LD	HL,0	
                LD	C,L	
                JP	STOREN	
;
EEK:            LD	A,50	
                CALL	EXTERR	
                DB	13H		;'Bad '	
                DB	04H		;'MOUSE'	
                DB	20H	
                DB	15H		;'variable'	
                DB	0	
;
TINT:           	
TINTFN:         	
SYS:            	
                XOR	A	
                CALL	EXTERR	
                DB	"Sorry"	
                DB	0	
;
;                END	
; --- End acorn.asm ---

; --- Begin asmb.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;BBC BASIC INTERPRETER - Z80 VERSION
;Z80 CPU ASSEMBLER MODULE - "ASMB"
;(C) COPYRIGHT R.T.RUSSELL 1981-2024
;
;THE NAME BBC BASIC IS USED WITH THE PERMISSION
;OF THE BRITISH BROADCASTING CORPORATION AND IS
;NOT TRANSFERRABLE TO A FORKED OR DERIVED WORK.
;
;VERSION 5.0, 14-05-2024
;
;                XDEF	ASSEM	
;
;                XREF	TABIT	
;                XREF	CRLF	
;                XREF	OUT	
;                XREF	VAR_	
;                XREF	ZERO	
;                XREF	STOREN	
;                XREF	ERROR_	
;                XREF	EXPRI	
;                XREF	EXPRS	
;
;                XREF	LISTON	
;                XREF	COUNT	
;                XREF	ACCS	
;                XREF	OC	
;                XREF	PC	
;
; CR             EQU	0DH	; in equs.inc
TAND:           EQU	80H	
TOR:            EQU	84H	
; TERROR:         EQU	85H	; in exec.asm
TCALL:          EQU	0D6H
TDEF:           EQU	0DDH 
;
;ASSEMBLER:
;LANGUAGE-INDEPENDENT CONTROL SECTION:
; Outputs: A=delimiter, carry set if syntax error.
;
ASSEM:          CALL	SKIP	
                INC	IY	
                CP	':'	
                JR	Z,ASSEM	
                CP	']'	
                RET	Z	
                CP	CR	
                RET	Z	
                DEC	IY	
                LD	IX,(PC)		;PROGRAM COUNTER	
                LD	HL,LISTON	
                BIT	6,(HL)	
                JR	Z,ASSEM0	
                LD	IX,(OC)		;ORIGIN of CODE	
ASSEM0:         PUSH	IX	
                PUSH	IY	
                CALL	ASMB	
                POP	BC	
                POP	DE	
                RET	C	
                CALL	SKIP	
                SCF	
                RET	NZ	
                DEC	IY	
ASSEM3:         INC	IY	
                LD	A,(IY)	
                CALL	TERM0	
                JR	NZ,ASSEM3	
                LD	A,(LISTON)	
                PUSH	IX	
                POP	HL	
                OR	A	
                SBC	HL,DE	
                EX	DE,HL		;DE= NO. OF BYTES	
                PUSH	HL	
                LD	HL,(PC)	
                PUSH	HL	
                ADD	HL,DE	
                LD	(PC),HL		;UPDATE PC	
                BIT	6,A	
                JR	Z,ASSEM5	
                LD	HL,(OC)	
                ADD	HL,DE	
                LD	(OC),HL		;UPDATE OC	
ASSEM5:         POP	HL		;OLD PC	
                POP	IX		;CODE HERE	
                BIT	4,A	
                JR	Z,ASSEM	
                LD	A,H	
                CALL	HEX	
                LD	A,L	
                CALL	HEXSP	
                XOR	A	
                CP	E	
                JR	Z,ASSEM2	
ASSEM1:         LD	A,(COUNT)	
                CP	17	
                LD	A,5	
                CALL	NC,TABIT	;NEXT LINE	
                LD	A,(IX)	
                CALL	HEXSP	
                INC	IX	
                DEC	E	
                JR	NZ,ASSEM1	
ASSEM2:         LD	A,18	
                CALL	TABIT	
                PUSH	IY	
                POP	HL	
                SBC	HL,BC	
ASSEM4:         LD	A,(BC)	
                CALL	OUT	
                INC	BC	
                DEC	L	
                JR	NZ,ASSEM4	
                CALL	CRLF	
                JP	ASSEM	
;
HEXSP:          CALL	HEX	
                LD	A,' '	
                JR	OUTCH1	
HEX:            PUSH	AF	
                RRCA	
                RRCA	
                RRCA	
                RRCA	
                CALL	HEXOUT	
                POP	AF	
HEXOUT:         AND	0FH	
                ADD	A,90H	
                DAA	
                ADC	A,40H	
                DAA	
OUTCH1:         JP	OUT	
;
;PROCESSOR-SPECIFIC TRANSLATION SECTION:
;
;REGISTER USAGE: B - TYPE OF MOST RECENT OPERAND
;                C - OPCODE BEING BUILT
;                D - (IX) OR (IY) FLAG
;                E - OFFSET FROM IX OR IY
;               HL - NUMERIC OPERAND VALUE
;               IX - CODE DESTINATION
;               IY - SOURCE TEXT POINTER
;   Inputs: A = initial character
;  Outputs: Carry set if syntax error.
;
ASMB:           CP	'.'	
                JR	NZ,ASMB1	
                INC	IY	
                PUSH	IX	
                CALL	VAR_	
                PUSH	AF	
                CALL	ZERO	
                EXX	
                LD	HL,(PC)	
                EXX	
                LD	A,(LISTON)	
                AND	20H	
                JR	NZ,ASMB0	
                LD	A,(IX)	
                OR	(IX+1)	
                LD	A,3	
                JP	NZ,ERROR_	;Multiple label	
ASMB0:          POP	AF	
                CALL	STOREN	
                POP	IX	
ASMB1:          CALL	SKIP	
                RET	Z	
                CP	TCALL	
                LD	C,0C4H	
                INC	IY	
                JP	Z,GRPC	
                DEC	IY	
                LD	HL,OPCODS	
                CALL	FIND	
                RET	C	
                LD	C,B	;ROOT OPCODE	
                LD	D,0	;CLEAR IX/IY FLAG	
;
;GROUP 0 - TRIVIAL CASES REQUIRING NO COMPUTATION
;GROUP 1 - AS GROUP 0 BUT WITH "ED" PREFIX
;
                SUB	39	
                JR	NC,GROUP2	
                CP	15-39	
                CALL	NC,ED	
                JR	BYTE0	
;
;GROUP 2 - BIT, RES, SET
;GROUP 3 - RLC, RRC, RL, RR, SLA, SRA, SRL
;
GROUP2:         SUB	10	
                JR	NC,GROUP4	
                CP	3-10	
                CALL	C,BIT	
                RET	C	
                CALL	REGLO	
                RET	C	
                CALL	CB	
                JR	BYTE0	
;
;GROUP 4 - PUSH, POP, EX (SP)
;
GROUP4:         SUB	3	
                JR	NC,GROUP5	
G4:             CALL	PAIRasm	
                RET	C	
                JR	BYTE0	
;
;GROUP 5 - SUB, AND, XOR, OR, CP
;GROUP 6 - ADD, ADC, SBC
;
GROUP5:         SUB	8+2	
                JR	NC,GROUP7	
                CP	5-8	
                LD	B,7	
                CALL	NC,OPND	
                LD	A,B	
                CP	7	
                JR	NZ,G6HL	
G6:             CALL	REGLO	
                LD	A,C	
                JR	NC,BIND1	
                XOR	46H	
                CALL	BIND	
DB:             CALL	NUMBER	
                JR	VAL8	
;
G6HL:           AND	3FH	
                CP	12	
                SCF	
                RET	NZ	
                LD	A,C	
                CP	80H	
                LD	C,9	
                JR	Z,G4	
                XOR	1CH	
                RRCA	
                LD	C,A	
                CALL	ED	
                JR	G4	
;
;GROUP 7 - INC, DEC
;
GROUP7:         SUB	2	
                JR	NC,GROUP8	
                CALL	REGHI	
                LD	A,C	
BIND1:          JP	NC,BIND	
                XOR	64H	
                RLCA	
                RLCA	
                RLCA	
                LD	C,A	
                CALL	PAIR1asm	
                RET	C	
BYTE0:          LD	A,C	
                JR	BYTE2	
;
;GROUP 8 - IN
;GROUP 9 - OUT
;
GROUP8:         SUB	2	
                JR	NC,GROUPA	
                CP	1-2	
                CALL	Z,CORN	
                EX	AF,AF'	
                CALL	REGHI	
                RET	C	
                EX	AF,AF'	
                CALL	C,CORN	
                INC	H	
                JR	Z,BYTE0	
                LD	A,B	
                CP	7	
                SCF	
                RET	NZ	
                LD	A,C	
                XOR	3	
                RLCA	
                RLCA	
                RLCA	
                CALL	BYTE	
                JR	VAL8	
;
;GROUP 10 - JR, DJNZ
;
GROUPA:         SUB	2	
                JR	NC,GROUPB	
                CP	1-2	
                CALL	NZ,COND_	
                LD	A,C	
                JR	NC,GRPA	
                LD	A,18H	
GRPA:           CALL	BYTE	
                CALL	NUMBER	
                LD	DE,(PC)	
                INC	DE	
                SCF	
                SBC	HL,DE	
                LD	A,L	
                RLA	
                SBC	A,A	
                CP	H	
TOOFAR:         LD	A,1	
                JP	NZ,ERROR_	;"Out of range"	
VAL8:           LD	A,L	
                JR	BYTE2	
;
;GROUP 11 - JP
;
GROUPB:         LD	B,A	
                JR	NZ,GROUPC	
                CALL	COND_	
                LD	A,C	
                JR	NC,GRPB	
                LD	A,B	
                AND	3FH	
                CP	6	
                LD	A,0E9H	
                JR	Z,BYTE2	
                LD	A,0C3H	
GRPB:           CALL	BYTE	
                JR	ADDR_	
;
;GROUP 12 - CALL
;
GROUPC:         DJNZ	GROUPD	
GRPC:           CALL	GRPE	
ADDR_:          CALL	NUMBER	
VAL16:          CALL	VAL8	
                LD	A,H	
                JR	BYTE2	
;
;GROUP 13 - RST
;
GROUPD:         DJNZ	GROUPE	
                CALL	NUMBER	
                AND	C	
                OR	H	
                JR	NZ,TOOFAR	
                LD	A,L	
                OR	C	
BYTE2:          JR	BYTE1	
;
;GROUP 14 - RET
;
GROUPE:         DJNZ	GROUPF	
GRPE:           CALL	COND_	
                LD	A,C	
                JR	NC,BYTE1	
                OR	9	
                JR	BYTE1	
;
;GROUP 15 - LD
;
GROUPF:         DJNZ	MISC	
                CALL	LDOP	
                JR	NC,LDA	
                CALL	REGHI	
                EX	AF,AF'	
                CALL	SKIP	
                CP	'('	
                JR	Z,LDIN	
                EX	AF,AF'	
                JP	NC,G6	
                LD	C,1	
                CALL	PAIR1asm	
                RET	C	
                LD	A,14	
                CP	B	
                LD	B,A	
                CALL	Z,PAIRasm	
                LD	A,B	
                AND	3FH	
                CP	12	
                LD	A,C	
                JR	NZ,GRPB	
                LD	A,0F9H	
                JR	BYTE1	
;
LDIN:           EX	AF,AF'	
                PUSH	BC	
                CALL	NC,REGLO	
                LD	A,C	
                POP	BC	
                JR	NC,BIND	
                LD	C,0AH	
                CALL	PAIR1asm	
                CALL	LD16	
                JR	NC,GRPB	
                CALL	NUMBER	
                LD	C,2	
                CALL	PAIRasm	
                CALL	LD16	
                RET	C	
                CALL	BYTE	
                JR	VAL16	
;
;OPT - SET OPTION
;
OPT:            DEC	B	
                JP	Z,DB	
                DJNZ	ADDR_	
                CALL	NUMBER	
                LD	HL,LISTON	
                LD	C,A	
                RLD	
                LD	A,C	
                RRD	
                RET	
;
LDA:            CP	4	
                CALL	C,ED	
                LD	A,B	
BYTE1:          JR	BYTE	
;
;MISC - DEFB, DEFW, DEFM
;
MISC:           DJNZ	OPT	
                PUSH	IX	
                CALL	EXPRS	
                POP	IX	
                LD	HL,ACCS	
DEFM1:          XOR	A	
                CP	E	
                RET	Z	
                LD	A,(HL)	
                INC	HL	
                CALL	BYTE	
                DEC	E	
                JR	DEFM1	
;
;SUBROUTINES:
;
LD16:           LD	A,B	
                JR	C,LD8	
                LD	A,B	
                AND	3FH	
                CP	12	
                LD	A,C	
                RET	Z	
                CALL	ED	
                LD	A,C	
                OR	43H	
                RET	
;
LD8:            CP	7	
                SCF	
                RET	NZ	
                LD	A,C	
                OR	30H	
                RET	
;
CORN:           PUSH	BC	
                CALL	OPND	
                BIT	5,B	
                POP	BC	
                JR	Z,NUMBER	
                LD	H,-1	
ED:             LD	A,0EDH	
                JR	BYTE	
;
CB:             LD	A,0CBH	
BIND:           CP	76H	
                SCF	
                RET	Z		;REJECT LD (HL),(HL)	
                CALL	BYTE	
                INC	D	
                RET	P	
                LD	A,E	
                JR	BYTE	
;
OPND:           PUSH	HL	
                LD	HL,OPRNDS	
                CALL	FIND	
                POP	HL	
                RET	C	
                BIT	7,B	
                RET	Z	
                BIT	3,B	
                PUSH	HL	
                CALL	Z,OFFSETasm	
                LD	E,L	
                POP	HL	
                LD	A,0DDH	
                BIT	6,B	
                JR	Z,OP1	
                LD	A,0FDH	
OP1:            OR	A	
                INC	D	
                LD	D,A	
                RET	M	
BYTE:           LD	(IX),A	
                INC	IX	
                OR	A	
                RET	
;
OFFSETasm:         LD	A,(IY)	
                CP	')'	
                LD	HL,0	
                RET	Z	
NUMBER:         CALL	SKIP	
                PUSH	BC	
                PUSH	DE	
                PUSH	IX	
                CALL	EXPRI	
                POP	IX	
                EXX	
                POP	DE	
                POP	BC	
                LD	A,L	
                OR	A	
                RET	
;
REG:            CALL	OPND	
                RET	C	
                LD	A,B	
                AND	3FH	
                CP	8	
                CCF	
                RET	
;
REGLO:          CALL	REG	
                RET	C	
                JR	ORC	
;
REGHI:          CALL	REG	
                RET	C	
                JR	SHL3	
;
COND_:          CALL	OPND	
                RET	C	
                LD	A,B	
                AND	1FH	
                SUB	16	
                JR	NC,SHL3	
                CP	-15	
                SCF	
                RET	NZ	
                LD	A,3	
                JR	SHL3	
;
PAIRasm:           CALL	OPND	
                RET	C	
PAIR1asm:          LD	A,B	
                AND	0FH	
                SUB	8	
                RET	C	
                JR	SHL3	
;
BIT:            CALL	NUMBER	
                CP	8	
                CCF	
                RET	C	
SHL3:           RLCA	
                RLCA	
                RLCA	
ORC:            OR	C	
                LD	C,A	
                RET	
;
LDOP:           LD	HL,LDOPS	
FIND:           CALL	SKIP	
EXIT:           LD	B,0	
                SCF	
                RET	Z	
                CP	TDEF	
                JR	Z,FIND0	
                CP	TOR+1	
                CCF	
                RET	C	
FIND0:          LD	A,(HL)	
                OR	A	
                JR	Z,EXIT	
                XOR	(IY)	
                AND	01011111B	
                JR	Z,FIND2	
FIND1:          BIT	7,(HL)	
                INC	HL	
                JR	Z,FIND1	
                INC	HL	
                INC	B	
                JR	FIND0	
;
FIND2:          PUSH	IY	
FIND3:          BIT	7,(HL)	
                INC	IY	
                INC	HL	
                JR	NZ,FIND5	
                CP	(HL)	
                CALL	Z,SKIP0	
                LD	A,(HL)	
                XOR	(IY)	
                AND	01011111B	
                JR	Z,FIND3	
FIND4:          POP	IY	
                JR	FIND1	
;
FIND5:          CALL	DELIM	
                CALL	NZ,SIGN	
                JR	NZ,FIND4	
FIND6:          LD	A,B	
                LD	B,(HL)	
                POP	HL	
                RET	
;
SKIP0:          INC	HL	
SKIP:           CALL	DELIM	
                RET	NZ	
                CALL	TERM	
                RET	Z	
                INC	IY	
                JR	SKIP	
;
SIGN:           CP	'+'	
                RET	Z	
                CP	'-'	
                RET	
;
DELIM:          LD	A,(IY)		;ASSEMBLER DELIMITER	
                CP	' '	
                RET	Z	
                CP	','	
                RET	Z	
                CP	')'	
                RET	Z	
TERM:           CP	';'		;ASSEMBLER TERMINATOR	
                RET	Z	
                CP	'\'	
                RET	Z	
TERM0:          CP	':'		;ASSEMBLER SEPARATOR	
                RET	NC	
                CP	CR	
                RET	
;
OPCODS:         DB	"NO"	
                DB	'P'+80H	
                DB	0	
                DB	"RLC"	
                DB	'A'+80H	
                DB	7	
                DB	"EX"	
                DB	0	
                DB	"AF"	
                DB	0	
                DB	"AF"	
                DB	"'"+80H	
                DB	8	
                DB	"RRC"	
                DB	'A'+80H	
                DB	0FH	
                DB	"RL"	
                DB	'A'+80H	
                DB	17H	
                DB	"RR"	
                DB	'A'+80H	
                DB	1FH	
                DB	"DA"	
                DB	'A'+80H	
                DB	27H	
                DB	"CP"	
                DB	'L'+80H	
                DB	2FH	
                DB	"SC"	
                DB	'F'+80H	
                DB	37H	
                DB	"CC"	
                DB	'F'+80H	
                DB	3FH	
                DB	"HAL"	
                DB	'T'+80H	
                DB	76H	
                DB	"EX"	
                DB	'X'+80H	
                DB	0D9H	
                DB	"EX"	
                DB	0	
                DB	"DE"	
                DB	0	
                DB	'H'	
                DB	'L'+80H	
                DB	0EBH	
                DB	'D'	
                DB	'I'+80H	
                DB	0F3H	
                DB	'E'	
                DB	'I'+80H	
                DB	0FBH	
;
                DB	"NE"	
                DB	'G'+80H	
                DB	44H	
                DB	"IM"	
                DB	0	
                DB	'0'+80H	
                DB	46H	
                DB	"RET"	
                DB	'N'+80H	
                DB	45H	
                DB	"RET"	
                DB	'I'+80H	
                DB	4DH	
                DB	"IM"	
                DB	0	
                DB	'1'+80H	
                DB	56H	
                DB	"IM"	
                DB	0	
                DB	'2'+80H	
                DB	5EH	
                DB	"RR"	
                DB	'D'+80H	
                DB	67H	
                DB	"RL"	
                DB	'D'+80H	
                DB	6FH	
                DB	"LD"	
                DB	'I'+80H	
                DB	0A0H	
                DB	"CP"	
                DB	'I'+80H	
                DB	0A1H	
                DB	"IN"	
                DB	'I'+80H	
                DB	0A2H	
                DB	"OUT"	
                DB	'I'+80H	
                DB	0A3H	
                DB	"LD"	
                DB	'D'+80H	
                DB	0A8H	
                DB	"CP"	
                DB	'D'+80H	
                DB	0A9H	
                DB	"IN"	
                DB	'D'+80H	
                DB	0AAH	
                DB	"OUT"	
                DB	'D'+80H	
                DB	0ABH	
                DB	"LDI"	
                DB	'R'+80H	
                DB	0B0H	
                DB	"CPI"	
                DB	'R'+80H	
                DB	0B1H	
                DB	"INI"	
                DB	'R'+80H	
                DB	0B2H	
                DB	"OTI"	
                DB	'R'+80H	
                DB	0B3H	
                DB	"LDD"	
                DB	'R'+80H	
                DB	0B8H	
                DB	"CPD"	
                DB	'R'+80H	
                DB	0B9H	
                DB	"IND"	
                DB	'R'+80H	
                DB	0BAH	
                DB	"OTD"	
                DB	'R'+80H	
                DB	0BBH	
;
                DB	"BI"	
                DB	'T'+80H	
                DB	40H	
                DB	"RE"	
                DB	'S'+80H	
                DB	80H	
                DB	"SE"	
                DB	'T'+80H	
                DB	0C0H	
;
                DB	"RL"	
                DB	'C'+80H	
                DB	0	
                DB	"RR"	
                DB	'C'+80H	
                DB	8	
                DB	'R'	
                DB	'L'+80H	
                DB	10H	
                DB	'R'	
                DB	'R'+80H	
                DB	18H	
                DB	"SL"	
                DB	'A'+80H	
                DB	20H	
                DB	"SR"	
                DB	'A'+80H	
                DB	28H	
                DB	"SR"	
                DB	'L'+80H	
                DB	38H	
;
                DB	"PO"	
                DB	'P'+80H	
                DB	0C1H	
                DB	"PUS"	
                DB	'H'+80H	
                DB	0C5H	
                DB	"EX"	
                DB	0	
                DB	"(S"	
                DB	'P'+80H	
                DB	0E3H	
;
                DB	"SU"	
                DB	'B'+80H	
                DB	90H	
                DB	"AN"	
                DB	'D'+80H	
                DB	0A0H	
                DB	"XO"	
                DB	'R'+80H	
                DB	0A8H	
                DB	'O'	
                DB	'R'+80H	
                DB	0B0H	
                DB	'C'	
                DB	'P'+80H	
                DB	0B8H	
                DB	TAND	
                DB	0A0H	
                DB	TOR	
                DB	0B0H	
;
                DB	"AD"	
                DB	'D'+80H	
                DB	80H	
                DB	"AD"	
                DB	'C'+80H	
                DB	88H	
                DB	"SB"	
                DB	'C'+80H	
                DB	98H	
;
                DB	"IN"	
                DB	'C'+80H	
                DB	4	
                DB	"DE"	
                DB	'C'+80H	
                DB	5	
;
                DB	'I'	
                DB	'N'+80H	
                DB	40H	
                DB	"OU"	
                DB	'T'+80H	
                DB	41H	
;
                DB	'J'	
                DB	'R'+80H	
                DB	20H	
                DB	"DJN"	
                DB	'Z'+80H	
                DB	10H	
;
                DB	'J'	
                DB	'P'+80H	
                DB	0C2H	
;
                DB	"CAL"	
                DB	'L'+80H	
                DB	0C4H	
;
                DB	"RS"	
                DB	'T'+80H	
                DB	0C7H	
;
                DB	"RE"	
                DB	'T'+80H	
                DB	0C0H	
;
                DB	'L'	
                DB	'D'+80H	
                DB	40H	
;
                DB	TDEF & 7FH	
                DB	'M'+80H	
                DB	0	
;
                DB	TDEF & 7FH	
                DB	'B'+80H	
                DB	0	
;
                DB	"OP"	
                DB	'T'+80H	
                DB	0	
;
                DB	TDEF & 7FH	
                DB	'W'+80H	
                DB	0	
;
                DB	0	
;
OPRNDS:         DB	'B'+80H	
                DB	0	
                DB	'C'+80H	
                DB	1	
                DB	'D'+80H	
                DB	2	
                DB	'E'+80H	
                DB	3	
                DB	'H'+80H	
                DB	4	
                DB	'L'+80H	
                DB	5	
                DB	"(H"	
                DB	'L'+80H	
                DB	6	
                DB	'A'+80H	
                DB	7	
                DB	"(I"	
                DB	'X'+80H	
                DB	86H	
                DB	"(I"	
                DB	'Y'+80H	
                DB	0C6H	
;
                DB	'B'	
                DB	'C'+80H	
                DB	8	
                DB	'D'	
                DB	'E'+80H	
                DB	10	
                DB	'H'	
                DB	'L'+80H	
                DB	12	
                DB	'I'	
                DB	'X'+80H	
                DB	8CH	
                DB	'I'	
                DB	'Y'+80H	
                DB	0CCH	
                DB	'A'	
                DB	'F'+80H	
                DB	14	
                DB	'S'	
                DB	'P'+80H	
                DB	14	
;
                DB	'N'	
                DB	'Z'+80H	
                DB	16	
                DB	'Z'+80H	
                DB	17	
                DB	'N'	
                DB	'C'+80H	
                DB	18	
                DB	'P'	
                DB	'O'+80H	
                DB	20	
                DB	'P'	
                DB	'E'+80H	
                DB	21	
                DB	'P'+80H	
                DB	22	
                DB	'M'+80H	
                DB	23	
;
                DB	'('	
                DB	'C'+80H	
                DB	20H	
;
                DB	0	
;
LDOPS:          DB	'I'	
                DB	0	
                DB	'A'+80H	
                DB	47H	
                DB	'R'	
                DB	0	
                DB	'A'+80H	
                DB	4FH	
                DB	'A'	
                DB	0	
                DB	'I'+80H	
                DB	57H	
                DB	'A'	
                DB	0	
                DB	'R'+80H	
                DB	5FH	
                DB	"(BC"	
                DB	0	
                DB	'A'+80H	
                DB	2	
                DB	"(DE"	
                DB	0	
                DB	'A'+80H	
                DB	12H	
                DB	'A'	
                DB	0	
                DB	"(B"	
                DB	'C'+80H	
                DB	0AH	
                DB	'A'	
                DB	0	
                DB	"(D"	
                DB	'E'+80H	
                DB	1AH	
;
                DB	0	
;
FIN:            ; END	
; --- End asmb.asm ---

; --- Begin agon_gpio.asm ---
;
; Title:	BBC Basic for AGON - GPIO functions
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	04/12/2024
;
; Modinfo:

			; INCLUDE	"macros.inc"
			; INCLUDE	"equs.inc"

			.ASSUME	ADL = 0
;	.ORG 0x0000

;			SEGMENT CODE
				
;			XDEF	GPIOB_SETMODE
				
;			XREF	SWITCH_A

;  A: Mode
;  B: Pins
;  				
GPIOB_SETMODE:		CALL	SWITCH_A
			DW	GPIOB_M0	; Output
			DW	GPIOB_M1	; Input
			DW	GPIOB_M2	; Open Drain IO
			DW	GPIOB_M3	; Open Source IO
			DW	GPIOB_M4	; Interrupt, Dual Edge
			DW	GPIOB_M5	; Alt Function
			DW	GPIOB_M6	; Interrupt, Active Low
			DW	GPIOB_M7	; Interrupt, Active High
			DW	GPIOB_M8	; Interrupt, Falling Edge
			DW	GPIOB_M9	; Interrupt, Rising Edge

; Output
;
GPIOB_M0:		RES_GPIO PB_DDR,  B
			RES_GPIO PB_ALT1, B
			RES_GPIO PB_ALT2, B
			RET

; Input
;
GPIOB_M1:		SET_GPIO PB_DDR,  B
			RES_GPIO PB_ALT1, B
			RES_GPIO PB_ALT2, B
			RET

; Open Drain IO
;
GPIOB_M2:		RES_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			RES_GPIO PB_ALT2, B
			RET

; Open Source IO
;
GPIOB_M3:		SET_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			RES_GPIO PB_ALT2, B
			RET

; Interrupt, Dual Edge
;
GPIOB_M4:		SET_GPIO PB_DR,   B
			RES_GPIO PB_DDR,  B
			RES_GPIO PB_ALT1, B
			RES_GPIO PB_ALT2, B
			RET

; Alt Function
;
GPIOB_M5:		SET_GPIO PB_DDR,  B
			RES_GPIO PB_ALT1, B
			SET_GPIO PB_ALT2, B
			RET

; Interrupt, Active Low
;
GPIOB_M6:		RES_GPIO PB_DR,   B
			RES_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			SET_GPIO PB_ALT2, B
			RET


; Interrupt, Active High
;
GPIOB_M7:		SET_GPIO PB_DR,   B
			RES_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			SET_GPIO PB_ALT2, B
			RET


; Interrupt, Falling Edge
;
GPIOB_M8:		RES_GPIO PB_DR,   B
			SET_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			SET_GPIO PB_ALT2, B
			RET
	
; Interrupt, Rising Edge
;
GPIOB_M9:		SET_GPIO PB_DR,   B
			SET_GPIO PB_DDR,  B
			SET_GPIO PB_ALT1, B
			SET_GPIO PB_ALT2, B
			RET	    
; --- End agon_gpio.asm ---

; --- Begin agon_graphics.asm ---
;
; Title:	BBC Basic for AGON - Graphics stuff
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	11/12/2024
;
; Modinfo:
; 11/12/2024:	Modified POINT_ to work with OSWORD
			
			.ASSUME	ADL = 0
;	.ORG 0x0000
				
			; INCLUDE	"equs.inc"
			; INCLUDE "macros.inc"
			; INCLUDE "mos_api.inc"	; In MOS/src
		
;			SEGMENT CODE
				
;			XDEF	MODE_
;			XDEF	COLOUR_
;			XDEF	POINT_
;			XDEF	GETSCHR
;			XDEF	GETSCHR_1
			
;			XREF	ACCS
;			XREF	OSWRCH
;			XREF	ASC_TO_NUMBER
;			XREF	EXTERR
;			XREF	EXPRI
;			XREF	COMMA
;			XREF	XEQ
;			XREF	NXT
;			XREF	BRAKET
;			XREF	CRTONULL
;			XREF	NULLTOCR
;			XREF	CRLF
;			XREF	EXPR_W2
;			XREF	INKEY1
			
; MODE n: Set video mode
;
MODE_:			PUSH	IX			; Get the system vars in IX
			MOSCALL	mos_sysvars		; Reset the semaphore
			RES.LIL	4, (IX+sysvar_vpd_pflags)
			CALL    EXPRI
			EXX
			VDU	16H			; Mode change
			VDU	L
			MOSCALL	mos_sysvars		
@@:			BIT.LIL	4, (IX+sysvar_vpd_pflags)
			JR	Z, @B			; Wait for the result			
			POP	IX
			JP	XEQ
			
; GET(x,y): Get the ASCII code of a character on screen
;
GETSCHR:		INC	IY
			CALL    EXPRI      		; Get X coordinate
			EXX
			PUSH	HL			; Stack X
			CALL	COMMA		
			CALL	EXPRI			; Get Y coordinate
			EXX 
			CALL	BRAKET			; Closing bracket	
			POP	DE			; Pop X back into DE
			CALL	GETSCHR_1
;			JP	INKEY1
	        	LD	DE,ACCS	
	                LD	(DE),A	
	                LD	A,80H	
        	        RET	NC	
	                INC	E	
                	RET	
;
; Fetch a character from the screen
; - DE: X coordinate
; - HL: Y coordinate
; Returns
; - A: The character or FFh if no match
; - F: C if match, otherwise NC
;
GETSCHR_1:		PUSH	IX			; Get the system vars in IX
			MOSCALL	mos_sysvars		; Reset the semaphore
			RES.LIL	1, (IX+sysvar_vpd_pflags)
			VDU	23
			VDU	0
			VDU	vdp_scrchar
			VDU	E 
			VDU	D 
			VDU	L 
			VDU	H 
@@:			BIT.LIL	1, (IX+sysvar_vpd_pflags)
			JR	Z, @B			; Wait for the result
			LD.LIL	A, (IX+sysvar_scrchar)	; Fetch the result in A
			OR	A			; Check for 00h
			SCF				; C = character map
			JR	NZ, @F			; We have a character, so skip next bit
			XOR	A			; Clear carry
@@:			POP	IX			
			RET 

; POINT(x,y): Get the pixel colour of a point on screen
; Parameters:
; - DE: X-coordinate
; - HL: Y-coordinate
; Returns:
; -  A: Pixel colour
;
POINT_:			PUSH	IX			; Get the system vars in IX
			MOSCALL	mos_sysvars		; Reset the semaphore
			RES.LIL	2, (IX+sysvar_vpd_pflags)
			VDU	23
			VDU	0
			VDU	vdp_scrpixel
			VDU	E
			VDU	D
			VDU	L
			VDU	H
@@:			BIT.LIL	2, (IX+sysvar_vpd_pflags)
			JR	Z, @B			; Wait for the result
;
; Return the data as a 1 byte index
;
			LD.LIL	A, (IX+sysvar_scrpixelIndex)
			POP	IX	
			RET

; COLOUR colour
; COLOUR L,P
; COLOUR L,R,G,B
;
COLOUR_:		CALL	EXPRI			; The colour / mode
			EXX
			LD	A, L 
			LD	(VDU_BUFFER+0), A	; Store first parameter
			CALL	NXT			; Are there any more parameters?
			CP	','
			JR	Z, COLOUR_1		; Yes, so we're doing a palette change next
;
			VDU	11h			; Just set the colour
			VDU	(VDU_BUFFER+0)
			JP	XEQ			
;
COLOUR_1:		CALL	COMMA
			CALL	EXPRI			; Parse R (OR P)
			EXX
			LD	A, L
			LD	(VDU_BUFFER+1), A
			CALL	NXT			; Are there any more parameters?
			CP	','
			JR	Z, COLOUR_2		; Yes, so we're doing COLOUR L,R,G,B
;
			VDU	13h			; VDU:COLOUR
			VDU	(VDU_BUFFER+0)		; Logical Colour
			VDU	(VDU_BUFFER+1)		; Palette Colour
			VDU	0			; RGB set to 0
			VDU	0
			VDU	0
			JP	XEQ
;
COLOUR_2:		CALL	COMMA
			CALL	EXPRI			; Parse G
			EXX
			LD	A, L
			LD	(VDU_BUFFER+2), A
			CALL	COMMA
			CALL	EXPRI			; Parse B
			EXX
			LD	A, L
			LD	(VDU_BUFFER+3), A							
			VDU	13h			; VDU:COLOUR
			VDU	(VDU_BUFFER+0)		; Logical Colour
			VDU	FFh			; Physical Colour (-1 for RGB mode)
			VDU	(VDU_BUFFER+1)		; R
			VDU	(VDU_BUFFER+2)		; G
			VDU	(VDU_BUFFER+3)		; B
			JP	XEQ    
; --- End agon_graphics.asm ---

; --- Begin agon_interrupt.asm ---
;
; Title:	BBC Basic for AGON - Interrupts
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	04/12/2024
;
; Modinfo:

			.ASSUME	ADL = 0
;	.ORG 0x0000
				
			; INCLUDE	"macros.inc"
			; INCLUDE	"equs.inc"
			; INCLUDE "mos_api.inc"	; In MOS/src

;			SEGMENT CODE
				
;			XDEF	VBLANK_INIT
;			XDEF	VBLANK_STOP
;			XDEF	VBLANK_HANDLER	

;			XREF	ESCSET	
;			XREF	KEYDOWN		; In ram.asm
;			XREF	KEYASCII 	; In ram.asm
;			XREF	KEYCOUNT	; In ram.asm

; Hook into the MOS VBLANK interrupt
;
VBLANK_INIT:		DI

			LD		A, MB 				; Get a 24-bit pointer to
			LD		HL, VBLANK_HANDLER		; this interrupt handler routine who's
			CALL		SET_AHL16 			; address is a 16-bit pointer in BBC BASIC's segment

			LD		E, 32h				; Set up the VBlank Interrupt Vector
			MOSCALL		mos_setintvector

			PUSH.LIL	HL				; HLU: Pointer to the MOS interrupt vector
			POP.LIL		DE 				; DEU: Pointer to the MOS interrupt vector
			
			LD		HL, VBLANK_HANDLER_JP + 1	; Pointer to the JP address in this segment
			LD		A, MB	 			; Get the segment BBC BASIC is running in
			LD		(VBLANK_HANDLER_MB + 1), A 	; Store in the interrupt handler
			CALL		SET_AHL16 			; Convert pointer to an absolute 24-bit address
			LD.LIL		(HL), DE			; Self-modify the code
			EI	
			RET

; Unhook the custom VBLANK interrupt
;
VBLANK_STOP:		DI
			LD		HL, VBLANK_HANDLER_JP + 1	; Pointer to the JP address in this segment
			LD		A, (VBLANK_HANDLER_MB + 1)	; The stored MB of the segment BBC BASIC is running in
			PUSH		AF 				; Stack the MB for later
			CALL		SET_AHL16			; Convert pointer to an absolute 24-bit address
			LD.LIL		DE, (HL)			; DEU: Address of MOS interrupt vector
			PUSH.LIL	DE				; Transfer to HL
			POP.LIL		HL
			LD		E, 32h
			MOSCALL		mos_setintvector		; Restore the MOS interrupt vector
			POP		AF 				; Restore MB to this segment
			LD		MB, A 
			EI
			RET 

; Set the MSB of HL (U) to A
;
SET_AHL16:		PUSH.LIL	HL
			LD.LIL		HL, 2
			ADD.LIL		HL, SP
			LD.LIL		(HL), A
			POP.LIL		HL
			RET 

; A safe LIS call to ESCSET
; 
DO_KEYBOARD:		MOSCALL		mos_sysvars			; Get the system variables
			LD		HL, KEYCOUNT 			; Check whether the keycount has changed
			LD.LIL		A, (IX + sysvar_vkeycount)	; by comparing the MOS copy
			CP 		(HL)				; with our local copy
			JR		NZ, DO_KEYBOARD_1		; Yes it has, so jump to the next bit
;
DO_KEYBOARD_0:		XOR		A 				; Clear the keyboard values 
			LD		(KEYASCII), A
			LD		(KEYDOWN), A 
			RET.LIL 					; And return
;
DO_KEYBOARD_1:		LD		(HL), A 			; Store the updated local copy of keycount 
			LD.LIL		A, (IX + sysvar_vkeydown)	; Fetch key down value (1 = key down, 0 = key up)
			OR		A 
			JR		Z, DO_KEYBOARD_0		; If it is key up, then clear the keyboard values
;			
			LD		(KEYDOWN), A 			; Store the keydown value
			LD.LIL		A, (IX + sysvar_keyascii)	; Fetch key ASCII value
			LD		(KEYASCII), A 			; Store locally
			CP		1Bh				; Is it escape?
			CALL		Z, ESCSET			; Yes, so set the escape flags
			RET.LIS						; Return to the interrupt handler

;
; Interrupts in mixed mode always run in ADL mode
;
			.ASSUME	ADL = 1

VBLANK_HANDLER:		DI 
			PUSH		AF 
			PUSH		HL
			PUSH		IX
			LD		A, MB
			PUSH		AF 
VBLANK_HANDLER_MB:	LD		A, 0				; This is self-modified by VBLANK_INIT
			LD		MB, A
			CALL.LIS	DO_KEYBOARD
			POP		AF
			LD		MB, A
			POP		IX 
			POP		HL
			POP		AF 
;
; Finally jump to the MOS interrupt
;
VBLANK_HANDLER_JP:	JP		0				; This is self-modified by VBLANK_INIT
; --- End agon_interrupt.asm ---

; --- Begin agon_misc.asm ---
;
; Title:	BBC Basic for AGON - Miscellaneous helper functions
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	04/12/2024
;
; Modinfo:

			; INCLUDE	"equs.inc"
			; INCLUDE	"macros.inc"

			.ASSUME	ADL = 0
;	.ORG 0x0000

;			SEGMENT CODE
				
;			XDEF	ASC_TO_NUMBER
;			XDEF	SWITCH_A
;			XDEF	NULLTOCR
;			XDEF	CRTONULL
;			XDEF	CSTR_FNAME
;			XDEF	CSTR_LINE
;			XDEF	CSTR_FINDCH
;			XDEF	CSTR_ENDSWITH
;			XDEF	CSTR_CAT
				
;			XREF	OSWRCH
;			XREF	KEYWDS
;			XREF	KEYWDL

; Read a number and convert to binary
; If prefixed with &, will read as hex, otherwise decimal
;   Inputs: HL: Pointer in string buffer
;  Outputs: HL: Updated text pointer
;           DE: Value
;            A: Terminator (spaces skipped)
; Destroys: A,D,E,H,L,F
;
ASC_TO_NUMBER:		PUSH	BC			; Preserve BC
			LD	DE, 0			; Initialise DE
			CALL	SKIPSPmisc			; Skip whitespace
			LD	A, (HL)			; Read first character
			CP	'&'			; Is it prefixed with '&' (HEX number)?
			JR	NZ, ASC_TO_NUMBER3	; Jump to decimal parser if not
			INC	HL			; Otherwise fall through to ASC_TO_HEX
;
ASC_TO_NUMBER1:		LD	A, (HL)			; Fetch the character
			CALL    UPPRCmisc			; Convert to uppercase  
			SUB	'0'			; Normalise to 0
			JR 	C, ASC_TO_NUMBER4	; Return if < ASCII '0'
			CP 	10			; Check if >= 10
			JR 	C,ASC_TO_NUMBER2	; No, so skip next bit
			SUB 	7			; Adjust ASCII A-F to nibble
			CP 	16			; Check for > F
			JR 	NC, ASC_TO_NUMBER4	; Return if out of range
ASC_TO_NUMBER2:		EX 	DE, HL 			; Shift DE left 4 times
			ADD	HL, HL	
			ADD	HL, HL	
			ADD	HL, HL	
			ADD	HL, HL	
			EX	DE, HL	
			OR      E			; OR the new digit in to the least significant nibble
			LD      E, A
			INC     HL			; Onto the next character
			JR      ASC_TO_NUMBER1		; And loop
;
ASC_TO_NUMBER3:		LD	A, (HL)
			SUB	'0'			; Normalise to 0
			JR	C, ASC_TO_NUMBER4	; Return if < ASCII '0'
			CP	10			; Check if >= 10
			JR	NC, ASC_TO_NUMBER4	; Return if >= 10
			EX 	DE, HL 			; Stick DE in HL
			LD	B, H 			; And copy HL into BC
			LD	C, L	
			ADD	HL, HL 			; x 2 
			ADD	HL, HL 			; x 4
			ADD	HL, BC 			; x 5
			ADD	HL, HL 			; x 10
			EX	DE, HL
			ADD8U_DE 			; Add A to DE (macro)
			INC	HL
			JR	ASC_TO_NUMBER3
ASC_TO_NUMBER4:		POP	BC 			; Fall through to SKIPSP here

; Skip a space
; HL: Pointer in string buffer
; 
SKIPSPmisc:			LD      A, (HL)
			CP      ' '
			RET     NZ
			INC     HL
			JR      SKIPSPmisc

; Skip a string
; HL: Pointer in string buffer
;
SKIPNOTSP:		LD	A, (HL)
			CP	' '
			RET	Z 
			INC	HL 
			JR	SKIPNOTSP

; Convert a character to upper case
;  A: Character to convert
;
UPPRCmisc:  		AND     7FH
			CP      '`'
			RET     C
			AND     5FH			; Convert to upper case
			RET			

; Switch on A - lookup table immediately after call
;  A: Index into lookup table
;
SWITCH_A:		EX	(SP), HL		; Swap HL with the contents of the top of the stack
			ADD	A, A			; Multiply A by two
			ADD8U_HL 			; Add to HL (macro)
			LD	A, (HL)			; follow the call. Fetch an address from the
			INC	HL 			; table.
			LD	H, (HL)
			LD	L, A
			EX	(SP), HL		; Swap this new address back, restores HL
			RET				; Return program control to this new address

; Convert the buffer to a null terminated string and back
; HL: Buffer address
;			
NULLTOCR:		PUSH 	BC
			LD	B, 0
			LD	C, CR 
			JR	CRTONULL0
;			
CRTONULL:		PUSH	BC
			LD	B, CR
			LD	C, 0	
;			
CRTONULL0:		PUSH	HL
CRTONULL1:		LD	A, (HL)
			CP 	B 
			JR	Z, CRTONULL2
			INC	HL 
			JR	CRTONULL1
CRTONULL2:		LD	(HL), C
			POP 	HL 
			POP	BC
			RET
			
; Copy a filename to DE and zero terminate it
; HL: Source
; DE: Destination (ACCS)
;
CSTR_FNAME:		LD	A, (HL)			; Get source
			CP	32			; Is it space
			JR	Z, @F	
			CP	CR			; Or is it CR
			JR	Z, @F
			LD	(DE), A			; No, so store
			INC	HL			; Increment
			INC	DE			
			JR	CSTR_FNAME		; And loop
@@:			XOR	A			; Zero terminate the target string
			LD	(DE), A
			INC	DE			; And point to next free address
			RET
			
; Copy a CR terminated line to DE and zero terminate it
; HL: Source
; DE: Destination (ACCS)
;
CSTR_LINE:		LD	A, (HL)			; Get source
			CP	CR			; Is it CR
			JR	Z, @F
			LD	(DE), A			; No, so store
			INC	HL			; Increment
			INC	DE			
			JR	CSTR_LINE		; And loop
@@:			XOR	A			; Zero terminate the target string
			LD	(DE), A
			INC	DE			; And point to next free address
			RET
			
; Find the first occurrence of a character (case sensitive)
; HL: Source
;  C: Character to find
; Returns:
; HL: Pointer to character, or end of string marker
;
CSTR_FINDCH:		LD	A, (HL)			; Get source
			CP	C			; Is it our character?
			RET	Z			; Yes, so exit
			OR	A			; Is it the end of string?
			RET	Z			; Yes, so exit
			INC	HL
			JR	CSTR_FINDCH
			
; Check whether a string ends with another string (case insensitive)
; HL: Source
; DE: The substring we want to test with
; Returns:
;  F: Z if HL ends with DE, otherwise NZ
;
CSTR_ENDSWITH:		LD	A, (HL)			; Get the source string byte
			CALL	UPPRCmisc			; Convert to upper case
			LD	C, A
			LD	A, (DE)			; Get the substring byte
			CP	C
			RET	NZ			; Return NZ if at any point the strings don't match
			OR	C			; Check whether both bytes are zero
			RET	Z			; If so, return, as we have reached the end of both strings
			INC	HL
			INC	DE
			JR	CSTR_ENDSWITH		; And loop
			
; Concatenate a string onto the end of another string
; HL: Source
; DE: Second string
;
CSTR_CAT:		LD	A, (HL)			; Loop until we find the end of the first string
			OR	A
			JR	Z, CSTR_CAT_1
			INC	HL
			JR	CSTR_CAT
;
CSTR_CAT_1:		LD	A, (DE)			; Copy the second string onto the end of the first string
			LD	(HL), A
			OR	A			; Check for end of string
			RET	Z			; And return
			INC	HL
			INC	DE
			JR	CSTR_CAT_1		; Loop until finished						    
; --- End agon_misc.asm ---

; --- Begin agon_sound.asm ---
;
; Title:	BBC Basic for AGON - Audio stuff
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	11/12/2024
;
; Modinfo:
; 11/12/2024:	Modified SOUND_ to work with OSWORD
			
			.ASSUME	ADL = 0
;	.ORG 0x0000
				
			; INCLUDE	"equs.inc"
			; INCLUDE "macros.inc"
			; INCLUDE "mos_api.inc"	; In MOS/src
		
;			SEGMENT CODE
			
;			XDEF	SOUND_
			
;			XREF	OSWRCH
;			XREF	VDU_BUFFER
;			XREF	LTRAP

; SOUND channel,volume,pitch,duration
; Parameters:
; - HL: Pointer to data
;   - 0,1: Channel
;   - 2,3: Volume 0 (off) to 15 (full volume)
;   - 4,5: Pitch 0 - 255
;   - 6,7: Duration -1 to 254 (duration in 20ths of a second, -1 = play forever)
;
SOUND_:			LD	A, (HL)			; Channel
			LD	(VDU_BUFFER+0), A 
			XOR	A			; Waveform
			LD	(VDU_BUFFER+1), A
			INC	HL
			INC	HL
; 
; Calculate the volume
; 
			LD	C, (HL)			; Volume
			LD	B, 6			; C already contains the volume
			MLT	BC			; Multiply by 6 (0-15 scales to 0-90)
			LD	A, C
			LD	(VDU_BUFFER+2), A
			INC	HL
			INC	HL
;
; And the frequency
;
			PUSH	HL
			LD	L, (HL) 
			LD	H, 0
			LD	DE, SOUND_FREQ_LOOKUP
			ADD	HL, HL
			ADD	HL, DE
			LD	A, (HL)
			LD	(VDU_BUFFER+3), A
			INC	HL
			LD	A, (HL)
			LD	(VDU_BUFFER+4), A
			POP	HL
			INC	HL
			INC	HL
;
; And now the duration - multiply it by 50 to convert from 1/20ths of seconds to milliseconds
;
			LD	C, (HL)
			LD	B, 50			; C contains the duration, so MLT by 50
			MLT	BC
			LD	(VDU_BUFFER+5), BC
;
			PUSH	IX			; Get the system vars in IX
			MOSCALL	mos_sysvars		; Reset the semaphore
SOUND0:			RES.LIL	3, (IX+sysvar_vpd_pflags)
;
			VDU	23			; Send the sound command
			VDU	0
			VDU	vdp_audio
			VDU	(VDU_BUFFER+0)		; 0: Channel
			VDU	(VDU_BUFFER+1)		; 1: Waveform (0)
			VDU	(VDU_BUFFER+2)		; 2: Volume (0-100)
			VDU	(VDU_BUFFER+3)		; 3: Frequency L
			VDU	(VDU_BUFFER+4)		; 4: Frequency H
			VDU	(VDU_BUFFER+5)		; 5: Duration L
			VDU	(VDU_BUFFER+6)		; 6: Duration H
;
; Wait for acknowledgement
;
@@:			BIT.LIL	3, (IX+sysvar_vpd_pflags)
			JR	Z, @B			; Wait for the result
			CALL	LTRAP			; Check for ESC
			LD.LIL	A, (IX+sysvar_audioSuccess)
			AND	A			; Check if VDP has queued the note
			JR	Z, SOUND0		; No, so loop back and send again
;
			POP	IX
			RET 

; Frequency Lookup Table
; Set up to replicate the BBC Micro audio frequencies
;
; Split over 5 complete octaves, with 53 being middle C
; * C4: 262hz
; + A4: 440hz
;
;	2	3	4	5	6	7	8
;
; B	1	49	97	145	193	241	
; A#	0	45	93	141	189	237	
; A		41	89+	137	185	233	
; G#		37	85	133	181	229	
; G		33	81	129	177	225	
; F#		29	77	125	173	221	
; F		25	73	121	169	217	
; E		21	69	117	165	213	
; D#		17	65	113	161	209	
; D		13	61	109	157	205	253
; C#		9	57	105	153	201	249
; C		5	53*	101	149	197	245
;
SOUND_FREQ_LOOKUP:	DW	 117,  118,  120,  122,  123,  131,  133,  135
			DW	 137,  139,  141,  143,  145,  147,  149,  151
			DW	 153,  156,  158,  160,  162,  165,  167,  170
			DW	 172,  175,  177,  180,  182,  185,  188,  190
			DW	 193,  196,  199,  202,  205,  208,  211,  214
			DW	 217,  220,  223,  226,  230,  233,  236,  240
			DW	 243,  247,  251,  254,  258,  262,  265,  269
			DW	 273,  277,  281,  285,  289,  294,  298,  302
			DW	 307,  311,  316,  320,  325,  330,  334,  339
			DW	 344,  349,  354,  359,  365,  370,  375,  381
			DW	 386,  392,  398,  403,  409,  415,  421,  427
			DW	 434,  440,  446,  453,  459,  466,  473,  480
			DW	 487,  494,  501,  508,  516,  523,  531,  539
			DW	 546,  554,  562,  571,  579,  587,  596,  605
			DW	 613,  622,  631,  641,  650,  659,  669,  679
			DW	 689,  699,  709,  719,  729,  740,  751,  762
			DW	 773,  784,  795,  807,  819,  831,  843,  855
			DW	 867,  880,  893,  906,  919,  932,  946,  960
			DW	 974,  988, 1002, 1017, 1032, 1047, 1062, 1078
			DW	1093, 1109, 1125, 1142, 1158, 1175, 1192, 1210
			DW	1227, 1245, 1263, 1282, 1300, 1319, 1338, 1358
			DW	1378, 1398, 1418, 1439, 1459, 1481, 1502, 1524
			DW	1546, 1569, 1592, 1615, 1638, 1662, 1686, 1711
			DW	1736, 1761, 1786, 1812, 1839, 1866, 1893, 1920
			DW	1948, 1976, 2005, 2034, 2064, 2093, 2123, 2154
			DW	2186, 2217, 2250, 2282, 2316, 2349, 2383, 2418
			DW	2453, 2489, 2525, 2562, 2599, 2637, 2675, 2714
			DW	2754, 2794, 2834, 2876, 2918, 2960, 3003, 3047
			DW	3091, 3136, 3182, 3228, 3275, 3322, 3371, 3420
			DW	3470, 3520, 3571, 3623, 3676, 3729, 3784, 3839
			DW	3894, 3951, 4009, 4067, 4126, 4186, 4247, 4309
			DW	4371, 4435, 4499, 4565, 4631, 4699, 4767, 4836	
; --- End agon_sound.asm ---

; --- Begin agon_os.asm ---
;
; Title:	BBC Basic for AGON - MOS stuff
; Author:	Dean Belfield
; Created:	04/12/2024
; Last Updated:	12/12/2024
;
; Modinfo:
; 08/12/2024:	Added OSCLI and file I/O
; 11/12/2024:	Added ESC key handling
; 		Added OSWORD
; 12/12/2024:	Added OSRDCH, OSBYTE_81 and fixed *EDIT

			.ASSUME	ADL = 0
;			.ORG 0x0000
				
			; INCLUDE	"equs.inc"
			; INCLUDE "macros.inc"
			; INCLUDE "mos_api.inc"	; In MOS/src

;			SEGMENT CODE
			
;			XDEF	OSWORD
;			XDEF	OSBYTE
;			XDEF	OSINIT
;			XDEF	OSOPEN
;			XDEF	OSSHUT
;			XDEF	OSLOAD
;			XDEF	OSSAVE
;			XDEF	OSLINE
;			XDEF	OSSTAT
;			XDEF	OSWRCH
;			XDEF	OSRDCH
;			XDEF	OSBGET
;			XDEF	OSBPUT
;			XDEF	OSCLI
;			XDEF	PROMPT
;			XDEF	GETPTR
;			XDEF	PUTPTR
;			XDEF	GETEXT
;			XDEF	TRAP
;			XDEF	LTRAP
;			XDEF	BYE
;			XDEF	RESET
;			XDEF	ESCSET
			
;			XREF	EXTERR
;			XREF	VBLANK_INIT
;			XREF	VBLANK_STOP
;			XREF	USER
;			XREF	COUNT
;			XREF	COUNT0
;			XREF	COUNT1
;			XREF	GETCSR 
;			XREF	GETSCHR_1
;			XREF	NULLTOCR
;			XREF	CRLF
;			XREF	FLAGS
;			XREF	OSWRCHPT
;			XREF	OSWRCHCH
;			XREF	OSWRCHFH
;			XREF	KEYASCII
;			XREF	KEYDOWN
;			XREF	LISTON 
;			XREF	PAGE_
;			XREF	CSTR_FNAME
;			XREF	CSTR_FINDCH
;			XREF	CSTR_CAT 
;			XREF	CSTR_ENDSWITH
;			XREF	CSTR_LINE 
;			XREF	NEWIT
;			XREF	BAD
;			XREF	CLEAN
;			XREF	LINNUM
;			XREF	BUFFER
;			XREF	NXT
;			XREF	ERROR_
;			XREF	XEQ
;			XREF	LEXAN2
;			XREF	GETTOP
;			XREF	FINDL
;			XREF	DEL
;			XREF	LISTIT
;			XREF	ESCAPE
;			XREF	ASC_TO_NUMBER
;			XREF	CLOOP
;			XREF	SCRAP
;			XREF	POINT_
;			XREF	SOUND_

;OSINIT - Initialise RAM mapping etc.
;If BASIC is entered by BBCBASIC FILENAME then file
;FILENAME.BBC is automatically CHAINed.
;   Outputs: DE = initial value of HIMEM (top of RAM)
;            HL = initial value of PAGE (user program)
;            Z-flag reset indicates AUTO-RUN.
;  Destroys: A,D,E,H,L,F
;
OSINIT:			CALL	VBLANK_INIT
			XOR	A
			LD	(FLAGS), A		; Clear flags and set F = Z
			LD 	HL, USER
			LD	DE, RAM_Top
			LD	E, A			; Page boundary
			RET	

; PROMPT: output the input prompt
;
PROMPT: 		LD	A,'>'			; Falls through to OSWRCH

; OSWRCH: Write a character out to the ESP32 VDU handler via the MOS
; Parameters:
; - A: Character to write
;
OSWRCH:			PUSH	HL
			LD	HL, LISTON		; Fetch the LISTON variable
			BIT	3, (HL)			; Check whether we are in *EDIT mode
			JR	NZ, OSWRCH_BUFFER	; Yes, so just output to buffer
;
			LD	HL, (OSWRCHCH)		; L: Channel #
			DEC	L			; If it is 1
			JR	Z, OSWRCH_FILE		; Then we are outputting to a file
;
			POP	HL			; Otherwise
			RST.LIS	10h			; Output the character to MOS
			RET
;	
OSWRCH_BUFFER:		LD	HL, (OSWRCHPT)		; Fetch the pointer buffer
			CP	0AH			; Just ignore this
			JR	Z, OSWRCH_BUFFER2
			CP	0DH			; Is it the end of line?
			JR	NZ, OSWRCH_BUFFER1	; No, so carry on
			XOR	A			; Turn it into a NUL character
OSWRCH_BUFFER1:		LD	(HL), A			; Echo the character into the buffer
			INC	HL			; Increment pointer
			LD	(OSWRCHPT), HL		; Write pointer back
OSWRCH_BUFFER2:		POP	HL			
			RET
;
OSWRCH_FILE:		PUSH	DE
			LD	E, H			; Filehandle to E
			CALL	OSBPUT			; Write the byte out
			POP	DE
			POP	HL
			RET

; OSRDCH
;
OSRDCH:			MOSCALL	mos_getkey		; Read keyboard
			CP	1Bh
			JR	Z, LTRAP1 
			RET

; OSLINE: Invoke the line editor
;
OSLINE:			LD 	E, 1			; Default is to clear the buffer

; Entry point to line editor that does not clear the buffer
; Parameters:
; - HL: addresses destination buffer (on page boundary)
; Returns:
; -  A: 0
; NB: Buffer filled, terminated by CR
; 
OSLINE1:		PUSH	IY			
			PUSH	HL			; Buffer address
			LD	BC, 256			; Buffer length
			MOSCALL	mos_editline		; Call the MOS line editor
			POP	HL			; Pop the address
			POP	IY
			PUSH	AF			; Stack the return value (key pressed)
			CALL	NULLTOCR		; Turn the 0 character to a CR
			CALL	CRLF			; Display CRLF
			POP	AF
			CP	1Bh 			; Check if ESC terminated the input
			JP	Z, LTRAP1 		; Yes, so do the ESC thing
			LD	A, (FLAGS)		; Otherwise
			RES	7, A 			; Clear the escape flag
			LD	(FLAGS), A 
			CALL	WAIT_VBLANK 		; Wait a frame 
 			XOR	A			; Return A = 0
			LD	(KEYDOWN), A 
			LD	(KEYASCII), A
			RET		

;
; ESCSET
; Set the escape flag (bit 7 of FLAGS = 1) if escape is enabled (bit 6 of FLAGS = 0)
;
ESCSET: 		PUSH    HL
        		LD      HL,FLAGS		; Pointer to FLAGS
        		BIT     6,(HL)			; If bit 6 is set, then
        		JR      NZ,ESCDIS		; escape is disabled, so skip
        		SET     7,(HL)			; Set bit 7, the escape flag
ESCDIS: 		POP     HL
        		RET	

;
; ESCTEST
; Test for ESC key
;
ESCTEST:		CALL	READKEY			; Read the keyboard
			RET	NZ			; Skip if no key is pressed				
			CP	1BH			; If ESC pressed then
			JR	Z,ESCSET		; jump to the escape set routine
			RET

; Read the keyboard
; Returns:
; - A: ASCII of the pressed key
; - F: Z if the key is pressed, otherwise NZ
;
READKEY:		LD	A, (KEYDOWN)		; Get key down
			DEC	A 			; Set Z flag if keydown is 1
			LD	A, (KEYASCII)		; Get key ASCII value
			RET 
;
; TRAP
; This is called whenever BASIC needs to check for ESC
;
TRAP:			CALL	ESCTEST			; Read keyboard, test for ESC, set FLAGS
;
LTRAP:			LD	A,(FLAGS)		; Get FLAGS
			OR	A			; This checks for bit 7; if it is not set then the result will
			RET	P			; be positive (bit 7 is the sign bit in Z80), so return
LTRAP1:			LD	HL,FLAGS 		; Escape is pressed at this point, so
			RES	7,(HL)			; Clear the escape pressed flag and
			JP	ESCAPE			; Jump to the ESCAPE error routine in exec.asm

; RESET
;
RESET:			RET				; Yes this is fine

; OSOPEN
; HL: Pointer to path
;  F: C Z
;     x x OPENIN
; 	  OPENOUT
;     x	  OPENUP
; Returns:
;  A: Filehandle, 0 if cannot open
;
OSOPEN:			LD	C, fa_read
			JR	Z, @F
			LD	C, fa_write | fa_open_append
			JR	C, @F
			LD	C, fa_write | fa_create_always
@@:			MOSCALL	mos_fopen			
			RET

;OSSHUT - Close disk file(s).
; E = file channel
;  If E=0 all files are closed (except SPOOL)
; Destroys: A,B,C,D,E,H,L,F
;
OSSHUT:			PUSH	BC
			LD	C, E
			MOSCALL	mos_fclose
			POP	BC
			RET
	
; OSBGET - Read a byte from a random disk file.
;  E = file channel
; Returns
;  A = byte read
;  Carry set if LAST BYTE of file
; Destroys: A,B,C,F
;
OSBGET:			PUSH	BC
			LD	C, E
			MOSCALL	mos_fgetc
			POP	BC
			RET
	
; OSBPUT - Write a byte to a random disk file.
;  E = file channel
;  A = byte to write
; Destroys: A,B,C,F
;	
OSBPUT:			PUSH	BC
			LD	C, E
			LD	B, A
			MOSCALL	mos_fputc
			POP	BC
			RET

; OSSTAT - Read file status
;  E = file channel
; Returns
;  F: Z flag set - EOF
;  A: If Z then A = 0
; Destroys: A,D,E,H,L,F
;
OSSTAT:			PUSH	BC
			LD	C, E
			MOSCALL	mos_feof
			POP	BC
			CP	1
			RET
	
; GETPTR - Return file pointer.
;    E = file channel
; Returns:
; DEHL = pointer (0-&7FFFFF)
; Destroys: A,B,C,D,E,H,L,F
;
GETPTR:			PUSH		IY
			LD		C, E 
			MOSCALL		mos_getfil 	; HLU: Pointer to FIL structure
			PUSH.LIL	HL
			POP.LIL		IY		; IYU: Pointer to FIL structure
			LD.LIL		L, (IY + FIL.fptr + 0)
			LD.LIL		H, (IY + FIL.fptr + 1)
			LD.LIL		E, (IY + FIL.fptr + 2)
			LD.LIL		D, (IY + FIL.fptr + 3)
			POP		IY
			RET

; PUTPTR - Update file pointer.
;    A = file channel
; DEHL = new pointer (0-&7FFFFF)
; Destroys: A,B,C,D,E,H,L,F
;
PUTPTR:			PUSH		IY 			
			LD		C, A  		; C: Filehandle
			PUSH.LIL	HL 		
			LD.LIL		HL, 2
			ADD.LIL		HL, SP
			LD.LIL		(HL), E 	; 3rd byte of DWORD set to E
			POP.LIL		HL
			LD		E, D  		; 4th byte passed as E
			MOSCALL		mos_flseek
			POP		IY 
			RET
	
; GETEXT - Find file size.
;    E = file channel
; Returns:
; DEHL = file size (0-&800000)
; Destroys: A,B,C,D,E,H,L,F
;
GETEXT:			PUSH		IY 
			LD		C, E 
			MOSCALL		mos_getfil 	; HLU: Pointer to FIL structure
			PUSH.LIL	HL
			POP.LIL		IY		; IYU: Pointer to FIL structure
			LD.LIL		L, (IY + FIL.obj.objsize + 0)
			LD.LIL		H, (IY + FIL.obj.objsize + 1)
			LD.LIL		E, (IY + FIL.obj.objsize + 2)
			LD.LIL		D, (IY + FIL.obj.objsize + 3)			
			POP		IY 
			RET	

;OSLOAD - Load an area of memory from a file.
;   Inputs: HL addresses filename (CR terminated)
;           DE = address at which to load
;           BC = maximum allowed size (bytes)
;  Outputs: Carry reset indicates no room for file.
; Destroys: A,B,C,D,E,H,L,F
;
OSLOAD:			PUSH	BC			; Stack the size
			PUSH	DE			; Stack the load address
			LD	DE, ACCS		; Buffer address for filename
			CALL	CSTR_FNAME		; Fetch filename from MOS into buffer
			LD	HL, ACCS		; HL: Filename
			CALL	EXT_DEFAULT		; Tack on the extension .BBC if not specified
			CALL	EXT_HANDLER		; Get the default handler
			POP	DE			; Restore the load address
			POP	BC			; Restore the size
			OR	A
			JP 	Z, OSLOAD_BBC
;
; Load the file in as a text file
;
OSLOAD_TXT:		XOR	A			; Set file attributes to read
			CALL	OSOPEN			; Open the file			
			LD 	E, A 			; The filehandle
			OR	A
			LD	A, 4			; File not found error
			JP	Z, OSERROR		; Jump to error handler
			CALL	NEWIT			; Call NEW to clear the program space
;
OSLOAD_TXT1:		LD	HL, ACCS 		; Where the input is going to be stored
;
; First skip any whitespace (indents) at the beginning of the input
;
@@:			CALL	OSBGET			; Read the byte into A
			JR	C, OSLOAD_TXT3		; Is it EOF?
			CP	LF 			; Is it LF?
			JR	Z, OSLOAD_TXT3 		; Yes, so skip to the next line
			CP	21h			; Is it less than or equal to ASCII space?
			JR	C, @B 			; Yes, so keep looping
			LD	(HL), A 		; Store the first character
			INC	L
;
; Now read the rest of the line in
;
OSLOAD_TXT2:		CALL	OSBGET			; Read the byte into A
			JR	C, OSLOAD_TXT4		; Is it EOF?
			CP	20h			; Skip if not an ASCII character
			JR	C, @F
			LD	(HL), A 		; Store in the input buffer			
			INC	L			; Increment the buffer pointer
			JP	Z, BAD			; If the buffer is full (wrapped to 0) then jump to Bad Program error
@@:			CP	LF			; Check for LF
			JR	NZ, OSLOAD_TXT2		; If not, then loop to read the rest of the characters in
;
; Finally, handle EOL/EOF
;
OSLOAD_TXT3:		LD	(HL), CR		; Store a CR for BBC BASIC
			LD	A, L			; Check for minimum line length
			CP	2			; If it is 2 characters or less (including CR)
			JR	C, @F			; Then don't bother entering it
			PUSH	DE			; Preserve the filehandle
			CALL	OSEDIT			; Enter the line in memory
			CALL	C,CLEAN			; If a new line has been entered, then call CLEAN to set TOP and write &FFFF end of program marker
			POP	DE
@@:			CALL	OSSTAT			; End of file?
			JR	NZ, OSLOAD_TXT1		; No, so loop
			CALL	OSSHUT			; Close the file
			SCF				; Flag to BASIC that we're good
			RET
;
; Special case for BASIC programs with no blank line at the end
;
OSLOAD_TXT4:		CP	20h			; Skip if not an ASCII character
			JR	C, @F
			LD	(HL), A			; Store the character
			INC	L
			JP	Z, BAD
@@:			JR	OSLOAD_TXT3
;
; This bit enters the line into memory
; Also called from OSLOAD_TXT
; Returns:
; F: C if a new line has been entered (CLEAN will need to be called)
;
OSEDIT:			XOR	A			; Entry point after *EDIT
			LD      (COUNT),A
			LD      IY,ACCS
			CALL    LINNUM			; HL: The line number from the input buffer
			CALL    NXT			; Skip spaces
			LD      A,H			; HL: The line number will be 0 for immediate mode or when auto line numbering is used
			OR      L
			JR      Z,LNZERO        	; Skip if there is no line number in the input buffer
;
; This bit does the lexical analysis and tokenisation
;
LNZERO:			LD	DE,BUFFER	
                	LD	C,1			; LEFT MODE	
                	PUSH	HL	
                	CALL	LEXAN2			; LEXICAL ANALYSIS	
                	POP	HL	
                	LD	(DE),A			; TERMINATOR	
                	XOR	A	
                	LD	B,A	
                	LD	C,E			; BC=LINE LENGTH	
                	INC	DE	
                	LD	(DE),A			; ZERO NEXT	
                	LD	A,H	
                	OR	L	
                	LD	IY,BUFFER		; FOR XEQ	
                	JP	Z,XEQ			; DIRECT MODE	
                	PUSH	BC	
                	CALL	FINDL	
                	CALL	Z,DEL	
                	POP	BC	
                	LD	A,C	
                	OR	A	
                	RET	Z
                	ADD	A,4	
                	LD	C,A			; LENGTH INCLUSIVE	
                	PUSH	DE			; LINE NUMBER	
                	PUSH	BC			; SAVE LINE LENGTH	
                	EX	DE,HL	
                	PUSH	BC	
                	CALL	GETTOP	
                	POP	BC	
                	PUSH	HL	
                	ADD	HL,BC	
                	PUSH	HL	
                	INC	H	
                	XOR	A	
                	SBC	HL,SP	
                	POP	HL	
                	JP	NC,ERROR_		; "No room"	
                	EX	(SP),HL	
                	PUSH	HL	
                	INC	HL	
                	OR	A	
                	SBC	HL,DE	
                	LD	B,H			; BC=AMOUNT TO MOVE	
                	LD	C,L	
                	POP	HL	
                	POP	DE	
                	JR	Z,ATENDos	
                	LDDR				; MAKE SPACE	
ATENDos:          	POP	BC			; LINE LENGTH	
                	POP	DE			; LINE NUMBER	
                	INC	HL	
                	LD	(HL),C			; STORE LENGTH	
                	INC	HL	
                	LD	(HL),E			; STORE LINE NUMBER	
                	INC	HL	
                	LD	(HL),D	
                	INC	HL	
                	LD	DE,BUFFER	
                	EX	DE,HL	
                	DEC	C	
                	DEC	C	
                	DEC	C	
                	LDIR				; ADD LINE
			SCF
			RET	
;
; Load the file in as a tokenised binary blob
;
OSLOAD_BBC:		MOSCALL	mos_load		; Call LOAD in MOS
			RET	NC			; If load returns with carry reset - NO ROOM
			OR	A			; If there is no error (A=0)
			SCF				; Need to set carry indicating there was room
			RET	Z			; Return
;
OSERROR:		PUSH	AF			; Handle the MOS error
			LD	HL, ACCS		; Address of the buffer
			LD	BC, 256			; Length of the buffer
			LD	E, A			; The error code
			MOSCALL	mos_getError		; Copy the error message into the buffer
			POP	AF			
			PUSH	HL			; Stack the address of the error (now in ACCS)		
			ADD	A, 127			; Add 127 to the error code (MOS errors start at 128, and are trappable)
			JP	EXTERR			; Trigger an external error

;OSSAVE - Save an area of memory to a file.
;   Inputs: HL addresses filename (term CR)
;           DE = start address of data to save
;           BC = length of data to save (bytes)
; Destroys: A,B,C,D,E,H,L,F
;
OSSAVE:			PUSH	BC			; Stack the size
			PUSH	DE			; Stack the save address
			LD	DE, ACCS		; Buffer address for filename
			CALL	CSTR_FNAME		; Fetch filename from MOS into buffer
			LD	HL, ACCS		; HL: Filename
			CALL	EXT_DEFAULT		; Tack on the extension .BBC if not specified
			CALL	EXT_HANDLER		; Get the default handler
			POP	DE			; Restore the save address
			POP	BC			; Restore the size
			OR	A			; Is the extension .BBC
			JR	Z, OSSAVE_BBC		; Yes, so use that
;
; Save the file out as a text file
;
OSSAVE_TXT:		LD 	A, (OSWRCHCH)		; Stack the current channel
			PUSH	AF
			XOR	A
			INC	A			; Make sure C is clear, A is 1, for OPENOUT
			LD	(OSWRCHCH), A
			CALL	OSOPEN			; Open the file
			LD	(OSWRCHFH), A		; Store the file handle for OSWRCH
			LD	IX, LISTON		; Required for LISTIT
			LD	HL, (PAGE_)		; Get start of program area
			EXX
			LD	BC, 0			; Set the initial indent counters
			EXX			
OSSAVE_TXT1:		LD	A, (HL)			; Check for end of program marker
			OR	A		
			JR	Z, OSSAVE_TXT2
			INC	HL			; Skip the length byte
			LD	E, (HL)			; Get the line number
			INC	HL
			LD	D, (HL)
			INC	HL
			CALL	LISTIT			; List the line
			JR	OSSAVE_TXT1
OSSAVE_TXT2:		LD	A, (OSWRCHFH)		; Get the file handle
			LD	E, A
			CALL	OSSHUT			; Close it
			POP	AF			; Restore the channel
			LD	(OSWRCHCH), A		
			RET
;
; Save the file out as a tokenised binary blob
;
OSSAVE_BBC:		MOSCALL	mos_save		; Call SAVE in MOS
			OR	A			; If there is no error (A=0)
			RET	Z			; Just return
			JR	OSERROR			; Trip an error

; Check if an extension is specified in the filename
; Add a default if not specified
; HL: Filename (CSTR format)
;
EXT_DEFAULT:		PUSH	HL			; Stack the filename pointer	
			LD	C, '.'			; Search for dot (marks start of extension)
			CALL	CSTR_FINDCH
			OR	A			; Check for end of string marker
			JR	NZ, @F			; No, so skip as we have an extension at this point			
			LD	DE, EXT_LOOKUP		; Get the first (default extension)
			CALL	CSTR_CAT		; Concat it to string pointed to by HL
@@:			POP	HL			; Restore the filename pointer
			RET
			
; Check if an extension is valid and, if so, provide a pointer to a handler
; HL: Filename (CSTR format)
; Returns:
;  A: Filename extension type (0=BBC tokenised, 1=ASCII untokenised)
;
EXT_HANDLER:		PUSH	HL			; Stack the filename pointer
			LD	C, '.'			; Find the '.'
			CALL	CSTR_FINDCH
			LD	DE, EXT_LOOKUP		; The lookup table
;
EXT_HANDLER_1:		PUSH	HL			; Stack the pointer to the extension
			CALL	CSTR_ENDSWITH		; Check whether the string ends with the entry in the lookup
			POP	HL			; Restore the pointer to the extension
			JR	Z, EXT_HANDLER_2	; We have a match!
;
@@:			LD	A, (DE)			; Skip to the end of the entry in the lookup
			INC	DE
			OR	A
			JR	NZ, @B
			INC	DE			; Skip the file extension # byte
;
			LD	A, (DE)			; Are we at the end of the table?
			OR	A
			JR	NZ, EXT_HANDLER_1	; No, so loop
;			
			LD      A,204			; Throw a "Bad name" error
        		CALL    EXTERR
        		DB    	"Bad name", 0
;
EXT_HANDLER_2:		INC	DE			; Skip to the file extension # byte
			LD	A, (DE)		
			POP	HL			; Restore the filename pointer
			RET

; Extension lookup table
; CSTR, TYPE
; 	- 0: BBC (tokenised BBC BASIC for Z80 format)
; 	- 1: Human readable plain text
;
EXT_LOOKUP:		DB	".BBC", 0, 0		; First entry is the default extension
			DB	".TXT", 0, 1
			DB	".ASC", 0, 1
			DB	".BAS", 0, 1
			DB	0			; End of table

; OSWORD
;
OSWORD:			CP	07H			; SOUND
			; JR	Z, OSWORD_07
			JP	Z, OSWORD_07 ; JR WAS TOO LARGE
			CP	08H			; ENVELOPE
			JR	Z, OSWORD_08
			CP	09H			; POINT
			JR	Z, OSWORD_09
			JP	HUH			; Anything else trips an error

; SOUND channel,volume,pitch,duration
; Parameters:
; - HL: Pointer to data
;   - 0,1: Channel
;   - 2,3: Volume 0 (off) to 15 (full volume)
;   - 4,5: Pitch 0 - 255
;   - 6,7: Duration -1 to 254 (duration in 20ths of a second, -1 = play forever)
;
OSWORD_07:		EQU	SOUND_

; OSWORD 0x09: POINT
; Parameters:
; - HL: Address of data
;   - 0,1: X coordinate
;   - 2,3: Y coordinate
;
OSWORD_09:		LD	DE,(SCRAP+0)
			LD	HL,(SCRAP+2)
			CALL	POINT_
			LD	(SCRAP+4),A
OSWORD_08:		RET				; Envelope not currently implemented

;
; OSBYTE
; Parameters:
; - A: FX #
; - L: First parameter
; - H: Second parameter
;
OSBYTE:			CP	0BH			; Keyboard auto-repeat delay
			JR	Z, OSBYTE_0B
			CP	0CH			; Keyboard auto-repeat rate
			JR	Z, OSBYTE_0C
			CP	13H			; Wait for vblank
			JR	Z, OSBYTE_13		
			CP	76H			; Set keyboard LED
			JR	Z, OSBYTE_76
			CP	81H			; Read the keyboard
			JP	Z, OSBYTE_81
			CP	86H			; Get cursor coordinates
			JP	Z, OSBYTE_86
			CP	87H			; Fetch current mode and character under cursor
			JP	Z, OSBYTE_87
			CP	A0H			; Fetch system variable
			JP	Z, OSBYTE_A0		
;
; Anything else trips an error
;
HUH:    		LD      A,254			; Bad command error
        		CALL    EXTERR
        		DB    	"Bad command"
        		DEFB    0				

; OSBYTE 0x0B (FX 11,n): Keyboard auto-repeat delay
; Parameters:
; - HL: Repeat delay
;
OSBYTE_0B:		VDU	23
			VDU	0
			VDU	vdp_keystate
			VDU	L
			VDU	H 
			VDU	0
			VDU 	0
			VDU	255
			RET 

; OSBYTE 0x0C (FX 12,n): Keyboard auto-repeat rate
; Parameters:
; - HL: Repeat rate
;
OSBYTE_0C:		VDU	23
			VDU	0
			VDU	vdp_keystate
			VDU	0
			VDU 	0
			VDU	L
			VDU	H 
			VDU	255
			RET 

; OSBYTE 0x13 (FX 19): Wait for vertical blank interrupt
;
OSBYTE_13:		CALL	WAIT_VBLANK
			LD	L, 0			; Returns 0
			JP	COUNT0
;
; OSBYTE 0x76 (FX 118,n): Set Keyboard LED
; Parameters:
; - L: LED (Bit 0: Scroll Lock, Bit 1: Caps Lock, Bit 2: Num Lock)
;
OSBYTE_76:		VDU	23
			VDU	0
			VDU	vdp_keystate
			VDU	0
			VDU 	0
			VDU	0
			VDU	0 
			VDU	L
			RET 

; OSBYTE 0x81: Read the keyboard
; Parameters:
; - HL = Time to wait (centiseconds)
; Returns:
; - F: Carry reset indicates time-out
; - A: If carry set, A = character typed
; Destroys: A,D,E,H,L,F
;
OSBYTE_81:		CALL	READKEY			; Read the keyboard 
			JR	Z, @F 			; Skip if we have a key
			LD	A, H 			; Check loop counter
			OR 	L
			RET 	Z 			; Return, we've not got a key at this point
			CALL	WAIT_VBLANK 		; Wait a frame
			DEC 	HL			; Decrement
			JR	OSBYTE_81		; And loop
;
@@:			LD	HL, KEYDOWN		; We have a key, so 
			LD	(HL), 0			; clear the keydown flag
			CP	1BH			; If we are not pressing ESC, 
			SCF 				; then flag we've got a character
			RET	NZ
			JP	ESCSET			; Handle ESC

; OSBYTE 0x86: Fetch cursor coordinates
; Returns:
; - DE: X Coordinate (POS)
; - HL: Y Coordinate (VPOS)
;
OSBYTE_86:		PUSH	IX			; Get the system vars in IX
			MOSCALL	mos_sysvars		; Reset the semaphore
			RES.LIL	0, (IX+sysvar_vpd_pflags)
			VDU	23
			VDU	0
			VDU	vdp_cursor
@@:			BIT.LIL	0, (IX+sysvar_vpd_pflags)
			JR	Z, @B			; Wait for the result
			LD 	D, 0
			LD	H, D
			LD.LIL	E, (IX + sysvar_cursorX)
			LD.LIL	L, (IX + sysvar_cursorY)			
			POP	IX			
			RET	

; OSBYTE 0x87: Fetch current mode and character under cursor
;
OSBYTE_87:		PUSH	IX
			CALL	GETCSR			; Get the current screen position
			CALL	GETSCHR_1		; Read character from screen
			LD	L, A 
			MOSCALL	mos_sysvars
			LD.LIL	H, (IX+sysvar_scrMode)	; H: Screen mode
			POP	IX
			JP	COUNT1
			
; OSBYTE 0xA0: Fetch system variable
; Parameters:
; - L: The system variable to fetch
;
OSBYTE_A0:		PUSH	IX
			MOSCALL	mos_sysvars		; Fetch pointer to system variables
			LD.LIL	BC, 0			
			LD	C, L			; BCU = L
			ADD.LIL	IX, BC			; Add to IX
			LD.LIL	L, (IX + 0)		; Fetch the return value
			POP	IX
			JP 	COUNT0

; OSCLI
;
;
;OSCLI - Process a MOS command
;
OSCLI: 			CALL    SKIPSP
			CP      CR
			RET     Z
			CP      '|'
			RET     Z
			EX      DE,HL
			LD      HL,COMDS
OSCLI0:			LD      A,(DE)
			CALL    UPPRC
			CP      (HL)
			JR      Z,OSCLI2
			JR      C,OSCLI6
OSCLI1:			BIT     7,(HL)
			INC     HL
			JR      Z,OSCLI1
			INC     HL
			INC     HL
			JR      OSCLI0
;
OSCLI2:			PUSH    DE
OSCLI3:			INC     DE
			INC     HL
			LD      A,(DE)
			CALL    UPPRC
			CP      '.'			; ABBREVIATED?
			JR      Z,OSCLI4
			XOR     (HL)
			JR      Z,OSCLI3
			CP      80H
			JR      Z,OSCLI4
			POP     DE
			JR      OSCLI1
;
OSCLI4:			POP     AF
		        INC     DE
OSCLI5:			BIT     7,(HL)
			INC     HL
			JR      Z,OSCLI5
			LD      A,(HL)
			INC     HL
			LD      H,(HL)
			LD      L,A
			PUSH    HL
			EX      DE,HL
			JP      SKIPSP
;
OSCLI6:			EX	DE, HL			; HL: Buffer for command
			LD	DE, ACCS		; Buffer for command string is ACCS (the string accumulator)
			PUSH	DE			; Store buffer address
			CALL	CSTR_LINE		; Fetch the line
			POP	HL			; HL: Pointer to command string in ACCS
			PUSH	IY
			MOSCALL	mos_oscli		; Returns OSCLI error in A
			POP	IY
			OR	A			; 0 means MOS returned OK
			RET	Z			; So don't do anything
			JP 	OSERROR			; Otherwise it's a MOS error

SKIPSP:			LD      A,(HL)			
        		CP      ' '
        		RET     NZ
        		INC     HL
        		JR      SKIPSP	

UPPRC:  		AND     7FH
			CP      '`'
			RET     C
			AND     5FH			; CONVERT TO UPPER CASE
			RET	

; Each command has bit 7 of the last character set, and is followed by the address of the handler
; These must be in alphabetical order
;		
COMDS:  		DB	"BY","E"+80h		; BYE
			DW	BYE
			DB	"EDI","T"+80h		; EDIT
			DW	STAR_EDIT
			DB	"F","X"+80h		; FX
			DW	STAR_FX
;			DB	'VERSIO','N'+80h	; VERSION
;			DW	STAR_VERSION
			DB	FFh			

; *BYE
;
BYE:			CALL	VBLANK_STOP		; Restore MOS interrupts
			POP.LIL	IX 			; The return address to init
			LD	HL, 0			; The return code
			JP	(IX)

; *EDIT linenum
;
STAR_EDIT:		CALL	ASC_TO_NUMBER		; DE: Line number to edit
			EX	DE, HL			; HL: Line number
			CALL	FINDL			; HL: Address in RAM of tokenised line			
			LD	A, 41			; F:NZ If the line is not found
			JP	NZ, ERROR_		; Do error 41: No such line in that case
;
; Use LISTIT to output the line to the ACCS buffer
;
			INC	HL			; Skip the length byte
			LD	E, (HL)			; Fetch the line number
			INC	HL
			LD	D, (HL)
			INC	HL
			LD	IX, ACCS		; Pointer to where the copy is to be stored
			LD	(OSWRCHPT), IX
			LD	IX, LISTON		; Pointer to LISTON variable in RAM
			LD	A, (IX)			; Store that variable
			PUSH	AF
			LD	(IX), 09h		; Set to echo to buffer
			CALL	LISTIT
			POP	AF
			LD	(IX), A			; Restore the original LISTON variable			
			LD	HL, ACCS		; HL: ACCS
			LD	E, L			;  E: 0 - Don't clear the buffer; ACCS is on a page boundary so L is 0
			CALL	OSLINE1			; Invoke the editor
			CALL	OSEDIT
			CALL    C,CLEAN			; Set TOP, write out &FFFF end of program marker
			JP      CLOOP			; Jump back to immediate mode

; OSCLI FX n
;
STAR_FX:		CALL	ASC_TO_NUMBER
			LD	C, E			; C: Save FX #
			CALL	ASC_TO_NUMBER
			LD	A, D  			; Is first parameter > 255?
			OR 	A 			
			JR	Z, STAR_FX1		; Yes, so skip next bit 
			EX	DE, HL 			; Parameter is 16-bit
			JR	STAR_FX2 
;
STAR_FX1:		LD	B, E 			; B: Save First parameter
			CALL	ASC_TO_NUMBER		; Fetch second parameter
			LD	L, B 			; L: First parameter
			LD	H, E 			; H: Second parameter
;
STAR_FX2:		LD	A, C 			; A: FX #
			JP	OSBYTE	

; Helper Functions
;
WAIT_VBLANK:		PUSH 	IX			; Wait for VBLANK interrupt
			MOSCALL	mos_sysvars		; Fetch pointer to system variables
			LD.LIL	A, (IX + sysvar_time + 0)
@@:			CP.LIL 	A, (IX + sysvar_time + 0)
			JR	Z, @B
			POP	IX
			RET    
			; --- End agon_os.asm ---

; --- Begin eval.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;                XDEF	COUNT0	
;                XDEF	COUNT1	
;
;BBC BASIC INTERPRETER - Z80 VERSION
;EVALUATE EXPRESSION MODULE - "EVAL"
;(C) COPYRIGHT R.T.RUSSELL 1981-2024
;
;THE NAME BBC BASIC IS USED WITH THE PERMISSION
;OF THE BRITISH BROADCASTING CORPORATION AND IS
;NOT TRANSFERRABLE TO A FORKED OR DERIVED WORK.
;
;VERSION 2.3, 07-05-1984
;VERSION 3.0, 08-03-1987
;VERSION 5.0, 31-05-2024
;
;BINARY FLOATING POINT REPRESENTATION:
; 32 BIT SIGN-MAGNITUDE NORMALIZED MANTISSA
; 8 BIT EXCESS-128 SIGNED EXPONENT
; SIGN BIT REPLACES MANTISSA MSB (IMPLIED "1")
; MANTISSA=0 & EXPONENT=0 IMPLIES VALUE IS ZERO.
;
;BINARY INTEGER REPRESENTATION:
; 32 BIT 2'S-COMPLEMENT SIGNED INTEGER
; "EXPONENT" BYTE = 0 (WHEN PRESENT)
;
;NORMAL REGISTER ALLOCATION: MANTISSA - HLH'L'
;                            EXPONENT - C
;
;                XDEF	EXPR	
;                XDEF	EXPRN	
;                XDEF	EXPRI	
;                XDEF	EXPRS	
;                XDEF	ITEMI	
;                XDEF	CONS	
;                XDEF	LOADS	
;                XDEF	VAL0	
;                XDEF	SFIX	
;                XDEF	STR	
;                XDEF	HEXSTR	
;                XDEF	LOAD4	
;                XDEF	LOADN	
;                XDEF	DLOAD5	
;                XDEF	TEST	
;                XDEF	ZERO	
;                XDEF	COMMA	
;                XDEF	BRAKET	
;                XDEF	DECODE	
;                XDEF	PUSHS	
;                XDEF	POPS	
;                XDEF	SEARCH	
;                XDEF	SCP	
;                XDEF	LETARR	
;
;                XREF	MUL16	
;                XREF	ERROR_	
;                XREF	SYNTAX	
;                XREF	CHANEL	
;                XREF	CHNL	
;                XREF	STOREN	
;                XREF	STORE4	
;                XREF	STORE5	
;                XREF	STACCS	
;                XREF	CHECK	
;                XREF	USR	
;                XREF	VAR_	
;                XREF	FN	
;                XREF	XEQ	
;                XREF	NXT	
;                XREF	X14OR5	
;                XREF	MODIFY	
;                XREF	MODIFS	
;                XREF	TERMQ	
;
;                XREF	GETVAR	
;                XREF	LEXAN2	
;                XREF	RANGE	
;                XREF	GETTOP	
;
;                XREF	STAVAR	
;                XREF	PAGE_	
;                XREF	LOMEM	
;                XREF	HIMEM	
;                XREF	RANDOM	
;                XREF	COUNT	
;                XREF	LISTON	
;                XREF	PC	
;                XREF	ERL	
;                XREF	ERR	
;                XREF	ACCS	
;                XREF	ERRTXT	
;                XREF	KEYWDS	
;                XREF	KEYWDL	
;                XREF	FREE	
;                XREF	BUFFER	
;
;                XREF	OSRDCH	
;                XREF	OSOPEN	
;                XREF	OSBGET	
;                XREF	OSSTAT	
;                XREF	GETCSR	
;                XREF	GETIME	
;                XREF	GETIMS	
;                XREF	GETEXT	
;                XREF	GETPTR	
;                XREF	OSKEY	
;
;                XREF	POINT	
;                XREF	ADVAL	
;                XREF	TINTFN	
;                XREF	MODEFN	
;                XREF	WIDFN	
;
;                XREF	FPP	
;
FUNTOK:         EQU	8DH		;1st FUNCTION TOKEN	
TMOD:           EQU	83H	
TLEN:           EQU	0A9H	
; TTO:            EQU	0B8H	; IN main.asm
; TDIM:           EQU	0DEH	; IN main.asm
TEND:           EQU	0E0H	
TMODE:          EQU	0EBH	
TREPORT:        EQU	0F6H	
TWIDTH:         EQU	0FEH	
TTINT:          EQU	0AH	
; TBY:            EQU	0FH	; IN main.asm
;
;TABLE OF ADDRESSES FOR FUNCTIONS:
;
FUNTBL:         DW	DECODE		;Line number	
                DW	OPENIN		;OPENIN	
                DW	PTRev		;PTR	
                DW	PAGEVev		;PAGE	
                DW	TIMEVev		;TIME	
                DW	LOMEMVev		;LOMEM	
                DW	HIMEMVev		;HIMEM	
                DW	ABSev		;ABS	
                DW	ACSev		;ACS	
                DW	ADVAL		;ADVAL	
                DW	ASC		;ASC	
                DW	ASNev		;ASN	
                DW	ATNev		;ATN	
                DW	BGET		;BGET	
                DW	COSev		;COS	
                DW	COUNTV		;COUNT	
                DW	DEGev		;DEG	
                DW	ERLV		;ERL	
                DW	ERRV		;ERR	
                DW	EVAL_		;EVAL_	
                DW	EXPev		;EXP	
                DW	EXTev		;EXT	
                DW	ZERO		;FALSE	
                DW	FN		;FN	
                DW	GET		;GET	
                DW	INKEY		;INKEY	
                DW	INSTR		;INSTR(	
                DW	INT_ev		;INT_	
                DW	LEN		;LEN	
                DW	LNev		;LN	
                DW	LOGev		;LOG	
                DW	CPL_ev		;NOT	
                DW	OPENUP		;OPENUP	
                DW	OPENOT		;OPENOUT	
                DW	PIev		;PI	
                DW	POINT		;POINT(	
                DW	POS		;POS	
                DW	RADev		;RAD	
                DW	RND		;RND	
                DW	SGNev		;SGN	
                DW	SINev		;SIN	
                DW	SQRev		;SQR	
                DW	TANev		;TAN	
                DW	TOPV		;TO(P)	
                DW	TRUEev		;TRUE	
                DW	USR		;USR	
                DW	VALev		;VAL	
                DW	VPOS		;VPOS	
                DW	CHRS		;CHR$	
                DW	GETS		;GET$	
                DW	INKEYS		;INKEY$	
                DW	LEFTS		;LEFT$(	
                DW	MIDS		;MID$(	
                DW	RIGHTS		;RIGHT$(	
                DW	STRS		;STR$	
                DW	STRING_		;STRING_$(	
                DW	EOF		;EOF	
                DW	SUM		;SUM	
;
FUNTBL_END:     EQU	$	
; TCMD:           EQU	FUNTOK+(FUNTBL_END-FUNTBL)/2	
TCMD:           EQU	FUNTBL_END-FUNTBL/2+FUNTOK
;
; CR             EQU	0DH	
; LF             EQU	0AH	
AND_:           EQU	80H	
DIV_:           EQU	81H	
EOR:            EQU	82H	
MOD_:           EQU	83H	
OR_:            EQU	84H	
;
SOPTBL:         DW	SLE		;<= (STRING)	
                DW	SNE		;<>	
                DW	SGE		;>=	
                DW	SLT		;<	
                DW	SEQ		;=	
                DW	SGT		;>	
;
;EXPR - VARIABLE-TYPE EXPRESSION EVALUATION
; Expression type is returned in A'F':
; Numeric - A' bit 7=0, F' sign bit cleared.
; String - A' bit 7=1, F' sign bit set.
;Floating-point or integer result returned in HLH'L'C
; Integer result denoted by C=0 and HLH'L' non-zero.
;String result returned in string accumulator, DE set.
;
;Hierarchy is: (1) Variables, functions,
; constants, bracketed expressions.
; (2) ^
; (3) * / MOD DIV
; (4) + -
; (5) = <> <= >= > <
; (6) AND
; (7) EOR OR
;
EXPR:           CALL	EXPR1		;GET FIRST OPERAND	
EXPR0A:         CP	EOR		;CHECK OPERATOR	
                JR	Z,EXPR0B	
                CP	OR_	
                RET	NZ	
EXPR0B:         CALL	SAVEev		;SAVE FIRST OPERAND	
                CALL	EXPR1		;GET SECOND OPERAND	
                CALL	DOIT		;DO OPERATION	
                JR	EXPR0A		;CONTINUE	
;
EXPR1:          CALL	EXPR2	
EXPR1A:         CP	AND_	
                RET	NZ	
                CALL	SAVEev	
                CALL	EXPR2	
                CALL	DOIT	
                JR	EXPR1A	
;
EXPR2:          CALL	EXPR3ev	
                CALL	RELOPQ	
                RET	NZ	
                LD	B,A	
                INC	IY		;BUMP OVER OPERATOR	
                CALL	NXT	
                CALL	RELOPQ		;COMPOUND OPERATOR?	
                JR	NZ,EXPR2B	
                INC	IY	
                CP	B	
                JR	Z,SHIFT		;SHIFT | ==	
                ADD	A,B	
                LD	B,A	
EXPR2B:         LD	A,B	
                EX	AF,AF'	
                JP	M,EXPR2S	
                EX	AF,AF'	
                SUB	4	
                CP	'>'-4	
                JR	NZ,EXPR2C	
                ADD	A,2	
EXPR2C:         AND	0FH	
EXPR2D:         CALL	SAVE1	
                CALL	EXPR3ev	
                CALL	DOIT		;Must NOT be "JP DOIT"	
                RET	
;
SHIFT:          CP	'='	
                JR	Z,EXPR2B	;==	
                CALL	NXT	
                CALL	RELOPQ	
                JR	NZ,SHIFT1	
                CP	B	
                JP	NZ,SYNTAX	
                INC	IY	
                INC	B	
SHIFT1:         LD	A,B	
                SUB	18	
                JR	EXPR2D	
;
EXPR2S:         EX	AF,AF'	
                DEC	A	
                AND	7	
                CALL	PUSHS		;SAVE STRING ON STACK	
                PUSH	AF		;SAVE OPERATOR	
                CALL	EXPR3ev		;SECOND STRING	
                EX	AF,AF'	
                JP	P,MISMATev	
                POP	AF	
                LD	C,E		;LENGTH OF STRING #2	
                POP	DE	
                LD	HL,0	
                ADD	HL,SP	
                LD	B,E		;LENGTH OF STRING #1	
                PUSH	DE	
                LD	DE,ACCS	
                EX	DE,HL	
                CALL	DISPT2	
                POP	DE	
                EX	DE,HL	
                LD	H,0	
                ADD	HL,SP	
                LD	SP,HL	
                EX	DE,HL	
                XOR	A		;NUMERIC MARKER	
                LD	C,A		;INTEGER MARKER	
                EX	AF,AF'	
                LD	A,(IY)	
                RET	
;
EXPR3ev:          CALL	EXPR4	
EXPR3A:         CP	'-'	
                JR	Z,EXPR3B	
                CP	'+'	
                RET	NZ	
                EX	AF,AF'	
                JP	M,EXPR3S	
                EX	AF,AF'	
EXPR3B:         CALL	SAVEev	
                CALL	EXPR4	
                CALL	DOIT	
                JR	EXPR3A	
;
EXPR3S:         EX	AF,AF'	
                INC	IY		;BUMP PAST '+'	
                CALL	PUSHS		;SAVE STRING ON STACK	
                CALL	EXPR4		;SECOND STRING	
                EX	AF,AF'	
                JP	P,MISMATev	
                LD	C,E		;C=LENGTH	
                POP	DE	
                PUSH	DE	
                LD	HL,ACCS	
                LD	D,H	
                LD	A,C	
                OR	A	
                JR	Z,EXP3S3	
                LD	B,L	
                LD	L,A		;SOURCE	
                ADD	A,E	
                LD	E,A		;DESTINATION	
                LD	A,19	
                JR	C,ERROR2ev	;"String too long"	
                PUSH	DE	
                DEC	E	
                DEC	L	
                LDDR			;COPY	
                POP	DE	
EXP3S3:         EXX	
                POP	BC	
                CALL	POPS		;RESTORE FROM STACK	
                EXX	
                OR	80H		;FLAG STRING	
                EX	AF,AF'	
                LD	A,(IY)	
                JR	EXPR3A	
;
EXPR4:          CALL	EXPR5	
EXPR4A:         CP	'*'	
                JR	Z,EXPR4B	
                CP	'/'	
                JR	Z,EXPR4B	
                CP	MOD_	
                JR	Z,EXPR4B	
                CP	DIV_	
                RET	NZ	
EXPR4B:         CALL	SAVEev	
                CALL	EXPR5	
                CALL	DOIT	
                JR	EXPR4A	
;
EXPR45:         LD	A,E	
                CP	'+'	
                JR	Z,EXPR4	
                CP	'-'	
                JR	Z,EXPR4	
EXPR5:          CALL	ITEM	
                OR	A		;TEST TYPE	
                EX	AF,AF'		;SAVE TYPE	
EXPR5A:         CALL	NXT	
                CP	'^'	
                RET	NZ	
                CALL	SAVEev	
                CALL	ITEM	
                OR	A	
                EX	AF,AF'	
                CALL	DOIT	
                JR	EXPR5A	
;
EXPRN:          CALL	EXPR	
                EX	AF,AF'	
                RET	P	
                JR	MISMATev	
;
EXPRI:          CALL	EXPR	
                EX	AF,AF'	
                JP	P,SFIX	
                JR	MISMATev	
;
EXPRS:          CALL	EXPR	
                EX	AF,AF'	
                RET	M	
                JR	MISMATev	
;
BADHEX:         LD	A,28	
ERROR2ev:         JP	ERROR_		;"Bad HEX or binary"	
;
NEGATEev:         EXX	
                LD	A,H	
                CPL	
                LD	H,A	
                LD	A,L	
                CPL	
                LD	L,A	
                EXX	
                LD	A,H	
                CPL	
                LD	H,A	
                LD	A,L	
                CPL	
                LD	L,A	
ADD1ev:           EXX	
                INC	HL	
                LD	A,H	
                OR	L	
                EXX	
                LD	A,0		;NUMERIC MARKER	
                RET	NZ	
                INC	HL	
                RET	
;
ITEMI:          CALL	ITEM	
                OR	A	
                JP	P,SFIX	
                JR	MISMATev	
;
ITEMS:          CALL	ITEM	
                OR	A	
                RET	M	
MISMATev:         LD	A,6	
                JR	ERROR2ev		;"Type mismatch"	
;
ITEM1:          CALL	EXPR		;BRACKETED EXPR	
                CALL	BRAKET	
                EX	AF,AF'	
                RET	
;
ITEMN:          CALL	ITEM	
                OR	A	
                RET	P	
                JR	MISMATev	
;
;HEX - Get hexadecimal constant.
;   Inputs: ASCII string at (IY)
;  Outputs: Integer result in H'L'HL, C=0, A7=0.
;           IY updated (points to delimiter)
;
HEXev:            CALL	ZERO	
                CALL	HEXDIG	
                JR	C,BADHEX	
HEX1:           INC	IY	
                AND	0FH	
                LD	B,4	
HEX2:           EXX	
                ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                DJNZ	HEX2	
                EXX	
                OR	L	
                LD	L,A	
                EXX	
                CALL	HEXDIG	
                JR	NC,HEX1	
                XOR	A	
                RET	
;
;BIN - Get binary constant.
;   Inputs: ASCII string at (IY)
;  Outputs: Integer result in H'L'HL, C=0, A=0.
;           IY updated (points to delimiter)
;
BIN:            CALL	ZERO	
                CALL	BINDIG	
                JR	C,BADHEX	
BIN1:           INC	IY	
                RR	A	
                EXX	
                ADC	HL,HL	
                EXX	
                ADC	HL,HL	
                CALL	BINDIG	
                JR	NC,BIN1	
                XOR	A	
                RET	
;
;MINUS - Unary minus.
;   Inputs: IY = text pointer
;  Outputs: Numeric result, same type as argument.
;           Result in H'L'HLC
;
MINUS:          CALL	ITEMN	
MINUS0:         DEC	C	
                INC	C	
                JR	Z,NEGATEev	;ZERO/INTEGER	
                LD	A,H	
                XOR	80H		;CHANGE SIGN (FP)	
                LD	H,A	
                XOR	A		;NUMERIC MARKER	
                RET	
;
ADDROF:         CALL	VAR_	
                PUSH	HL	
                EXX	
                POP	HL	
                JP	COUNT1	
;
;ITEM - VARIABLE TYPE NUMERIC OR STRING ITEM.
;Item type is returned in A: Bit 7=0 numeric.
; Bit 7=1 string.
;Numeric item returned in HLH'L'C.
;String item returned in string accumulator,
; DE addresses byte after last (E=length).
;
ITEM:           CALL	CHECK	
                CALL	NXT	
                INC	IY	
                CP	FUNTOK	
                JR	C,ITEM0	
                CP	TCMD	
                JP	C,DISPATev	;FUNCTIONS	
                JP	EXTRASev		;DIM, END, MODE, REPORT$, WIDTH	
;
ITEM0:          CP	':'	
                JR	NC,ITEM2	;VARIABLES	
                CP	'0'	
                JR	NC,CONev		;NUMERIC CONSTANT	
                CP	'('	
                JR	Z,ITEM1		;EXPRESSION	
                CP	'-'	
                JR	Z,MINUS		;UNARY MINUS	
                CP	'+'	
                JR	Z,ITEMN		;UNARY PLUS	
                CP	'.'	
                JR	Z,CONev		;NUMERIC CONSTANT	
                CP	'&'	
                JR	Z,HEXev		;HEX CONSTANT	
                CP	'%'	
                JR	Z,BIN		;BINARY CONSTANT	
                CP	'"'	
                JR	Z,CONS		;STRING CONSTANT	
                CP	TTINT	
                JP	Z,TINTev		;TINT FUNCTION	
ITEM2:          CP	TMOD	
                JP	Z,MODFUN	;MOD	
                CP	'^'	
                JR	Z,ADDROF	;^ OPERATOR	
                DEC	IY	
                CALL	GETVAR		;VARIABLE	
                JR	NZ,NOSUCHev	
                BIT	6,A	
                JR	NZ,ARRAYev	
                OR	A	
                JP	M,LOADS		;STRING VARIABLE	
LOADN:          BIT	2,A	
                LD	C,0	
                JR	Z,LOAD1		;BYTE VARIABLE	
                BIT	0,A	
                JR	Z,LOAD4		;INTEGER VARIABLE	
LOAD5:          LD	C,(IX+4)	
LOAD4:          EXX	
                LD	L,(IX+0)	
                LD	H,(IX+1)	
                EXX	
                LD	L,(IX+2)	
                LD	H,(IX+3)	
                RET	
;
LOAD1:          LD	HL,0	
                EXX	
                LD	H,0	
                LD	L,(IX+0)	
                EXX	
                RET	
;
NOSUCHev:         JP	C,SYNTAX	
                LD	A,(LISTON)	
                BIT	5,A	
                LD	A,26	
                JR	NZ,ERROR0ev	;"No such variable"	
NOS1:           INC	IY	
                CALL	RANGE	
                JR	NC,NOS1	
                LD	IX,PC	
                XOR	A	
                LD	C,A	
                JR	LOAD4	
;
;CON - Get unsigned numeric constant from ASCII string.
;   Inputs: ASCII string at (IY-1)
;  Outputs: Variable-type result in HLH'L'C
;           IY updated (points to delimiter)
;           A7 = 0 (numeric marker)
;
CONev:            DEC	IY	
                PUSH	IY	
                POP	IX	
                LD	A,36	
                CALL	FPP	
                JR	C,ERROR0ev	
                PUSH	IX	
                POP	IY	
                XOR	A	
                RET	
;
;CONS - Get string constant from ASCII string.
;   Inputs: ASCII string at (IY)
;  Outputs: Result in string accumulator.
;           D = MS byte of ACCS, E = string length
;           A7 = 1 (string marker)
;           IY updated
;
CONS:           LD	DE,ACCS	
CONS3:          LD	A,(IY)	
                INC	IY	
                CP	'"'	
                JR	Z,CONS2	
CONS1:          LD	(DE),A	
                INC	E	
                CP	CR	
                JR	NZ,CONS3	
                LD	A,9	
ERROR0ev:         JP	ERROR_		;"Missing """	
;
CONS2:          LD	A,(IY)	
                CP	'"'	
                INC	IY	
                JR	Z,CONS1	
                DEC	IY	
                LD	A,80H		;STRING MARKER	
                RET	
;
ARRAYev:          LD	A,14		;'Bad use of array'	
                JP	ERROR_	
;
; ARRLEN - Get start address and number of elements of an array
;   Inputs: HL addresses array descriptor
;  Outputs: HL = address of first element
;           DE = total number of elements
;           A = 0
; Destroys: A,B,C,D,E,H,L,flags
;
ARRLEN:         LD	A,(HL)		;Number of dimensions	
                INC	HL	
                OR	A	
                JR	Z,ARRAYev	
                LD	DE,1	
ARLOOP:         LD	C,(HL)	
                INC	HL	
                LD	B,(HL)		;BC = size of this dimension	
                INC	HL	
                EX	DE,HL	
                PUSH	AF	
                PUSH	DE	
                CALL	MUL16		;HL=HL*BC	
                POP	DE	
                POP	AF	
                EX	DE,HL	
                DEC	A	
                JR	NZ,ARLOOP	
                RET	
;
GETARR:         CALL	NXT	
                CALL	GETVAR	
                JR	NZ,NOSUCHev	
                BIT	6,A	
                SCF	
                JR	Z,NOSUCHev	
                AND	8FH	
                LD	B,A		;Type + size	
GETAR1:         LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                AND	0FEH	
                OR	H	
                JR	Z,ARRAYev		;Bad use of array	
                RET	
;
GETARB:         CALL	NXT	
                CP	'('	
                JR	NZ,GETARR	
                INC	IY	
                CALL	GETARR	
                CALL	BRAKET	
                RET	
;
DLOADN:         BIT	2,A	
                LD	B,0	
                JR	Z,DLOAD1	;BYTE VARIABLE	
                BIT	0,A	
                JR	Z,DLOAD4	;INTEGER VARIABLE	
DLOAD5:         LD	B,(IX+4)	
DLOAD4:         EXX	
                LD	E,(IX+0)	
                LD	D,(IX+1)	
                EXX	
                LD	E,(IX+2)	
                LD	D,(IX+3)	
                RET	
;
DLOAD1:         LD	DE,0	
                EXX	
                LD	D,0	
                LD	E,(IX+0)	
                EXX	
                RET	
;
LOADS:          LD	DE,ACCS	
                RRA	
                JR	NC,LOADS2	;FIXED STRING	
                CALL	LOAD4	
                EXX	
                LD	A,L	
                EXX	
                OR	A	
                LD	C,A	
                LD	A,80H		;STRING MARKER	
                RET	Z	
                LD	B,0	
                LDIR	
                RET	
;
LOADS2:         LD	A,(HL)	
                LD	(DE),A	
                INC	HL	
                CP	CR	
REPDUN:         LD	A,80H		;STRING MARKER	
                RET	Z	
                INC	E	
                JR	NZ,LOADS2	
                RET			;RETURN NULL STRING	
;
; Version 5 extensions:
;
EXTRASev:         CP	TMODE	
                JP	Z,MODEFN	;MODE	
                CP	TWIDTH	
                JP	Z,WIDFN		;WIDTH	
                CP	TREPORT	
                JR	Z,REPORS	;REPORT$	
                CP	TEND	
                JR	Z,ENDFUN	;END	
                CP	TDIM	
                JR	Z,DIMFUN	;DIM	
SYNERR:         JP	SYNTAX		; 'Syntax error'	
;
; END (function)
;
ENDFUN:         LD	HL,(FREE)	
                JP	COUNT1	
;
; REPORT$
;
REPORS:         LD	A,(IY)	
                CP	'$'	
                JR	NZ,SYNERR	
                INC	IY	
                LD	HL,(ERRTXT)	
                LD	DE,ACCS	
REPCPY:         LD	A,(HL)	
                OR	A	
                JR	Z,REPDUN	
                LDI	
                CP	160	
                JP	PE,REPCPY	
                CP	LF	
                JR	Z,REPCPY	
                DEC	E	
                PUSH	HL	
                LD	HL,KEYWDS	
                LD	BC,KEYWDL	
                CPIR	
                LD	B,160	
                CP	145	
                JP	PE,REPTOK	
                INC	B	
REPTOK:         LD	A,(HL)	
                LDI	
                CP	B	
                JP	PE,REPTOK	
                POP	HL	
                DEC	E	
                JR	REPCPY	
;
; DIM(array()[,sub])
;
DIMFUN:         CALL	NXT	
                CP	'('	
                JR	NZ,DIMF0	
                INC	IY	
                CALL	DIMF0	
                CALL	BRAKET	
                RET	
;
DIMF0:          CALL	GETARR	
                PUSH	HL	
                CALL	NXT	
                LD	E,0	
                CP	','	
                JR	NZ,DIMF1	
                INC	IY	
                CALL	EXPRI	
                EXX	
                EX	DE,HL	
                INC	E	
                DEC	E	
                JR	Z,BADSUB	
DIMF1:          POP	HL	
                LD	A,(HL)	
                INC	HL	
                CP	E	
                JR	C,BADSUB	
                DEC	E	
                JP	M,DIMF3	
                ADD	HL,DE	
                ADD	HL,DE	
                LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                DEC	HL	
DIMF2:          JP	COUNT1	
DIMF3:          LD	L,A	
                LD	H,0	
                JR	DIMF2	
;
BADSUB:         LD	A,15	
                JP	ERROR_			;"Bad subscript"	
;
;VARIABLE-TYPE FUNCTIONS:
;
;Result returned in HLH'L'C (floating point)
;Result returned in HLH'L' (C=0) (integer)
;Result returned in string accumulator & DE (string)
;All registers destroyed.
;IY (text pointer) updated.
;Bit 7 of A indicates type: 0 = numeric, 1 = string.
;
;
;POS - horizontal cursor position.
;VPOS - vertical cursor position.
;EOF - return status of file.
;BGET - read byte from file.
;INKEY - as GET but wait only n centiseconds.
;GET - wait for keypress and return ASCII value.
;GET(n) - input from Z80 port n.
;ASC - ASCII value of string.
;LEN - length of string.
;LOMEM - location of dynamic variables.
;HIMEM - top of available RAM.
;PAGE - start of current text page.
;TOP - address of first free byte after program.
;ERL - line number where last error occurred.
;ERR - number of last error.
;COUNT - number of printing characters since CR.
;Results are integer numeric.
;
TINTev:           CALL	TINTFN	
                JR	COUNT1	
POS:            CALL	GETCSR	
                EX	DE,HL	
                JR	COUNT1	
VPOS:           CALL	GETCSR	
                JR	COUNT1	
EOF:            CALL	CHANEL	
                CALL	OSSTAT	
                JP	Z,TRUEev	
                JP	ZERO	
BGET:           CALL	CHANEL		;CHANNEL NUMBER	
                CALL	OSBGET	
                LD	L,A	
                JR	COUNT0	
INKEY:          CALL	INKEYS	
                JR	ASC0	
GET:            CALL	NXT	
                CP	'('	
                JR	NZ,GET0	
                CALL	ITEMI		;PORT ADDRESS	
                EXX	
                LD	B,H	
                LD	C,L	
                IN	L,(C)		;INPUT FROM PORT BC	
                JR	COUNT0	
GET0:           CALL	GETS	
                JR	ASC1	
ASC:            CALL	ITEMS	
ASC0:           XOR	A	
                CP	E	
                JP	Z,TRUEev		;NULL STRING	
ASC1:           LD	HL,(ACCS)	
                JR	COUNT0	
LEN:            CALL	ITEMS	
                EX	DE,HL	
                JR	COUNT0	
LOMEMVev:         LD	HL,(LOMEM)	
                JR	COUNT1	
HIMEMVev:         LD	HL,(HIMEM)	
                JR	COUNT1	
PAGEVev:          LD	HL,(PAGE_)	
                JR	COUNT1	
TOPV:           LD	A,(IY)	
                INC	IY		;SKIP "P"	
                CP	'P'	
                JP	NZ,SYNTAX	;"Syntax Error"	
                CALL	GETTOP	
                JR	COUNT1	
ERLV:           LD	HL,(ERL)	
                JR	COUNT1	
ERRV:           LD	HL,(ERR)	
                JR	COUNT0	
COUNTV:         LD	HL,(COUNT)	
COUNT0:         LD	H,0	
COUNT1:         EXX	
                XOR	A	
                LD	C,A		;INTEGER MARKER	
                LD	H,A	
                LD	L,A	
                RET	
;
;OPENIN - Open a file for reading.
;OPENOUT - Open a file for writing.
;OPENUP - Open a file for reading or writing.
;Result is integer channel number (0 if error)
;
OPENOT:         XOR	A	
                DB	21H		;SKIP NEXT 2 BYTES	
OPENUP:         LD	A,2	
                DB	21H		;SKIP NEXT 2 BYTES	
OPENIN:         LD	A,1	
                PUSH	AF		;SAVE OPEN TYPE	
                CALL	ITEMS		;FILENAME	
                LD	A,CR	
                LD	(DE),A	
                POP	AF		;RESTORE OPEN TYPE	
                ADD	A,-1		;AFFECT FLAGS	
                LD	HL,ACCS	
                CALL	OSOPEN	
                LD	L,A	
                JR	COUNT0	
;
;EXT - Return length of file.
;PTR - Return current file pointer.
;Results are integer numeric.
;
EXTev:            CALL	CHANEL	
                CALL	GETEXT	
                JR	TIME0	
;
PTRev:            CALL	CHANEL	
                CALL	GETPTR	
                JR	TIME0	
;
;TIME - Return current value of elapsed time.
;Result is integer numeric.
;
TIMEVev:          LD	A,(IY)	
                CP	'$'	
                JR	Z,TIMEVSev	
                CALL	GETIME	
TIME0:          PUSH	DE	
                EXX	
                POP	HL	
                XOR	A	
                LD	C,A	
                RET	
;
;TIME$ - Return date/time string.
;Result is string
;
TIMEVSev:         INC	IY		;SKIP $	
                CALL	GETIMS	
                LD	A,80H		;MARK STRING	
                RET	
;
;String comparison:
;
SLT:            CALL	SCP	
                RET	NC	
                JR	TRUEev	
;
SGT:            CALL	SCP	
                RET	Z	
                RET	C	
                JR	TRUEev	
;
SGE:            CALL	SCP	
                RET	C	
                JR	TRUEev	
;
SLE:            CALL	SCP	
                JR	Z,TRUEev	
                RET	NC	
                JR	TRUEev	
;
SNE:            CALL	SCP	
                RET	Z	
                JR	TRUEev	
;
SEQ:            CALL	SCP	
                RET	NZ	
TRUEev:           LD	A,-1	
                EXX	
                LD	H,A	
                LD	L,A	
                EXX	
                LD	H,A	
                LD	L,A	
                INC	A	
                LD	C,A	
                RET	
;
;PI - Return PI (3.141592654)
;Result is floating-point numeric.
;
PIev:             LD	A,35	
                JR	FPP1	
;
;ABS - Absolute value
;Result is numeric, variable type.
;
ABSev:            LD	A,16	
                JR	FPPN	
;
;NOT - Complement integer.
;Result is integer numeric.
;
CPL_ev:           LD	A,26	
                JR	FPPN	
;
;DEG - Convert radians to degrees
;Result is floating-point numeric.
;
DEGev:            LD	A,21	
                JR	FPPN	
;
;RAD - Convert degrees to radians
;Result is floating-point numeric.
;
RADev:            LD	A,27	
                JR	FPPN	
;
;SGN - Return -1, 0 or +1
;Result is integer numeric.
;
SGNev:            LD	A,28	
                JR	FPPN	
;
;INT - Floor function
;Result is integer numeric.
;
INT_ev:           LD	A,23	
                JR	FPPN	
;
;SQR - square root
;Result is floating-point numeric.
;
SQRev:            LD	A,30	
                JR	FPPN	
;
;TAN - Tangent function
;Result is floating-point numeric.
;
TANev:            LD	A,31	
                JR	FPPN	
;
;COS - Cosine function
;Result is floating-point numeric.
;
COSev:            LD	A,20	
                JR	FPPN	
;
;SIN - Sine function
;Result is floating-point numeric.
;
SINev:            LD	A,29	
                JR	FPPN	
;
;EXP - Exponential function
;Result is floating-point numeric.
;
EXPev:            LD	A,22	
                JR	FPPN	
;
;LN - Natural log.
;Result is floating-point numeric.
;
LNev:             LD	A,24	
                JR	FPPN	
;
;LOG - base-10 logarithm.
;Result is floating-point numeric.
;
LOGev:            LD	A,25	
                JR	FPPN	
;
;ASN - Arc-sine
;Result is floating-point numeric.
;
ASNev:            LD	A,18	
                JR	FPPN	
;
;ATN - arc-tangent
;Result is floating-point numeric.
;
ATNev:            LD	A,19	
                JR	FPPN	
;
;ACS - arc-cosine
;Result is floating point numeric.
;
ACSev:            LD	A,17	
FPPN:           PUSH	AF	
                CALL	ITEMN	
                POP	AF	
FPP1:           CALL	FPP	
                JP	C,ERROR_	
                XOR	A	
                RET	
;
;SFIX - Convert to fixed-point notation
;
SFIX:           LD	A,38	
                JR	FPP1	
;
;SFLOAT - Convert to floating-point notation
;
SFLOATev:         LD	A,39	
                JR	FPP1	
;
;VAL - Return numeric value of string.
;Result is variable type numeric.
;
VALev:            CALL	ITEMS	
VAL0:           XOR	A	
                LD	(DE),A	
                LD	IX,ACCS	
                LD	A,36	
                JR	FPP1	
;
;EVAL - Pass string to expression evaluator.
;Result is variable type (numeric or string).
;
EVAL_:          CALL	ITEMS	
                LD	A,CR	
                LD	(DE),A	
                PUSH	IY	
                LD	DE,ACCS	
                LD	IY,ACCS	
                LD	C,0	
                CALL	LEXAN2		;TOKENISE	
                LD	(DE),A	
                INC	DE	
                XOR	A	
                CALL	PUSHS		;PUT ON STACK	
                LD	IY,2	
                ADD	IY,SP	
                CALL	EXPR	
                POP	IY	
                ADD	IY,SP	
                LD	SP,IY		;ADJUST STACK POINTER	
                POP	IY	
                EX	AF,AF'	
                RET	
;
;RND - Random number function.
; RND gives random integer 0-&FFFFFFFF
; RND(-n) seeds random number & returns -n.
; RND(0) returns last value in RND(1) form.
; RND(1) returns floating-point 0-0.99999999.
; RND(n) returns random integer 1-n.
;
RND:            LD	IX,RANDOM	
                CALL	NXT	
                CP	'('	
                JR	Z,RND5		;ARGUMENT FOLLOWS	
                CALL	LOAD5	
RND1:           RR	C	
                LD	B,32	
RND2:           EXX			;CALCULATE NEXT	
                ADC	HL,HL	
                EXX	
                ADC	HL,HL	
                BIT	3,L	
                JR	Z,RND3	
                CCF	
RND3:           DJNZ	RND2	
RND4:           RL	C		;SAVE CARRY	
                CALL	STORE5		;STORE NEW NUMBER	
                XOR	A	
                LD	C,A	
                RET	
RND5:           CALL	ITEMI	
                LD	IX,RANDOM	
                BIT	7,H		;NEGATIVE?	
                SCF	
                JR	NZ,RND4		;SEED	
                CALL	TEST	
                PUSH	AF	
                LD	B,C	
                EX	DE,HL	
                EXX	
                EX	DE,HL	
                CALL	LOAD5	
                CALL	NZ,RND1		;NEXT IF NON-ZERO	
                EXX			;SCRAMBLE (CARE!)	
                LD	C,7FH	
RND6:           BIT	7,H		;FLOAT	
                JR	NZ,RND7	
                EXX	
                ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                DEC	C	
                JR	NZ,RND6	
RND7:           RES	7,H		;POSITIVE 0-0.999999	
                POP	AF	
                RET	Z		;ZERO ARGUMENT	
                EXX	
                LD	A,E	
                DEC	A	
                OR	D	
                EXX	
                OR	E	
                OR	D	
                RET	Z		;ARGUMENT=1	
                LD	B,0		;INTEGER MARKER	
                LD	A,10	
                CALL	FPP		;MULTIPLY	
                JP	C,ERROR_	
                CALL	SFIX	
                JP	ADD1ev	
;
;SUMLEN(array())
;
SUMLEN:         INC	IY		;Skip LEN	
                CALL	GETARB	
                BIT	7,B	
                JP	Z,MISMATev	;Type mismatch	
                CALL	ARRLEN	
                PUSH	HL	
                POP	IX		;IX addresses array	
                XOR	A	
                LD	H,A	
                LD	L,A	
                LD	B,A	
SUMLN1:         LD	C,(IX)	
                ADD	HL,BC	
                LD	C,4	
                ADD	IX,BC	
                DEC	DE		;Count elements	
                LD	A,D	
                OR	E	
                JR	NZ,SUMLN1	
                JP	COUNT1	
;
;SUM(array())
;
SUM:            CALL	NXT	
                CP	TLEN	
                JR	Z,SUMLEN	
                CALL	GETARB	
                BIT	7,B	
                JR	NZ,SUMSTR	
                PUSH	BC	
                CALL	ARRLEN	
                PUSH	HL	
                POP	IX		;IX addresses array	
                CALL	ZERO	
                POP	AF		;A = element size	
SUMUP:          PUSH	DE	
                PUSH	AF	
                CALL	DLOADN	
                LD	A,11	
                CALL	FPP	
                JP	C,ERROR_	
                POP	AF	
                LD	D,0	
                LD	E,A	
                ADD	IX,DE		;Bump to next element	
                POP	DE	
                DEC	DE		;Count elements	
                LD	B,A	
                LD	A,D	
                OR	E	
                LD	A,B	
                JR	NZ,SUMUP	
                RET	
;
;SUM(string array)
;
SUMSTR:         CALL	ARRLEN	
                PUSH	HL	
                POP	IX		;IX addresses array	
                EX	DE,HL	
                LD	DE,ACCS	
                LD	B,0	
SUMST1:         PUSH	HL	
                LD	C,(IX)	
                LD	A,C	
                OR	A	
                JR	Z,SUMST2	
                ADD	A,E	
                LD	A,19	
                JP	C,ERROR_		;"String too long"	
                LD	L,(IX+2)	
                LD	H,(IX+3)	
                LDIR	
SUMST2:         POP	HL	
                LD	C,4	
                ADD	IX,BC	
                DEC	HL		;Count elements	
                LD	A,H	
                OR	L	
                JR	NZ,SUMST1	
                OR	80H	
                RET	
;
;MOD(array())
;
MODFUN:         CALL	GETARB	
                BIT	7,B	
                JP	NZ,MISMATev	
                PUSH	BC	
                CALL	ARRLEN	
                PUSH	HL	
                POP	IX		;IX addresses array	
                CALL	ZERO	
                POP	AF		;A = element size	
MODUP:          PUSH	DE	
                PUSH	AF	
                PUSH	BC	
                PUSH	HL	
                EXX	
                PUSH	HL	
                EXX	
                CALL	LOADN	
                XOR	A	
                LD	B,A	
                LD	D,A	
                LD	E,A	
                EXX	
                LD	D,A	
                LD	E,2	
                EXX	
                LD	A,14	
                PUSH	IX	
                CALL	FPP		;Square	
                POP	IX	
                JP	C,ERROR_	
                EXX	
                EX	DE,HL	
                POP	HL	
                EXX	
                EX	DE,HL	
                POP	HL	
                LD	A,C	
                POP	BC	
                LD	B,A	
                LD	A,11	
                CALL	FPP		;Accumulate	
                JP	C,ERROR_	
                POP	AF	
                LD	D,0	
                LD	E,A	
                ADD	IX,DE		;Bump to next element	
                POP	DE	
                DEC	DE		;Count elements	
                LD	B,A	
                LD	A,D	
                OR	E	
                LD	A,B	
                JR	NZ,MODUP	
                LD	A,30	
                CALL	FPP		;Square root	
                XOR	A	
                RET	
;
;INSTR - String search.
;Result is integer numeric.
;
INSTR:          CALL	EXPRS		;STRING TO SEARCH	
                CALL	COMMA	
                CALL	PUSHS		;SAVE STRING ON STACK	
                CALL	EXPRS		;SUB-STRING	
                POP	BC	
                LD	HL,0	
                ADD	HL,SP		;HL ADDRESSES MAIN	
                PUSH	BC		;C = MAIN STRING LENGTH	
                LD	B,E		;B = SUB-STRING LENGTH	
                CALL	NXT	
                CP	','	
                LD	A,0	
                JR	NZ,INSTR1	
                INC	IY		;SKIP COMMA	
                PUSH	BC		;SAVE LENGTHS	
                PUSH	HL		;SAVE MAIN ADDRESS	
                CALL	PUSHS	
                CALL	EXPRI	
                POP	BC	
                CALL	POPS	
                POP	HL		;RESTORE MAIN ADDRESS	
                POP	BC		;RESTORE LENGTHS	
                EXX	
                LD	A,L	
                EXX	
                OR	A	
                JR	Z,INSTR1	
                DEC	A	
INSTR1:         LD	DE,ACCS		;DE ADDRESSES SUB	
                CALL	SEARCH	
                POP	DE	
                JR	Z,INSTR2	;N.B. CARRY CLEARED	
                SBC	HL,HL	
                ADD	HL,SP	
INSTR2:         SBC	HL,SP	
                EX	DE,HL	
                LD	H,0	
                ADD	HL,SP	
                LD	SP,HL	
                EX	DE,HL	
                CALL	BRAKET	
                JP	COUNT1	
;
;SEARCH - Search string for sub-string
;   Inputs: Main string at HL length C
;           Sub-string at DE length B
;           Starting offset A
;  Outputs: NZ - not found
;           Z - found at location HL-1
;           Carry always cleared
;
SEARCH:         PUSH	BC	
                LD	B,0	
                LD	C,A	
                ADD	HL,BC		;NEW START ADDRESS	
                POP	BC	
                SUB	C	
                JR	NC,SRCH4	
                NEG	
                LD	C,A		;REMAINING LENGTH	
SRCH1ev:          LD	A,(DE)	
                PUSH	BC	
                LD	B,0	
                CPIR			;FIND FIRST CHARACTER	
                LD	A,C	
                POP	BC	
                JR	NZ,SRCH4	
                LD	C,A	
                DEC	B		;Bug fix	
                CP	B		;Bug fix	
                INC	B		;Bug fix	
                JR	C,SRCH4		;Bug fix	
                PUSH	BC	
                PUSH	DE	
                PUSH	HL	
                DEC	B	
                JR	Z,SRCH3		;FOUND !	
SRCH2ev:          INC	DE	
                LD	A,(DE)	
                CP	(HL)	
                JR	NZ,SRCH3	
                INC	HL	
                DJNZ	SRCH2ev	
SRCH3:          POP	HL	
                POP	DE	
                POP	BC	
                JR	NZ,SRCH1ev	
                XOR	A		;Z, NC	
                RET			;FOUND	
;
SRCH4:          OR	0FFH		;NZ, NC	
                RET			;NOT FOUND	
;
;CHR$ - Return character with given ASCII value.
;Result is string.
;
CHRS:           CALL	ITEMI	
                EXX	
                LD	A,L	
                JR	GET1	
;
;GET$ - Return key pressed as string, or read from file
;Result is string.
;
GETS:           CALL	NXT	
                CP	'#'	
                JR	Z,GET2	
                CALL	OSRDCH	
GET1:           SCF	
                JR	INKEY1	
;
GET2:           CALL	CHNL		;File channel	
                CALL	NXT	
                CP	TBY	
                JR	Z,GET3	
                CP	TTO	
                JR	NZ,GET4	
GET3:           INC	IY	
                PUSH	AF	
                PUSH	DE	
                CALL	ITEMI		;Get BY or TO qualifier	
                EXX	
                LD	B,H	
                LD	C,L	
                POP	DE	
                POP	AF	
GET4:           LD	HL,ACCS	
                CP	TTO	
                JR	Z,GET5	
                LD	D,C		;Maximum count	
                LD	BC,100H		;Default	
                CP	TBY	
                JR	Z,GET6	
GET5:           LD	D,0	
                SET	1,B		;Flag no count	
GET6:           PUSH	BC	
                CALL	OSBGET	
                POP	BC	
                JR	C,GET9		;EOF	
                BIT	1,B	
                JR	Z,GET8	
                CP	C	
                JR	Z,GET9		;NUL (or supplied term)	
                BIT	7,B	
                JR	NZ,GET7	
                BIT	0,B	
                JR	Z,GET8	
                CP	LF	
                JR	Z,GET9		;LF	
GET7:           CP	CR	
                JR	Z,GET9		;CR	
GET8:           LD	(HL),A	
                INC	L	
                DEC	D	
                JR	NZ,GET6	
GET9:           EX	DE,HL	
                LD	A,80H	
                RET	
;
;INKEY$ - Wait up to n centiseconds for keypress.
; Return key pressed as string or null
; string if time elapsed.
;Result is string.
;
INKEYS:         CALL	ITEMI	
                EXX	
                CALL	OSKEY	
INKEY1:         LD	DE,ACCS	
                LD	(DE),A	
                LD	A,80H	
                RET	NC	
                INC	E	
                RET	
;
;MID$ - Return sub-string.
;Result is string.
;
MIDS:           CALL	EXPRS	
                CALL	COMMA	
                CALL	PUSHS		;SAVE STRING ON STACK	
                CALL	EXPRI	
                POP	BC	
                CALL	POPS	
                EXX	
                LD	A,L	
                EXX	
                OR	A	
                JR	Z,MIDS1	
                DEC	A	
                LD	L,A	
                SUB	E	
                LD	E,0	
                JR	NC,MIDS1	
                NEG	
                LD	C,A	
                CALL	RIGHT1	
MIDS1:          CALL	NXT	
                CP	','	
                JR	Z,LEFT1	
                CALL	BRAKET	
                LD	A,80H	
                RET	
;
;LEFT$ - Return left part of string.
;Carry cleared if entire string returned.
;Result is string.
;
LEFTS:          CALL	EXPRS	
                CALL	NXT	
                CP	','	
                JR	Z,LEFT1	
                CALL	BRAKET	
                LD	A,E	
                OR	A	
                JR	Z,LEFT3	
                DEC	E	
                JR	LEFT3	
;
LEFT1:          INC	IY	
                CALL	PUSHS		;SAVE STRING ON STACK	
                CALL	EXPRI	
                POP	BC	
                CALL	POPS	
                CALL	BRAKET	
                EXX	
                LD	A,L	
                EXX	
                CP	E	
                JR	NC,LEFT3	
                LD	L,E		;FOR RIGHT$	
LEFT2:          LD	E,A	
LEFT3:          LD	A,80H		;STRING MARKER	
                RET	
;
;RIGHT$ - Return right part of string.
;Result is string.
;
RIGHTS:         CALL	EXPRS	
                CALL	NXT	
                CP	','	
                JR	Z,RIGHT0	
                CALL	BRAKET	
                LD	A,E	
                OR	A	
                JR	Z,LEFT3	
                DEC	A	
                LD	C,1	
                JR	RIGHT2	
;
RIGHT0:         CALL	LEFT1	
                RET	NC	
                INC	E	
                DEC	E	
                RET	Z	
                LD	C,E	
                LD	A,L	
                SUB	E	
RIGHT2:         LD	L,A	
RIGHT1:         LD	B,0	
                LD	H,D	
                LD	E,B	
                LDIR			;MOVE	
                LD	A,80H	
                RET	
;
;STRING$ - Return n concatenations of a string.
;Result is string.
;
STRING_:        CALL	EXPRI	
                CALL	COMMA	
                EXX	
                LD	A,L	
                EXX	
                PUSH	AF	
                CALL	EXPRS	
                CALL	BRAKET	
                POP	AF	
                OR	A	
                JR	Z,LEFT2		;N=0	
                DEC	A	
                LD	C,A	
                LD	A,80H		;STRING MARKER	
                RET	Z	
                INC	E	
                DEC	E	
                RET	Z		;NULL STRING	
                LD	B,E	
                LD	H,D	
                LD	L,0	
STRIN1:         PUSH	BC	
STRIN2:         LD	A,(HL)	
                INC	HL	
                LD	(DE),A	
                INC	E	
                LD	A,19	
                JP	Z,ERROR_		;"String too long"	
                DJNZ	STRIN2	
                POP	BC	
                DEC	C	
                JR	NZ,STRIN1	
                LD	A,80H	
                RET	
;
;SUBROUTINES
;
;TEST - Test HLH'L' for zero
;  Outputs: Z-flag set & A=0 if zero
; Destroys: A,F
;
TEST:           LD	A,H	
                OR	L	
                EXX	
                OR	H	
                OR	L	
                EXX	
                RET	
;
;DECODE - Decode line number in pseudo-binary.
;   Inputs: IY = Text pointer.
;  Outputs: HL=0, H'L'=line number, C=0.
; Destroys: A,C,H,L,H',L',IY,F
;
DECODE:         EXX	
                LD	A,(IY)	
                INC	IY	
                RLA	
                RLA	
                LD	H,A	
                AND	0C0H	
                XOR	(IY)	
                INC	IY	
                LD	L,A	
                LD	A,H	
                RLA	
                RLA	
                AND	0C0H	
                XOR	(IY)	
                INC	IY	
                LD	H,A	
                EXX	
                XOR	A	
                LD	C,A	
                LD	H,A	
                LD	L,A	
                RET	
;
;HEXSTR - convert numeric value to HEX string.
;   Inputs: HLH'L'C = integer or floating-point number
;  Outputs: String in string accumulator.
;           E = string length. D = ACCS/256
;
HEXSTS:         INC	IY		;SKIP TILDE	
                CALL	ITEMN	
                CALL	HEXSTR	
                LD	A,80H	
                RET	
;
HEXSTR:         CALL	SFIX	
                LD	BC,8	
                LD	DE,ACCS	
HEXST1:         PUSH	BC	
                LD	B,4	
                XOR	A	
HEXST2:         EXX	
                ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                RLA	
                DJNZ	HEXST2	
                POP	BC	
                DEC	C	
                RET	M	
                JR	Z,HEXST3	
                OR	A	
                JR	NZ,HEXST3	
                CP	B	
                JR	Z,HEXST1	
HEXST3:         ADD	A,90H	
                DAA	
                ADC	A,40H	
                DAA	
                LD	(DE),A	
                INC	DE	
                LD	B,A	
                JR	HEXST1	
;
;Function STR - convert numeric value to ASCII string.
;   Inputs: HLH'L'C = integer or floating-point number.
;  Outputs: String in string accumulator.
;           E = length, D = ACCS/256
;           A = 80H (type=string)
;
;First normalise for decimal output:
;
STRS:           CALL	NXT	
                CP	'~'	
                JR	Z,HEXSTS	
                CALL	ITEMN	
                LD	IX,STAVAR	
                LD	A,(IX+3)	
                OR	A	
                LD	IX,G9-1		;G9 FORMAT	
                JR	Z,STR0	
STR:            LD	IX,STAVAR	
STR0:           LD	DE,ACCS	
                LD	A,37	
                CALL	FPP	
                JP	C,ERROR_	
                BIT	0,(IX+2)	
STR1:           LD	A,80H		;STRING MARKER	
                RET	Z	
                LD	A,C	
                ADD	A,4	
STR2:           CP	E	
                JR	Z,STR1	
                EX	DE,HL	
                LD	(HL),' '	;TRAILING SPACE	
                INC	HL	
                EX	DE,HL	
                JR	STR2	
;
G9:             DW	9	
;
;STRING COMPARE
;Compare string (DE) length B with string (HL) length C.
;Result preset to false.
;
SCP:            CALL	SCP0	
ZERO:           LD	A,0	
                EXX	
                LD	H,A	
                LD	L,A	
                EXX	
                LD	H,A	
                LD	L,A	
                LD	C,A	
                RET	
;
SCP0:           INC	B	
                INC	C	
SCP1:           DEC	B	
                JR	Z,SCP2	
                DEC	C	
                JR	Z,SCP3	
                LD	A,(DE)	
                CP	(HL)	
                RET	NZ	
                INC	DE	
                INC	HL	
                JR	SCP1	
SCP2:           OR	A	
                DEC	C	
                RET	Z	
                SCF	
                RET	
SCP3:           OR	A	
                INC	C	
                RET	
;
;PUSH$ - SAVE STRING ON STACK.
;   Inputs: String in string accumulator.
;           E = string length.
;           A - saved on stack.
; Destroys: B,C,D,E,H,L,IX,SP,F
;
PUSHS:          LD	HL,ACCS	
                CALL	CHECK	
                POP	IX		;RETURN ADDRESS	
                OR	A		;CLEAR CARRY	
                LD	D,H	
                LD	C,E	
                SBC	HL,DE	
                ADD	HL,SP	
                LD	SP,HL	
                LD	B,A	
                PUSH	BC	
                JR	Z,PUSHS1	;ZERO LENGTH	
                EX	DE,HL	
                LD	B,0	
                LD	L,B		;L=0	
                LDIR			;COPY TO STACK	
                CALL	CHECK	
PUSHS1:         JP	(IX)		;"RETURN"	
;
;POP$ - RESTORE STRING FROM STACK.
;   Inputs: C = string length.
;  Outputs: String in string accumulator.
;           E = string length.
; Destroys: B,C,D,E,H,L,IX,SP,F
;
POPS:           POP	IX		;RETURN ADDRESS	
                LD	HL,0	
                LD	B,H		;B=0	
                ADD	HL,SP	
                LD	DE,ACCS	
                INC	C	
                DEC	C	
                JR	Z,POPS1		;ZERO LENGTH	
                LDIR			;COPY FROM STACK	
POPS1:          LD	SP,HL	
                JP	(IX)		;"RETURN"	
;
BINDIG:         LD	A,(IY)	
                CP	'0'	
                RET	C	
                CP	'1'+1	
                CCF	
                RET	C	
                SUB	'0'	
                RET	
;
HEXDIG:         LD	A,(IY)	
                CP	'0'	
                RET	C	
                CP	'9'+1	
                CCF	
                RET	NC	
                CP	'A'	
                RET	C	
                SUB	'A'-10	
                CP	16	
                CCF	
                RET	
;
RELOPQ:         CP	'>'	
                RET	NC	
                CP	'='	
                RET	NC	
                CP	'<'	
                RET	
;
SAVEev:           INC	IY	
                AND	0FH	
SAVE1:          EX	AF,AF'	
                JP	M,MISMATev	
                EX	AF,AF'	
                EX	(SP),HL	
                EXX	
                PUSH	HL	
                EXX	
                PUSH	AF	
                PUSH	BC	
                JP	(HL)	
;
DOIT:           EX	AF,AF'	
                JP	M,MISMATev	
                EXX	
                POP	BC		;RETURN ADDRESS	
                EXX	
                LD	A,C	
                POP	BC	
                LD	B,A	
                POP	AF		;OPERATOR	
                EXX	
                EX	DE,HL	
                POP	HL	
                EXX	
                EX	DE,HL	
                POP	HL	
                EXX	
                PUSH	BC	
                EXX	
                CALL	FPP	
                JR	C,ERROR1ev	
                XOR	A	
                EX	AF,AF'		;TYPE	
                LD	A,(IY)	
                RET	
;
COMMA:          CALL	NXT	
                INC	IY	
                CP	','	
                RET	Z	
                LD	A,5	
                JR	ERROR1ev		;"Missing ,"	
;
BRAKET:         CALL	NXT	
                INC	IY	
                CP	')'	
                RET	Z	
                LD	A,27	
ERROR1ev:         JP	ERROR_		;"Missing )"	
;
DISPT2:         PUSH	HL	
                LD	HL,SOPTBL	
                JR	DISPT0	
;
DISPATev:         PUSH	HL	
                SUB	FUNTOK	
                LD	HL,FUNTBL	
DISPT0:         PUSH	BC	
                ADD	A,A	
                LD	C,A	
                LD	B,0	
                ADD	HL,BC	
                LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                POP	BC	
                EX	(SP),HL	
                RET			;OFF TO ROUTINE	
;
STOREA:         LD	A,D	
                PUSH	DE	
                PUSH	HL	
                EX	(SP),IX	
                OR	A	
                JP	M,STORA1	
                CALL	LOADN	
                EX	(SP),IX	
                CALL	MODIFY	
                POP	HL	
                POP	DE	
                LD	C,D	
                LD	B,0	
                RET	
;
STORA1:         PUSH	DE	
                CALL	LOADS	
                POP	HL	
                EX	(SP),IX	
                CALL	MODIFS	
                POP	HL	
                POP	DE	
                LD	BC,4	
                RET	
;
; Assign to whole array:
; array1() = array expression
; array1() = n1,n2,n3,n4...
; array1() = n (n copied into all elements)
;
; Inputs: D = type (65, 68, 69, 193)
;         E = opcode ('=' for store, '+','-' etc. for modify)
;         HL = IX = VARPTR
;         IY = text pointer
;
LETARR:         RES	6,D		;Lose array marker	
                PUSH	DE		;Save type & opcode	
                CALL	GETAR1		;Get and check indirect link	
                CALL	ARRLEN		;DE = elements, HL addresses first	
                POP	BC	
                LD	A,B		;A = type	
                PUSH	DE	
                PUSH	BC	
                PUSH	HL	
                CALL	X14OR5		;DE = size in bytes	
                LD	B,D	
                LD	C,E	
                POP	IX	
                POP	DE	
;
; (SP) = number of elements
; BC = size in bytes
; DE = type & opcode
; IX = address of first element
;
; allocate space on stack and zero it:
;
                XOR	A		;Clear carry and zero error code	
                SBC	HL,HL	
                ADD	HL,SP		;HL = SP	
                SBC	HL,BC	
                JR	C,ERROR1ev	;'No room'	
                PUSH	BC	
                LD	BC,(FREE)	
                INC	B		;Safety margin	
                SBC	HL,BC	
                ADD	HL,BC	
                POP	BC	
                JR	C,ERROR1ev	;'No room'	
                LD	SP,HL	
LETA0:          LD	(HL),0	
                INC	HL	
                DEC	BC	
                LD	A,B	
                OR	C	
                JR	NZ,LETA0	;Clear allocated stack	
                LD	C,(HL)	
                INC	HL	
                LD	B,(HL)	
                LD	H,A	
                LD	L,A	
                ADD	HL,SP	
;
;	CALL	NXT
;	CP	TEVAL		;;EVAL not currently supported
;
                CALL	EXPRA	
                LD	SP,HL		;Update stack pointer	
                POP	BC		;Level stack	
                JP	XEQ	
;
; EXPRA - Evaluate array expression, strictly left-to-right;
; Note: String array arithmetic (concatenation) is not supported
; because it would require a way of recovering freed string space.
;
;   Inputs: BC = number of elements
;           DE = type & opcode
;           HL = address of temporary stack space
;           IX = address of first element of array
;  Outputs: HL = value to set stack pointer to
;
EXPRA:          LD	A,'='	
                DEC	IY	
EXPRA1:         INC	IY	
                PUSH	DE	
                PUSH	BC	
                PUSH	HL	
                PUSH	IX	
                LD	E,A		;Operator	
                CALL	ITEMA	
                POP	IX	
                POP	HL	
                POP	BC	
                POP	DE	
                CALL	NXT	
                CP	','		;List?	
                JR	Z,EXPRA3	
                CALL	TERMQ	
                JR	NZ,EXPRA1	
;
; Update destination array from stack:
;
EXPRA2:         PUSH	BC	
                CALL	STOREA		;(IX) <- (HL)	
                ADD	HL,BC	
                ADD	IX,BC	
                POP	BC	
                DEC	BC	
                LD	A,B	
                OR	C	
                JR	NZ,EXPRA2	
                RET	
;
; Update destination array from list (n.b. not transferred via stack):
;
EXPRA3:         PUSH	BC	
                CALL	STOREA		;(IX) <- (HL)	
EXPRA4:         INC	IY		;Bump past comma	
                ADD	HL,BC	
                ADD	IX,BC	
                POP	BC	
                DEC	BC	
                LD	A,B	
                OR	C	
                RET	Z	
                PUSH	BC	
                PUSH	DE	
                PUSH	HL	
                PUSH	IX	
                BIT	7,D	
                JR	NZ,EXPRA5	
                PUSH	DE	
                CALL	EXPRN	
                POP	DE	
                POP	IX	
                PUSH	IX	
                CALL	MODIFY	
                JR	EXPRA6	
;
EXPRA5:         PUSH	DE	
                CALL	EXPRS	
                POP	HL	
                POP	IX	
                PUSH	IX	
                CALL	MODIFS	
EXPRA6:         POP	IX	
                POP	HL	
                POP	DE	
                LD	BC,4	
                BIT	7,D	
                JR	NZ,EXPRA7	
                LD	C,D	
EXPRA7:         CALL	NXT	
                CP	','	
                JR	Z,EXPRA4	
                POP	DE	
EXPRA8:         ADD	HL,BC		;Skip remaining elements	
                DEC	DE	
                LD	A,D	
                OR	E	
                JR	NZ,EXPRA8	
                RET	
;
; ITEMA: evaluate and operate on array item
;   Inputs: D = type
;           E = operator ('=' for first item)
;           BC = number of elements
;           HL = pointer to destination on stack
;           IY = text pointer
;  Outputs: IY updated
; Destroys: Everything except SP
;
ITEMA:          CALL	NXT	
                PUSH	HL		;Pointer to destination	
                PUSH	BC		;Number of elements	
                PUSH	IY		;In case normal expression	
                PUSH	DE		;Ditto	
                CP	'-'	
                JR	NZ,ITEMA1	;Not unary minus	
                LD	A,E	
                CP	'='	
                JR	NZ,ITEMA1	;Not unary minus	
                INC	IY		;Bump past '-'	
                CALL	NXT	
                LD	E,'-'		;Unary minus	
ITEMA1:         PUSH	DE		;Type and operator	
                CALL	GETVAR	
                POP	DE		;Type & operator	
                JR	NZ,ITEMA4	;Non-array expression	
                BIT	6,A	
                JR	Z,ITEMA4	;Not a whole array	
                POP	BC		;Junk saved original op	
                POP	BC		;Junk saved text pointer	
                RES	6,A	
                CP	D	
                JP	NZ,MISMATev	;'Type mismatch'	
                PUSH	DE		;Save type & operator again	
                CALL	GETAR1	
                CALL	ARRLEN	
                LD	B,D		;BC = number of elements	
                LD	C,E	
                POP	DE		;Restore type & operator	
                EX	(SP),HL	
                CALL	NXT	
                POP	IX		;Pointer to source	
                CP	'.'	
                JP	Z,ARRDOT	;Dot product	
                OR	A	
                SBC	HL,BC		;Same number of elements?	
                JP	NZ,MISMATev	;'Type mismatch'	
                POP	HL		;Pointer to destination	
                BIT	7,D	
                JR	NZ,ITEMA3	
;
; Process numeric array item:
;
ITEMA2:         PUSH	BC	
                PUSH	HL	
                LD	A,D	
                CALL	LOADN	
                EX	(SP),IX	
                PUSH	DE	
                CALL	MODIFY	
                POP	DE	
                EX	(SP),IX	
                POP	HL	
                LD	C,D	
                LD	B,0	
                ADD	IX,BC	
                ADD	HL,BC	
                POP	BC	
                DEC	BC	
                LD	A,B	
                OR	C	
                JR	NZ,ITEMA2	
                RET	
;
; Process string array item (just copy descriptors):
;
ITEMA3:         EX	DE,HL		;DE = destination	
                LD	H,B	
                LD	L,C	
                ADD	HL,HL	
                ADD	HL,HL	
                LD	B,H	
                LD	C,L	
                PUSH	IX	
                POP	HL		;HL = source	
                LDIR	
                RET	
;
; Process numeric non-array item:
;
ITEMA4:         POP	DE		;Restore original operator	
                POP	IY		;Restore original text pointer	
                BIT	7,D	
                JR	NZ,ITEMA5	
                PUSH	DE	
                CALL	EXPR45		;; should be EXP345	
                LD	A,C		;Exponent	
                POP	DE		;Type / operator	
                POP	BC		;Count	
                POP	IX	
ITEMA7:         PUSH	HL	
                PUSH	BC	
                PUSH	DE	
                EXX	
                PUSH	HL	
                EXX	
                PUSH	AF	
                LD	C,A	
                CALL	MODIFY	
                POP	AF	
                EXX	
                POP	HL	
                EXX	
                POP	DE	
                LD	C,D	
                LD	B,0	
                ADD	IX,BC	
                POP	BC	
                DEC	BC	
                SBC	HL,HL	
                SBC	HL,BC	
                POP	HL	
                JR	NZ,ITEMA7	;Copy into every element!	
                RET	
;
; Process string non-array item:
;
ITEMA5:         CALL	EXPRS	
                LD	A,E	
                OR	A	
                JR	Z,ITEMA0	
                LD	HL,ACCS	
                LD	DE,BUFFER	
                LD	C,A	
                LD	B,0	
                LDIR	
ITEMA0:         POP	BC	
                POP	IX	
                EXX	
                LD	L,A	
                EXX	
                LD	DE,4	
                LD	HL,BUFFER	
ITEMA6:         CALL	STORE4	
                ADD	IX,DE	
                DEC	BC	
                LD	A,B	
                OR	C	
                JR	NZ,ITEMA6	;Copy into every element!	
                RET	
;
; Array dot-product:
;
ARRDOT:         INC	IY		;Bump past dot	
                LD	A,D		;Type	
                OR	A	
                JP	M,MISMATev	;'Type mismatch'	
                EX	DE,HL	
                POP	HL	
;
; A = type
; DE = no. of elements in destination array (outer loop counter)
; IX = pointer to first source array data
; HL = pointer to destination data
; IY = text pointer
;
                PUSH	DE	
                PUSH	HL	
                PUSH	IX	
                PUSH	AF	
                CALL	GETARR	
                CALL	ARRLEN	
                POP	AF	
                EX	DE,HL	
                LD	L,(IX)	
                LD	H,(IX+1)	;Indirect pointer	
                LD	L,(HL)		;No. of dimensions	
                DEC	L	
                EX	DE,HL	
                POP	IX	
                POP	BC	
                POP	DE	
;
                PUSH	IY		;Save text pointer	
                PUSH	BC		;Save destination pointer	
                PUSH	HL	
                POP	IY	
;
; Get row counts:
;
                LD	HL,1	
                JR	Z,ARR1D	
                LD	H,(IY-1)	
                LD	L,(IY-2)	
ARR1D:          PUSH	DE	
                EX	DE,HL	
                CALL	X14OR5	
                EX	DE,HL	
                POP	DE	
                LD	B,(IX-1)	
                LD	C,(IX-2)	
;
; A = type, Z-flag set if first array is one-dimensional
; BC = no. of rows of first source array (inner loop counter)
; DE = no. of elements in destination array (outer loop counter)
; HL = no. of rows of second source array * size of each element
; IX = pointer to first source array
; IY = pointer to second source array
; (SP) = pointer to destination data
;
; Dot-product outer loop:
;
OUTER:          PUSH	BC		;1	
                PUSH	DE		;2	
                PUSH	HL		;3	
                PUSH	IX		;4	
                PUSH	IY		;5	
                LD	D,B	
                LD	E,C	
                PUSH	AF	
                CALL	ZERO		;Zero accumulator	
                POP	AF	
INNER:          PUSH	DE		;6	
                PUSH	BC		;Save accumulator	
                PUSH	HL	
                EXX	
                PUSH	HL	
                EXX	
;
                CALL	LOADN		;Load from (IX)	
                PUSH	IX	
                EX	(SP),IY	
                POP	IX	
;
                CALL	DLOADN		;Load from (IY)	
                PUSH	IX	
                EX	(SP),IY	
                POP	IX	
;
                PUSH	AF	
                LD	A,10	
                CALL	FPP		;Multiply	
                JP	C,ERROR_	
                POP	AF	
;
                EXX			;Restore accumulator	
                EX	DE,HL	
                POP	HL	
                EXX	
                EX	DE,HL	
                POP	HL	
                EX	AF,AF'	
                LD	A,C	
                POP	BC	
                LD	B,A	
                EX	AF,AF'	
;
                PUSH	AF	
                LD	A,11	
                CALL	FPP		;Accumulate	
                JP	C,ERROR_	
                POP	AF	
;
; Bump pointers:
;
                POP	DE		;5	
;
                EXX	
                LD	C,A	
                LD	B,0	
                ADD	IX,BC	
                POP	DE	
                POP	BC	
                EX	(SP),HL	
                EX	DE,HL	
                ADD	IY,DE	
                EX	DE,HL	
                EX	(SP),HL	
                PUSH	BC	
                PUSH	DE	
                EXX	
;
; Count inner loops:
;
                DEC	DE		;Inner loop counter	
                INC	E	
                DEC	E	
                JR	NZ,INNER	
                INC	D	
                DEC	D	
                JR	NZ,INNER	
;
                POP	IY		;4	
                POP	IX		;3	
;
; Swap pointers:
;
                EXX	
                EX	AF,AF'	
                POP	AF	
                POP	BC	
                POP	DE	
                EX	(SP),IX	
                PUSH	DE	
                PUSH	BC	
                PUSH	AF	
                EX	AF,AF'	
                EXX	
;
; Save to destination array and bump pointer:
;
                PUSH	AF	
                PUSH	DE	
                CALL	STOREN	
                POP	DE	
                POP	AF	
                LD	C,A	
                LD	B,0	
                ADD	IX,BC	
;
; Swap pointers:
;
                EXX	
                EX	AF,AF'	
                POP	AF	
                POP	BC	
                POP	DE	
                EX	(SP),IX	
                PUSH	DE	
                PUSH	BC	
                PUSH	AF	
                EX	AF,AF'	
                EXX	
;
                POP	HL		;2	
                POP	DE		;1 Outer loop counter	
                POP	BC		;0	
                DEC	DE		;Count outer loops	
;
; Adjust IX & IY
;
                PUSH	BC	
                PUSH	DE	
                PUSH	HL	
                LD	C,A	
                LD	B,0	
                ADD	IY,BC	
                PUSH	AF	
                PUSH	HL	
                CALL	X14OR5	
                POP	BC	
                CALL	MOD16	
                POP	AF	
                OR	A	
                LD	BC,0	
                SBC	HL,BC	
                POP	HL	
                POP	DE	
                POP	BC	
                JR	NZ,MODNZ	
                PUSH	DE	
                PUSH	HL	
                EX	DE,HL	
                PUSH	IY	
                POP	HL	
                OR	A	
                SBC	HL,DE	
                PUSH	HL	
                POP	IY	
                LD	D,B	
                LD	E,C	
                CALL	X14OR5	
                ADD	IX,DE	
                POP	HL	
                POP	DE	
MODNZ:          	
;
; Count outer loops:
;
                INC	E	
                DEC	E	
                JP	NZ,OUTER	
                INC	D	
                DEC	D	
                JP	NZ,OUTER	
;
; Exit:
;
                POP	HL	
                POP	IY	
                RET	
;
; HL = DE MOD BC
;
MOD16:          XOR	A	
                LD	H,A	
                LD	L,A	
                LD	A,17	
MOD160:         SBC	HL,BC	
                JR	NC,MOD161	
                ADD	HL,BC	
MOD161:         CCF	
                RL	E	
                RL	D	
                DEC	A	
                RET	Z	
                ADC	HL,HL	
                JR	MOD160	
;
;                END	
; --- End eval.asm ---

; --- Begin exec.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;BBC BASIC INTERPRETER - Z80 VERSION
;STATEMENT EXECUTION MODULE - "EXEC"
;(C) COPYRIGHT R.T.RUSSELL 1981-2024
;
;THE NAME BBC BASIC IS USED WITH THE PERMISSION
;OF THE BRITISH BROADCASTING CORPORATION AND IS
;NOT TRANSFERRABLE TO A FORKED OR DERIVED WORK.
;
;VERSION 2.1, 22-01-1984
;VERSION 3.1, 11-06-1987
;VERSION 5.0, 12-07-2024
;
;                XDEF	XEQ	
;                XDEF	RUN0	
;                XDEF	CHAIN0	
;                XDEF	CHECK	
;                XDEF	MUL16	
;                XDEF	X14OR5	
;                XDEF	TERMQ	
;                XDEF	STOREN	
;                XDEF	STORE4	
;                XDEF	STORE5	
;                XDEF	STACCS	
;                XDEF	SPACES	
;                XDEF	FN	
;                XDEF	USR	
;                XDEF	ESCAPE	
;                XDEF	SYNTAX	
;                XDEF	CHANEL	
;                XDEF	CHNL	
;                XDEF	VAR_	
;                XDEF	TABIT	
;                XDEF	MODIFY	
;                XDEF	MODIFS	
;
;                XREF	ASSEM	
;                XREF	ERROR_	
;                XREF	REPORT	
;                XREF	WARM	
;                XREF	CLOOP	
;                XREF	SAYLN	
;                XREF	LOAD0	
;                XREF	CRLF	
;                XREF	PBCDL	
;                XREF	TELL	
;                XREF	FINDL	
;                XREF	SETLIN	
;                XREF	CLEAR	
;                XREF	GETVAR	
;                XREF	PUTVAR	
;                XREF	GETDEF	
;                XREF	LOCATE	
;                XREF	CREATE	
;                XREF	OUTCHR	
;                XREF	EXTERR	
;                XREF	BYE	
;                XREF	NXT	
;                XREF	NLIST	
;                XREF	CSRON	
;                XREF	CSROFF	
;
;                XREF	OSWRCH	
;                XREF	OSLINE	
;                XREF	OSSHUT	
;                XREF	OSBPUT	
;                XREF	OSBGET	
;                XREF	CLRSCN	
;                XREF	PUTCSR	
;                XREF	PUTIME	
;                XREF	PUTIMS	
;                XREF	PUTPTR	
;                XREF	OSCALL	
;                XREF	OSCLI	
;                XREF	TRAP	
;
;                XREF	SOUND	
;                XREF	CLG	
;                XREF	DRAW	
;                XREF	ENVEL	
;                XREF	GCOL	
;                XREF	MODE	
;                XREF	MOVE	
;                XREF	PLOT	
;                XREF	COLOUR	
;                XREF	CIRCLE	
;                XREF	ELLIPS	
;                XREF	FILL	
;                XREF	MOUSE	
;                XREF	ORIGIN	
;                XREF	RECTAN	
;                XREF	LINE	
;                XREF	WAIT	
;                XREF	TINT	
;                XREF	SYS	
;
;                XREF	STR	
;                XREF	HEXSTR	
;                XREF	EXPR	
;                XREF	EXPRN	
;                XREF	EXPRI	
;                XREF	EXPRS	
;                XREF	ITEMI	
;                XREF	CONS	
;                XREF	LOADS	
;                XREF	VAL0	
;                XREF	SFIX	
;                XREF	TEST	
;                XREF	LOAD4	
;                XREF	LOADN	
;                XREF	DLOAD5	
;                XREF	FPP	
;                XREF	COMMA	
;                XREF	BRAKET	
;                XREF	PUSHS	
;                XREF	POPS	
;                XREF	ZERO	
;                XREF	SCP	
;                XREF	LETARR	
;
;                XREF	ACCS	
;                XREF	PAGE_	
;                XREF	LOMEM	
;                XREF	HIMEM	
;                XREF	FREE	
;                XREF	BUFFER	
;                XREF	ERRTRP	
;                XREF	ONERSP	
;                XREF	CURLIN	
;                XREF	COUNT	
;                XREF	WIDTH	
;                XREF	STAVAR	
;                XREF	DATPTR	
;                XREF	RANDOM	
;                XREF	TRACEN	
;                XREF	LISTON	
;                XREF	PC	
;                XREF	OC	
;
; LF             EQU	0AH	; in equs.inc
; CR             EQU	0DH	; in equs.inc
; IN main.asm
; TAND:           EQU	80H	
; TOR:            EQU	84H	
; TERROR:         EQU	85H	
; TLINE:          EQU	86H	
TOFF:           EQU	87H	
TSTEP:          EQU	88H	
TSPC:           EQU	89H	
TTAB:           EQU	8AH	
; TELSE:          EQU	8BH	
; TTHEN:          EQU	8CH	
; TLINO:          EQU	8DH	
; TTO:            EQU	0B8H	
; TBY:           EQU	0C0H	
; TWHILE:         EQU	0C7H	
; TWHEN:          EQU	0C9H	
; TOF:            EQU	0CAH	
; TENDCASE:       EQU	0CBH	
; TOTHERWISE:     EQU	0CCH	
; TENDIF:         EQU	0CDH	
; TENDWHILE:      EQU	0CEH	
; TCALL:          EQU	0D6H	
; TDATA:          EQU	0DCH	
; TDEF:           EQU	0DDH	
; TFOR:           EQU	0E3H	
; TGOSUB:         EQU	0E4H	
; TGOTO:          EQU	0E5H	
; TLOCAL:         EQU	0EAH	
; TNEXT:          EQU	0EDH	
; TON:            EQU	0EEH	
; TPROC:          EQU	0F2H	
; TREM:           EQU	0F4H	
; TREPEAT:        EQU	0F5H	
TRETURN:        EQU	0F8H	
TSTOP:          EQU	0FAH	
; TUNTIL:         EQU	0FDH	
; TEXIT:          EQU	10H	
; END in main.asm
;
CMDTAB:         DW	LEFTSL	
                DW	MIDSL	
                DW	RITESL	
                DW	SYNTAX	;STR$	
                DW	SYNTAX	;STRING$	
                DW	SYNTAX	;EOF	
                DW	SYNTAX	;SUM	
                DW	WHILE	
                DW	CASE	
                DW	SYNTAX	;WHEN	
                DW	SYNTAX	;OF	
                DW	XEQ	;ENDCASE	
                DW	SYNTAX	;OTHERWISE	
                DW	XEQ	;ENDIF	
                DW	ENDWHI	;ENDWHILE	
                DW	PTR	
                DW	PAGEV	
                DW	TIMEV	
                DW	LOMEMV	
                DW	HIMEMV	
                DW	SOUND	
                DW	BPUT	
                DW	CALL	
                DW	CHAIN	
                DW	CLR	
                DW	CLOSE	
                DW	CLG	
                DW	CLS	
                DW	REM		;DATA	
                DW	REM		;DEF	
                DW	DIM	
                DW	DRAW	
                DW	END	
                DW	ENDPRO	
                DW	ENVEL	
                DW	FORex	
                DW	GOSUB	
                DW	GOTO	
                DW	GCOL	
                DW	IF_	
                DW	INPUT	
                DW	LET	
                DW	LOCAL	
                DW	MODE	
                DW	MOVE	
                DW	NEXT	
                DW	ON	
                DW	VDU	
                DW	PLOT	
                DW	PRINT	
                DW	PROC	
                DW	READ	
                DW	REM	
                DW	REPEAT	
                DW	REPOR	
                DW	RESTOR	
                DW	RETURN	
                DW	RUN	
                DW	STOP	
                DW	COLOUR	
                DW	TRACE	
                DW	UNTIL	
                DW	WIDTHV	
                DW	CLI		;OSCLI	
                DW	REM		;NUL	
                DW	CIRCLE	
                DW	ELLIPS	
                DW	FILL	
                DW	MOUSE	
                DW	ORIGIN	
                DW	BYE		;QUIT	
                DW	RECTAN	
                DW	SWAPex	
                DW	SYS	
                DW	TINT	
                DW	WAIT	
                DW	SYNTAX		;INSTALL	
                DW	REM		;CR	
                DW	PUT		;Token changed	
                DW	SYNTAX		;BY	
                DW	EXITex	
;
CMDTAB_END:     EQU	$	
; TLAST:          EQU	TCMD-128+(CMDTAB_END-CMDTAB)/2	
TLAST:          EQU	CMDTAB_END-CMDTAB/2+TCMD-128
;
RUN:            CALL	TERMQ	
                JR	Z,RUN0	
CHAIN:          CALL	EXPRS	
                LD	A,CR	
                LD	(DE),A	
CHAIN0:         LD	SP,(HIMEM)	
                CALL	LOAD0	
RUN0:           LD	SP,(HIMEM)	;PREPARE FOR RUN	
                LD	IX,RANDOM	
RAND:           LD	A,R		;RANDOMISE (CARE!)	
                JR	Z,RAND	
                RLCA	
                RLCA	
                LD	(IX+3),A	
                SBC	A,A	
                LD	(IX+4),A	
                CALL	CLEAR	
                LD	HL,0	
                LD	(ERRTRP),HL	
                LD	HL,(PAGE_)	
                CALL	DSRCH		;LOOK FOR "DATA"	
                LD	(DATPTR),HL	;SET DATA POINTER	
                LD	IY,(PAGE_)	
XEQ0:           CALL	NEWLIN	
                LD	A,(IY)	
                CP	TELSE	
                JP	Z,MELSE		;ELSE	
                CP	TWHEN	
                JP	Z,WHEN		;WHEN	
                CP	TOTHERWISE	
                JP	Z,WHEN	
XEQ:            LD	(CURLIN),IY	;ERROR POINTER	
                CALL	TRAP		;CHECK KEYBOARD	
XEQ1:           CALL	NXT	
                INC	IY	
                CP	':'		;SEPARATOR	
                JR	Z,XEQ1	
                CP	CR	
                JR	Z,XEQ0		;NEW PROGRAM LINE	
                CP	TLAST	
                JP	PE,LET0		;IMPLIED LET	
                SUB	TCMD	
                JP	M,EXTRAS	
                ADD	A,A	
                LD	C,A	
                LD	B,0	
                LD	HL,CMDTAB	
                ADD	HL,BC	
                LD	A,(HL)		;TABLE ENTRY	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                CALL	NXT	
                JP	(HL)		;EXECUTE STATEMENT	
;
;END
;
ENDIM:          PUSH	IY	
                POP	HL	
                LD	BC,(PAGE_)	
                SBC	HL,BC		;IMMEDIATE MODE ?	
                JP	C,CLOOP	
END:            LD	E,0	
                CALL	OSSHUT		;CLOSE ALL FILES	
                JP	WARM		;"Ready"	
;
NEWLIN:         LD	A,(IY+0)	;A=LINE LENGTH	
                LD	BC,3	
                ADD	IY,BC	
                OR	A	
                JR	Z,ENDIM		;LENGTH=0, EXITex	
                LD	HL,(TRACEN)	
                LD	A,H	
                OR	L	
                RET	Z	
                LD	D,(IY-1)	;DE = LINE NUMBER	
                LD	E,(IY-2)	
                SBC	HL,DE	
                RET	C	
                EX	DE,HL	
                LD	A,'['		;TRACE	
                CALL	OUTCHR	
                CALL	PBCDL	
                LD	A,']'	
                CALL	OUTCHR	
                LD	A,' '	
                JP	OUTCHR	
;
;ROUTINES FOR EACH STATEMENT:
;
;OSCLI
;
CLI:            CALL	EXPRS	
                LD	A,CR	
                LD	(DE),A	
                LD	HL,ACCS	
                CALL	OSCLI	
                JR	XEQ	
;
EXTRAS:         CP	TELSE-TCMD	
                JR	Z,REM		;ELSE	
                CP	TERROR-TCMD	
                JR	Z,THROW		;ERROR	
                CP	TLINE-TCMD	
                JP	Z,LINE		;LINE	
                CP	TOFF-TCMD	
                JP	Z,CSROFF	;OFF	
                JP	SYNTAX	
;
;REM, *
;
EXT:            PUSH	IY	
                POP	HL	
                CALL	OSCLI	
REM:            PUSH	IY	
                POP	HL	
                LD	A,CR	
                LD	B,A	
                CPIR			;FIND LINE END	
                PUSH	HL	
                POP	IY	
                JP	XEQ0	
;
;ERROR num,string$
;
THROW:          CALL	EXPRI	
                EXX	
                PUSH	HL	
                EXX	
                CALL	COMMA	
                CALL	EXPRS	
                POP	HL	
                XOR	A	
                LD	(DE),A	
                LD	A,L	
                LD	HL,ACCS	
                LD	DE,BUFFER	
                PUSH	DE	
                LD	BC,256	
                LDIR	
                JP	EXTERR	
;
; SWAP
;
SWAPex:           CALL	GETVAR	
                JR	NZ,SWAPNZ	
                PUSH	AF	
                PUSH	HL	
                CALL	COMMA	
                CALL	NXT	
                CALL	GETVAR	
SWAPNZ:         JR	NZ,NOSUCH	
                POP	DE	
                POP	BC	
                CP	B	
                JR	NZ,MISMAT	
                AND	00001111B	
                JR	Z,MISMAT	
                LD	A,B	
                AND	11000000B	
                JR	Z,SWAP1ex	
                LD	B,2	
                JP	P,SWAP1ex	
                JP	PE,SWAP1ex	
                LD	B,4	
SWAP1ex:          LD	C,(HL)	
                LD	A,(DE)	
                LD	(HL),A	
                LD	A,C	
                LD	(DE),A	
                INC	DE	
                INC	HL	
                DJNZ	SWAP1ex	
                JR	XEQGO4	
;
;[LET] var = expr
;
LET0:           CP	'*'	
                JR	Z,EXT	
                CP	'='	
                JR	Z,FNEND	
                CP	'['	
                JR	Z,ASM	
                DEC	IY	
LET:            CALL	ASSIGN	
                JP	Z,XEQ	
                JR	C,SYNTAX	;"Syntax error"	
                JP	P,LETARR	;Numeric array	
                JP	PE,LETARR	;String array	
                LD	A,D		;Type	
                PUSH	DE	
                PUSH	HL	
                CALL	EXPRS	
                POP	IX	
                POP	HL	
                CALL	MODIFS	
XEQGO4:         JP	XEQ	
;
; GETSTR - Get string variable
;   Inputs: IY = text pointer
;  Outputs: B = type
;           Z-flag set if comma
;
GETSTR:         CALL	GETVAR	
                JR	NZ,NOSUCH	
                LD	B,A	
                AND	11000000B	
                JP	P,MISMAT	
                JP	PE,BADUSE	
                BIT	0,B	
                JR	Z,MISMAT	
                CALL	NXT	
                CP	','	
                RET	
;
VAR_:           CALL	GETVAR	
                RET	Z	
                JP	NC,PUTVAR	
NOSUCH:         LD	A,26		;'No such variable'	
                DB	21H	
SYNTAX:         LD	A,16		;"Syntax error"	
                DB	21H	
ESCAPE:         LD	A,17		;"Escape"	
                DB	21H	
BADUSE:         LD	A,14		;'Bad use of array'	
                DB	21H	
MISMAT:         LD	A,6		;'Type mismatch'	
ERROR0ex:         JP	ERROR_	
;
ASM0:           CALL	NEWLIN	
ASM:            LD	(CURLIN),IY	
                CALL	TRAP	
                CALL	ASSEM	
                JR	C,SYNTAX	
                CP	CR	
                JR	Z,ASM0	
                LD	HL,LISTON	
                LD	A,(HL)	
                AND	0FH	
                OR	30H	
                LD	(HL),A	
                JR	XEQGO4	
;
;=
;
FNEND:          CALL	EXPR		;FUNCTION RESULT	
                EX	AF,AF'	
                ADD	A,A	
                LD	A,E	
                JR	C,FNEND1	
                LD	A,C	
FNEND1:         EX	AF,AF'	
                PUSH	HL	
                EXX	
                POP	BC	
                EX	DE,HL		;SAVE RESULT IN A'B'C'D'E'	
                EXX	
FNEND2:         POP	BC	
                LD	HL,FNCHK	
                XOR	A	
                SBC	HL,BC	
                JR	Z,FNEND3	
                PUSH	BC	
                CALL	RESLOC	
                JR	NZ,FNEND2	
                LD	A,7	
                JR	ERROR0ex		;"No FN"	
;
FNEND3:         POP	IY	
                LD	(CURLIN),IY	;IN CASE OF ERROR	
                EXX	
                EX	DE,HL	
                PUSH	BC	
                EXX	
                POP	HL	
                EX	AF,AF'	
                LD	E,A	
                LD	C,A	
                RRA	
                RET	
;
;DIM var(dim1[,dim2[,...]])[,var(...]
;DIM var expr[,var expr...]
;
DIM:            PUSH	IY	
                CP	'!'	
                JP	Z,DIM4	
                CALL	LOCATE		;VARIABLE	
                JP	C,BADDIM	
                CALL	NZ,CREATE	
                LD	A,(IY)	
                CP	'('	
                JP	NZ,DIM4	
                PUSH	HL	
                POP	IX	
                LD	A,(HL)	
                AND	0FEH	
                INC	HL	
                OR	(HL)	
                JP	NZ,DIM4	
                POP	BC		;LEVEL STACK	
                LD	A,D	
                LD	HL,(FREE)	
                PUSH	HL	
                EX	(SP),IX	
                PUSH	HL	
                PUSH	AF		;SAVE TYPE	
                LD	DE,1	
                LD	B,D		;DIMENSION COUNTER	
DIM1:           INC	IY	
                PUSH	BC	
                PUSH	DE	
                PUSH	IX	
                CALL	EXPRI		;DIMENSION SIZE	
                BIT	7,H	
                JR	NZ,BADDIM	
                EXX	
                INC	HL	
                POP	IX	
                INC	IX	
                LD	(IX),L		;SAVE SIZE	
                INC	IX	
                LD	(IX),H	
                POP	BC	
                CALL	MUL16		;HL=HL*BC	
                JR	C,NOROOM	;TOO LARGE	
                EX	DE,HL		;DE=PRODUCT	
                POP	BC	
                INC	B		;DIMENSION COUNTER	
                LD	A,(IY)	
                CP	','		;ANOTHER	
                JR	Z,DIM1	
                INC	IX	
                CALL	BRAKET		;CLOSING BRACKET	
                POP	AF		;RESTORE TYPE	
                CALL	X14OR5		;DE=DE*n	
                JR	C,NOROOM	
                POP	HL	
                LD	(HL),B		;NO. OF DIMENSIONS	
                EX	(SP),IX	
                POP	HL	
                AND	80H	
                OR	(IX)		;FLAGS	
;
;  A = flags: bit 7 = string, bit 0 = LOCAL
; DE = amount to allocate
; HL = where to allocate (if not LOCAL)
; (HL - FREE is size of 'descriptor')
; IX = where to store pointer
;
DIM3:           PUSH	HL	
                INC	H		;Safety margin	
                ADD	HL,DE	
                JR	C,NOROOM	
                SBC	HL,SP	
                JR	NC,NOROOM	
                POP	HL	
                PUSH	HL	
                LD	BC,(FREE)	
                OR	A	
                SBC	HL,BC	
                LD	B,H	
                LD	C,L	
                POP	HL	
                SBC	HL,BC	
                BIT	0,A	
                JR	Z,ARRCHK	;NOT LOCAL	
                LD	HL,0	
                SBC	HL,DE	
                OR	A	
                SBC	HL,BC	
                ADD	HL,SP	
                JR	Z,ARRCHK	;RESERVE NOTHING	
                LD	SP,HL	
                PUSH	DE	
                PUSH	BC	
                PUSH	AF	
                CALL	ARRCHK	
ARRCHK:         LD	(IX+0),L	;SAVE POINTER	
                LD	(IX+1),H	
                LD	A,B	
                OR	C	
                JR	Z,DIM2	
                PUSH	DE	
                EX	DE,HL	
                LD	HL,(FREE)	
                LDIR			;COPY DESCRIPTOR	
                EX	DE,HL	
                POP	DE	
DIM2:           LD	A,D	
                OR	E	
                JR	Z,DIM5	
                LD	(HL),0		;INITIALISE ARRAY	
                INC	HL	
                DEC	DE	
                JR	DIM2	
;
BADDIM:         LD	A,10		;"Bad DIM"	
                DB	21H	
NOROOM:         LD	A,11		;"DIM space"	
ERROR1ex:         JP	ERROR_	
;
DIM5:           SBC	HL,SP	
                JR	NC,DIM7		;LOCAL	
                ADD	HL,SP	
                LD	(FREE),HL	
DIM7:           CALL	NLIST		;ANOTHER VARIABLE?	
                JP	DIM	
;
DIM4:           POP	IY	
                CALL	VAR_	
                OR	A	
                JR	Z,BADDIM	
                JP	M,BADDIM	
                BIT	6,A	
                JR	NZ,BADDIM	
                LD	B,A		;TYPE	
                CALL	NXT	
                CP	TLOCAL	
                LD	A,0		;PRESET TO NOT LOCAL	
                JR	NZ,DIM8	
                INC	IY	
                INC	A		;FLAG LOCAL	
DIM8:           PUSH	AF	
                LD	A,B		;TYPE	
                EXX	
                LD	HL,0	
                LD	C,H	
                CALL	STOREN		;RESERVED AREA	
                PUSH	IX	
                CALL	EXPRI	
                POP	IX	
                EXX	
                INC	HL	
                EX	DE,HL	
                LD	HL,(FREE)	
                POP	AF		;LOCAL FLAG	
                JP	DIM3	
;
;PRINT list...
;PRINT #channel,list...
;
PRINT:          CP	'#'	
                JR	NZ,PRINT0	
                CALL	CHNL		;CHANNEL NO. = E	
PRNTN1:         CALL	NLIST	
                PUSH	DE	
                CALL	EXPR		;ITEM TO PRINT	
                EX	AF,AF'	
                JP	M,PRNTN2	;STRING	
                POP	DE	
                PUSH	BC	
                EXX	
                LD	A,L	
                EXX	
                CALL	OSBPUT	
                EXX	
                LD	A,H	
                EXX	
                CALL	OSBPUT	
                LD	A,L	
                CALL	OSBPUT	
                LD	A,H	
                CALL	OSBPUT	
                POP	BC	
                LD	A,C	
                CALL	OSBPUT	
                JR	PRNTN1	
PRNTN2:         LD	C,E	
                POP	DE	
                LD	HL,ACCS	
                INC	C	
PRNTN3:         DEC	C	
                JR	Z,PRNTN4	
                LD	A,(HL)	
                INC	HL	
                PUSH	BC	
                CALL	OSBPUT	
                POP	BC	
                JR	PRNTN3	
PRNTN4:         LD	A,CR	
                CALL	OSBPUT	
                JR	PRNTN1	
;
PRINT6:         LD	B,2	
                JR	PRINTC	
PRINT8:         LD	BC,100H	
                JR	PRINTC	
PRINT9:         LD	HL,STAVAR	
                XOR	A	
                CP	(HL)	
                JR	Z,PRINT0	
                LD	A,(COUNT)	
                OR	A	
                JR	Z,PRINT0	
PRINTA:         SUB	(HL)	
                JR	Z,PRINT0	
                JR	NC,PRINTA	
                NEG	
                CALL	SPACES	
PRINT0:         LD	A,(STAVAR)	
                LD	C,A		;PRINTS	
                LD	B,0		;PRINTF	
PRINTC:         CALL	TERMQ	
                JR	Z,PRINT4	
                RES	0,B	
                INC	IY	
                CP	'~'	
                JR	Z,PRINT6	
                CP	';'	
                JR	Z,PRINT8	
                CP	','	
                JR	Z,PRINT9	
                CALL	FORMAT		;SPC, TAB, '	
                JR	Z,PRINTC	
                DEC	IY	
                PUSH	BC	
                CALL	EXPR		;VARIABLE TYPE	
                EX	AF,AF'	
                JP	M,PRINT3	;STRING	
                POP	DE	
                PUSH	DE	
                BIT	1,D	
                PUSH	AF	
                CALL	Z,STR		;DECIMAL	
                POP	AF	
                CALL	NZ,HEXSTR	;HEX	
                POP	BC	
                PUSH	BC	
                LD	A,C	
                SUB	E	
                CALL	NC,SPACES		;RIGHT JUSTIFY	
PRINT3:         POP	BC	
                CALL	PTEXT		;PRINT	
                JR	PRINTC	
PRINT4:         BIT	0,B	
                CALL	Z,CRLF	
                JR	XEQGO3	
;
ONERR:          INC	IY		;SKIP "ERROR"	
                CALL	NXT	
                LD	HL,0		;FLAG NOT LOCAL	
                CP	TLOCAL	
                JR	NZ,ONERR1	
                INC	IY		;SKIP "LOCAL"	
                LD	HL,(ERRTRP)	
                PUSH	HL	
                LD	HL,(ONERSP)	
                PUSH	HL	
                LD	HL,400H		;TYPE = 4, 'EXPONENT' = 0	
                PUSH	HL	
                LD	HL,ERRTRP	
                PUSH	HL	
                LD	HL,LOCCHK	
                PUSH	HL	
                LD	HL,0	
                ADD	HL,SP	
                CALL	NXT	
ONERR1:         LD	(ONERSP),HL	
                LD	(ERRTRP),IY	
                CP	TOFF	
                JP	NZ,REM	
                INC	IY		;SKIP "OFF"	
                SBC	HL,HL	
                LD	(ONERSP),HL	
                LD	(ERRTRP),HL	
XEQGO3:         JP	XEQ	
;
;ON expr GOTO line[,line...] [ELSE statement]
;ON expr GOTO line[,line...] [ELSE line]
;ON expr GOSUB line[,line...] [ELSE statement]
;ON expr GOSUB line[,line...] [ELSE line]
;ON expr PROCone [,PROCtwo..] [ELSE PROCotherwise]
;ON ERROR [LOCAL] statement [:statement...]
;ON ERROR [LOCAL] OFF
;
ON:             CALL	TERMQ	
                JP	Z,CSRON	
                CP	TERROR	
                JR	Z,ONERR		;"ON ERROR"	
                CALL	EXPRI	
                LD	A,(IY)	
                INC	IY	
                LD	E,','		;SEPARATOR	
                CP	TGOTO	
                JR	Z,ON1	
                CP	TGOSUB	
                JR	Z,ON1	
                LD	E,TPROC	
                CP	E	
                LD	A,39	
                JR	NZ,ERROR2ex	;"ON syntax"	
ON1:            LD	D,A	
                EXX	
                PUSH	HL	
                EXX	
                POP	BC		;ON INDEX	
                LD	A,B	
                OR	H	
                OR	L	
                JR	NZ,ON4		;OUT OF RANGE	
                OR	C	
                JR	Z,ON4	
                DEC	C	
                JR	Z,ON3		;INDEX=1	
ON2:            CALL	TERMQ	
                JR	Z,ON4		;OUT OF RANGE	
                INC	IY		;SKIP DELIMITER	
                CP	'"'	
                JR	Z,ON5	
                CP	E	
                JR	NZ,ON2	
                DEC	C	
                JR	NZ,ON2	
ON3:            LD	A,E	
                CP	TPROC	
                JR	Z,ONPROC	
                PUSH	DE	
                CALL	ITEMI		;LINE NUMBER	
                POP	DE	
                LD	A,D	
                CP	TGOTO	
                JR	Z,GOTO2	
                CALL	SPAN		;SKIP REST OF LIST	
                JR	GOSUB1	
;
ON5:            CALL	QUOTE	
                INC	IY	
                JR	ON2	
;
ON4:            LD	A,(IY)	
                INC	IY	
                CP	TELSE	
                JP	Z,IF1		;ELSE CLAUSE	
                CP	CR	
                JR	NZ,ON4	
                LD	A,40		;'ON range'	
                DB	21H	
FORVAR:         LD	A,34		;'FOR variable'	
ERROR2ex:         JP	ERROR_	
;
ONPROC:         LD	A,TON	
                JP	PROC	
;
;GOTO line
;
GOTO:           CALL	ITEMI		;LINE NUMBER	
GOTO1:          CALL	TERMQ	
                JP	NZ,SYNTAX	
GOTO2:          EXX	
                CALL	FINDL	
                PUSH	HL	
                POP	IY	
                JP	Z,XEQ0	
                LD	A,41	
                JR	ERROR2ex		;"No such line"	
;
;GOSUB line
;
GOSUB:          CALL	ITEMI		;LINE NUMBER	
GOSUB1:         PUSH	IY		;TEXT POINTER	
                CALL	CHECK		;CHECK ROOM	
                CALL	GOTO1		;SAVE MARKER	
GOSCHK:         EQU	$	
;
;RETURN
;
RETURN:         POP	DE		;MARKER	
                LD	HL,GOSCHK	
                OR	A	
                SBC	HL,DE	
                POP	IY	
                JR	Z,XEQGO2ex	
                LD	A,38	
                JR	ERROR2ex		;"No GOSUB"	
;
;REPEAT
;
REPEAT:         PUSH	IY	
                CALL	CHECK	
                CALL	XEQ	
REPCHK:         EQU	$	
;
;UNTIL expr
;
UNTIL:          POP	BC	
                PUSH	BC	
                LD	HL,REPCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,UNTIL1	
                LD	A,3	
                CALL	RESLOC	
                JR	NZ,UNTIL	
                LD	A,43	
                JR	ERROR2ex		;"Not in a REPEAT loop"	
;
UNTIL1:         CALL	EXPRI	
                CALL	TEST	
                POP	BC	
                POP	DE	
                JR	NZ,XEQGO2ex		;TRUE	
                PUSH	DE	
                PUSH	BC	
                PUSH	DE	
                POP	IY	
XEQGO2ex:         JP	XEQ	
;
;FOR var = expr TO expr [STEP expr]
;
FORex:            CALL	ASSIGN	
                JR	NZ,FORVAR	;"FOR variable"	
                PUSH	AF		;SAVE TYPE	
                LD	A,(IY)	
                CP	TTO	
                LD	A,36	
                JR	NZ,ERROR2ex	;"No TO"	
                INC	IY	
                PUSH	IX	
                CALL	EXPRN		;LIMIT	
                POP	IX	
                POP	AF	
                LD	B,A		;TYPE	
                PUSH	BC		;SAVE ON STACK	
                PUSH	HL	
                LD	HL,0	
                LD	C,H	
                EXX	
                PUSH	HL	
                LD	HL,1		;PRESET STEP	
                EXX	
                LD	A,(IY)	
                CP	TSTEP	
                JR	NZ,FOR1	
                INC	IY	
                PUSH	IX	
                CALL	EXPRN		;STEP	
                POP	IX	
FOR1:           LD	B,8		;FPP '>'	
                BIT	7,H	
                JR	NZ,FOR2		;STEP SIGN	
                LD	B,12		;FPP '<'	
FOR2:           PUSH	BC	
                PUSH	HL	
                EXX	
                PUSH	HL	
                EXX	
                PUSH	IY		;SAVE TEXT POINTER	
                PUSH	IX		;LOOP VARIABLE	
                CALL	CHECK	
                CALL	XEQ	
FORCHK:         EQU	$	
;
;NEXT [var[,var...]]
;
NEXT:           POP	BC		;MARKER	
                LD	HL,FORCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,NEXT2	
                PUSH	BC	
                LD	A,3	
                CALL	RESLOC	
                JR	NZ,NEXT	
                LD	A,32	
                JR	ERROR3ex		;"Not in a FOR loop"	
;
NEXT2:          CALL	TERMQ	
                POP	HL	
                PUSH	HL	
                PUSH	BC	
                PUSH	HL	
                CALL	NZ,GETVAR	;VARIABLE	
                POP	DE	
                EX	DE,HL	
                OR	A	
NEXT0:          SBC	HL,DE	
                JR	NZ,NEXT1	
                PUSH	DE	
                LD	IX,6+2	
                ADD	IX,SP	
                CALL	DLOAD5		;STEP	
                LD	A,(IX+11)	;TYPE	
                POP	IX	
                CALL	LOADN		;LOOP VARIABLE	
                PUSH	AF	
                LD	A,'+' & 0FH	
                CALL	FPP		;ADD STEP	
                JR	C,ERROR3ex	
                POP	AF		;RESTORE TYPE	
                CALL	STOREN		;UPDATE VARIABLE	
                LD	IX,12	
                ADD	IX,SP	
                CALL	DLOAD5		;LIMIT	
                LD	A,(IX-1)	
                CALL	FPP		;TEST AGAINST LIMIT	
                JR	C,ERROR3ex	
                INC	H	
                JR	NZ,LOOP		;KEEP LOOPING	
                LD	HL,18	
                ADD	HL,SP	
                LD	SP,HL	
                CALL	NLIST	
                JR	NEXT	
;
LOOP:           POP	BC	
                POP	DE	
                POP	IY	
                PUSH	IY	
                PUSH	DE	
                PUSH	BC	
                JP	XEQ	
;
NEXT1:          LD	HL,18	
                ADD	HL,SP	
                LD	SP,HL		;"POP" THE STACK	
                POP	BC	
                LD	HL,FORCHK	
                SBC	HL,BC	
                POP	HL		;VARIABLE POINTER	
                PUSH	HL	
                PUSH	BC	
                JR	Z,NEXT0	
                LD	A,33	
ERROR3ex:         JP	ERROR_		;"Can't match FOR"	
;
;FNname
;N.B. ENTERED WITH A <> TON
;
FN:             PUSH	AF		;MAKE SPACE ON STACK	
                CALL	PROC1	
FNCHK:          EQU	$	
;
;PROCname
;N.B. ENTERED WITH A = ON PROC FLAG
;
PROC:           PUSH	AF		;MAKE SPACE ON STACK	
                CALL	PROC1	
PROCHK:         EQU	$	
PROC1:          CALL	CHECK	
                DEC	IY	
                PUSH	IY	
                CALL	GETDEF	
                POP	BC	
                JR	Z,PROC4	
                LD	A,30	
                JR	C,ERROR3ex	;"Bad call"	
                PUSH	BC	
                LD	HL,(PAGE_)	
PROC2:          LD	A,TDEF	
                CALL	SEARCHex		;LOOK FOR "DEF"	
                JR	C,PROC3	
                PUSH	HL	
                POP	IY	
                INC	IY		;SKIP DEF	
                CALL	NXT	
                CALL	GETDEF	
                PUSH	IY	
                POP	DE	
                JR	C,PROC6	
                CALL	NZ,CREATE	
                PUSH	IY	
                POP	DE	
                LD	(HL),E	
                INC	HL	
                LD	(HL),D		;SAVE ADDRESS	
PROC6:          EX	DE,HL	
                LD	A,CR	
                LD	B,A	
                CPIR			;SKIP TO END OF LINE	
                JR	PROC2	
PROC3:          POP	IY		;RESTORE TEXT POINTER	
                CALL	GETDEF	
                LD	A,29	
                JR	NZ,ERROR3ex	;"No such FN/PROC"	
PROC4:          LD	E,(HL)	
                INC	HL	
                LD	D,(HL)		;GET ADDRESS	
                LD	HL,2	
                ADD	HL,SP	
                CALL	NXT		;ALLOW SPACE BEFORE (	
                PUSH	DE		;EXCHANGE DE,IY	
                EX	(SP),IY	
                POP	DE	
                CP	'('		;ARGUMENTS?	
                JP	NZ,PROC5	
                CALL	NXT		;ALLOW SPACE BEFORE (	
                CP	'('	
                JP	NZ,SYNTAX	;"Syntax error"	
                PUSH	IY	
                POP	BC		;SAVE IY IN BC	
                EXX	
                EX	AF,AF'	
                XOR	A		;INITIALISE RETURN COUNT	
                EX	AF,AF'	
                CALL	SAVLOC		;SAVE DUMMY VARIABLES	
                EX	AF,AF'	
                OR	A	
                JR	Z,RETCHK	;NO RETURNS	
                PUSH	HL	
                NEG	
                LD	L,A	
                NEG	
                LD	H,-1		;HL = -RETURNS	
                ADD	HL,HL	
                ADD	HL,HL	
                ADD	HL,HL		;-RETURNS * 8	
                EX	(SP),HL	
                POP	IX	
                ADD	IX,SP	
                LD	SP,IX	
                PUSH	AF		;PUSH RETURN COUNT	
                CALL	RETCHK		;PUSH MARKER	
RETCHK:         EX	AF,AF'	
                CALL	BRAKET		;CLOSING BRACKET	
                EXX	
                PUSH	BC	
                POP	IY		;RESTORE IY	
                PUSH	HL	
                CALL	ARGUE		;TRANSFER ARGUMENTS	
                POP	HL	
;
; If any of the dummy arguments is the same as a passed-by-reference
; variable, then it must not be restored on exit (it would overwrite
; the wanted returned values), therefore search the saved values on
; the stack and if a match is found set bit 4 of the type.  On exit
; from the FN/PROC this will prevent the dummies from being restored.
;
                EX	(SP),HL	
                OR	A	
                LD	BC,RETCHK	
                SBC	HL,BC	
                ADD	HL,BC	
                EX	(SP),HL	
                JR	NZ,PROC5	;No RETURNs	
;
                PUSH	DE	
                PUSH	HL	
                LD	HL,7		;Skip two PUSHes and RETCHK	
                ADD	HL,SP	
                LD	A,(HL)		;RETURN count	
                INC	HL	
                PUSH	HL	
                POP	IX		;Address RETURNs table	
PROC0:          LD	E,A	
                LD	D,0	
                EX	DE,HL	
                ADD	HL,HL	
                ADD	HL,HL	
                ADD	HL,HL	
                ADD	HL,DE		;HL addresses SAVLOC stack	
                INC	HL	
                INC	HL		;Bump past LOCCHK	
PROC7:          LD	E,(HL)	
                INC	HL	
                LD	D,(HL)		;DE = SAVLOC VARPTR	
                INC	HL	
                LD	C,(HL)		;Length (if string)	
                INC	HL	
                LD	B,(HL)		;Variable type	
;
; Scan RETURNs table for VARPTR match
;
                PUSH	BC		;Save type	
                PUSH	HL	
                PUSH	IX	
                LD	B,A		;B = RETURN count	
PROC8:          LD	L,(IX+4)	
                LD	H,(IX+5)	;HL = RETURNed VARPTR	
                OR	A	
                SBC	HL,DE	
                JR	Z,PROC9	
                EX	DE,HL	
                LD	DE,8	
                ADD	IX,DE	
                EX	DE,HL	
                DJNZ	PROC8	
PROC9:          POP	IX	
                POP	HL	
                POP	BC		;Restore type	
;
; If match, set bit 4 of type:
;
                JR	NZ,PROCA	
                SET	4,(HL)		;Flag don't restore	
;
; Increment past stacked data:
;
PROCA:          LD	DE,3	
                BIT	6,B	
                JR	NZ,PROCB	;Whole array	
                LD	E,5	
                BIT	7,B	
                JR	Z,PROCB		;Numeric	
                LD	E,C	
                INC	DE	
PROCB:          ADD	HL,DE	
                LD	C,(HL)	
                INC	HL	
                LD	B,(HL)	
                INC	HL		; BC = marker ?	
                EX	DE,HL	
                LD	HL,LOCCHK	
                OR	A	
                SBC	HL,BC	
                EX	DE,HL	
                JR	Z,PROC7		;Another	
                POP	HL	
                POP	DE	
;
PROC5:          LD	(HL),E		;SAVE "RETURN ADDRESS"	
                INC	HL	
                LD	A,(HL)	
                LD	(HL),D	
                CP	TON		;WAS IT "ON PROC" ?	
                JR	NZ,XEQGO	
                PUSH	DE	
                EX	(SP),IY	
                CALL	SPAN		;SKIP REST OF ON LIST	
                EX	(SP),IY	
                POP	DE	
                LD	(HL),D	
                DEC	HL	
                LD	(HL),E	
XEQGO:          JP	XEQ	
;
LOCERR:         INC	IY	
                JR	XEQGO	
;
;LOCAL DATA
;
LOCDAT:         INC	IY	
                LD	HL,(DATPTR)	
                PUSH	HL	
                LD	A,40H	
                PUSH	AF	
                LD	HL,DATPTR	
                PUSH	HL	
                LD	HL,LOCCHK	
                PUSH	HL	
                JR	XEQGO	
;
;LOCAL var[,var...]
;
LOCAL:          CP	TERROR	
                JR	Z,LOCERR	
                CP	TDATA	
                JR	Z,LOCDAT	
                POP	BC	
                PUSH	BC	
                LD	HL,FNCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,LOCAL1	
                LD	HL,PROCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,LOCAL1	
                LD	HL,LOCCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,LOCAL1	
                LD	HL,ARRCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,LOCAL1	
                LD	HL,RETCHK	
                OR	A	
                SBC	HL,BC	
                LD	A,12	
                JP	NZ,ERROR_	;"Not LOCAL"	
LOCAL1:         PUSH	IY	
                POP	BC	
                EXX	
                DEC	IY	
                CALL	SAVLOC	
                EXX	
                PUSH	BC	
                POP	IY	
LOCAL2:         CALL	GETVAR	
                JP	NZ,SYNTAX	
                BIT	6,A		;ARRAY?	
                JR	NZ,LOCAL4	
                OR	A		;TYPE	
                EX	AF,AF'	
                CALL	ZERO	
                EX	AF,AF'	
                PUSH	AF	
                CALL	P,STOREN	;ZERO	
                POP	AF	
                LD	E,C	
                CALL	M,STORES	
LOCAL3:         CALL	NLIST	
                JR	LOCAL2	
;
LOCAL4:         LD	(IX+0),1	;FLAG LOCAL ARRAY	
                LD	(IX+1),0	
                JR	LOCAL3	
;
;ENDPROC
;
ENDPRO:         POP	BC	
                LD	HL,PROCHK	;PROC MARKER	
                XOR	A	
                SBC	HL,BC	
                JR	Z,ENDPR1	
                PUSH	BC		;PUT BACK	
                CALL	RESLOC	
                JR	NZ,ENDPRO	
                LD	A,13	
                JP	ERROR_		;"No PROC"	
;
ENDPR1:         POP	IY	
XEQGO6:         JP	XEQ	
;
;INPUT #channel,var,var...
;
INPUTN:         CALL	CHNL		;E = CHANNEL NUMBER	
INPN1:          CALL	NLIST	
                PUSH	DE	
                CALL	VAR_	
                POP	DE	
                PUSH	AF		;SAVE TYPE	
                PUSH	HL		;VARPTR	
                OR	A	
                JP	M,INPN2		;STRING	
                CALL	OSBGET	
                EXX	
                LD	L,A	
                EXX	
                CALL	OSBGET	
                EXX	
                LD	H,A	
                EXX	
                CALL	OSBGET	
                LD	L,A	
                CALL	OSBGET	
                LD	H,A	
                CALL	OSBGET	
                LD	C,A	
                POP	IX	
                POP	AF		;RESTORE TYPE	
                PUSH	DE		;SAVE CHANNEL	
                CALL	STOREN	
                POP	DE	
                JR	INPN1	
INPN2:          LD	HL,ACCS	
INPN3:          CALL	OSBGET	
                CP	CR	
                JR	Z,INPN4	
                LD	(HL),A	
                INC	L	
                JR	NZ,INPN3	
INPN4:          POP	IX	
                POP	AF	
                PUSH	DE	
                EX	DE,HL	
                CALL	STACCS	
                POP	DE	
                JR	INPN1	
;
;INPUT ['][SPC(x)][TAB(x[,y])]["prompt",]var[,var...]
;INPUT LINE [SPC(x)][TAB(x[,y])]["prompt",]var[,var...]
;
INPUT:          CP	'#'	
                JR	Z,INPUTN	
                LD	C,0		;FLAG PROMPT	
                CP	TLINE	
                JR	NZ,INPUT0	
                INC	IY		;SKIP "LINE"	
                LD	C,80H	
INPUT0:         LD	HL,BUFFER	
                LD	(HL),CR		;INITIALISE EMPTY	
INPUT1:         CALL	TERMQ	
                JR	Z,XEQGO6	;DONE	
                INC	IY	
                CP	','	
                JR	Z,INPUT3	;SKIP COMMA	
                CP	';'	
                JR	Z,INPUT3	
                PUSH	HL		;SAVE BUFFER POINTER	
                CP	'"'	
                JR	NZ,INPUT6	
                PUSH	BC	
                CALL	CONS	
                POP	BC	
                CALL	PTEXT		;PRINT PROMPT	
                JR	INPUT9	
INPUT6:         CALL	FORMAT		;SPC, TAB, '	
                JR	NZ,INPUT2	
INPUT9:         POP	HL	
                SET	0,C		;FLAG NO PROMPT	
                JR	INPUT0	
INPUT2:         DEC	IY	
                PUSH	BC	
                CALL	VAR_	
                POP	BC	
                POP	HL	
                PUSH	AF		;SAVE TYPE	
                LD	A,(HL)	
                INC	HL	
                CP	CR		;BUFFER EMPTY?	
                CALL	Z,REFILL	
                BIT	7,C	
                PUSH	AF	
                CALL	NZ,LINES	
                POP	AF	
                CALL	Z,FETCHS	
                POP	AF		;RESTORE TYPE	
                PUSH	BC	
                PUSH	HL	
                OR	A	
                JP	M,INPUT4	;STRING	
                PUSH	AF	
                PUSH	IX	
                CALL	VAL0	
                POP	IX	
                POP	AF	
                CALL	STOREN	
                JR	INPUT5	
INPUT4:         CALL	STACCS	
INPUT5:         POP	HL	
                POP	BC	
INPUT3:         RES	0,C	
                JR	INPUT1	
;
REFILL:         BIT	0,C	
                JR	NZ,REFIL0	;NO PROMPT	
                LD	A,'?'	
                CALL	OUTCHR		;PROMPT	
                LD	A,' '	
                CALL	OUTCHR	
REFIL0:         LD	HL,BUFFER	
                PUSH	BC	
                PUSH	HL	
                PUSH	IX	
                CALL	OSLINE	
                POP	IX	
                POP	HL	
                POP	BC	
                LD	B,A		;POS AT ENTRY	
                XOR	A	
                LD	(COUNT),A	
                CP	B	
                RET	Z	
REFIL1:         LD	A,(HL)	
                CP	CR	
                RET	Z	
                INC	HL	
                DJNZ	REFIL1	
                RET	
;
;READ var[,var...]
;
READ:           CP	'#'	
                JP	Z,INPUTN	
                LD	HL,(DATPTR)	
READ0:          LD	A,(HL)	
                CP	':'	
                CALL	Z,REFIL1	
                INC	HL		;SKIP COMMA | "DATA"	
                CP	CR		;END OF DATA STMT?	
                CALL	Z,GETDAT	
                PUSH	HL	
                CALL	VAR_	
                POP	HL	
                OR	A	
                JP	M,READ1		;STRING	
                PUSH	HL	
                EX	(SP),IY	
                PUSH	AF		;SAVE TYPE	
                PUSH	IX	
                CALL	EXPRN	
                POP	IX	
                POP	AF	
                CALL	STOREN	
                EX	(SP),IY	
                JR	READ2	
READ1:          CALL	FETCHS	
                PUSH	HL	
                CALL	STACCS	
READ2:          POP	HL	
                LD	(DATPTR),HL	
                CALL	NLIST	
                JR	READ0	
;
GETDAT:         CALL	DSRCH	
                INC	HL	
                RET	NC	
                LD	A,42	
                JR	ERROR4ex		;"Out of DATA"	
;
;IF expr statement
;IF expr THEN statement [ELSE statement]
;IF expr THEN line [ELSE line]
;IF expr THEN
;
IF_:            CALL	EXPRI	
                CALL	TEST	
                JR	Z,IFNOT		;FALSE	
                LD	A,(IY)	
                CP	TTHEN	
                JP	NZ,XEQ	
IF0:            INC	IY		;SKIP "THEN"	
                LD	A,(IY)	
                CP	';'	
                JR	Z,IF0	
IF1:            CALL	NXT	
                CP	TLINO	
                JP	NZ,XEQ		;STATEMENT FOLLOWS	
                JP	GOTO		;LINE NO. FOLLOWS	
;
IFELSE:         LD	A,(IY)	
                INC	IY	
                CP	';'	
                JR	NZ,IFNEXT	
                JR	IFTHEN	
;
IF2:            CALL	QUOTE		;SKIP STRING	
IFNOT:          LD	A,(IY)	
                INC	IY	
IFNEXT:         CP	'"'	
                JR	Z,IF2		;QUOTED STRING	
                CP	TREM	
                JP	Z,REM		;REM	
                CP	CR	
                JP	Z,XEQ0		;END OF LINE	
                CP	TELSE	
                JR	Z,IF1		;ELSE CLAUSE	
                CP	TTHEN	
                JR	NZ,IFNOT	;TRY FOR END AGAIN	
IFTHEN:         LD	A,(IY)	
                CP	CR	
                JR	NZ,IFELSE	
                LD	BC,TELSE	
                LD	DE,TENDIF*256+TTHEN	
                INC	IY	
                CALL	NSCAN	
                JP	Z,XEQ1	
NENDIF:         LD	A,49	
ERROR4ex:         JP	ERROR_		;"Missing ENDIF"	
;
; ELSE (multi-line)
;
MELSE:          LD	BC,-3	
                ADD	IY,BC	
                LD	BC,TENDIF	
                LD	DE,TENDIF*256+TTHEN	
                CALL	NSCAN	
                JR	NZ,NENDIF	
XEQGO7:         JP	XEQ	
;
; WHEN and OTHERWISE:
;
WHEN:           LD	BC,-3	
                ADD	IY,BC	
                LD	BC,TENDCASE	
                LD	DE,TENDCASE*256+TOF	
                CALL	NSCAN	
                JR	Z,XEQGO7	
                LD	A,47	
                JR	ERROR4ex		;"Missing ENDCASE"	
;
; CASE
;
CASE:           CALL	EXPR		;String or numeric	
                EX	AF,AF'	
                LD	B,0		;Flag numeric	
                JP	P,CASE6		;numeric	
                CALL	PUSHS		;put string on stack	
                POP	BC		;C = length	
                LD	B,1		;Flag string	
CASE6:          LD	A,(IY)	
                INC	IY	
                CP	TOF	
                LD	A,37	
                JR	NZ,ERROR4ex	;"Missing OF"	
                LD	A,(IY)	
                INC	IY		;Address line-length byte	
                CP	CR	
                LD	A,48	
                JR	NZ,ERROR4ex	;"OF not last"	
CASE1:          XOR	A		;Level	
CASE0:          EXX	
                PUSH	HL		;Push to stack	
                EXX	
                PUSH	HL	
                PUSH	BC	
                LD	L,A		;Level	
                LD	BC,TOTHERWISE*256+TWHEN	
                LD	DE,TENDCASE*256+TOF	
                CALL	NSCAN1	
                POP	BC		;Restore from stack	
                POP	HL	
                EXX	
                POP	HL	
                EXX	
                LD	A,47	
                JP	NZ,ERROR_	;Missing ENDCASE	
                LD	A,(IY-1)	
                CP	TENDCASE	
                JR	Z,CASE9	
                CP	TOTHERWISE	
                JR	Z,CASE9	
CASE4:          BIT	0,B		;Numeric or string?	
                JR	NZ,CASE3	
                PUSH	BC		;Type/exponent/length	
                PUSH	HL		;MS 32 bits	
                EXX	
                PUSH	HL		;LS 32 bits	
                EXX	
                CALL	EXPRN	
                LD	IX,0	
                ADD	IX,SP		;Address stack	
                EXX	
                LD	E,(IX+0)	;Get LS 32-bits	
                LD	D,(IX+1)	
                EXX	
                LD	E,(IX+2)	
                LD	D,(IX+3)	;Get MS 32-bits	
                LD	B,(IX+4)	;Get exponent	
                LD	A,9	
                CALL	FPP		;In case integer vs float	
                LD	A,L	
                OR	A		;NZ if equal	
                EXX	
                POP	HL	
                EXX	
                POP	HL	
                POP	BC	
                JR	NZ,CASE5	;Match found	
CASE2:          LD	A,(IY)	
                INC	IY	
                CP	','	
                JR	Z,CASE4		;Not found, try another	
                EXX	
                PUSH	IY	
                EX	(SP),HL	
                LD	A,CR	
                LD	B,A	
                CPIR			;Find CR	
                EX	(SP),HL	
                POP	IY	
                EXX	
                LD	A,(IY-2)	;Last token in previous line	
                CP	TOF		;CASE statement in WHEN line	
                JR	NZ,CASE1	
                LD	A,1	
                JR	CASE0	
;
;Finished, level stack if string:
;
CASE9:          BIT	0,B	
                JR	Z,XEQGO5	
                LD	H,0	
                LD	L,C	
                ADD	HL,SP	
                LD	SP,HL	
                JR	XEQGO5	
;
;Matched, so skip any more expressions:
;
CASE5:          CALL	NXT	
                CP	','	
                JR	NZ,CASE9	;End of list	
                INC	IY	
                PUSH	BC		;Save type and string length	
                CALL	EXPR		;Evaluate but discard	
                POP	BC	
                JR	CASE5	
;
;String compare:
;
CASE3:          PUSH	BC	
                CALL	EXPRS	
                POP	BC	
                LD	HL,0	
                ADD	HL,SP	
                LD	B,E	
                LD	DE,ACCS	
                PUSH	BC	
                CALL	SCP		;String compare	
                POP	BC	
                LD	B,1	
                JR	NZ,CASE2	
                JR	CASE5	
;
; WHILE
;
WHILE:          PUSH	IY		;Save current position	
                CALL	CHECK	
                CALL	WHICHK		;Push marker	
WHICHK:         CALL	EXPRI	
                CALL	TEST	
                JR	NZ,XEQGO5	
                POP	BC		;Pop marker	
                POP	BC		;Level stack	
                LD	BC,TWHILE+TENDWHILE*256	
                LD	D,1	
                CALL	WSRCH	
XEQGO5:         JP	XEQ	
;
; ENDWHILE
;
ENDWHI:         POP	BC		;Marker	
                POP	DE		;Saved text pointer	
                PUSH	DE	
                PUSH	BC	
                OR	A	
                LD	HL,WHICHK	
                SBC	HL,BC	
                JR	Z,ENDWH1	
                LD	A,3	
                CALL	RESLOC	
                JR	NZ,ENDWHI	
                LD	A,46	
                JR	ERROR5		;"Not in a WHILE loop"	
;
ENDWH1:         PUSH	IY	
                LD	IY,0	
                ADD	IY,DE	
                CALL	EXPRI	
                CALL	TEST	
                POP	DE		;Text pointer	
                JR	NZ,XEQGO5	
                POP	BC		;Junk marker	
                POP	BC		;Junk pointer	
                LD	IY,0	
                ADD	IY,DE	
                JR	XEQGO5	
;
;CLS
;
CLS:            CALL	CLRSCN	
                XOR	A	
                LD	(COUNT),A	
                JR	XEQGO5	
;
;STOP
;
STOP:           CALL	TELL	
                DB	CR	
                DB	LF	
                DB	TSTOP	
                DB	0	
                CALL	SETLIN		;FIND CURRENT LINE	
                CALL	SAYLN	
                CALL	CRLF	
                JP	CLOOP	
;
;REPORT
;
REPOR:          CALL	REPORT	
                JR	XEQGO5	
;
;CLEAR
;
CLR:            CALL	CLEAR	
                LD	HL,(PAGE_)	
                JR	RESTR1	
;
;RESTORE ERROR
;
RESERR:         INC	IY	
                LD	A,2	
                CALL	RESLOC	
                JR	NZ,XEQGO5	
                LD	A,53		;ON ERROR not LOCAL	
ERROR5:         JP	ERROR_	
;
;RESTORE DATA
;
RESDAT:         INC	IY	
                LD	A,1	
                CALL	RESLOC	
                JR	NZ,XEQGO5	
                LD	A,54		;'DATA not LOCAL'	
                DB	21H	
NOLINE:         LD	A,41		;'No such line'	
                JR	ERROR5	
;
;RESTORE [line]
;
RESTOR:         CP	TERROR	
                JR	Z,RESERR	
                CP	TDATA	
                JR	Z,RESDAT	
                CP	'+'	
                JR	Z,RESREL	
                LD	HL,(PAGE_)	
                CALL	TERMQ	
                JR	Z,RESTR1	
                CALL	ITEMI	
                EXX	
                CALL	FINDL		;SEARCH FOR LINE	
                JR	NZ,NOLINE	
RESTR1:         CALL	DSRCH	
                LD	(DATPTR),HL	
                JP	XEQ	
;
RESREL:         CALL	EXPRI	
                EXX	
                EX	DE,HL	
                PUSH	IY	
                POP	HL	
                LD	A,CR	
                LD	B,A	
                CPIR			;FIND LINE END	
                DEC	E	
                JR	Z,RESTR1	
                JP	M,RESTR1	
                XOR	A	
                LD	B,A	
RESTR2:         LD	C,(HL)	
                CP	C	
                JR	Z,NOLINE	
                ADD	HL,BC	
                DEC	E	
                JR	NZ,RESTR2	
                JR	RESTR1	
;
;PTR#channel=expr
;PAGE=expr
;TIME=expr
;LOMEM=expr
;HIMEM=expr
;
PTR:            CALL	CHANEL	
                CALL	EQUALS	
                LD	A,E	
                PUSH	AF	
                CALL	EXPRI	
                PUSH	HL	
                EXX	
                POP	DE	
                POP	AF	
                CALL	PUTPTR	
                JR	XEQGO1ex	
;
PAGEV:          CALL	EQUALS	
                CALL	EXPRI	
                EXX	
                LD	L,0	
                LD	(PAGE_),HL	
                JR	XEQGO1ex	
;
TIMEV:          CP	'$'	
                JR	Z,TIMEVS	
                CALL	EQUALS	
                CALL	EXPRI	
                PUSH	HL	
                EXX	
                POP	DE	
                CALL	PUTIME	
                JR	XEQGO1ex	
;
TIMEVS:         INC	IY		;SKIP '$'	
                CALL	EQUALS	
                CALL	EXPRS	
                CALL	PUTIMS	
                JR	XEQGO1ex	
;
LOMEMV:         CALL	EQUALS	
                CALL	EXPRI	
                CALL	CLEAR	
                EXX	
                LD	(LOMEM),HL	
                LD	(FREE),HL	
                JR	XEQGO1ex	
;
HIMEMV:         CALL	EQUALS	
                CALL	EXPRI	
                EXX	
                LD	DE,(FREE)	
                INC	D	
                XOR	A	
                SBC	HL,DE	
                ADD	HL,DE	
                JP	C,ERROR_		;"No room"	
                LD	DE,(HIMEM)	
                LD	(HIMEM),HL	
                EX	DE,HL	
                SBC	HL,SP	
                JP	NZ,XEQ	
                EX	DE,HL	
                LD	SP,HL		;LOAD STACK POINTER	
XEQGO1ex:         JP	XEQ	
;
;WIDTH expr
;
WIDTHV:         CALL	EXPRI	
                EXX	
                LD	A,L	
                LD	(WIDTH),A	
                JR	XEQGO1ex	
;
;TRACE ON
;TRACE OFF
;TRACE line
;
TRACE:          INC	IY	
                LD	HL,0	
                CP	TON	
                JR	Z,TRACE0	
                CP	TOFF	
                JR	Z,TRACE1	
                DEC	IY	
                CALL	EXPRI	
                EXX	
TRACE0:         DEC	HL	
TRACE1:         LD	(TRACEN),HL	
                JR	XEQGO1ex	
;
;VDU expr,expr;....[|]
;
VDU:            CALL	EXPRI	
                EXX	
                LD	A,L	
                LD	B,1	
VDU1:           CALL	OSWRCH	
                DJNZ	VDU1	
                LD	A,(IY)	
                CP	'|'	
                JR	Z,VDU4	
                CP	','	
                JR	Z,VDU2	
                CP	';'	
                JR	NZ,VDU3	
                LD	A,H	
                CALL	OSWRCH	
VDU2:           INC	IY	
VDU3:           CALL	TERMQ	
                JR	NZ,VDU	
                JR	XEQGO1ex	
;
VDU4:           INC	IY	
                XOR	A	
                LD	B,9	
                JR	VDU1	
;
;CLOSE channel number
;
CLOSE:          CALL	CHANEL	
                CALL	OSSHUT	
                JR	XEQGO1ex	
;
;BPUT #channel,byte
;BPUT #channel,string[;]
;
BPUT:           CALL	CHANEL		;CHANNEL NUMBER	
                PUSH	DE	
                CALL	COMMA	
                CALL	EXPR	
                EX	AF,AF'	
                JP	M,BPUTS	
                CALL	SFIX	
                EXX	
                LD	A,L	
                POP	DE	
                CALL	OSBPUT	
BPUTX:          JR	XEQGO1ex	
;
BPUTS:          LD	A,E	
                POP	DE	
                LD	D,A	
                LD	HL,ACCS	
BPUTS1:         LD	A,(HL)	
                INC	HL	
                CALL	OSBPUT	
                DEC	D	
                JR	NZ,BPUTS1	
                CALL	NXT	
                CP	';'	
                INC	IY	
                JR	Z,BPUTX	
                LD	A,LF	
                CALL	OSBPUT	
                DEC	IY	
                JR	BPUTX	
;
;CALL address[,var[,var...]]
;
CALL:           CALL	EXPRI		;ADDRESS	
                EXX	
                PUSH	HL		;SAVE IT	
                LD	B,0		;PARAMETER COUNTER	
                LD	DE,BUFFER	;VECTOR	
CALL1:          CALL	NXT	
                CP	','	
                JR	NZ,CALL2	
                INC	IY	
                INC	B	
                CALL	NXT	
                PUSH	BC	
                PUSH	DE	
                CALL	VAR_	
                POP	DE	
                POP	BC	
                INC	DE	
                LD	(DE),A		;PARAMETER TYPE	
                INC	DE	
                EX	DE,HL	
                LD	(HL),E		;PARAMETER ADDRESS	
                INC	HL	
                LD	(HL),D	
                EX	DE,HL	
                JR	CALL1	
CALL2:          LD	A,B	
                LD	(BUFFER),A	;PARAMETER COUNT	
                POP	HL		;RESTORE ADDRESS	
                CALL	USR1	
                JP	XEQ	
;
;USR(address)
;
USR:            CALL	ITEMI	
                EXX	
USR1:           PUSH	HL		;ADDRESS ON STACK	
                EX	(SP),IY	
                INC	H		;PAGE &FF?	
                LD	HL,USR2		;RETURN ADDRESS	
                PUSH	HL	
                LD	IX,STAVAR	
                CALL	Z,OSCALL	;INTERCEPT PAGE &FF	
                LD	C,(IX+24)	
                PUSH	BC	
                POP	AF		;LOAD FLAGS	
                LD	A,(IX+4)	;LOAD Z80 REGISTERS	
                LD	B,(IX+8)	
                LD	C,(IX+12)	
                LD	D,(IX+16)	
                LD	E,(IX+20)	
                LD	H,(IX+32)	
                LD	L,(IX+48)	
                LD	IX,BUFFER	
                JP	(IY)		;OFF TO USER ROUTINE	
USR2:           POP	IY	
                XOR	A	
                LD	C,A	
                RET	
;
; LEFT$(A$[,N]) = string
; MID$(A$,N[,M]) = string
; RIGHT$(A$[,N]) = string
;
LEFTSL:         CALL    GETSTR	
                LD	HL,0FF00H	;Default all but last	
                JR	NZ,MIDSL1	
                JR	MIDSL0	
;
RITESL:         CALL	GETSTR	
                LD	HL,0FFFFH	;Default last char only	
                JR	NZ,MIDSL1	
                JR	MIDSL0	
;
MIDSL:          CALL	GETSTR	
                LD	A,5	
                JP	NZ,ERROR_	;'Missing comma'	
                INC	IY	
                PUSH	IX	
                CALL	EXPRI	
                POP	IX	
                EXX	
                CALL	NXT	
                DEC	L	
                LD	H,254		;Default rest of string	
                CP	','	
                JR	NZ,MIDSL1	
MIDSL0:         INC	IY	
                PUSH	HL	
                PUSH	IX	
                CALL	EXPRI	
                POP	IX	
                EXX	
                LD	A,L	
                POP	HL	
                OR	A	
                JR	Z,MIDSL2	;Zero length	
                DEC	A	
                ADD	A,L	
                LD	H,A	
                JR	NC,MIDSL1	
                LD	A,L	
                INC	A	
                JR	Z,MIDSL1	
                LD	H,254	
                JR	MIDSL1	
;
MIDSL2:         LD	HL,1	
MIDSL1:         CALL	BRAKET	
                CALL	EQUALS	
                PUSH	HL	
                PUSH	IX	
                CALL	EXPRS	
                POP	IX	
                POP	HL	
                LD	C,E	
                LD	B,(IX+0)	
                LD	E,(IX+2)	
                LD	D,(IX+3)	
;
; Source string at ACCS, length C
; Destination string at DE, length B
; L = first character to modify 0-254
; H =  last character to modify 0-254
; IF L=255 THEN modify rightmost H + 2 chars
; ELSE IF H=255 modify all but last character
; ELSE IF L > H do nothing
; IX = destination VARPTR
;
                LD	A,L	
                INC	A	
                JR	NZ,SUBSL1	
                INC	H	
                INC	H	
                LD	A,C	
                CP	H	
                JR	NC,SUBSL0	
                LD	H,A	
SUBSL0:         LD	A,B	
                SUB	H	
                JR	NC,SUBSL6	
                XOR	A	
SUBSL6:         LD	L,A	
                JR	SUBSL5	
;
SUBSL1:         LD	A,H	
                INC	A	
                JR	NZ,SUBSL2	
                LD	A,B	
                SUB	2	
                JR	C,SUBSL9	
                LD	H,A	
SUBSL2:         LD	A,L	
                CP	B	
                JR	NC,SUBSL9	
                LD	A,H	
                CP	B	
                JR	C,SUBSL3	
SUBSL5:         LD	A,B	
                DEC	A	
                LD	H,A	
SUBSL3:         LD	A,H	
                SUB	L	
                JR	C,SUBSL9	
                INC	A	
                CP	C	
                JR	C,SUBSL4	
                LD	A,C	
SUBSL4:         LD	B,0	
                LD	H,B	
                LD	C,A	
                OR	A	
                JR	Z,SUBSL9	
                EX	DE,HL	
                ADD	HL,DE	
                EX	DE,HL	
                LD	HL,ACCS	
                LDIR	
SUBSL9:         JP	XEQ	
;
; EXITex FOR [var]
; EXITex REPEAT
; EXITex WHILE
;
EXITex:           INC	IY		;Skip FOR/REPEAT/WHILE	
                CP	TFOR	
                JR	NZ,EXIT0	
                LD	IX,0		;For EXITex FOR <var>	
                CALL	TERMQ	
                CALL	NZ,GETVAR	
                LD	A,TFOR	
EXIT0:          LD	D,1		;Level for WSRCH	
                LD	E,A	
EXIT1:          LD	A,E	
                POP	BC		;Marker	
                LD	HL,FORCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,EXIT4	
                LD	HL,REPCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,EXIT6	
                LD	HL,WHICHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,EXIT7	
                PUSH	BC		;Put back marker	
                PUSH	IX	
                POP	BC	
                EXX	
                LD	A,3	
                CALL	RESLOC	
                EXX	
                PUSH	BC	
                POP	IX	
                JR	NZ,EXIT1	
                LD	A,44	
                JP	ERROR_		;'Bad EXITex'	
;
EXIT4:          POP	BC		;VARPTR	
                LD	HL,14		;Skip text pointer, limit & step	
                ADD	HL,SP	
                LD	SP,HL		;Pop FOR record	
                CP	TFOR	
                JR	NZ,EXIT1	
                PUSH	IX	
                POP	HL	
                LD	A,H	
                OR	L	
                JR	Z,EXIT5	
                SBC	HL,BC	
EXIT5:          LD	BC,TFOR+TNEXT*256	
                JR	Z,EXIT8	
                INC	D		;Count nested FOR loops	
                JR	EXIT1	
;
EXIT6:          POP	BC		;Text pointer	
                CP	TREPEAT	
                JR	NZ,EXIT1	
                LD	BC,TREPEAT+TUNTIL*256	
                JR	EXIT8	
;
EXIT7:          POP	BC		;Text pointer	
                CP	TWHILE	
                JR	NZ,EXIT1	
                LD	BC,TWHILE+TENDWHILE*256	
EXIT8:          CALL	WSRCH	
                CALL	SPAN		;Skip UNTIL expression	
                JP	XEQ	
;
;PUT port,data
;
PUT:            CALL	EXPRI		;PORT ADDRESS	
                EXX	
                PUSH	HL	
                CALL	COMMA	
                CALL	EXPRI		;DATA	
                EXX	
                POP	BC	
                OUT	(C),L		;OUTPUT TO PORT BC	
                JP	XEQ	
;
;SUBROUTINES:
;
;ASSIGN - Assign a numeric value to a variable.
;Outputs: NC,  Z     - OK, numeric scalar
;         NC, NZ, PE - OK, string array  (D = type, E = operator)
; else if NC, NZ, P  - OK, numeric array (D = type, E = operator)
; else if NC, NZ     - OK, string scalar
;          C, NZ     - illegal / invalid
;
ASSIGN:         CALL	GETVAR		;VARIABLE	
                RET	C		;ILLEGAL VARIABLE	
                CALL	NZ,PUTVAR	
                LD	D,A		;Type	
                CALL	NXT	
                INC	IY	
                LD	E,A		;Operator (or =)	
                CP	'='	
                CALL	NZ,EQUALS	
                LD	A,D	
                AND	11000000B	
                RET	NZ		;String or array	
                PUSH	DE	
                PUSH	HL	
                CALL	EXPRN	
                POP	IX	
                POP	DE	
;
; Falls through to...
;
; MODIFY - Update numeric variable according to operator:
;   Inputs: D = type
;           E = operator
;           HLH'L'C = value
;           IX = destination VARPTR
; Destroys: Everything except IX,IY,SP
;
MODIFY:         LD	A,E	
                CP	'='	
                JR	Z,STORE0	;Simple assignment	
                PUSH	DE	
                EXX	
                EX	DE,HL	
                EXX	
                EX	DE,HL	
                LD	B,C	
                EX	(SP),HL	
                LD	A,H	
                EX	(SP),HL	
                CALL	LOADN	
                EX	(SP),HL	
                LD	A,L	
                EX	(SP),HL	
                AND	15	
                PUSH	IX	
                CALL	FPP	
                POP	IX	
                POP	DE	
                JP	C,ERROR_	
STORE0:         LD	A,D		;Type	
STOREN:         CP	5	
                JR	Z,STORE5	
                PUSH	AF	
                INC	C		;SPEED - & PRESERVE F'	
                DEC	C		; WHEN CALLED BY FNEND0	
                CALL	NZ,SFIX		;CONVERT TO INTEGER	
                POP	AF	
                CP	4	
                JR	Z,STORE4	
                CP	A		;SET ZERO	
STORE1:         EXX	
                LD	(IX+0),L	
                EXX	
                RET	
;
STORE5:         LD	(IX+4),C	
STORE4:         EXX	
                LD	(IX+0),L	
                LD	(IX+1),H	
                EXX	
                LD	(IX+2),L	
                LD	(IX+3),H	
                RET	
;
; MODIFS - Update string variable according to operator:
;   Inputs: H = type
;           L = operator (= or +)
;           E = string length (string in accumulator)
;           IX = destination VARPTR
; Destroys: Everything except SP, IY
;
MODIFS:         LD	A,L		;Operator	
                CP	'+'	
                LD	A,H		;Type	
                JR	NZ,STACCS	
                PUSH	IY	
                PUSH	IX	
                POP	IY	
                CALL	PUSHS	
                PUSH	IY	
                POP	IX	
                CALL	LOADS	
                POP	BC	
                LD	A,B		;Type	
                INC	C	
                DEC	C	
                JR	Z,MODFS1	;Zero length	
                LD	HL,0	
                LD	B,H	
                ADD	HL,SP	
                LDIR	
                LD	SP,HL	
MODFS1:         POP	IY	
;
; Falls through to:
;
STACCS:         LD	HL,ACCS	
STORES:         RRA	
                JR	NC,STORS3	;FIXED STRING	
                PUSH	HL	
                CALL	LOAD4	
                LD	A,E		;LENGTH OF STRING	
                EXX	
                LD	L,A	
                LD	A,H		;LENGTH ALLOCATED	
                EXX	
                CP	E	
                JR	NC,STORS1	;ENOUGH ROOM	
                EXX	
                LD	H,L	
                EXX	
                PUSH	HL	
                LD	B,0	
                LD	C,A	
                ADD	HL,BC	
                LD	BC,(FREE)	
                SBC	HL,BC		;IS STRING LAST?	
                POP	HL	
                JR	Z,STORS0	
                LD	H,B	
                LD	L,C		;DESTINATION	
;
                OR	A		;V5 optimisation	
                JR	Z,STORS0	
                LD	A,E	
STORS2:         LD	E,A	
                DEC	E	
                AND	E	
                JR	NZ,STORS2	
                SCF	
                RL	E	
                LD	A,E	
                EXX	
                LD	H,A	
                EXX	
;
STORS0:         SCF	
STORS1:         CALL	STORE4		;PRESERVES CARRY!	
                LD	B,0	
                LD	C,E	
                EX	DE,HL	
                POP	HL	
                DEC	C	
                INC	C	
                RET	Z		;NULL STRING	
                LDIR	
                RET	NC		;STRING REPLACED	
                LD	(FREE),DE	
CHECK:          PUSH	HL	
                LD	HL,(FREE)	
                INC	H	
                SBC	HL,SP	
                POP	HL	
                RET	C	
                XOR	A	
                JP	ERROR_		;"No room"	
;
STORS3:         LD	C,E	
                PUSH	IX	
                POP	DE	
                XOR	A	
                LD	B,A	
                CP	C	
                JR	Z,STORS5	
                LDIR	
STORS5:         LD	A,CR	
                LD	(DE),A	
                RET	
;
; SAVRET - SAVE 'RETURNed' PARAMETER INFO
;
SAVRET:         LD	(IX+0),L		;Formal VARPTR	
                LD	(IX+1),H	
                LD	(IX+2),A	
                EX	(SP),IY	
                PUSH	AF	
                PUSH	IY	
                PUSH	IX	
                CALL	NXT	
                CALL	VAR_	
                POP	IX	
                LD	(IX+4),L		;Actual VARPTR	
                LD	(IX+5),H	
                LD	(IX+6),A	
                POP	IY	
                POP	AF	
                LD	BC,8	
                ADD	IX,BC	
                JR	ARGUE0	
;
;ARGUE: TRANSFER FN OR PROC ARGUMENTS FROM THE
; CALLING STATEMENT TO THE DUMMY VARIABLES VIA
; THE STACK.  IT MUST BE DONE THIS WAY TO MAKE
; PROCFRED(A,B)    DEF PROCFRED(B,A)     WORK.
;   Inputs: DE addresses parameter list
;           IY addresses dummy variable list
;           IX addresses RETURNed parameter data block
;  Outputs: DE,IY updated
; Destroys: Everything
;
ARGUE:          LD	A,-1	
                PUSH	AF		;PUT MARKER ON STACK	
ARGUE1:         INC	IY		;BUMP PAST ( | ,	
                INC	DE	
                PUSH	DE	
                LD	B,0	
                CALL	NXT	
                CP	TRETURN	
                JR	NZ,ARGUE9	
                INC	IY		;SKIP 'RETURN'	
                CALL	NXT	
                INC	B		;FLAG 'RETURN'	
ARGUE9:         PUSH	BC	
                PUSH	IX	
                CALL	GETVAR		;FORMAL PARAMETER	
                JR	C,ARGERR	
                CALL	NZ,PUTVAR	
                POP	IX	
                POP	BC	
                POP	DE	
                PUSH	HL		;VARPTR	
                PUSH	AF	
                PUSH	DE	
                DEC	B	
                JR	Z,SAVRET	
                EX	(SP),IY	
ARGUE0:         BIT	6,A		;ARRAY?	
                JR	NZ,ARGUE3	
                OR	A		;TYPE	
                JP	M,ARGUE2	;STRING	
                PUSH	IX	
                CALL	EXPRN		;ACTUAL PARAMETER	
                POP	IX	
                EX	(SP),IY	
                POP	DE	
                POP	AF	
                EXX	
                PUSH	HL	
                EXX	
                PUSH	HL	
                LD	B,A	
                PUSH	BC	
                JR	ARGUE4	
;
ARGUE2:         PUSH	IX	
                CALL	EXPRS	
                EXX	
                POP	BC	
                EX	(SP),IY	
                POP	DE	
                EXX	
                POP	AF	
                CALL	PUSHS	
                EXX	
                PUSH	BC	
                POP	IX	
ARGUE4:         CALL	NXT	
                CP	','	
                JR	NZ,ARGUE5	
                LD	A,(DE)	
                CP	','	
                JR	Z,ARGUE1	;ANOTHER	
ARGERR:         LD	A,31	
                JP	ERROR_		;"Bad arguments"	
;
ARGUE3:         PUSH	IX	
                CALL	NXT	
                CALL	GETVAR	
                JR	C,ARGERR	
                LD	C,(IX+0)	
                LD	B,(IX+1)	
                POP	IX	
                CALL	NXT	
                EX	(SP),IY	
                POP	DE	
                POP	AF	
                PUSH	BC		;STACK ARRAY POINTER	
                PUSH	AF		;STACK TYPE	
                JR	ARGUE4	
;
ARGUE5:         CALL	BRAKET	
                LD	A,(DE)	
                CP	')'	
                JR	NZ,ARGERR	
                INC	DE	
UNSTAK:         EXX	
ARGUE6:         POP	BC	
                LD	A,B	
                INC	A	
                EXX	
                RET	Z		;MARKER POPPED	
                EXX	
                DEC	A	
                BIT	6,A		;ARRAY	
                JR	NZ,ARGUE8	
                OR	A	
                JP	M,ARGUE7	;STRING	
                POP	HL	
                EXX	
                POP	HL	
                EXX	
                POP	IX	
                CALL	STOREN		;WRITE TO DUMMY	
                JR	ARGUE6	
;
ARGUE7:         CALL	POPS	
                POP	IX	
                CALL	STACCS	
                JR	ARGUE6	
;
ARGUE8:         POP	BC		;ARRAY POINTER	
                POP	IX	
                LD	(IX+0),C	
                LD	(IX+1),B	
                JR	ARGUE6	
;
;Restore RETURNed parameters, via the stack to ensure that
; PROCFRED(A,B)    DEF PROCFRED(RETURN B,RETURN A)  works.
;
RETXFR:         LD	A,-1	
                PUSH	AF		;PUT MARKER ON STACK	
RETXF1:         EXX	
                LD	L,(IX+4)	;Actual parameter (destination)	
                LD	H,(IX+5)	
                PUSH	HL		;STACK VARPTR	
                LD	L,(IX+0)	;Formal parameter (source)	
                LD	H,(IX+1)	
                LD	A,(IX+2)	
                BIT	6,A		;ARRAY?	
                JR	NZ,RETXF3	
                OR	A		;TYPE	
                JP	M,RETXF2	;STRING	
                PUSH	HL	
                EX	(SP),IX	
                CALL	LOADN	
                POP	IX	
                EXX			;STACK VALUE	
                PUSH	HL	
                EXX	
                PUSH	HL	
RETXF6:         LD	B,(IX+6)	
                PUSH	BC		;TYPE & EXPONENT	
RETXF5:         CALL	CHECK		;CHECK ROOM	
                JR	RETXF4	
;
RETXF3:         LD	E,(HL)	
                INC	HL	
                LD	D,(HL)	
                PUSH	DE		;STACK ARRAY POINTER	
                JR	RETXF6	
;
RETXF2:         PUSH	HL	
                EX	(SP),IX	
                CALL	LOADS	
                POP	IX	
                LD	A,(IX+6)	
                EXX	
                PUSH	IX	
                POP	HL	
                EXX	
                CALL	PUSHS	
                EXX	
                PUSH	HL	
                POP	IX	
                EXX	
RETXF4:         LD	DE,8	
                ADD	IX,DE	
                EXX	
                DJNZ	RETXF1	
                JP	UNSTAK	
;
;Restore 'RETURNed' parameters,
;
RESRET:         POP	BC		;B = 'RETURN' COUNT	
                LD	H,0	
                LD	L,B	
                ADD	HL,HL	
                ADD	HL,HL	
                ADD	HL,HL		;RETURN COUNT * 8	
                ADD	HL,SP	
                LD	IX,0	
                ADD	IX,SP		;ADDRESS PARAMETER LIST	
                PUSH	AF	
                PUSH	DE	
                PUSH	HL	
                EXX	
                PUSH	BC	
                PUSH	DE	
                EXX	
                LD	A,B	
                LD	HL,ACCS	
                LD	DE,BUFFER	
                LD	BC,255	
                LDIR	
                LD	B,A	
                CALL	RETXFR		;TRANSFER VIA STACK	
                LD	HL,BUFFER	
                LD	DE,ACCS	
                LD	BC,255	
                LDIR	
                EXX	
                POP	DE	
                POP	BC	
                EXX	
                POP	HL	
                POP	DE	
                POP	AF	
                JR	RESAR1	
;
; Restore LOCAL array or memory block:
;
RESARR:         POP	BC	
                BIT	7,B		;String array?	
                POP	HL	
                POP	BC	
                ADD	HL,BC	
                ADD	HL,SP	
                CALL	NZ,FREESA	;Free string array	
RESAR1:         LD	SP,HL	
                INC	IX		;Flag something restored	
                JR	RESLO1	
;
; RESLOC - Restore local variables/arrays or DATA/ERROR status from stack
;   Inputs: A = 0 if everything OK, bit0 set if DATPTR, bit1 set if ERRTRP
;  Outputs: Z if nothing was restored, NZ if something was restored
; Destroys: A,B,C,D,E,H,L,H',L',IX,SP,flags
;
RESLOC:         POP	DE		;Return address	
                LD	IX,0		;To flag nothing was restored	
RESLO1:         POP	BC		;Marker ?	
                LD	HL,LOCCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,RESLO2	;Something to restore	
                OR	A	
                JR	NZ,RESLO8	
                LD	HL,RETCHK	
                SBC	HL,BC	
                JR	Z,RESRET	
                LD	HL,ARRCHK	
                OR	A	
                SBC	HL,BC	
                JR	Z,RESARR	
RESLO8:         PUSH	IX	
                POP	HL	
                LD	A,H	
                OR	L	
RESLO0:         PUSH	BC		;Put back marker	
                EX	DE,HL	
                JP	(HL)		;Return	
;
RESLO2:         POP	IX		;Variable pointer	
                OR	A	
                JR	Z,RESLO3	;Everything allowed	
                PUSH	IX	
                POP	BC	
                BIT	0,A	
                JR	Z,RESLO6	;Bit 0 set, so	
                LD	HL,DATPTR	;test for DATPTR	
                SBC	HL,BC	
                JR	Z,RESLO3	
RESLO6:         OR	A	
                BIT	1,A	
                JR	Z,RESLO7	;Bit 1 set, so	
                LD	HL,ERRTRP	;test for ERRPTR	
                SBC	HL,BC	
                JR	Z,RESLO3	
RESLO7:         PUSH	BC		;Put back pointer	
                LD	BC,LOCCHK	
                JR	RESLO0	
;
RESLO3:         POP	BC		;Type / exponent	
                BIT	6,B	
                JR	NZ,RESLO4	;Array?	
                BIT	7,B	
                JR	NZ,RESLO5	;String?	
                POP	HL	
                EXX	
                POP	HL	
                EXX	
                BIT	4,B	
                JR	NZ,RESLO1	
                PUSH	AF	
                LD	A,B	
                CALL	STOREN		;Numeric	
                POP	AF	
                JR	RESLO1	
;
RESLO4:         POP	HL	
                BIT	4,B	
                JR	NZ,RESLO1	
                LD	(IX+0),L	;Array	
                LD	(IX+1),H	
                JR	RESLO1	
;
RESLO9:         LD	B,0	
                ADD	HL,BC	
                LD	SP,HL	
RESLGO:         JR	RESLO1	
;
RESLO5:         LD	HL,0	
                ADD	HL,SP	
                BIT	4,B	
                JR	NZ,RESLO9	
                PUSH	AF	
                PUSH	DE	
                LD	E,C	
                LD	A,B	
                CALL	STORES		;String	
                POP	DE	
                POP	AF	
                LD	SP,HL	
                JR	RESLGO	
;
;SAVLOC: SUBROUTINE TO STACK LOCAL PARAMETERS
;  OF A FUNCTION OR PROCEDURE.
;THERE IS A LOT OF STACK MANIPULATION - CARE!!
;   Inputs: IY is parameters pointer
;  Outputs: IY updated
;           A' incremented for each RETURN
; Destroys: A',A,B,C,D,E,H,L,IX,IY,F,SP
;
SAVLOC:         POP	DE		;RETURN ADDRESS	
SAVLO1:         INC	IY		;BUMP PAST ( | ,	
                CALL	NXT	
                CP	TRETURN	
                JR	NZ,SAVLO6	
                EX	AF,AF'	
                INC	A		;RETURN counter	
                EX	AF,AF'	
                INC	IY		;Bump past RETURN	
                CALL	NXT	
SAVLO6:         PUSH	DE	
                EXX	
                PUSH	BC	
                PUSH	DE	
                PUSH	HL	
                EXX	
                CALL	VAR_		;DUMMY VARIABLE	
                EXX	
                POP	HL	
                POP	DE	
                POP	BC	
                EXX	
                POP	DE	
                BIT	6,A		;ARRAY?	
                JR	NZ,SAVLO3	
                OR	A		;TYPE	
                JP	M,SAVLO2	;STRING	
                EXX	
                PUSH	HL		;SAVE H'L'	
                EXX	
                LD	B,A		;TYPE	
                CALL	LOADN	
                EXX	
                EX	(SP),HL	
                EXX	
                PUSH	HL	
                PUSH	BC	
                JR	SAVLO4	
;
SAVLO3:         LD	C,(IX+0)	;ARRAY POINTER	
                LD	B,(IX+1)	
                PUSH	BC		;SAVE TO STACK	
                PUSH	AF		;SAVE TYPE	
                JR	SAVLO4	
;
SAVLO2:         PUSH	AF		;STRING TYPE	
                PUSH	DE	
                EXX	
                PUSH	HL	
                EXX	
                CALL	LOADS	
                EXX	
                POP	HL	
                EXX	
                LD	C,E	
                POP	DE	
                CALL	CHECK	
                POP	AF		;LEVEL STACK	
                LD	HL,0	
                LD	B,L	
                SBC	HL,BC	
                ADD	HL,SP	
                LD	SP,HL	
                LD	B,A		;TYPE	
                PUSH	BC	
                JR	Z,SAVLO4	
                PUSH	DE	
                LD	DE,ACCS	
                EX	DE,HL	
                LD	B,L	
                LDIR			;SAVE STRING ON STACK	
                POP	DE	
SAVLO4:         PUSH	IX		;VARPTR	
                CALL	SAVLO5	
LOCCHK:         EQU	$	
SAVLO5:         CALL	CHECK	
                CALL	NXT	
                CP	','		;MORE?	
                JR	Z,SAVLO1	
                EX	DE,HL	
                JP	(HL)		;"RETURN"	
;
TERMQ:          CALL	NXT	
                CP	TELSE	
                RET	NC	
                CP	':'		;ASSEMBLER SEPARATOR	
                RET	NC	
                CP	CR	
                RET	
;
SPAN:           CALL	TERMQ	
                RET	Z	
                INC	IY	
                CP	'"'	
                CALL	Z,QUOTE	
                JR	SPAN	
;
EQUALS:         CALL	NXT	
                INC	IY	
                CP	'='	
                RET	Z	
                LD	A,4	
                JP	ERROR_		;"Mistake"	
;
FORMAT:         CP	TTAB	
                JR	Z,DOTAB	
                CP	TSPC	
                JR	Z,DOSPC	
                ; CP	'''	
                CP	39	; apostrophe
                RET	NZ	
                CALL	CRLF	
                XOR	A	
                RET	
;
DOTAB:          PUSH	BC	
                CALL	EXPRI	
                EXX	
                POP	BC	
                LD	A,(IY)	
                CP	','	
                JR	Z,DOTAB1	
                CALL	BRAKET	
                LD	A,L	
TABIT:          LD	HL,COUNT	
                CP	(HL)	
                RET	Z	
                PUSH	AF	
                CALL	C,CRLF	
                POP	AF	
                SUB	(HL)	
                JR	SPACES	
DOTAB1:         INC	IY	
                PUSH	BC	
                PUSH	HL	
                CALL	EXPRI	
                EXX	
                POP	DE	
                POP	BC	
                CALL	BRAKET	
                CALL	PUTCSR	
                XOR	A	
                RET	
;
DOSPC:          PUSH	BC	
                CALL	ITEMI	
                EXX	
                LD	A,L	
                POP	BC	
SPACES:         OR	A	
                RET	Z	
                PUSH	BC	
                LD	B,A	
FILL1:          LD	A,' '	
                CALL	OUTCHR	
                DJNZ	FILL1	
                POP	BC	
                XOR	A	
                RET	
;
PTEXT:          LD	HL,ACCS	
                INC	E	
PTEXT1:         DEC	E	
                RET	Z	
                LD	A,(HL)	
                INC	HL	
                CALL	OUTCHR	
                JR	PTEXT1	
;
FETCHS:         PUSH	AF	
                PUSH	BC	
                PUSH	HL	
                EX	(SP),IY	
                CALL	XTRACT	
                CALL	NXT	
                EX	(SP),IY	
                POP	HL	
                POP	BC	
                POP	AF	
                RET	
;
LINES:          LD	DE,ACCS	
LINE1S:         LD	A,(HL)	
                LD	(DE),A	
                CP	CR	
                RET	Z	
                INC	HL	
                INC	E	
                JR	LINE1S	
;
XTRACT:         CALL	NXT	
                CP	'"'	
                INC	IY	
                JP	Z,CONS	
                DEC	IY	
                LD	DE,ACCS	
XTRAC1:         LD	A,(IY)	
                LD	(DE),A	
                CP	','	
                RET	Z	
                CP	CR	
                RET	Z	
                INC	IY	
                INC	E	
                JR	XTRAC1	
;
DSRCH:          LD	A,TDATA	
SEARCHex:         LD	B,0	
SRCH1:          LD	C,(HL)	
                INC	C	
                DEC	C	
                JR	Z,SRCH2		;FAIL	
                INC	HL	
                INC	HL	
                INC	HL	
                CP	(HL)	
                RET	Z	
                DEC	C	
                DEC	C	
                DEC	C	
                ADD	HL,BC	
                JP	SRCH1	
SRCH2:          DEC	HL		;POINT TO CR	
                SCF	
                RET	
;
; NSCAN - scan for token at start of line, with nesting of inner structures
; Alternative entry at NSCAN1 with L = level (used by CASE)
;
;   Inputs: B = token to find (1, start of line)
;           C = token to find (2, start of line)
;           E = token to nest (end of line)
;           D = token to unnest (start of line)
;           IY = start search area (line length byte)
;  Outputs: NZ if not found
;           Z if found, IY points to byte after token
; Destroys: A,B,C,L,IY,F
;
NSCAN:          LD	L,0		;nest level	
NSCAN1:         LD	A,(IY)		;get line length	
                OR	A		;test zero = end of prog	
                JR	Z,NSCAN6	
                LD	A,(IY+3)	;initial token	
                CP	B		;test value reqd	
                JR	Z,NSCAN3	;found (1)	
                CP	C	
                JR	Z,NSCAN3	;found (2)	
NSCAN7:         CP	D		;unnest?	
                JR	Z,NSCAN5	
NSCAN2:         PUSH	BC	
                LD	B,0	
                LD	C,(IY)	
                ADD	IY,BC		;go to next line	
                LD	A,(IY-2)	
                CP	E		;nest?	
                LD	A,C	
                POP	BC	
                JR	NZ,NSCAN1	;continue	
                CP	5		;empty line ?	
                JR	C,NSCAN1	;continue	
                INC	L		;increment nest level	
                JR	NSCAN1		;continue	
;
NSCAN3:         INC	L	
                DEC	L	
                JR	NZ,NSCAN7	
NSCAN4:         LD	BC,4	
                ADD	IY,BC	
                XOR	A		;Z	
                RET	
;
NSCAN5:         DEC	L		;decrement nest level	
                JP	P,NSCAN2	
                JR	NSCAN4	
;
NSCAN6:         OR	1		;NZ	
                RET	
;
; WSRCH - search for token, with nesting of inner structures
;
;   Inputs: B = token to find or unnest (anywhere)
;           C = token to nest (anywhere), ignore after EXITex
;           D = ordinal (1 = find first token, 2 = second)
;           IY = address to start looking
;  Outputs: IY points to byte after that found
;           if not found abort to END
; Destroys: A,D,IY,F
;
WSRCH:          LD	A,(IY)	
                INC	IY	
                CP	'"'	
                CALL	Z,QUOTE	
                CP	TREM	
                JR	Z,WSRCHM	
                CP	TEXIT	
                JR	Z,WSRCHE	
                CP	B	
                JR	Z,WSRCHX	
                CP	C	
                JR	Z,WSRCHP	
                CP	CR	
                JR	NZ,WSRCH	
WSRCH1:         LD	A,(IY)			;Line length	
                INC	IY	
                OR	A	
                JP	Z,END	
                INC	IY	
                INC	IY			;Skip line number	
                LD	A,(IY)	
                CP	TDATA	
                JR	NZ,WSRCH	
WSRCHM:         LD	A,(IY)	
                INC	IY	
                CP	CR	
                JR	NZ,WSRCHM		;Skip to end of line	
                JR	WSRCH1	
;
WSRCHP:         INC	D	
                JR	WSRCH	
;
WSRCHX:         DEC	D	
                JR	NZ,WSRCH	
                RET	
;
WSRCHE:         CALL	NXT	
                INC	IY	
                JR	WSRCH	
;
; QUOTE - skip quoted string
;
QUOTE:          LD	A,(IY)	
                INC	IY	
                CP	CR	
                JP	Z,MISQUO	
                CP	'"'	
                JR	NZ,QUOTE	
                RET	
;
MISQUO:         LD	A,9	
                JP	ERROR_		;"Missing quote"	
;
; X14OR5 - multiply by 1, 4 or 5
;   Inputs: DE = number to be multiplied
;           A = 1, 4 or 5 (else multiply by 4)
;  Outputs: DE = DE * A
;           Carry set if overflow
; Destroys: D,E,H,L,F
;
X14OR5:         LD	H,D	
                LD	L,E	
                CP	1	
                RET	Z	
                CP	5	
                ADD	HL,HL	
                RET	C	
                ADD	HL,HL	
                RET	C	
                EX	DE,HL	
                RET	NZ	
                ADD	HL,DE	
                EX	DE,HL	
                RET	
;
; MUL16 - 16-bit multiply
;   Inputs: HL = number to be multiplied
;           BC = multiplier
;  Outputs: HL = HL * BC
;           Carry set if overflow
; Destroys: A,D,E,H,L,F
;
MUL16:          EX	DE,HL	
                LD	HL,0	
                LD	A,16	
MUL161:         ADD	HL,HL	
                RET	C		;OVERFLOW	
                SLA	E	
                RL	D	
                JR	NC,MUL162	
                ADD	HL,BC	
                RET	C	
MUL162:         DEC	A	
                JR	NZ,MUL161	
                RET	
;
CHANEL:         CALL	NXT	
                CP	'#'	
                LD	A,45	
                JP	NZ,ERROR_	;"Missing #"	
CHNL:           INC	IY		;SKIP '#'	
                CALL	ITEMI	
                EXX	
                EX	DE,HL	
                RET	
;
; FREESA - Free members of a string array if adjacent to the top of heap
;   Inputs: BC = length of array (= 4 * number of elements)
;           HL addresses array first byte *above* array
;  Outputs: NZ if any array element freed, Z if none
; Destroys: nothing
;
FREESA:         PUSH	AF	
FREES0:         PUSH	BC	
                PUSH	DE	
                PUSH	HL	
                XOR	A	
                LD	D,B	
                LD	E,C	
                LD	B,A	
FREES1:         PUSH	DE	
                DEC	HL	
                LD	D,(HL)	
                DEC	HL	
                LD	E,(HL)	
                DEC	HL	
                LD	C,(HL)	
                DEC	HL	
                PUSH	HL	
                LD	HL,(FREE)	
                EX	DE,HL	
                ADD	HL,BC	
                SBC	HL,DE	
                JR	NZ,FREES2	
                ADD	HL,DE	
                SBC	HL,BC	
                LD	(FREE),HL	
                OR	H	
FREES2:         POP	DE	
                POP	HL	
                LD	C,4	
                OR	A	
                SBC	HL,BC	
                EX	DE,HL	
                JR	NZ,FREES1	
                OR	A	
                POP	HL	
                POP	DE	
                POP	BC	
                OR	A	
                JR	NZ,FREES0	
                POP	AF	
                RET	
;
;                END	
; --- End exec.asm ---

; --- Begin main.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;                XDEF	NEWIT	
;                XDEF	BAD	
;                XDEF	CLEAN	
;                XDEF	LINNUM	
;                XDEF	ERROR_	
;                XDEF	GETTOP	
;                XDEF	DEL	
;                XDEF	LISTIT	
;
;BBC BASIC INTERPRETER - Z80 VERSION
;COMMANDS AND COMMON MODULE - "MAIN"
;(C) COPYRIGHT R.T.RUSSELL 1981-2024
;
;THE NAME BBC BASIC IS USED WITH THE PERMISSION
;OF THE BRITISH BROADCASTING CORPORATION AND IS
;NOT TRANSFERRABLE TO A FORKED OR DERIVED WORK.
;
;VERSION 2.3, 07-05-1984
;VERSION 3.0, 01-03-1987
;VERSION 5.0, 31-05-2024
;VERSION 5.1, 10-08-2024
;
;                XREF	XEQ	
;                XREF	RUN0	
;                XREF	CHAIN0	
;                XREF	TERMQ	
;                XREF	MUL16	
;                XREF	X14OR5	
;                XREF	SPACES	
;                XREF	ESCAPE	
;                XREF	CHECK	
;                XREF	SEARCH	
;
;                XREF	OSWRCH	
;                XREF	OSLINE	
;                XREF	OSINIT	
;                XREF	OSLOAD	
;                XREF	OSSAVE	
;                XREF	OSBGET	
;                XREF	OSBPUT	
;                XREF	OSSHUT	
;                XREF	OSSTAT	
;                XREF	PROMPT	
;                XREF	LTRAP	
;                XREF	OSCLI	
;                XREF	RESET	
;
;                XREF	COMMA	
;                XREF	BRAKET	
;                XREF	ZERO	
;                XREF	ITEMI	
;                XREF	EXPRI	
;                XREF	EXPRS	
;                XREF	DECODE	
;                XREF	LOADN	
;                XREF	SFIX	
;
;                XDEF	NXT	
;                XDEF	NLIST	
;                XDEF	START	
;                XDEF	OUTCHR	
;                XDEF	OUT	
;                XDEF	ERROR_	
;                XDEF	EXTERR	
;                XDEF	REPORT	
;                XDEF	CLOOP	
;                XDEF	WARM	
;                XDEF	CLEAR	
;                XDEF	CRLF	
;                XDEF	SAYLN	
;                XDEF	LOAD0	
;                XDEF	TELL	
;                XDEF	FINDL	
;                XDEF	GETTOP	
;                XDEF	SETLIN	
;                XDEF	GETVAR	
;                XDEF	PUTVAR	
;                XDEF	GETDEF	
;                XDEF	LOCATE	
;                XDEF	CREATE	
;                XDEF	PBCDL	
;                XDEF	LEXAN2	
;                XDEF	RANGE	
;                XDEF	VERMSG	
;                XDEF	KEYWDS	
;                XDEF	KEYWDL	
;
;                XREF	PAGE_	
;                XREF	ACCS	
;                XREF	BUFFER	
;                XREF	LOMEM	
;                XREF	HIMEM	
;                XREF	COUNT	
;                XREF	WIDTH	
;                XREF	FREE	
;                XREF	STAVAR	
;                XREF	DYNVAR	
;                XREF	ERRTXT	
;                XREF	ERR	
;                XREF	ERL	
;                XREF	CURLIN	
;                XREF	ERRTRP	
;                XREF	ONERSP	
;                XREF	FNPTR	
;                XREF	PROPTR	
;                XREF	AUTONO	
;                XREF	INCREM	
;                XREF	LISTON	
;                XREF	TRACEN	
;
; CR             EQU	0DH	
; LF             EQU	0AH	
; ESC            EQU	1BH	
;
TERROR:         EQU	85H	
TLINE:          EQU	86H	
TELSE:          EQU	8BH	
TTHEN:          EQU	8CH	
TLINO:          EQU	8DH	
TFN:            EQU	0A4H	
TTO:            EQU	0B8H	
TWHILE:         EQU	0C7H	
TCASE:          EQU	0C8H	
TWHEN:          EQU	0C9H	
TOF:            EQU	0CAH	
TENDCASE:       EQU	0CBH	
TOTHERWISE:     EQU	0CCH	
TENDIF:         EQU	0CDH	
TENDWHILE:      EQU	0CEH	
TDATA:          EQU	0DCH	
TDIM:           EQU	0DEH	
TFOR:           EQU	0E3H	
TGOSUB:         EQU	0E4H	
TGOTO:          EQU	0E5H	
TIF:            EQU	0E7H	
TLOCAL:         EQU	0EAH	
TNEXT:          EQU	0EDH	
TON:            EQU	0EEH	
TPROC:          EQU	0F2H	
TREM:           EQU	0F4H	
TREPEAT:        EQU	0F5H	
TRESTORE:       EQU	0F7H	
TTRACE:         EQU	0FCH	
TUNTIL:         EQU	0FDH	
TEXIT:          EQU	10H	
;
TOKLO:          EQU	8FH	
TOKHI:          EQU	93H	
OFFSET:         EQU	0CFH-TOKLO	
;
START:          JP	COLD	
                JP	WARM	
                JP	ESCAPE	
                JP	EXTERR	
                JP	TELL	
                JP	TEXT_	
                JP	ITEMI	
                JP	EXPRI	
                JP	EXPRS	
                JP	OSCLI	
                JP	OSBGET	
                JP	OSBPUT	
                JP	OSSTAT	
                JP	OSSHUT	
COLD:           LD	HL,STAVAR	;COLD START	
                LD	SP,HL	
                LD	(HL),10	
                INC	L	
                LD	(HL),9	
                INC	L	
                XOR	A	
PURGE:          LD	(HL),A		;CLEAR SCRATCHPAD	
                INC	L	
                JR	NZ,PURGE	
                LD	A,37H		;V3.0	
                LD	(LISTON),A	
                LD	HL,NOTICE	
                LD	(ERRTXT),HL	
                CALL	OSINIT	
                LD	(HIMEM),DE	
                LD	(PAGE_),HL	
                CALL	NEWIT	
                JP	NZ,CHAIN0	;AUTO-RUN	
                CALL	TELL	
VERMSG:         DB	"BBC BASIC (Z80) Version 5.00  "	
                DB	CR	
                DB	LF	
NOTICE:         DB	"(C) Copyright R.T.Russell 2024"	
                DB	CR	
                DB	LF	
                DB	0	
WARM:           DB	0F6H	
CLOOP:          SCF	
                LD	SP,(HIMEM)	
                CALL	PROMPT		;PROMPT USER	
                LD	HL,LISTON	
                LD	A,(HL)	
                AND	0FH		;LISTO	
                OR	30H		;OPT 3	
                LD	(HL),A	
                SBC	HL,HL		;HL <- 0 (V3.0)	
                LD	(ERRTRP),HL	
                LD	(ONERSP),HL	
                LD	(CURLIN),HL	;For CMOS EDIT->LIST	
                LD	HL,(AUTONO)	
                PUSH	HL	
                LD	A,H	
                OR	L	
                JR	Z,NOAUTO	
                PUSH	HL	
                CALL	PBCD		;AUTO NUMBER	
                POP	HL	
                LD	BC,(INCREM)	
                LD	B,0	
                ADD	HL,BC	
                JP	C,TOOBIGmn	
                LD	(AUTONO),HL	
                LD	A,' '	
                CALL	OUTCHR	
NOAUTO:         LD	HL,ACCS	
                CALL	OSLINE		;GET CONSOLE INPUT	
                XOR	A	
                LD	(COUNT),A	
                LD	IY,ACCS	
                LD	HL,COMNDS	
                CALL	LEX0	
                POP	HL	
                JR	NZ,NOTCMD	
                ADD	A,A	
                LD	C,A	
                LD	A,H	
                OR	L	
                JR	NZ,INAUTO	
                LD	B,A	
                LD	HL,CMDTABmn	
                ADD	HL,BC	
                LD	A,(HL)		;TABLE ENTRY	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                INC	IY	
                CALL	NXT	
                JP	(HL)		;EXECUTE COMMAND	
;
INAUTO:         LD	IY,ACCS	
NOTCMD:         LD	A,H	
                OR	L	
                CALL	Z,LINNUM	
                CALL	NXT	
                LD	DE,BUFFER	
                LD	C,1		;LEFT MODE	
                PUSH	HL	
                CALL	LEXAN2		;LEXICAL ANALYSIS	
                POP	HL	
                LD	(DE),A		;TERMINATOR	
                XOR	A	
                LD	B,A	
                LD	C,E		;BC=LINE LENGTH	
                INC	DE	
                LD	(DE),A		;ZERO NEXT	
                LD	A,H	
                OR	L	
                LD	IY,BUFFER	;FOR XEQ	
                JP	Z,XEQ		;DIRECT MODE	
                PUSH	BC	
                CALL	FINDL	
                CALL	Z,DEL	
                POP	BC	
                LD	A,C	
                OR	A	
                JR	Z,CLOOP2	;DELETE LINE ONLY	
                ADD	A,4	
                LD	C,A		;LENGTH INCLUSIVE	
                PUSH	DE		;LINE NUMBER	
                PUSH	BC		;SAVE LINE LENGTH	
                EX	DE,HL	
                PUSH	BC	
                CALL	GETTOP	
                POP	BC	
                PUSH	HL	
                ADD	HL,BC	
                PUSH	HL	
                INC	H	
                XOR	A	
                SBC	HL,SP	
                POP	HL	
                JP	NC,ERROR_	;"No room"	
                EX	(SP),HL	
                PUSH	HL	
                INC	HL	
                OR	A	
                SBC	HL,DE	
                LD	B,H		;BC=AMOUNT TO MOVE	
                LD	C,L	
                POP	HL	
                POP	DE	
                JR	Z,ATEND	
                LDDR			;MAKE SPACE	
ATEND:          POP	BC		;LINE LENGTH	
                POP	DE		;LINE NUMBER	
                INC	HL	
                LD	(HL),C		;STORE LENGTH	
                INC	HL	
                LD	(HL),E		;STORE LINE NUMBER	
                INC	HL	
                LD	(HL),D	
                INC	HL	
                LD	DE,BUFFER	
                EX	DE,HL	
                DEC	C	
                DEC	C	
                DEC	C	
                LDIR			;ADD LINE	
                CALL	CLEAN	
CLOOP2:         JP	CLOOP	
;
;LIST OF TOKENS AND KEYWORDS.
;IF A KEYWORD IS FOLLOWED BY NUL THEN IT WILL
; ONLY MATCH WITH THE WORD FOLLOWED IMMEDIATELY
; BY A DELIMITER.
;
KEYWDS:         DB	80H	
                DB	"AND"	
                DB	94H	
                DB	"ABS"	
                DB	95H	
                DB	"ACS"	
                DB	96H	
                DB	"ADVAL"	
                DB	97H	
                DB	"ASC"	
                DB	98H	
                DB	"ASN"	
                DB	99H	
                DB	"ATN"	
                DB	9AH	
                DB	"BGET "	
                DB	0D5H	
                DB	"BPUT "	
                DB	0FH	
                DB	"BY "		; v5	
                DB	0FBH	
                DB	"COLOUR"	
                DB	0FBH	
                DB	"COLOR"	
                DB	0D6H	
                DB	"CALL"	
                DB	0C8H	
                DB	"CASE"		; v5	
                DB	0D7H	
                DB	"CHAIN"	
                DB	0BDH	
                DB	"CHR$"	
                DB	0D8H	
                DB	"CLEAR "	
                DB	0D9H	
                DB	"CLOSE "	
                DB	0DAH	
                DB	"CLG "	
                DB	0DBH	
                DB	"CLS "	
                DB	9BH	
                DB	"COS"	
                DB	9CH	
                DB	"COUNT "	
                DB	01H	
                DB	"CIRCLE"	; v5	
                DB	0DCH	
                DB	"DATA"	
                DB	9DH	
                DB	"DEG"	
                DB	0DDH	
                DB	"DEF"	
                DB	81H	
                DB	"DIV"	
                DB	0DEH	
                DB	"DIM"	
                DB	0DFH	
                DB	"DRAW"	
                DB	0E1H	
                DB	"ENDPROC "	
                DB	0CEH	
                DB	"ENDWHILE "	; v5	
                DB	0CBH	
                DB	"ENDCASE "	; v5	
                DB	0CDH	
                DB	"ENDIF "	; v5	
                DB	0E0H	
                DB	"END "	
                DB	0E2H	
                DB	"ENVELOPE"	
                DB	8BH	
                DB	"ELSE"	
                DB	0A0H	
                DB	"EVAL"	
                DB	9EH	
                DB	"ERL "	
                DB	85H	
                DB	"ERROR"	
                DB	0C5H	
                DB	"EOF "	
                DB	82H	
                DB	"EOR"	
                DB	9FH	
                DB	"ERR "	
                DB	10H	
                DB	"EXIT "		; v5	
                DB	0A1H	
                DB	"EXP"	
                DB	0A2H	
                DB	"EXT "	
                DB	02H	
                DB	"ELLIPSE"	; v5	
                DB	0E3H	
                DB	"FOR"	
                DB	0A3H	
                DB	"FALSE "	
                DB	03H	
                DB	"FILL"		; v5	
                DB	0A4H	
                DB	"FN"	
                DB	0E5H	
                DB	"GOTO"	
                DB	0BEH	
                DB	"GET$"	
                DB	0A5H	
                DB	"GET"	
                DB	0E4H	
                DB	"GOSUB"	
                DB	0E6H	
                DB	"GCOL"	
                DB	93H	
                DB	"HIMEM "	
                DB	0E8H	
                DB	"INPUT"	
                DB	0E7H	
                DB	"IF"	
                DB	0BFH	
                DB	"INKEY$"	
                DB	0A6H	
                DB	"INKEY"	
                DB	0A8H	
                DB	"INT"	
                DB	0A7H	
                DB	"INSTR("	
                DB	0CH	
                DB	"INSTALL"	; v5	
                DB	86H	
                DB	"LINE"	
                DB	92H	
                DB	"LOMEM "	
                DB	0EAH	
                DB	"LOCAL"	
                DB	0C0H	
                DB	"LEFT$("	
                DB	0A9H	
                DB	"LEN"	
                DB	0E9H	
                DB	"LET"	
                DB	0ABH	
                DB	"LOG"	
                DB	0AAH	
                DB	"LN"	
                DB	0C1H	
                DB	"MID$("	
                DB	0EBH	
                DB	"MODE"	
                DB	83H	
                DB	"MOD"	
                DB	0ECH	
                DB	"MOVE"	
                DB	04H	
                DB	"MOUSE"		; v5	
                DB	0EDH	
                DB	"NEXT"	
                DB	0ACH	
                DB	"NOT"	
                DB	0EEH	
                DB	"ON"	
                DB	87H	
                DB	"OFF "	
                DB	0CAH	
                DB	"OF "		; v5	
                DB	05H	
                DB	"ORIGIN"	; v5	
                DB	84H	
                DB	"OR"	
                DB	8EH	
                DB	"OPENIN"	
                DB	0AEH	
                DB	"OPENOUT"	
                DB	0ADH	
                DB	"OPENUP"	
                DB	0FFH	
                DB	"OSCLI"	
                DB	0CCH	
                DB	"OTHERWISE"	; v5	
                DB	0F1H	
                DB	"PRINT"	
                DB	90H	
                DB	"PAGE "	
                DB	8FH	
                DB	"PTR "	
                DB	0AFH	
                DB	"PI "	
                DB	0F0H	
                DB	"PLOT"	
                DB	0B0H	
                DB	"POINT("	
                DB	0F2H	
                DB	"PROC"	
                DB	0B1H	
                DB	"POS "	
                DB	0EH	
                DB	"PUT"		; Token changed	
                DB	06H	
                DB	"QUIT "		; v5	
                DB	0F8H	
                DB	"RETURN "	
                DB	0F5H	
                DB	"REPEAT"	
                DB	0F6H	
                DB	"REPORT "	
                DB	0F3H	
                DB	"READ"	
                DB	0F4H	
                DB	"REM"	
                DB	0F9H	
                DB	"RUN "	
                DB	0B2H	
                DB	"RAD"	
                DB	0F7H	
                DB	"RESTORE"	
                DB	0C2H	
                DB	"RIGHT$("	
                DB	0B3H	
                DB	"RND "	
                DB	07H	
                DB	"RECTANGLE"	; v5	
                DB	88H	
                DB	"STEP"	
                DB	0B4H	
                DB	"SGN"	
                DB	0B5H	
                DB	"SIN"	
                DB	0B6H	
                DB	"SQR"	
                DB	89H	
                DB	"SPC"	
                DB	0C3H	
                DB	"STR$"	
                DB	0C4H	
                DB	"STRING$("	
                DB	0D4H	
                DB	"SOUND"	
                DB	0FAH	
                DB	"STOP "	
                DB	0C6H	
                DB	"SUM"		; v5	
                DB	08H	
                DB	"SWAP"		; v5	
                DB	09H	
                DB	"SYS"		; v5	
                DB	0B7H	
                DB	"TAN"	
                DB	8AH	
                DB	"TAB("	
                DB	8CH	
                DB	"THEN"	
                DB	91H	
                DB	"TIME "	
                DB	0AH	
                DB	"TINT"	
                DB	0B8H	
                DB	"TO"	
                DB	0FCH	
                DB	"TRACE"	
                DB	0B9H	
                DB	"TRUE "	
                DB	0FDH	
                DB	"UNTIL"	
                DB	0BAH	
                DB	"USR"	
                DB	0EFH	
                DB	"VDU"	
                DB	0BBH	
                DB	"VAL"	
                DB	0BCH	
                DB	"VPOS "	
                DB	0C7H	
                DB	"WHILE"		; v5	
                DB	0C9H	
                DB	"WHEN"		; v5	
                DB	0BH	
                DB	"WAIT "		; v5	
                DB	0FEH	
                DB	"WIDTH"	
;'LEFT' TOKENS:
                DB	0CFH	
                DB	"PTR"	
                DB	0D1H	
                DB	"TIME"	
                DB	0D3H	
                DB	"HIMEM"	
                DB	0D2H	
                DB	"LOMEM"	
                DB	0D0H	
                DB	"PAGE"	
;
                DB	11H	
                DB	"Missing "	
                DB	12H	
                DB	"No such "	
                DB	13H	
                DB	"Bad "	
                DB	14H	
                DB	" range"	
                DB	15H	
                DB	"variable"	
                DB	16H	
                DB	"Out of"	
                DB	17H	
                DB	"No "	
                DB	18H	
                DB	" space"	
                DB	19H	
                DB	"Not in a "	
                DB	1AH	
                DB	" loop"	
                DB	1BH	
                DB	" not "	
KEYWDL:         EQU	$-KEYWDS	
                DW	-1	
;
;LIST OF IMMEDIATE MODE COMMANDS:
;
COMNDS:         DB	80H	
                DB	"AUTO"	
                DB	81H	
                DB	"DELETE"	
                DB	82H	
                DB	"LIST"	
                DB	83H	
                DB	"LOAD"	
                DB	84H	
                DB	"NEW "	
                DB	85H	
                DB	"OLD "	
                DB	86H	
                DB	"RENUMBER"	
                DB	87H	
                DB	"SAVE"	
                DW	-1	
;
;IMMEDIATE MODE COMMANDS:
;
CMDTABmn:         DW	AUTO	
                DW	DELETE	
                DW	LIST	
                DW	LOAD	
                DW	NEW	
                DW	OLD	
                DW	RENUM	
                DW	SAVE	
;
;ERROR MESSAGES:
;
ERRWDS:         DB	17H	
                DB	"room"	
                DB	0	
                DB	16H	
                DB	14H	
                DW	0	
                DB	"Multiple label"	
                DB	0	
                DB	"Mistake"	
                DB	0	
                DB	11H	
                DB	','	
                DB	0	
                DB	"Type mismatch"	
                DB	0	
                DB	19H	
                DB	TFN	
                DW	0	
                DB	11H	
                DB	'"'	
                DB	0	
                DB	13H	
                DB	TDIM	
                DB	0	
                DB	TDIM	
                DB	18H	
                DB	0	
                DB	19H	
                DB	TFN	
                DB	" or "	
                DB	TPROC	
                DB	0	
                DB	19H	
                DB	TPROC	
                DB	0	
                DB	13H	
                DB	"use of array"	
                DB	0	
                DB	13H	
                DB	"subscript"	
                DB	0	
                DB	"Syntax error"	
                DB	0	
                DB	"Escape"	
                DB	0	
                DB	"Division by zero"	
                DB	0	
                DB	"String too long"	
                DB	0	
                DB	"Number too big"	
                DB	0	
                DB	"-ve root"	
                DB	0	
                DB	"Log"	
                DB	14H	
                DB	0	
                DB	"Accuracy lost"	
                DB	0	
                DB	"Exponent"	
                DB	14H	
                DW	0	
                DB	12H	
                DB	15H	
                DB	0	
                DB	11H	
                DB	')'	
                DB	0	
                DB	13H	
                DB	"hex or binary"	
                DB	0	
                DB	12H	
                DB	TFN	
                DB	'/'	
                DB	TPROC	
                DB	0	
                DB	13H	
                DB	"call"	
                DB	0	
                DB	13H	
                DB	"arguments"	
                DB	0	
                DB	19H	
                DB	TFOR	
                DB	1AH	
                DB	0	
                DB	"Can't match "	
                DB	TFOR	
                DB	0	
                DB	13H	
                DB	TFOR	
                DB	' '	
                DB	15H	
                DW	0	
                DB	11H	
                DB	TTO	
                DW	0	
                DB	17H	
                DB	TGOSUB	
                DB	0	
                DB	TON	
                DB	" syntax"	
                DB	0	
                DB	TON	
                DB	14H	
                DB	0	
                DB	12H	
                DB	"line"	
                DB	0	
                DB	16H	
                DB	' '	
                DB	TDATA	
                DB	0	
                DB	19H	
                DB	TREPEAT	
                DB	1AH	
                DB	0	
                DB	13H	
                DB	TEXIT	
                DB	0	
                DB	11H	
                DB	'#'	
                DB	0	
                DB	19H		;46 Not in a WHILE loop	
                DB	TWHILE	
                DB	1AH	
                DB	0	
                DB	11H		;47 Missing ENDCASE	
                DB	TENDCASE	
                DB	0	
                DB	TOF		;48 OF not last	
                DB	1BH	
                DB	"last"	
                DB	0	
                DB	11H		;49 Missing ENDIF	
                DB	TENDIF	
                DB	0	
                DW	0	
                DB	0	
                DB	TON		;53 ON ERROR not LOCAL	
                DB	' '	
                DB	TERROR	
                DB	1BH	
                DB	TLOCAL	
                DB	0	
                DB	TDATA		;54 DATA not LOCAL	
                DB	1BH	
                DB	TLOCAL	
                DB	0	
;
;Indent tokens (first four needn't be at start of line):
;
TOKADD:         DB	TFOR	
                DB	TREPEAT	
                DB	TWHILE	
                DB	TCASE	
                DB	TELSE	
                DB	TWHEN	
                DB	TOTHERWISE	
LENADD:         EQU	$-TOKADD	
;
;Outdent tokens (first three needn't be at start of line):
;
TOKSUB:         DB	TNEXT	
                DB	TUNTIL	
                DB	TENDWHILE	
                DB	TENDCASE	
                DB	TENDIF	
                DB	TELSE	
                DB	TWHEN	
                DB	TOTHERWISE	
LENSUB:         EQU	$-TOKSUB	
;
;COMMANDS:
;
;DELETE line,line
;
DELETE:         CALL	DLPAIR	
DELET1:         LD	A,(HL)	
                OR	A	
                JR	Z,WARMNC	
                INC	HL	
                LD	E,(HL)	
                INC	HL	
                LD	D,(HL)	
                DEC	HL	
                DEC	HL	
                EX	DE,HL	
                SCF	
                SBC	HL,BC	
                EX	DE,HL	
                JR	NC,WARMNC	
                PUSH	BC	
                CALL	DEL	
                POP	BC	
                JR	DELET1	
;
;LISTO expr
;
LISTO:          INC	IY		;SKIP "O"	
                CALL	EXPRI	
                EXX	
                LD	A,L	
                LD	(LISTON),A	
                JP	CLOOP	
;
;LIST
;LIST line
;LIST line,line [IF string]
;LIST ,line
;LIST line,
;
LIST:           CP	'O'	
                JR	Z,LISTO	
                LD	C,1	
                LD	DE,BUFFER	
                CALL	LEXAN2	
                LD	(DE),A	
                LD	IY,BUFFER	
                CALL	DLPAIR	
                CALL	NXT	
                CP	TIF		;IF CLAUSE ?	
                LD	A,0		;INIT IF-CLAUSE LENGTH	
                JR	NZ,LISTB	
                INC	IY		;SKIP IF	
                CALL	NXT		;SKIP SPACES (IF ANY)	
                EX	DE,HL	
                PUSH	IY	
                POP	HL		;HL ADDRESSES IF CLAUSE	
                LD	A,CR	
                PUSH	BC	
                LD	BC,256	
                CPIR			;LOCATE CR	
                LD	A,C	
                CPL			;A = SUBSTRING LENGTH	
                POP	BC	
                EX	DE,HL	
LISTB:          LD	E,A		;IF-CLAUSE LENGTH	
                LD	A,B	
                OR	C	
                JR	NZ,LISTA	
                DEC	BC	
LISTA:          EXX	
                LD	IX,LISTON	
                LD	E,0		;INDENTATION COUNT	
                EXX	
                LD	A,20	
;
LISTC:          PUSH	BC		;SAVE HIGH LINE NUMBER	
                PUSH	DE		;SAVE IF-CLAUSE LENGTH	
                PUSH	HL		;SAVE PROGRAM POINTER	
                EX	AF,AF'	
                LD	A,(HL)	
                OR	A	
                JR	Z,WARMNC	
;
;CHECK IF PAST TERMINATING LINE NUMBER:
;
                LD	A,E		;A = IF-CLAUSE LENGTH	
                INC	HL	
                LD	E,(HL)	
                INC	HL	
                LD	D,(HL)		;DE = LINE NUMBER	
                DEC	HL	
                DEC	HL	
                PUSH	DE		;SAVE LINE NUMBER	
                EX	DE,HL	
                SCF	
                SBC	HL,BC	
                EX	DE,HL	
                POP	DE		;RESTORE LINE NUMBER	
WARMNC:         JP	NC,WARM	
                LD	C,(HL)		;C = LINE LENGTH + 4	
                LD	B,A		;B = IF-CLAUSE LENGTH	
;
;CHECK FOR IF CLAUSE:
;
                INC	HL	
                INC	HL	
                INC	HL		;HL ADDRESSES LINE TEXT	
                DEC	C	
                DEC	C	
                DEC	C	
                DEC	C		;C = LINE LENGTH	
                PUSH	DE		;SAVE LINE NUMBER	
                PUSH	HL		;SAVE LINE ADDRESS	
                XOR	A		;A <- 0	
                CP	B		;WAS THERE AN IF-CLAUSE	
                PUSH	IY	
                POP	DE		;DE ADDRESSES IF-CLAUSE	
                CALL	NZ,SEARCH	;SEARCH FOR IF CLAUSE	
                POP	HL		;RESTORE LINE ADDRESS	
                POP	DE		;RESTORE LINE NUMBER	
                PUSH	IY	
                CALL	Z,LISTIT	;LIST IF MATCH	
                POP	IY	
;
                EX	AF,AF'	
                DEC	A	
                CALL	LTRAP	
                POP	HL		;RESTORE POINTER	
                LD	E,(HL)	
                LD	D,0	
                ADD	HL,DE		;ADDRESS NEXT LINE	
                POP	DE		;RESTORE IF-CLAUSE LEN	
                POP	BC		;RESTORE HI LINE NUMBER	
                JR	LISTC	
;
;RENUMBER
;RENUMBER start
;RENUMBER start,increment
;RENUMBER ,increment
;
RENUM:          CALL	CLEAR		;USES DYNAMIC AREA	
                CALL	PAIR		;LOAD HL,BC	
                EXX	
                LD	HL,(PAGE_)	
                LD	DE,(LOMEM)	
RENUM1:         LD	A,(HL)		;BUILD TABLE	
                OR	A	
                JR	Z,RENUM2	
                INC	HL	
                LD	C,(HL)		;OLD LINE NUMBER	
                INC	HL	
                LD	B,(HL)	
                EX	DE,HL	
                LD	(HL),C	
                INC	HL	
                LD	(HL),B	
                INC	HL	
                EXX	
                PUSH	HL	
                ADD	HL,BC		;ADD INCREMENT	
                JP	C,TOOBIGmn	;"Too big"	
                EXX	
                POP	BC	
                LD	(HL),C	
                INC	HL	
                LD	(HL),B	
                INC	HL	
                EX	DE,HL	
                DEC	HL	
                DEC	HL	
                XOR	A	
                LD	B,A	
                LD	C,(HL)	
                ADD	HL,BC		;NEXT LINE	
                EX	DE,HL	
                PUSH	HL	
                INC	H	
                SBC	HL,SP	
                POP	HL	
                EX	DE,HL	
                JR	C,RENUM1	;CONTINUE	
                JP	ERROR_		;'No room' (A = 0)	
;
RENUM2:         EX	DE,HL	
                LD	(HL),-1	
                INC	HL	
                LD	(HL),-1	
                LD	DE,(LOMEM)	
                EXX	
                LD	HL,(PAGE_)	
RENUM3:         LD	C,(HL)	
                LD	A,C	
                OR	A	
                JR	Z,WARMNC	
                EXX	
                EX	DE,HL	
                INC	HL	
                INC	HL	
                LD	E,(HL)	
                INC	HL	
                LD	D,(HL)	
                INC	HL	
                PUSH	DE	
                EX	DE,HL	
                EXX	
                POP	DE	
                INC	HL	
                LD	(HL),E		;NEW LINE NUMBER	
                INC	HL	
                LD	(HL),D	
                INC	HL	
                DEC	C	
                DEC	C	
                DEC	C	
                LD	B,0	
RENUM7:         LD	A,TLINO	
                CPIR			;SEARCH FOR LINE NUMBER	
                JR	NZ,RENUM3	
                PUSH	BC	
                PUSH	HL	
                PUSH	HL	
                POP	IY	
                EXX	
                PUSH	HL	
                CALL	DECODE		;DECODE LINE NUMBER	
                POP	HL	
                EXX	
                LD	B,H	
                LD	C,L	
                LD	HL,(LOMEM)	
RENUM4:         LD	E,(HL)		;CROSS-REFERENCE TABLE	
                INC	HL	
                LD	D,(HL)	
                INC	HL	
                EX	DE,HL	
                OR	A		;CLEAR CARRY	
                SBC	HL,BC	
                EX	DE,HL	
                LD	E,(HL)		;NEW NUMBER	
                INC	HL	
                LD	D,(HL)	
                INC	HL	
                JR	C,RENUM4	
                EX	DE,HL	
                JR	Z,RENUM5	;FOUND	
                CALL	TELL	
                DB	"Failed at "	
                DB	0	
                EXX	
                PUSH	HL	
                EXX	
                POP	HL	
                CALL	PBCDL	
                CALL	CRLF	
                JR	RENUM6	
RENUM5:         POP	DE	
                PUSH	DE	
                DEC	DE	
                CALL	ENCODE		;RE-WRITE NUMBER	
RENUM6:         POP	HL	
                POP	BC	
                JR	RENUM7	
;
;AUTO
;AUTO start,increment
;AUTO start
;AUTO ,increment
;
AUTO:           CALL	PAIR	
                LD	(AUTONO),HL	
                LD	A,C	
                LD	(INCREM),A	
                JR	CLOOP0	
;
;BAD
;NEW
;
BAD:            CALL	TELL		;"Bad program'	
                DB	13H	
                DB	"program"	
                DB	CR	
                DB	LF	
                DB	0	
NEW:            CALL	NEWIT	
                JR	CLOOP0	
;
;LOAD filename
;
LOAD:           CALL	EXPRS		;GET FILENAME	
                LD	A,CR	
                LD	(DE),A	
                CALL	LOAD0	
                CALL	CLEAR	
                JR	WARM0	
;
;OLD
;
OLD:            LD	HL,(PAGE_)	
                PUSH	HL	
                INC	HL	
                INC	HL	
                INC	HL	
                LD	BC,252	
                LD	A,CR	
                CPIR	
                JR	NZ,BAD	
                LD	A,L	
                POP	HL	
                LD	(HL),A	
                CALL	CLEAN	
CLOOP0:         JP	CLOOP	
;
;SAVE filename
;
SAVE:           CALL	EXPRS		;FILENAME	
                LD	A,CR	
                LD	(DE),A	
                LD	DE,(PAGE_)	
                CALL	GETTOP	
                OR	A	
                SBC	HL,DE	
                LD	B,H		;LENGTH OF PROGRAM	
                LD	C,L	
                LD	HL,ACCS	
                CALL	OSSAVE	
WARM0:          JP	WARM	
;
;ERROR
;N.B. CARE NEEDED BECAUSE SP MAY NOT BE VALID (E.G. ABOVE HIMEM)
;
ERROR_:         LD	HL,ERRWDS	
                LD	C,A	
                OR	A	
                JR	Z,ERROR1	
                LD	B,A		;ERROR NUMBER	
                XOR	A	
ERROR0:         CP	(HL)	
                INC	HL	
                JR	NZ,ERROR0	
                DJNZ	ERROR0	
                JR	ERROR1		;MUST NOT PUSH HL HERE	
;
EXTERR:         POP	HL	
                LD	C,A	
ERROR1:         LD	(ERRTXT),HL	
                LD	HL,(ONERSP)	
                LD	A,H	
                OR	L	
                LD	SP,(HIMEM)	;MUST SET SP BEFORE 'CALL'	
                JR	Z,ERROR4	
                LD	SP,HL	
ERROR4:         LD	A,C		;ERROR NUMBER	
                CALL	SETLIN		;SP IS SET NOW	
                LD	(ERR),A	
                LD	(ERL),HL	
                OR	A	
                JR	Z,ERROR2	;'FATAL' ERROR	
                LD	HL,(ERRTRP)	
                LD	A,H	
                OR	L	
                PUSH	HL	
                POP	IY	
                JP	NZ,XEQ		;ERROR TRAPPED	
ERROR2:         LD	SP,(HIMEM)	
                SBC	HL,HL	
                LD	(AUTONO),HL	
                LD	(TRACEN),HL	;CANCEL TRACE	
                CALL	RESET		;RESET OPSYS	
                CALL	CRLF	
                CALL	REPORT		;MESSAGE	
                LD	HL,(ERL)	
                CALL	SAYLN	
                LD	E,0	
                CALL	C,OSSHUT	;CLOSE ALL FILES	
                CALL	CRLF	
                JR	CLOOP0	
;
;SUBROUTINES:
;
;
;LEX - SEARCH FOR KEYWORDS
;   Inputs: HL = start of keyword table
;           IY = start of match text
;  Outputs: If found, Z-flag set, A=token.
;           If not found, Z-flag reset, A=(IY).
;           IY updated (if NZ, IY unchanged).
; Destroys: A,B,H,L,IY,F
;
LEX:            LD	HL,KEYWDS	
LEX0:           LD	A,(IY)	
                LD	B,(HL)	
                INC	HL	
                CP	(HL)	
                JR	Z,LEX2	
                RET	C		;FAIL EXIT	
LEX1:           INC	HL	
                LD	A,(HL)	
                CP	160	
                JP	PE,LEX1	
                JR	LEX0	
;
LEX2:           PUSH	IY		;SAVE POINTER	
LEX3:           INC	HL	
                LD	A,(HL)	
                CP	160	
                JP	PO,LEX6		;FOUND	
                INC	IY	
                LD	A,(IY)	
                CP	(HL)	
                JR	NZ,LEX7	
                CP	161	
                JP	PE,LEX3	
LEX7:           LD	A,(IY)	
                CP	'.'	
                JR	Z,LEX6		;FOUND (ABBREV.)	
                CALL	RANGE1	
                JR	C,LEX5	
LEX4:           POP	IY		;RESTORE POINTER	
                JR	LEX1	
;
LEX5:           LD	A,(HL)	
                CP	' '	
                JR	NZ,LEX4	
                DEC	IY	
LEX6:           POP	AF	
                XOR	A	
                LD	A,B	
                RET	
;
;DEL - DELETE A PROGRAM LINE.
;   Inputs: HL addresses program line.
; Destroys: B,C,F
;
DEL:            PUSH	DE	
                PUSH	HL	
                PUSH	HL	
                LD	B,0	
                LD	C,(HL)	
                ADD	HL,BC	
                PUSH	HL	
                EX	DE,HL	
                CALL	GETTOP	
                SBC	HL,DE	
                LD	B,H	
                LD	C,L	
                POP	HL	
                POP	DE	
                LDIR			;DELETE LINE	
                POP	HL	
                POP	DE	
                RET	
;
;LOAD0 - LOAD A DISK FILE THEN CLEAN.
;   Inputs: Filename in ACCS (term CR)
; Destroys: A,B,C,D,E,H,L,F
;
;CLEAN - CHECK FOR BAD PROGRAM, FIND END OF TEXT
; AND WRITE FF FF.
; Destroys: A,B,C,H,L,F
;
LOAD0:          LD	DE,(PAGE_)	
                LD	HL,-256	
                ADD	HL,SP	
                SBC	HL,DE		;FIND AVAILABLE SPACE	
                LD	B,H	
                LD	C,L	
                LD	HL,ACCS	
                CALL	OSLOAD		;LOAD	
                CALL	NC,NEWIT	
                LD	A,0	
                JP	NC,ERROR_	;"No room"	
CLEAN:          CALL	GETTOP	
                DEC	HL	
                LD	(HL),-1		;WRITE &FFFF	
                DEC	HL	
                LD	(HL),-1	
                JR	CLEAR	
;
GETTOP:         LD	HL,(PAGE_)	
                LD	B,0	
                LD	A,CR	
GETOP1:         LD	C,(HL)	
                INC	C	
                DEC	C	
                JR	Z,GETOP2	
                ADD	HL,BC	
                DEC	HL	
                CP	(HL)	
                INC	HL	
                JR	Z,GETOP1	
                JP	BAD	
GETOP2:         INC	HL		;N.B. CALLED FROM NEWIT	
                INC	HL	
                INC	HL	
                RET	
;
;NEWIT - NEW PROGRAM THEN CLEAR
;   Destroys: H,L
;
;CLEAR - CLEAR ALL DYNAMIC VARIABLES INCLUDING
; FUNCTION AND PROCEDURE POINTERS.
;   Destroys: Nothing
;
NEWIT:          LD	HL,(PAGE_)	
                LD	(HL),0	
CLEAR:          PUSH	HL	
                PUSH	BC	
                PUSH	AF	
                CALL	GETTOP	
                LD	(LOMEM),HL	
                LD	(FREE),HL	
                LD	HL,DYNVAR	
                ; LD	B,2*(54+2)	
                LD	B,54+2*2
CLEAR1:         LD	(HL),0	
                INC	HL	
                DJNZ	CLEAR1	
                POP	AF	
                POP	BC	
                POP	HL	
                RET	
;
;LISTIT - LIST A PROGRAM LINE.
;    Inputs: HL addresses line
;            DE = line number (binary)
;	     E' = indentation count
;            IX addresses LISTON
;  Destroys: A,D,E,B',C',D',E',H',L',IY,F
;
LISTIT:         PUSH	HL	
                EX	DE,HL	
                PUSH	BC	
                CALL	PBCD	
                POP	BC	
                POP	HL	
                LD	A,(HL)	
                EXX	
                LD	HL,TOKSUB	
                LD	BC,LENSUB	
                CPIR	
                CALL	Z,INDSUB	
                CP	TENDCASE	
                CALL	Z,INDSUB	
                LD	A,' '	
                BIT	0,(IX)	
                CALL	NZ,OUTCHR	
                LD	A,E	
                ADD	A,A	
                BIT	1,(IX)	
                CALL	NZ,SPACES	
                EXX	
                LD	A,(HL)	
                LD	E,0	
                EXX	
                LD	BC,LENADD	
LIST5:          LD	HL,TOKADD	
                CPIR	
                CALL	Z,INDADD	
                CP	TCASE	
                CALL	Z,INDADD	
                EXX	
LIST8:          LD	A,(HL)	
                INC	HL	
                CP	CR	
                JR	Z,LIST9	
                LD	D,A	
                CP	TEXIT	
                JR	NZ,LIST6	
                SET	7,E	
LIST6:          CP	'"'	
                JR	NZ,LIST7	
                INC	E	
LIST7:          CALL	LOUT	
                LD	A,E	
                AND	81H	
                JR	NZ,LIST8	
                LD	A,(HL)	
                EXX	
                LD	HL,TOKSUB	
                LD	BC,3	
                CPIR	
                CALL	Z,INDSUB	
                LD	C,4	
                JR	LIST5	
;
LIST9:          LD	A,D	
                CP	TTHEN	
                EXX	
                CALL	Z,INDADD	
                EXX	
                JR	CRLF	
;
PRLINO:         PUSH	HL	
                POP	IY	
                PUSH	BC	
                CALL	DECODE	
                POP	BC	
                EXX	
                PUSH	BC	
                PUSH	DE	
                CALL	PBCDL	
                POP	DE	
                POP	BC	
                EXX	
                PUSH	IY	
                POP	HL	
                RET	
;
LOUT:           BIT	0,E	
                JR	NZ,OUTCHR	
                CP	TLINO	
                JR	Z,PRLINO	
                CALL	OUT	
                RET	
;
INDSUB:         DEC	E	
                JP	P,INDRET	
INDADD:         INC	E	
INDRET:         RET	
;
;CRLF - SEND CARRIAGE RETURN, LINE FEED.
;  Destroys: A,F
;OUTCHR - OUTPUT A CHARACTER TO CONSOLE.
;    Inputs: A = character
;  Destroys: A,F
;
CRLF:           LD	A,CR	
                CALL	OUTCHR	
                LD	A,LF	
OUTCHR:         CALL	OSWRCH	
                SUB	CR	
                JR	Z,CARRET	
                RET	C		;NON-PRINTING	
                LD	A,(COUNT)	
                INC	A	
CARRET:         LD	(COUNT),A	
                RET	Z	
                PUSH	HL	
                LD	HL,(WIDTH)	
                CP	L	
                POP	HL	
                RET	NZ	
                JR	CRLF	
;
;OUT - SEND CHARACTER OR KEYWORD
;   Inputs: A = character (>=10, <128)
;           A = Token (<10, >=128)
;  Destroys: A,F
;
OUT:            CP	160	
                JP	PE,OUTCHR	
                PUSH	BC	
                PUSH	HL	
                LD	HL,KEYWDS	
                LD	BC,KEYWDL	
                CPIR	
                CALL	NZ,OUTCHR	
                LD	B,160	
                CP	145	
                JP	PE,TOKEN1	
                INC	B	
TOKEN1:         LD	A,(HL)	
                INC	HL	
                CP	B	
                PUSH	AF	
                CALL	PE,OUTCHR	
                POP	AF	
                JP	PE,TOKEN1	
                POP	HL	
                POP	BC	
                RET	
;
;FINDL - FIND PROGRAM LINE.
;   Inputs: HL = line number (binary)
;  Outputs: HL addresses line (if found)
;           DE = line number
;           Z-flag set if found.
; Destroys: A,B,C,D,E,H,L,F
;
FINDL:          EX	DE,HL	
                LD	HL,(PAGE_)	
                XOR	A		;A=0	
                CP	(HL)	
                INC	A	
                RET	NC	
                XOR	A		;CLEAR CARRY	
                LD	B,A	
FINDL1:         LD	C,(HL)	
                PUSH	HL	
                INC	HL	
                LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A	
                SBC	HL,DE	
                POP	HL	
                RET	NC		;FOUND | PAST	
                ADD	HL,BC	
                JR	FINDL1	
;
;SETLIN - Search program for line containing address.
;   Inputs: Address in (CURLIN)
;  Outputs: Line number in HL
; Destroys: B,C,D,E,H,L,F
;
SETLIN:         LD	B,0	
                LD	DE,(CURLIN)	
                LD	HL,(PAGE_)	
                OR	A	
                SBC	HL,DE	
                ADD	HL,DE	
                JR	NC,SET3	
SET1:           LD	C,(HL)	
                INC	C	
                DEC	C	
                JR	Z,SET3	
                ADD	HL,BC	
                SBC	HL,DE	
                ADD	HL,DE	
                JR	C,SET1	
                SBC	HL,BC	
                INC	HL	
                LD	E,(HL)		;LINE NUMBER	
                INC	HL	
                LD	D,(HL)	
                EX	DE,HL	
SET2:           RET	
;
SET3:           LD	HL,0	
                JR	SET2	
;
;SAYLN - PRINT " at line nnnn" MESSAGE.
;   Inputs: HL = line number
;  Outputs: Carry=0 if line number is zero.
;           Carry=1 if line number is non-zero.
; Destroys: A,B,C,D,E,H,L,F
;
SAYLN:          LD	A,H	
                OR	L	
                RET	Z	
                CALL	TELL	
                DB	" at line "	
                DB	0	
PBCDL:          LD	C,0	
                JR	PBCD0	
;
;PBCD - PRINT NUMBER AS DECIMAL INTEGER.
;   Inputs: HL = number (binary).
;  Outputs: Carry = 1
; Destroys: A,B,C,D,E,H,L,F
;
PBCD:           LD	C,' '	
PBCD0:          LD	B,5	
                LD	DE,10000	
PBCD1:          XOR	A	
PBCD2:          SBC	HL,DE	
                INC	A	
                JR	NC,PBCD2	
                ADD	HL,DE	
                DEC	A	
                JR	Z,PBCD3	
                SET	4,C	
                SET	5,C	
PBCD3:          OR	C	
                CALL	NZ,OUTCHR	
                LD	A,B	
                CP	5	
                JR	Z,PBCD4	
                ADD	HL,HL	
                LD	D,H	
                LD	E,L	
                ADD	HL,HL	
                ADD	HL,HL	
                ADD	HL,DE	
PBCD4:          LD	DE,1000	
                DJNZ	PBCD1	
                SCF	
                RET	
;
;HANDLE WHOLE ARRAY:
;
GETV1:          INC	IY	
                INC	IY		;SKIP ()	
                PUSH	HL		;SET EXIT CONDITIONS	
                POP	IX	
                LD	A,D	
                OR	64		;FLAG ARRAY	
                CP	A	
                RET	
;
;PUTVAR - CREATE VARIABLE AND INITIALISE TO ZERO.
;   Inputs: HL, IY as returned from GETVAR (NZ).
;  Outputs: As GETVAR.
; Destroys: everything
;
PUTVAR:         CALL	CREATE	
                LD	A,(IY)	
                CP	'('	
                JR	NZ,GETVZ	;SET EXIT CONDITIONS	
                LD	A,(IY+1)	
                CP	')'		;WHOLE ARRAY?	
                JR	Z,GETV1	
ARRAY:          LD	A,14		;'Bad use of array'	
ERROR3:         JP	ERROR_	
;
;GETVAR - GET LOCATION OF VARIABLE, RETURN IN HL & IX
;   Inputs: IY addresses first character.
;  Outputs: Carry set and NZ if illegal character.
;           Z-flag set if variable found, then:
;            A = variable type (0,4,5,128 or 129)
;                (68,69 or 193 for whole array)
;            HL = IX = variable pointer.
;            IY updated
;           If Z-flag & carry reset, then:
;            HL, IY set for subsequent PUTVAR call.
; Destroys: everything
;
GETVAR:         LD	A,(IY)	
                CP	'!'	
                JR	Z,GETV5	
                CP	'?'	
                JR	Z,GETV6	
                CP	'|'	
                JR	Z,GETVF	
                CP	'$'	
                JR	Z,GETV4	
                CALL	LOCATE	
                RET	NZ	
                LD	A,(IY)	
                CP	'('		;ARRAY?	
                JR	NZ,GETVX	;EXIT	
                LD	A,(IY+1)	
                CP	')'		;WHOLE ARRAY?	
                JR	Z,GETV1	
                PUSH	DE		;SAVE TYPE	
                LD	A,(HL)	
                INC	HL	
                LD	H,(HL)	
                LD	L,A		;INDIRECT LINK	
                AND	0FEH	
                OR	H	
                JR	Z,ARRAY	
                LD	A,(HL)		;NO. OF DIMENSIONS	
                OR	A	
                JR	Z,ARRAY	
                INC	HL	
                LD	DE,0		;ACCUMULATOR	
                PUSH	AF	
                INC	IY		;SKIP (	
GETV3:          PUSH	HL	
                PUSH	DE	
                CALL	EXPRI		;SUBSCRIPT	
                EXX	
                POP	DE	
                EX	(SP),HL	
                LD	C,(HL)	
                INC	HL	
                LD	B,(HL)	
                INC	HL	
                EX	(SP),HL	
                EX	DE,HL	
                PUSH	DE	
                CALL	MUL16		;HL=HL*BC	
                POP	DE	
                ADD	HL,DE	
                EX	DE,HL	
                OR	A	
                SBC	HL,BC	
                LD	A,15	
                JR	NC,ERROR3	;"Subscript"	
                POP	HL	
                POP	AF	
                DEC	A		;DIMENSION COUNTER	
                JR	NZ,GETV2	
                CALL	BRAKET		;CLOSING BRACKET	
                POP	AF		;RESTORE TYPE	
                PUSH	HL	
                CALL	X14OR5		;DE=DE*n	
                POP	HL	
                ADD	HL,DE	
                LD	D,A		;TYPE	
                LD	A,(IY)	
GETVX:          CP	'?'	
                JR	Z,GETV9	
                CP	'!'	
                JR	Z,GETV8	
GETVZ:          PUSH	HL		;SET EXIT CONDITIONS	
                POP	IX	
                LD	A,D	
                CP	A	
                RET	
;
GETV2:          PUSH	AF	
                CALL	COMMA	
                JR	GETV3	
;
;PROCESS UNARY & BINARY INDIRECTION:
;
GETV5:          LD	A,4		;UNARY 32-BIT INDIRN.	
                JR	GETV7	
GETV6:          XOR	A		;UNARY 8-BIT INDIRECTION	
                JR	GETV7	
GETVF:          LD	A,5		;VARIANT INDIRECTION	
                JR	GETV7	
GETV4:          LD	A,128		;STATIC STRING	
GETV7:          SBC	HL,HL	
                PUSH	AF	
                JR	GETV0	
;
GETV8:          LD	B,4		;32-BIT BINARY INDIRN.	
                JR	GETVA	
GETV9:          LD	B,0		;8-BIT BINARY INDIRN.	
GETVA:          PUSH	HL	
                POP	IX	
                LD	A,D		;TYPE	
                CP	129	
                RET	Z		;STRING!	
                PUSH	BC	
                CALL	LOADN		;LEFT OPERAND	
                CALL	SFIX	
                EXX	
GETV0:          PUSH	HL	
                INC	IY	
                CALL	ITEMI	
                EXX	
                POP	DE	
                POP	AF	
                ADD	HL,DE	
                PUSH	HL	
                POP	IX	
                CP	A	
                RET	
;
;GETDEF - Find entry for FN or PROC in dynamic area.
;   Inputs: IY addresses byte following "DEF" token.
;  Outputs: Z flag set if found
;           Carry set if neither FN or PROC first.
;           If Z: HL points to entry
;                 IY addresses delimiter
; Destroys: A,D,E,H,L,IY,F
;
GETDEF:         LD	A,(IY+1)	
                CALL	RANGE1	
                RET	C	
                LD	A,(IY)	
                LD	HL,FNPTR	
                CP	TFN	
                JR	Z,LOC2	
                LD	HL,PROPTR	
                CP	TPROC	
                JR	Z,LOC2	
                SCF	
                RET	
;
;LOCATE - Try to locate variable name in static or
;dynamic variables.  If illegal first character return
;carry, non-zero.  If found, return no-carry, zero.
;If not found, return no-carry, non-zero.
;   Inputs: IY addresses first character of name.
;           A=(IY)
;  Outputs: Z-flag set if found, then:
;            IY addresses terminator
;            HL addresses location of variable
;            D=type of variable:  4 = integer
;                                 5 = floating point
;                               129 = string
; Destroys: A,D,E,H,L,IY,F
;
LOCATE:         SUB	'@'	
                RET	C	
                LD	H,0	
                CP	'Z'-'@'+1	
                JR	NC,LOC0		;NOT STATIC	
                ADD	A,A	
                LD	L,A	
                LD	A,(IY+1)	;2nd CHARACTER	
                CP	'%'	
                JR	NZ,LOC1		;NOT STATIC	
                LD	A,(IY+2)	
                CP	'('	
                JR	Z,LOC1		;NOT STATIC	
                ADD	HL,HL	
                LD	DE,STAVAR	;STATIC VARIABLES	
                ADD	HL,DE	
                INC	IY	
                INC	IY	
                LD	D,4		;INTEGER TYPE	
                XOR	A	
                RET	
;
LOC0:           CP	'_'-'@'	
                RET	C	
                CP	'z'-'@'+1	
                CCF	
                DEC	A		;SET NZ	
                RET	C	
                SUB	3	
                ADD	A,A	
                LD	L,A	
LOC1:           LD	DE,DYNVAR	;DYNAMIC VARIABLES	
                DEC	L	
                DEC	L	
                SCF	
                RET	M	
                ADD	HL,DE	
LOC2:           LD	E,(HL)	
                INC	HL	
                LD	D,(HL)	
                LD	A,D	
                OR	E	
                JR	Z,LOC6		;UNDEFINED VARIABLE	
                LD	H,D	
                LD	L,E	
                INC	HL		;SKIP LINK	
                INC	HL	
                PUSH	IY	
LOC3:           LD	A,(HL)		;COMPARE	
                INC	HL	
                INC	IY	
                CP	(IY)	
                JR	Z,LOC3	
                OR	A		;0=TERMINATOR	
                JR	Z,LOC5		;FOUND (MAYBE)	
LOC4:           POP	IY	
                EX	DE,HL	
                JR	LOC2		;TRY NEXT ENTRY	
;
LOC5:           DEC	IY	
                LD	A,(IY)	
                CP	'('	
                JR	Z,LOCX		;FOUND	
                INC	IY	
                CALL	RANGE	
                JR	C,LOCX		;FOUND	
                CP	'('	
                JR	Z,LOC4		;KEEP LOOKING	
                LD	A,(IY-1)	
                CALL	RANGE1	
                JR	NC,LOC4		;KEEP LOOKING	
LOCX:           POP	DE	
TYPE:           LD	A,(IY-1)	
                CP	'$'	
                LD	D,129	
                RET	Z		;STRING	
                CP	'&'	
                LD	D,1	
                RET	Z		;BYTE	
                CP	'%'	
                LD	D,4	
                RET	Z		;INTEGER	
                INC	D	
                CP	A	
                RET	
;
LOC6:           INC	A		;SET NZ	
                RET	
;
;CREATE - CREATE NEW ENTRY, INITIALISE TO ZERO.
;   Inputs: HL, IY as returned from LOCATE (NZ).
;  Outputs: As LOCATE, GETDEF.
; Destroys: As LOCATE, GETDEF.
;
CREATE:         XOR	A	
                LD	DE,(FREE)	
                LD	(HL),D	
                DEC	HL	
                LD	(HL),E	
                EX	DE,HL	
                LD	(HL),A	
                INC	HL	
                LD	(HL),A	
                INC	HL	
LOC7:           INC	IY	
                CALL	RANGE		;END OF VARIABLE?	
                JR	C,LOC8	
                LD	(HL),A	
                INC	HL	
                CALL	RANGE1	
                JR	NC,LOC7	
                CP	'('	
                JR	Z,LOC8	
                LD	A,(IY+1)	
                CP	'('	
                JR	Z,LOC7	
                INC	IY	
LOC8:           LD	(HL),0		;TERMINATOR	
                INC	HL	
                PUSH	HL	
                CALL	TYPE	
                LD	A,(IY)	
                CP	'('	
                LD	A,2		;SIZE OF INDIRECT LINK	
                JR	Z,LOC9	
                LD	A,D	
                OR	A		;STRING?	
                JP	P,LOC9	
                LD	A,4	
LOC9:           LD	(HL),0		;INITIALISE TO ZERO	
                INC	HL	
                DEC	A	
                JR	NZ,LOC9	
                LD	(FREE),HL	
                CALL	CHECK	
                POP	HL	
                XOR	A	
                RET	
;
;LINNUM - GET LINE NUMBER FROM TEXT STRING
;   Inputs: IY = Text Pointer
;  Outputs: HL = Line number (zero if none)
;           IY updated
; Destroys: A,D,E,H,L,IY,F
;
LINNUM:         CALL	NXT	
                LD	HL,0	
LINNM1:         LD	A,(IY)	
                SUB	'0'	
                RET	C	
                CP	10	
                RET	NC	
                INC	IY	
                LD	D,H	
                LD	E,L	
                ADD	HL,HL		;*2	
                JR	C,TOOBIGmn	
                ADD	HL,HL		;*4	
                JR	C,TOOBIGmn	
                ADD	HL,DE		;*5	
                JR	C,TOOBIGmn	
                ADD	HL,HL		;*10	
                JR	C,TOOBIGmn	
                LD	E,A	
                LD	D,0	
                ADD	HL,DE		;ADD IN DIGIT	
                JR	NC,LINNM1	
TOOBIGmn:         LD	A,20	
                JP	ERROR_		;"Too big"	
;
;PAIR - GET PAIR OF LINE NUMBERS FOR RENUMBER/AUTO.
;   Inputs: IY = text pointer
;  Outputs: HL = first number (10 by default)
;           BC = second number (10 by default)
; Destroys: A,B,C,D,E,H,L,B',C',D',E',H',L',IY,F
;
PAIR:           CALL	LINNUM		;FIRST	
                LD	A,H	
                OR	L	
                JR	NZ,PAIR1	
                LD	L,10	
PAIR1:          CALL	TERMQ	
                INC	IY	
                PUSH	HL	
                LD	HL,10	
                CALL	NZ,LINNUM	;SECOND	
                EX	(SP),HL	
                POP	BC	
                LD	A,B	
                OR	C	
                RET	NZ	
                CALL	EXTERR	
                DB	"Silly"	
                DB	0	
;
;DLPAIR - GET PAIR OF LINE NUMBERS FOR DELETE/LIST.
;   Inputs: IY = text pointer
;  Outputs: HL = points to program text
;           BC = second number (0 by default)
; Destroys: A,B,C,D,E,H,L,IY,F
;
DLPAIR:         CALL	LINNUM	
                PUSH	HL	
                CALL	TERMQ	
                JR	Z,DLP1	
                CP	TIF	
                JR	Z,DLP1	
                INC	IY	
                CALL	LINNUM	
DLP1:           EX	(SP),HL	
                CALL	FINDL	
                POP	BC	
                RET	
;
;TEST FOR VALID CHARACTER IN VARIABLE NAME:
;   Inputs: IY addresses character
;  Outputs: Carry set if out-of-range.
; Destroys: A,F
;
RANGE:          LD	A,(IY)	
                CP	'$'	
                RET	C	
                CP	'&'+1	
                CCF	
                RET	NC	
                CP	'('	
                RET	Z	
RANGE1:         CP	'0'	
                RET	C	
                CP	'9'+1	
                CCF	
                RET	NC	
                CP	'@'		;V2.4	
                RET	Z	
RANGE2:         CP	'A'	
                RET	C	
                CP	'Z'+1	
                CCF	
                RET	NC	
                CP	'_'	
                RET	C	
                CP	'z'+1	
                CCF	
                RET	
;
;LEXAN - LEXICAL ANALYSIS.
;  Bit 0,C: 1=left, 0=right
;  Bit 3,C: 1=in HEX
;  Bit 4,C: 1=accept line number
;  Bit 5,C: 1=in variable, FN, PROC
;  Bit 6,C: 1=in REM, DATA, *
;  Bit 7,C: 1=in quotes
;   Inputs: IY addresses source string
;           DE addresses destination string
;           (must be page boundary)
;           C  sets initial mode
;  Outputs: DE, IY updated
;           A holds carriage return
;
LEXAN1:         LD	(DE),A		;TRANSFER TO BUFFER	
                INC	DE		;INCREMENT POINTERS	
                INC	IY	
LEXAN2:         LD	A,E		;MAIN ENTRY	
                CP	252		;TEST LENGTH	
                LD	A,19	
                JP	NC,ERROR_	;'String too long'	
                LD	A,(IY)	
                CP	CR	
                RET	Z		;END OF LINE	
                CALL	RANGE1	
                JR	NC,LEXAN3	
                RES	5,C		;NOT IN VARIABLE	
                RES	3,C		;NOT IN HEX	
LEXAN3:         CP	' '	
                JR	Z,LEXAN1	;PASS SPACES	
                CP	','	
                JR	Z,LEXAN1	;PASS COMMAS	
                CP	'G'	
                JR	C,LEXAN4	
                RES	3,C		;NOT IN HEX	
LEXAN4:         CP	'"'	
                JR	NZ,LEXAN5	
                RL	C	
                CCF			;TOGGLE C7	
                RR	C	
LEXAN5:         BIT	4,C	
                JR	Z,LEXAN6	
                RES	4,C	
                PUSH	BC	
                PUSH	DE	
                CALL	LINNUM		;GET LINE NUMBER	
                POP	DE	
                POP	BC	
                LD	A,H	
                OR	L	
                CALL	NZ,ENCODE	;ENCODE LINE NUMBER	
                JR	LEXAN2		;CONTINUE	
;
LEXAN6:         DEC	C	
                JR	Z,LEXAN7	;C=1 (LEFT)	
                INC	C	
                JR	NZ,LEXAN1	
                OR	A	
                CALL	P,LEX		;TOKENISE IF POSS.	
                JR	LEXAN8	
;
LEXAN7:         CP	'*'	
                JR	Z,LEXAN9	
                OR	A	
                CALL	P,LEX		;TOKENISE IF POSS.	
                CP	TOKLO	
                JR	C,LEXAN8	
                CP	TOKHI+1	
                JR	NC,LEXAN8	
                ADD	A,OFFSET	;LEFT VERSION	
LEXAN8:         CP	TREM	
                JR	Z,LEXAN9	
                CP	TDATA	
                JR	NZ,LEXANA	
LEXAN9:         SET	6,C		;QUIT TOKENISING	
LEXANA:         CP	TFN	
                JR	Z,LEXANB	
                CP	TPROC	
                JR	Z,LEXANB	
                CALL	RANGE2	
                JR	C,LEXANC	
LEXANB:         SET	5,C		;IN VARIABLE/FN/PROC	
LEXANC:         CP	'&'	
                JR	NZ,LEXAND	
                SET	3,C		;IN HEX	
LEXAND:         LD	HL,LIST1	
                PUSH	BC	
                LD	BC,LIST1L	
                CPIR	
                POP	BC	
                JR	NZ,LEXANE	
                SET	4,C		;ACCEPT LINE NUMBER	
LEXANE:         LD	HL,LIST2	
                PUSH	BC	
                LD	BC,LIST2L	
                CPIR	
                POP	BC	
                JR	NZ,LEXANF	
                SET	0,C		;ENTER LEFT MODE	
LEXANF:         JP	LEXAN1	
;
LIST1:          DB	TGOTO	
                DB	TGOSUB	
                DB	TRESTORE	
                DB	TTRACE	
LIST2:          DB	TTHEN	
                DB	TELSE	
LIST1L:         EQU	$-LIST1	
                DB	TREPEAT	
                DB	TERROR	
                DB	':'	
LIST2L:         EQU	$-LIST2	
;
;ENCODE - ENCODE LINE NUMBER INTO PSEUDO-BINARY FORM.
;   Inputs: HL=line number, DE=string pointer
;  Outputs: DE updated, BIT 4,C set.
; Destroys: A,B,C,D,E,H,L,F
;
ENCODE:         SET	4,C	
                EX	DE,HL	
                LD	(HL),TLINO	
                INC	HL	
                LD	A,D	
                AND	0C0H	
                RRCA	
                RRCA	
                LD	B,A	
                LD	A,E	
                AND	0C0H	
                OR	B	
                RRCA	
                RRCA	
                XOR	01010100B	
                LD	(HL),A	
                INC	HL	
                LD	A,E	
                AND	3FH	
                OR	'@'	
                LD	(HL),A	
                INC	HL	
                LD	A,D	
                AND	3FH	
                OR	'@'	
                LD	(HL),A	
                INC	HL	
                EX	DE,HL	
                RET	
;
;TEXT - OUTPUT MESSAGE.
;   Inputs: HL addresses text (terminated by nul)
;  Outputs: HL addresses character following nul.
; Destroys: A,H,L,F
;
REPORT:         LD	HL,(ERRTXT)	
TEXT_:          LD	A,(HL)	
                INC	HL	
                OR	A	
                RET	Z	
                CP	LF	
                JR	Z,TEXTLF	;Token for TINT	
                CALL	OUT	
                JR	TEXT_	
;
TEXTLF:         CALL	OUTCHR	
                JR	TEXT_	
;
;TELL - OUTPUT MESSAGE.
;   Inputs: Text follows subroutine call (term=nul)
; Destroys: A,F
;
TELL:           EX	(SP),HL		;GET RETURN ADDRESS	
                CALL	TEXT_	
                EX	(SP),HL	
                RET	
;
; NLIST - Check for end of list
;
NLIST:          CALL	NXT	
                CP	','		;ANOTHER VARIABLE?	
                JR	Z,NXT1	
                POP	BC		;DITCH RETURN ADDRESS	
                JP	XEQ	
;
NXT:            LD	A,(IY)	
                CP	' '	
                RET	NZ	
NXT1:           INC	IY	
                JR	NXT	
;
;                END	START	
; --- End main.asm ---

; --- Begin math.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                SEGMENT CODE	
;
;Z80 FLOATING POINT PACKAGE
;(C) COPYRIGHT  R.T.RUSSELL  1986-2024
;VERSION 0.0, 26-10-1986
;VERSION 0.1, 14-12-1988 (BUG FIX)
;VERSION 5.0, 16-06-2024 (SHIFTS ADDED)
;
;BINARY FLOATING POINT REPRESENTATION:
;   32 BIT SIGN-MAGNITUDE NORMALIZED MANTISSA
;    8 BIT EXCESS-128 SIGNED EXPONENT
;   SIGN BIT REPLACES MANTISSA MSB (IMPLIED "1")
;   MANTISSA=0 & EXPONENT=0 IMPLIES VALUE IS ZERO.
;
;BINARY INTEGER REPRESENTATION:
;   32 BIT 2'S-COMPLEMENT SIGNED INTEGER
;    "EXPONENT" BYTE = 0 (WHEN PRESENT)
;
;NORMAL REGISTER ALLOCATION: MANTISSA - HLH'L'
;                            EXPONENT - C
;ALTERNATE REGISTER ALLOCATION: MANTISSA - DED'E'
;                               EXPONENT - B
;
;Error codes:
;
BADOP:          EQU	1		;Bad operation code	
DIVBY0:         EQU	18		;Division by zero	
TOOBIG:         EQU	20		;Too big	
NGROOT:         EQU	21		;Negative root	
LOGRNG:         EQU	22		;Log range	
ACLOST:         EQU	23		;Accuracy lost	
EXPRNG:         EQU	24		;Exp range	
;
;                XDEF	FPP	
;                XREF	STORE5	
;                XREF	DLOAD5	
;
;Call entry and despatch code:
;
FPP:            PUSH	IY		;Save IY	
                LD	IY,0	
                ADD	IY,SP		;Save SP in IY	
                CALL	OP		;Perform operation	
                CP	A		;Good return (Z, NC)	
EXITmat:           POP	IY		;Restore IY	
                RET			;Return to caller	
;
;Error exit:
;
BADmat:            LD	A,BADOP		;"Bad operation code"	
ERROR_mat:         LD	SP,IY		;Restore SP from IY	
                OR	A		;Set NZ	
                SCF			;Set C	
                JR	EXITmat	
;
;Perform operation or function:
;
; OP:             CP	(RTABLE-DTABLE)/2	
OP:             CP	RTABLE-DTABLE/2	
                JR	NC,BADmat	
                ; CP	(FTABLE-DTABLE)/2	
                CP	FTABLE-DTABLE/2	
                JR	NC,DISPAT	
                EX	AF,AF'	
                LD	A,B	
                OR	C		;Both integer?	
                CALL	NZ,FLOATA	;No, so float both	
                EX	AF,AF'	
DISPAT:         PUSH	HL	
                LD	HL,DTABLE	
                PUSH	BC	
                ADD	A,A		;A = op-code * 2	
                LD	C,A	
                LD	B,0		;BC = op-code * 2	
                ADD	HL,BC	
                LD	A,(HL)		;Get low byte	
                INC	HL	
                LD	H,(HL)		;Get high byte	
                LD	L,A	
                POP	BC	
                EX	(SP),HL	
                RET			;Off to routine	
;
;Despatch table:
;
DTABLE:         DW	IAND		;0  & (INTEGER)	
                DW	IBDIV		;1  DIV	
                DW	IEOR		;2  EOR	
                DW	IMOD		;3  MOD	
                DW	IOR		;4  |	
                DW	ILE		;5  <=	
                DW	INE		;6  <>	
                DW	IGE		;7  >=	
                DW	ILT		;8  <	
                DW	IEQ		;9  =	
                DW	IMUL		;10 *	
                DW	IADD		;11 +	
                DW	IGT		;12 >	
                DW	ISUB		;13 -	
                DW	IPOW		;14 ^	
                DW	IDIV		;15 /	
;
FTABLE:         DW	ABS		;16 ABS	
                DW	ACS		;17 ACS	
                DW	ASN		;18 ASN	
                DW	ATN		;19 ATN	
                DW	COS		;20 COS	
                DW	DEG		;21 DEG	
                DW	EXP		;22 EXP	
                DW	INT_		;23 INT_	
                DW	LN		;24 LN	
                DW	LOG		;25 LOG	
                DW	CPL_		;26 NOT	
                DW	RAD		;27 RAD	
                DW	SGN		;28 SGN	
                DW	SIN		;29 SIN	
                DW	SQR		;30 SQR	
                DW	TAN		;31 TAN	
;
                DW	ZEROmat		;32 ZERO	
                DW	FONE		;33 FONE	
                DW	TRUE		;34 TRUE	
                DW	PI		;35 PI	
;
                DW	VAL		;36 VAL	
                DW	STRmat		;37 STR$	
;
                DW	SFIXmat		;38 FIX	
                DW	SFLOAT		;39 FLOAT	
;
                DW	FTEST		;40 TEST	
                DW	FCOMP		;41 COMPARE	
;
                DW	ISHL		;42 <<	
                DW	ISHX		;43 <<<	
                DW	ISAR		;44 >>	
                DW	ISHR		;45 >>>	
;
RTABLE:         DW	FAND		;& (FLOATING-POINT)	
                DW	FBDIV		;DIV	
                DW	FEOR		;EOR	
                DW	FMOD		;MOD	
                DW	FOR		;|	
                DW	FLE		;<=	
                DW	FNE		;<>	
                DW	FGE		;>=	
                DW	FLT		;<	
                DW	FEQ		;=	
                DW	FMUL		;*	
                DW	FADD		;+	
                DW	FGT		;>	
                DW	FSUB		;-	
                DW	FPOW		;^	
                DW	FDIV		;/	
;
;ARITHMETIC AND LOGICAL OPERATORS:
;All take two arguments, in HLH'L'C & DED'E'B.
;Output in HLH'L'C
;All registers except IX, IY destroyed.
; (N.B. FPOW destroys IX).
;
;FAND - Floating-point AND.
;IAND - Integer AND.
;
FAND:           CALL	FIX2	
IAND:           LD	A,H	
                AND	D	
                LD	H,A	
                LD	A,L	
                AND	E	
                LD	L,A	
                EXX	
                LD	A,H	
                AND	D	
                LD	H,A	
                LD	A,L	
                AND	E	
                LD	L,A	
                EXX	
                RET	
;
;FEOR - Floating-point exclusive-OR.
;IEOR - Integer exclusive-OR.
;
FEOR:           CALL	FIX2	
IEOR:           LD	A,H	
                XOR	D	
                LD	H,A	
                LD	A,L	
                XOR	E	
                LD	L,A	
                EXX	
                LD	A,H	
                XOR	D	
                LD	H,A	
                LD	A,L	
                XOR	E	
                LD	L,A	
                EXX	
                RET	
;
;FOR - Floating-point OR.
;IOR - Integer OR.
;
FOR:            CALL	FIX2	
IOR:            LD	A,H	
                OR	D	
                LD	H,A	
                LD	A,L	
                OR	E	
                LD	L,A	
                EXX	
                LD	A,H	
                OR	D	
                LD	H,A	
                LD	A,L	
                OR	E	
                LD	L,A	
                EXX	
                RET	
;
;FMOD - Floating-point remainder.
;IMOD - Integer remainder.
;
FMOD:           CALL	FIX2	
IMOD:           LD	A,H	
                XOR	D		;DIV RESULT SIGN	
                BIT	7,H	
                CALL	ABS2		;MAKE BOTH POSITIVE	
                LD	A,-33	
                CALL	DIVA		;DIVIDE	
                EXX	
                LD	C,0		;INTEGER MARKER	
                EX	AF,AF'	
                RET	Z	
                JP	NEGATE	
;
;BDIV - Integer division.
;
FBDIV:          CALL	FIX2	
IBDIV:          CALL	IMOD	
                OR	A	
                CALL	SWAP	
                LD	C,0	
                RET	P	
                JP	NEGATE	
;
;ISUB - Integer subtraction.
;FSUB - Floating point subtraction with rounding.
;
ISUB:           CALL	SUB	
                RET	PO	
                CALL	ADD	
                CALL	FLOAT2	
FSUB:           LD	A,D	
                XOR	80H		;CHANGE SIGN THEN ADD	
                LD	D,A	
                JR	FADD	
;
;Reverse subtract.
;
RSUB:           LD	A,H	
                XOR	80H	
                LD	H,A	
                JR	FADD	
;
;IADD - Integer addition.
;FADD - Floating point addition with rounding.
;
IADD:           CALL	ADD	
                RET	PO	
                CALL	SUB	
                CALL	FLOAT2	
FADD:           DEC	B	
                INC	B	
                RET	Z		;ARG 2 ZERO	
                DEC	C	
                INC	C	
                JP	Z,SWAP		;ARG 1 ZERO	
                EXX	
                LD	BC,0		;INITIALISE	
                EXX	
                LD	A,H	
                XOR	D		;XOR SIGNS	
                PUSH	AF	
                LD	A,B	
                CP	C		;COMPARE EXPONENTS	
                CALL	C,SWAP		;MAKE DED'E'B LARGEST	
                LD	A,B	
                SET	7,H		;IMPLIED 1	
                CALL	NZ,FIX		;ALIGN	
                POP	AF	
                LD	A,D		;SIGN OF LARGER	
                SET	7,D		;IMPLIED 1	
                JP	M,FADD3		;SIGNS DIFFERENT	
                CALL	ADD		;HLH'L'=HLH'L'+DED'E'	
                CALL	C,DIV2		;NORMALISE	
                SET	7,H	
                JR	FADD4	
;
FADD3:          CALL	SUB		;HLH'L'=HLH'L'-DED'E'	
                CALL	C,NEG		;NEGATE HLH'L'B'C'	
                CALL	FLO48	
                CPL			;CHANGE RESULT SIGN	
FADD4:          EXX	
                EX	DE,HL	
                LD	HL,8000H	
                OR	A		;CLEAR CARRY	
                SBC	HL,BC	
                EX	DE,HL	
                EXX	
                CALL	Z,ODD		;ROUND UNBIASSED	
                CALL	C,ADD1		;ROUND UP	
                CALL	C,INCC	
                RES	7,H	
                DEC	C	
                INC	C	
                JP	Z,ZEROmat	
                OR	A		;RESULT SIGNQ	
                RET	P		;POSITIVE	
                SET	7,H		;NEGATIVE	
                RET	
;
;IDIV - Integer division.
;FDIV - Floating point division with rounding.
;
IDIV:           CALL	FLOAT2	
FDIV:           DEC	B		;TEST FOR ZERO	
                INC	B	
                LD	A,DIVBY0	
                JP	Z,ERROR_mat		;"Division by zero"	
                DEC	C		;TEST FOR ZERO	
                INC	C	
                RET	Z	
                LD	A,H	
                XOR	D		;CALC. RESULT SIGN	
                EX	AF,AF'		;SAVE SIGN	
                SET	7,D		;REPLACE IMPLIED 1's	
                SET	7,H	
                PUSH	BC		;SAVE EXPONENTS	
                LD	B,D		;LOAD REGISTERS	
                LD	C,E	
                LD	DE,0	
                EXX	
                LD	B,D	
                LD	C,E	
                LD	DE,0	
                LD	A,-32		;LOOP COUNTER	
                CALL	DIVA		;DIVIDE	
                EXX	
                BIT	7,D	
                EXX	
                CALL	Z,DIVB		;NORMALISE & INC A	
                EX	DE,HL	
                EXX	
                SRL	B		;DIVISOR/2	
                RR	C	
                OR	A		;CLEAR CARRY	
                SBC	HL,BC		;REMAINDER-DIVISOR/2	
                CCF	
                EX	DE,HL		;RESULT IN HLH'L'	
                CALL	Z,ODD		;ROUND UNBIASSED	
                CALL	C,ADD1		;ROUND UP	
                POP	BC		;RESTORE EXPONENTS	
                CALL	C,INCC	
                RRA			;LSB OF A TO CARRY	
                LD	A,C		;COMPUTE NEW EXPONENT	
                SBC	A,B	
                CCF	
                JP	CHKOVF	
;
;IMUL - Integer multiplication.
;
IMUL:           LD	A,H	
                XOR	D	
                CALL	ABS2		;MAKE BOTH POSITIVE	
                LD	A,-33	
                CALL	MULA		;MULTIPLY	
                EXX	
                LD	C,191		;PRESET EXPONENT	
                CALL	TESTmat		;TEST RANGE	
                JR	NZ,IMUL1	;TOO BIG	
                BIT	7,D	
                JR	NZ,IMUL1	
                CALL	SWAP	
                LD	C,D		;INTEGER MARKER	
                EX	AF,AF'	
                RET	P	
                JP	NEGATE	
;
IMUL1:          DEC	C	
                CALL	SLA8	
                JP	P,IMUL1		;NORMALISE	
                EX	AF,AF'	
                RET	M	
                RES	7,H		;POSITIVE	
                RET	
;
;FMUL - Floating point multiplication with rounding.
;
FMUL:           DEC	B		;TEST FOR ZERO	
                INC	B	
                JP	Z,ZEROmat	
                DEC	C		;TEST FOR ZERO	
                INC	C	
                RET	Z	
                LD	A,H	
                XOR	D		;CALC. RESULT SIGN	
                EX	AF,AF'	
                SET	7,D		;REPLACE IMPLIED 1's	
                SET	7,H	
                PUSH	BC		;SAVE EXPONENTS	
                LD	B,H		;LOAD REGISTERS	
                LD	C,L	
                LD	HL,0	
                EXX	
                LD	B,H	
                LD	C,L	
                LD	HL,0	
                LD	A,-32		;LOOP COUNTER	
                CALL	MULA		;MULTIPLY	
                CALL	C,MULB		;NORMALISE & INC A	
                EXX	
                PUSH	HL	
                LD	HL,8000H	
                OR	A		;CLEAR CARRY	
                SBC	HL,DE	
                POP	HL	
                CALL	Z,ODD		;ROUND UNBIASSED	
                CALL	C,ADD1		;ROUND UP	
                POP	BC		;RESTORE EXPONENTS	
                CALL	C,INCC	
                RRA			;LSB OF A TO CARRY	
                LD	A,C		;COMPUTE NEW EXPONENT	
                ADC	A,B	
CHKOVF:         JR	C,CHKO1	
                JP	P,ZEROmat		;UNDERFLOW	
                JR	CHKO2	
CHKO1:          JP	M,OFLOW		;OVERFLOW	
CHKO2:          ADD	A,80H	
                LD	C,A	
                JP	Z,ZEROmat	
                EX	AF,AF'		;RESTORE SIGN BIT	
                RES	7,H	
                RET	P	
                SET	7,H	
                RET	
;
;IPOW - Integer involution.
;
IPOW:           CALL	SWAP	
                BIT	7,H	
                PUSH	AF		;SAVE SIGN	
                CALL	NZ,NEGATE	
IPOW0:          LD	C,B	
                LD	B,32		;LOOP COUNTER	
IPOW1:          CALL	X2	
                JR	C,IPOW2	
                DJNZ	IPOW1	
                POP	AF	
                EXX	
                INC	L		;RESULT=1	
                EXX	
                LD	C,H	
                RET	
;
IPOW2:          POP	AF	
                PUSH	BC	
                EX	DE,HL	
                PUSH	HL	
                EXX	
                EX	DE,HL	
                PUSH	HL	
                EXX	
                LD	IX,0	
                ADD	IX,SP	
                JR	Z,IPOW4	
                PUSH	BC	
                EXX	
                PUSH	DE	
                EXX	
                PUSH	DE	
                CALL	SFLOAT	
                CALL	RECIP	
                CALL	STORE5	
                JR	IPOW5	
;
IPOW3:          PUSH	BC	
                EXX	
                SLA	E	
                RL	D	
                PUSH	DE	
                EXX	
                RL	E	
                RL	D	
                PUSH	DE	
                LD	A,'*' & 0FH	
                PUSH	AF	
                CALL	COPY	
                CALL	OP		;SQUARE	
                POP	AF	
                CALL	DLOAD5	
                CALL	C,OP		;MULTIPLY BY X	
IPOW5:          POP	DE	
                EXX	
                POP	DE	
                EXX	
                LD	A,C	
                POP	BC	
                LD	C,A	
IPOW4:          DJNZ	IPOW3	
                POP	AF	
                POP	AF	
                POP	AF	
                RET	
;
FPOW0:          POP	AF	
                POP	AF	
                POP	AF	
                JR	IPOW0	
;
;FPOW - Floating-point involution.
;
FPOW:           BIT	7,D	
                PUSH	AF	
                CALL	SWAP	
                CALL	PUSH5	
                DEC	C	
                INC	C	
                JR	Z,FPOW0	
                LD	A,158	
                CP	C	
                JR	C,FPOW1	
                INC	A	
                CALL	FIX	
                EX	AF,AF'	
                JP	P,FPOW0	
FPOW1:          CALL	SWAP	
                CALL	LN0	
                CALL	POP5	
                POP	AF	
                CALL	FMUL	
                JP	EXP0	
;
;Integer and floating-point compare.
;Result is TRUE (-1) or FALSE (0).
;
FLT:            CALL	FCP	
                JR	ILT1	
ILT:            CALL	ICP	
ILT1:           RET	NC	
                JR	TRUE	
;
FGT:            CALL	FCP	
                JR	IGT1	
IGT:            CALL	ICP	
IGT1:           RET	Z	
                RET	C	
                JR	TRUE	
;
FGE:            CALL	FCP	
                JR	IGE1	
IGE:            CALL	ICP	
IGE1:           RET	C	
                JR	TRUE	
;
FLE:            CALL	FCP	
                JR	ILE1	
ILE:            CALL	ICP	
ILE1:           JR	Z,TRUE	
                RET	NC	
                JR	TRUE	
;
FNE:            CALL	FCP	
                JR	INE1	
INE:            CALL	ICP	
INE1:           RET	Z	
                JR	TRUE	
;
FEQ:            CALL	FCP	
                JR	IEQ1	
IEQ:            CALL	ICP	
IEQ1:           RET	NZ	
TRUE:           LD	HL,-1	
                EXX	
                LD	HL,-1	
                EXX	
                XOR	A	
                LD	C,A	
                RET	
;
;Integer shifts:
;
ISHX:           	
ISHL:           CALL	SHIFTS	
                JR	Z,SHRET	
ISHL1:          EXX	
                ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                DJNZ	ISHL1	
SHRET:          RET	
;
ISAR:           CALL	SHIFTS	
                JR	Z,SHRET	
ISAR1:          SRA	H	
                RR	L	
                EXX	
                RR	H	
                RR	L	
                EXX	
                DJNZ	ISAR1	
                RET	
;
ISHR:           CALL	SHIFTS	
                JR	Z,SHRET	
ISHR1:          SRL	H	
                RR	L	
                EXX	
                RR	H	
                RR	L	
                EXX	
                DJNZ	ISHR1	
                RET	
;
SHIFTS:         CALL	FIX2	
                LD	A,D	
                OR	E	
                EXX	
                OR	D	
                LD	A,E	
                EXX	
                LD	B,32	
                JR	NZ,SHMAX	
                LD	B,A	
                OR	A	
SHMAX:          RET	
;
;FUNCTIONS:
;
;Result returned in HLH'L'C (floating point)
;Result returned in HLH'L' (C=0) (integer)
;All registers except IY destroyed.
;
;ABS - Absolute value
;Result is numeric, variable type.
;
ABS:            BIT	7,H	
                RET	Z		;POSITIVE/ZERO	
                DEC	C	
                INC	C	
                JP	Z,NEGATE	;INTEGER	
                RES	7,H	
                RET	
;
;NOT - Complement integer.
;Result is integer numeric.
;
CPL_:           CALL	SFIXmat	
                LD	A,H	
                CPL	
                LD	H,A	
                LD	A,L	
                CPL	
                LD	L,A	
                EXX	
                LD	A,H	
                CPL	
                LD	H,A	
                LD	A,L	
                CPL	
                LD	L,A	
                EXX	
                XOR	A		;NUMERIC MARKER	
                RET	
;
;PI - Return PI (3.141592654)
;Result is floating-point numeric.
;
PI:             LD	HL,490FH	
                EXX	
                LD	HL,0DAA2H	
                EXX	
                LD	C,81H	
                XOR	A		;NUMERIC MARKER	
                RET	
;
;DEG - Convert radians to degrees
;Result is floating-point numeric.
;
DEG:            CALL	FPI180	
                CALL	FMUL	
                XOR	A	
                RET	
;
;RAD - Convert degrees to radians
;Result is floating-point numeric.
;
RAD:            CALL	FPI180	
                CALL	FDIV	
                XOR	A	
                RET	
;
;180/PI
;
FPI180:         CALL	SFLOAT	
                LD	DE,652EH	
                EXX	
                LD	DE,0E0D3H	
                EXX	
                LD	B,85H	
                RET	
;
;SGN - Return -1, 0 or +1
;Result is integer numeric.
;
SGN:            CALL	TESTmat	
                OR	C	
                RET	Z		;ZERO	
                BIT	7,H	
                JP	NZ,TRUE		;-1	
                CALL	ZEROmat	
                JP	ADD1		;1	
;
;VAL - Return numeric value of string.
;Input: ASCII string at IX
;Result is variable type numeric.
;
VAL:            CALL	SIGNQ	
                PUSH	AF	
                CALL	CON	
                POP	AF	
                CP	'-'	
                LD	A,0		;NUMERIC MARKER	
                RET	NZ	
                DEC	C	
                INC	C	
                JP	Z,NEGATE	;ZERO/INTEGER	
                LD	A,H	
                XOR	80H		;CHANGE SIGN (FP)	
                LD	H,A	
                XOR	A	
                RET	
;
;INT - Floor function
;Result is integer numeric.
;
INT_:           DEC	C	
                INC	C	
                RET	Z		;ZERO/INTEGER	
                LD	A,159	
                LD	B,H		;B7=SIGN BIT	
                CALL	FIX	
                EX	AF,AF'	
                AND	B	
                CALL	M,ADD1		;NEGATIVE NON-INTEGER	
                LD	A,B	
                OR	A	
                CALL	M,NEGATE	
                XOR	A	
                LD	C,A	
                RET	
;
;SQR - square root
;Result is floating-point numeric.
;
SQR:            CALL	SFLOAT	
SQR0:           BIT	7,H	
                LD	A,NGROOT	
                JP	NZ,ERROR_mat	;"-ve root"	
                DEC	C	
                INC	C	
                RET	Z		;ZERO	
                SET	7,H		;IMPLIED 1	
                BIT	0,C	
                CALL	Z,DIV2		;MAKE EXPONENT ODD	
                LD	A,C	
                SUB	80H	
                SRA	A		;HALVE EXPONENT	
                ADD	A,80H	
                LD	C,A	
                PUSH	BC		;SAVE EXPONENT	
                EX	DE,HL	
                LD	HL,0	
                LD	B,H	
                LD	C,L	
                EXX	
                EX	DE,HL	
                LD	HL,0	
                LD	B,H	
                LD	C,L	
                LD	A,-31	
                CALL	SQRA		;ROOT	
                EXX	
                BIT	7,B	
                EXX	
                CALL	Z,SQRA		;NORMALISE & INC A	
                CALL	SQRB	
                OR	A		;CLEAR CARRY	
                CALL	DIVB	
                RR	E		;LSB TO CARRY	
                LD	H,B	
                LD	L,C	
                EXX	
                LD	H,B	
                LD	L,C	
                CALL	C,ADD1		;ROUND UP	
                POP	BC		;RESTORE EXPONENT	
                CALL	C,INCC	
                RRA	
                SBC	A,A	
                ADD	A,C	
                LD	C,A	
                RES	7,H		;POSITIVE	
                XOR	A	
                RET	
;
;TAN - Tangent function
;Result is floating-point numeric.
;
TAN:            CALL	SFLOAT	
                CALL	PUSH5	
                CALL	COS0	
                CALL	POP5	
                CALL	PUSH5	
                CALL	SWAP	
                CALL	SIN0	
                CALL	POP5	
                CALL	FDIV	
                XOR	A		;NUMERIC MARKER	
                RET	
;
;COS - Cosine function
;Result is floating-point numeric.
;
COS:            CALL	SFLOAT	
COS0:           CALL	SCALE	
                INC	E	
                INC	E	
                LD	A,E	
                JR	SIN1	
;
;SIN - Sine function
;Result is floating-point numeric.
;
SIN:            CALL	SFLOAT	
SIN0:           PUSH	HL		;H7=SIGN	
                CALL	SCALE	
                POP	AF	
                RLCA	
                RLCA	
                RLCA	
                AND	4	
                XOR	E	
SIN1:           PUSH	AF		;OCTANT	
                RES	7,H	
                RRA	
                CALL	PIBY4	
                CALL	C,RSUB		;X=(PI/4)-X	
                POP	AF	
                PUSH	AF	
                AND	3	
                JP	PO,SIN2		;USE COSINE APPROX.	
                CALL	PUSH5		;SAVE X	
                CALL	SQUARE		;PUSH X*X	
                CALL	POLY	
                DW	0A8B7H		;a(8)	
                DW	3611H	
                DB	6DH	
                DW	0DE26H		;a(6)	
                DW	0D005H	
                DB	73H	
                DW	80C0H		;a(4)	
                DW	888H	
                DB	79H	
                DW	0AA9DH		;a(2)	
                DW	0AAAAH	
                DB	7DH	
                DW	0		;a(0)	
                DW	0	
                DB	80H	
                CALL	POP5	
                CALL	POP5	
                CALL	FMUL	
                JP	SIN3	
;
SIN2:           CALL	SQUARE		;PUSH X*X	
                CALL	POLY	
                DW	0D571H		;b(8)	
                DW	4C78H	
                DB	70H	
                DW	94AFH		;b(6)	
                DW	0B603H	
                DB	76H	
                DW	9CC8H		;b(4)	
                DW	2AAAH	
                DB	7BH	
                DW	0FFDDH		;b(2)	
                DW	0FFFFH	
                DB	7EH	
                DW	0		;b(0)	
                DW	0	
                DB	80H	
                CALL	POP5	
SIN3:           POP	AF	
                AND	4	
                RET	Z	
                DEC	C	
                INC	C	
                RET	Z		;ZERO	
                SET	7,H		;MAKE NEGATIVE	
                RET	
;
;Floating-point one:
;
FONE:           LD	HL,0	
                EXX	
                LD	HL,0	
                EXX	
                LD	C,80H	
                RET	
;
DONE:           LD	DE,0	
                EXX	
                LD	DE,0	
                EXX	
                LD	B,80H	
                RET	
;
PIBY4:          LD	DE,490FH	
                EXX	
                LD	DE,0DAA2H	
                EXX	
                LD	B,7FH	
                RET	
;
;EXP - Exponential function
;Result is floating-point numeric.
;
EXP:            CALL	SFLOAT	
EXP0:           CALL	LN2		;LN(2)	
                EXX	
                DEC	E	
                LD	BC,0D1CFH	;0.6931471805599453	
                EXX	
                PUSH	HL		;H7=SIGN	
                CALL	MOD48		;"MODULUS"	
                POP	AF	
                BIT	7,E	
                JR	Z,EXP1	
                RLA	
                JP	C,ZEROmat	
                LD	A,EXPRNG	
                JP	ERROR_mat		;"Exp range"	
;
EXP1:           AND	80H	
                OR	E	
                PUSH	AF		;INTEGER PART	
                RES	7,H	
                CALL	PUSH5		;PUSH X*LN(2)	
                CALL	POLY	
                DW	4072H		;a(7)	
                DW	942EH	
                DB	73H	
                DW	6F65H		;a(6)	
                DW	2E4FH	
                DB	76H	
                DW	6D37H		;a(5)	
                DW	8802H	
                DB	79H	
                DW	0E512H		;a(4)	
                DW	2AA0H	
                DB	7BH	
                DW	4F14H		;a(3)	
                DW	0AAAAH	
                DB	7DH	
                DW	0FD56H		;a(2)	
                DW	7FFFH	
                DB	7EH	
                DW	0FFFEH		;a(1)	
                DW	0FFFFH	
                DB	7FH	
                DW	0		;a(0)	
                DW	0	
                DB	80H	
                CALL	POP5	
                POP	AF	
                PUSH	AF	
                CALL	P,RECIP		;X=1/X	
                POP	AF	
                JP	P,EXP4	
                AND	7FH	
                NEG	
EXP4:           ADD	A,80H	
                ADD	A,C	
                JR	C,EXP2	
                JP	P,ZEROmat		;UNDERFLOW	
                JR	EXP3	
EXP2:           JP	M,OFLOW		;OVERFLOW	
EXP3:           ADD	A,80H	
                JP	Z,ZEROmat	
                LD	C,A	
                XOR	A		;NUMERIC MARKER	
                RET	
;
RECIP:          CALL	DONE	
RDIV:           CALL	SWAP	
                JP	FDIV		;RECIPROCAL	
;
LN2:            LD	DE,3172H	;LN(2)	
                EXX	
                LD	DE,17F8H	
                EXX	
                LD	B,7FH	
                RET	
;
;LN - Natural log.
;Result is floating-point numeric.
;
LN:             CALL	SFLOAT	
LN0:            LD	A,LOGRNG	
                BIT	7,H	
                JP	NZ,ERROR_mat	;"Log range"	
                INC	C	
                DEC	C	
                JP	Z,ERROR_mat	
                LD	DE,3504H	;SQR(2)	
                EXX	
                LD	DE,0F333H	;1.41421356237	
                EXX	
                CALL	ICP0		;MANTISSA>SQR(2)?	
                LD	A,C		;EXPONENT	
                LD	C,80H		;1 <= X < 2	
                JR	C,LN4	
                DEC	C	
                INC	A	
LN4:            PUSH	AF		;SAVE EXPONENT	
                CALL	RATIO		;X=(X-1)/(X+1)	
                CALL	PUSH5	
                CALL	SQUARE		;PUSH X*X	
                CALL	POLY	
                DW	0CC48H		;a(9)	
                DW	74FBH	
                DB	7DH	
                DW	0AEAFH		;a(7)	
                DW	11FFH	
                DB	7EH	
                DW	0D98CH		;a(5)	
                DW	4CCDH	
                DB	7EH	
                DW	0A9E3H		;a(3)	
                DW	2AAAH	
                DB	7FH	
                DW	0		;a(1)	
                DW	0	
                DB	81H	
                CALL	POP5	
                CALL	POP5	
                CALL	FMUL	
                POP	AF		;EXPONENT	
                CALL	PUSH5	
                EX	AF,AF'	
                CALL	ZEROmat	
                EX	AF,AF'	
                SUB	80H	
                JR	Z,LN3	
                JR	NC,LN1	
                CPL	
                INC	A	
LN1:            LD	H,A	
                LD	C,87H	
                PUSH	AF	
                CALL	FLOAT	
                RES	7,H	
                CALL	LN2	
                CALL	FMUL	
                POP	AF	
                JR	NC,LN3	
                JP	M,LN3	
                SET	7,H	
LN3:            CALL	POP5	
                CALL	FADD	
                XOR	A	
                RET	
;
;LOG - base-10 logarithm.
;Result is floating-point numeric.
;
LOG:            CALL	LN	
                LD	DE,5E5BH	;LOG(e)	
                EXX	
                LD	DE,0D8A9H	
                EXX	
                LD	B,7EH	
                CALL	FMUL	
                XOR	A	
                RET	
;
;ASN - Arc-sine
;Result is floating-point numeric.
;
ASN:            CALL	SFLOAT	
                CALL	PUSH5	
                CALL	COPY	
                CALL	FMUL	
                CALL	DONE	
                CALL	RSUB	
                CALL	SQR0	
                CALL	POP5	
                INC	C	
                DEC	C	
                LD	A,2	
                PUSH	DE	
                JR	Z,ACS1	
                POP	DE	
                CALL	RDIV	
                JR	ATN0	
;
;ATN - arc-tangent
;Result is floating-point numeric.
;
ATN:            CALL	SFLOAT	
ATN0:           PUSH	HL		;SAVE SIGN	
                RES	7,H	
                LD	DE,5413H	;TAN(PI/8)=SQR(2)-1	
                EXX	
                LD	DE,0CCD0H	
                EXX	
                LD	B,7EH	
                CALL	FCP0		;COMPARE	
                LD	B,0	
                JR	C,ATN2	
                LD	DE,1A82H	;TAN(3*PI/8)=SQR(2)+1	
                EXX	
                LD	DE,799AH	
                EXX	
                LD	B,81H	
                CALL	FCP0		;COMPARE	
                JR	C,ATN1	
                CALL	RECIP		;X=1/X	
                LD	B,2	
                JP	ATN2	
ATN1:           CALL	RATIO		;X=(X-1)/(X+1)	
                LD	B,1	
ATN2:           PUSH	BC		;SAVE FLAG	
                CALL	PUSH5	
                CALL	SQUARE		;PUSH X*X	
                CALL	POLY	
                DW	0F335H		;a(13)	
                DW	37D8H	
                DB	7BH	
                DW	6B91H		;a(11)	
                DW	0AAB9H	
                DB	7CH	
                DW	41DEH		;a(9)	
                DW	6197H	
                DB	7CH	
                DW	9D7BH		;a(7)	
                DW	9237H	
                DB	7DH	
                DW	2A5AH		;a(5)	
                DW	4CCCH	
                DB	7DH	
                DW	0A95CH		;a(3)	
                DW	0AAAAH	
                DB	7EH	
                DW	0		;a(1)	
                DW	0	
                DB	80H	
                CALL	POP5	
                CALL	POP5	
                CALL	FMUL	
                POP	AF	
ACS1:           CALL	PIBY4		;PI/4	
                RRA	
                PUSH	AF	
                CALL	C,FADD	
                POP	AF	
                INC	B	
                RRA	
                CALL	C,RSUB	
                POP	AF	
                OR	A	
                RET	P	
                SET	7,H		;MAKE NEGATIVE	
                XOR	A	
                RET	
;
;ACS - Arc cosine=PI/2-ASN.
;Result is floating point numeric.
;
ACS:            CALL	ASN	
                LD	A,2	
                PUSH	AF	
                JR	ACS1	
;
;Function STR - convert numeric value to ASCII string.
;   Inputs: HLH'L'C = integer or floating-point number
;           DE = address at which to store string
;           IX = address of @% format control
;  Outputs: String stored, with NUL terminator
;
;First normalise for decimal output:
;
STRmat:            CALL	SFLOAT	
                LD	B,0		;DEFAULT PT. POSITION	
                BIT	7,H		;NEGATIVE?	
                JR	Z,STR10	
                RES	7,H	
                LD	A,'-'	
                LD	(DE),A		;STORE SIGN	
                INC	DE	
STR10:          XOR	A		;CLEAR A	
                CP	C	
                JR	Z,STR2mat		;ZERO	
                PUSH	DE		;SAVE TEXT POINTER	
                LD	A,B	
STR11:          PUSH	AF		;SAVE DECIMAL COUNTER	
                LD	A,C		;BINARY EXPONENT	
                CP	161	
                JR	NC,STR14	
                CP	155	
                JR	NC,STR15	
                CPL	
                CP	225	
                JR	C,STR13	
                LD	A,-8	
STR13:          ADD	A,28	
                CALL	POWR10	
                PUSH	AF	
                CALL	FMUL	
                POP	AF	
                LD	B,A	
                POP	AF	
                SUB	B	
                JR	STR11	
STR14:          SUB	32	
                CALL	POWR10	
                PUSH	AF	
                CALL	FDIV	
                POP	AF	
                LD	B,A	
                POP	AF	
                ADD	A,B	
                JR	STR11	
STR15:          LD	A,9	
                CALL	POWR10		;10^9	
                CALL	FCP0	
                LD	A,C	
                POP	BC	
                LD	C,A	
                SET	7,H		;IMPLIED 1	
                CALL	C,X10B		;X10, DEC B	
                POP	DE		;RESTORE TEXT POINTER	
                RES	7,C	
                LD	A,0	
                RLA			;PUT CARRY IN LSB	
;
;At this point decimal normalisation has been done,
;now convert to decimal digits:
;      AHLH'L' = number in normalised integer form
;            B = decimal place adjustment
;            C = binary place adjustment (29-33)
;
STR2mat:           INC	C	
                EX	AF,AF'		;SAVE A	
                LD	A,B	
                BIT	1,(IX+2)	
                JR	NZ,STR20	
                XOR	A	
                CP	(IX+1)	
                JR	Z,STR21	
                LD	A,-10	
STR20:          ADD	A,(IX+1)	;SIG. FIG. COUNT	
                OR	A		;CLEAR CARRY	
                JP	M,STR21	
                XOR	A	
STR21:          PUSH	AF	
                EX	AF,AF'		;RESTORE A	
STR22:          CALL	X2		;RL AHLH'L'	
                ADC	A,A	
                CP	10	
                JR	C,STR23	
                SUB	10	
                EXX	
                INC	L		;SET RESULT BIT	
                EXX	
STR23:          DEC	C	
                JR	NZ,STR22	;32 TIMES	
                LD	C,A		;REMAINDER	
                LD	A,H	
                AND	3FH		;CLEAR OUT JUNK	
                LD	H,A	
                POP	AF	
                JP	P,STR24	
                INC	A	
                JR	NZ,STR26	
                LD	A,4	
                CP	C		;ROUND UP?	
                LD	A,0	
                JR	STR26	
STR24:          PUSH	AF	
                LD	A,C	
                ADC	A,'0'		;ADD CARRY	
                CP	'0'	
                JR	Z,STR25		;SUPPRESS ZERO	
                CP	'9'+1	
                CCF	
                JR	NC,STR26	
STR25:          EX	(SP),HL	
                BIT	6,L		;ZERO FLAG	
                EX	(SP),HL	
                JR	NZ,STR27	
                LD	A,'0'	
STR26:          INC	A		;SET +VE	
                DEC	A	
                PUSH	AF		;PUT ON STACK + CARRY	
STR27:          INC	B	
                CALL	TESTmat		;IS HLH'L' ZERO?	
                LD	C,32	
                LD	A,0	
                JR	NZ,STR22	
                POP	AF	
                PUSH	AF	
                LD	A,0	
                JR	C,STR22	
;
;At this point, the decimal character string is stored
; on the stack. Trailing zeroes are suppressed and may
; need to be replaced.
;B register holds decimal point position.
;Now format number and store as ASCII string:
;
STR3:           EX	DE,HL		;STRING POINTER	
                LD	C,-1		;FLAG "E"	
                LD	D,1	
                LD	E,(IX+1)	;f2	
                BIT	0,(IX+2)	
                JR	NZ,STR34	;E MODE	
                BIT	1,(IX+2)	
                JR	Z,STR31	
                LD	A,B		;F MODE	
                OR	A	
                JR	Z,STR30	
                JP	M,STR30	
                LD	D,B	
STR30:          LD	A,D	
                ADD	A,(IX+1)	
                LD	E,A	
                CP	11	
                JR	C,STR32	
STR31:          LD	A,B		;G MODE	
                LD	DE,101H	
                OR	A	
                JP	M,STR34	
                JR	Z,STR32	
                LD	A,(IX+1)	
                OR	A	
                JR	NZ,STR3A	
                LD	A,10	
STR3A:          CP	B	
                JR	C,STR34	
                LD	D,B	
                LD	E,B	
STR32:          LD	A,B	
                ADD	A,129	
                LD	C,A	
STR34:          SET	7,D	
                DEC	E	
STR35:          LD	A,D	
                CP	C	
                JR	NC,STR33	
STR36:          POP	AF	
                JR	Z,STR37	
                JP	P,STR38	
STR37:          PUSH	AF	
                INC	E	
                DEC	E	
                JP	M,STR4	
STR33:          LD	A,'0'	
STR38:          DEC	D	
                JP	PO,STR39	
                LD	(HL),'.'	
                INC	HL	
STR39:          LD	(HL),A	
                INC	HL	
                DEC	E	
                JP	P,STR35	
                JR	STR36	
;
STR4:           POP	AF	
STR40:          INC	C	
                LD	C,L	
                JR	NZ,STR44	
                LD	(HL),'E'	;EXPONENT	
                INC	HL	
                LD	A,B	
                DEC	A	
                JP	P,STR41	
                LD	(HL),'-'	
                INC	HL	
                NEG	
STR41:          LD	(HL),'0'	
                JR	Z,STR47	
                CP	10	
                LD	B,A	
                LD	A,':'	
                JR	C,STR42	
                INC	HL	
                LD	(HL),'0'	
STR42:          INC	(HL)	
                CP	(HL)	
                JR	NZ,STR43	
                LD	(HL),'0'	
                DEC	HL	
                INC	(HL)	
                INC	HL	
STR43:          DJNZ	STR42	
STR47:          INC	HL	
STR44:          EX	DE,HL	
                RET	
;
;Support subroutines:
;
;CON - Get unsigned numeric constant from ASCII string.
;   Inputs: ASCII string at (IX).
;  Outputs: Variable-type result in HLH'L'C
;           IX updated (points to delimiter)
;           A7 = 0 (numeric marker)
;
CON:            CALL	ZEROmat		;INITIALISE TO ZERO	
                LD	C,0		;TRUNCATION COUNTER	
                CALL	NUMBERmat		;GET INTEGER PART	
                CP	'.'	
                LD	B,0		;DECL. PLACE COUNTER	
                CALL	Z,NUMBIX	;GET FRACTION PART	
                CP	'E'	
                LD	A,0		;INITIALISE EXPONENT	
                CALL	Z,GETEXP	;GET EXPONENT	
                BIT	7,H	
                JR	NZ,CON0		;INTEGER OVERFLOW	
                OR	A	
                JR	NZ,CON0		;EXPONENT NON-ZERO	
                CP	B	
                JR	NZ,CON0		;DECIMAL POINT	
                CP	C	
                RET	Z		;INTEGER	
CON0:           SUB	B	
                ADD	A,C	
                LD	C,159	
                CALL	FLOAT	
                RES	7,H		;DITCH IMPLIED 1	
                OR	A	
                RET	Z		;DONE	
                JP	M,CON2		;NEGATIVE EXPONENT	
                CALL	POWR10	
                CALL	FMUL		;SCALE	
                XOR	A	
                RET	
CON2:           CP	-38	
                JR	C,CON3		;CAN'T SCALE IN ONE GO	
                NEG	
                CALL	POWR10	
                CALL	FDIV		;SCALE	
                XOR	A	
                RET	
CON3:           PUSH	AF	
                LD	A,38	
                CALL	POWR10	
                CALL	FDIV	
                POP	AF	
                ADD	A,38	
                JR	CON2	
;
;GETEXP - Get decimal exponent from string
;     Inputs: ASCII string at (IX)
;             (IX points at 'E')
;             A = initial value
;    Outputs: A = new exponent
;             IX updated.
;   Destroys: A,A',IX,F,F'
;
GETEXP:         PUSH	BC		;SAVE REGISTERS	
                LD	B,A		;INITIAL VALUE	
                LD	C,2		;2 DIGITS MAX	
                INC	IX		;BUMP PAST 'E'	
                CALL	SIGNQ	
                EX	AF,AF'		;SAVE EXPONENT SIGN	
GETEX1:         CALL	DIGITQ	
                JR	C,GETEX2	
                LD	A,B		;B=B*10	
                ADD	A,A	
                ADD	A,A	
                ADD	A,B	
                ADD	A,A	
                LD	B,A	
                LD	A,(IX)		;GET BACK DIGIT	
                INC	IX	
                AND	0FH		;MASK UNWANTED BITS	
                ADD	A,B		;ADD IN DIGIT	
                LD	B,A	
                DEC	C	
                JP	P,GETEX1	
                LD	B,100		;FORCE OVERFLOW	
                JR	GETEX1	
GETEX2:         EX	AF,AF'		;RESTORE SIGN	
                CP	'-'	
                LD	A,B	
                POP	BC		;RESTORE	
                RET	NZ	
                NEG			;NEGATE EXPONENT	
                RET	
;
;NUMBER: Get unsigned integer from string.
;    Inputs: string at (IX)
;            C = truncated digit count
;                (initially zero)
;            B = total digit count
;            HLH'L' = initial value
;   Outputs: HLH'L' = number (binary integer)
;            A = delimiter.
;            B, C & IX updated
;  Destroys: A,B,C,D,E,H,L,B',C',D',E',H',L',IX,F
;
NUMBIX:         INC	IX	
NUMBERmat:         CALL	DIGITQ	
                RET	C	
                INC	B		;INCREMENT DIGIT COUNT	
                INC	IX	
                CALL	X10		;*10 & COPY OLD VALUE	
                JR	C,NUMB1		;OVERFLOW	
                DEC	C		;SEE IF TRUNCATED	
                INC	C	
                JR	NZ,NUMB1	;IMPORTANT!	
                AND	0FH	
                EXX	
                LD	B,0	
                LD	C,A	
                ADD	HL,BC		;ADD IN DIGIT	
                EXX	
                JR	NC,NUMBERmat	
                INC	HL		;CARRY	
                LD	A,H	
                OR	L	
                JR	NZ,NUMBERmat	
NUMB1:          INC	C		;TRUNCATION COUNTER	
                CALL	SWAP1		;RESTORE PREVIOUS VALUE	
                JR	NUMBERmat	
;
;FIX - Fix number to specified exponent value.
;    Inputs: HLH'L'C = +ve non-zero number (floated)
;            A = desired exponent (A>C)
;   Outputs: HLH'L'C = fixed number (unsigned)
;            fraction shifted into B'C'
;            A'F' positive if integer input
;  Destroys: C,H,L,A',B',C',H',L',F,F'
;
FIX:            EX	AF,AF'	
                XOR	A	
                EX	AF,AF'	
                SET	7,H		;IMPLIED 1	
FIX1:           CALL	DIV2	
                CP	C	
                RET	Z	
                JP	NC,FIX1	
                JP	OFLOW	
;
;SFIXmat - Convert to integer if necessary.
;    Input: Variable-type number in HLH'L'C
;   Output: Integer in HLH'L', C=0
; Destroys: A,C,H,L,A',B',C',H',L',F,F'
;
;NEGATE - Negate HLH'L'
;    Destroys: H,L,H',L',F
;
FIX2:           CALL	SWAP	
                CALL	SFIXmat	
                CALL	SWAP	
SFIXmat:           DEC	C	
                INC	C	
                RET	Z		;INTEGER/ZERO	
                BIT	7,H		;SIGN	
                PUSH	AF	
                LD	A,159	
                CALL	FIX	
                POP	AF	
                LD	C,0	
                RET	Z	
NEGATE:         OR	A		;CLEAR CARRY	
                EXX	
NEG0:           PUSH	DE	
                EX	DE,HL	
                LD	HL,0	
                SBC	HL,DE	
                POP	DE	
                EXX	
                PUSH	DE	
                EX	DE,HL	
                LD	HL,0	
                SBC	HL,DE	
                POP	DE	
                RET	
;
;NEG - Negate HLH'L'B'C'
;    Also complements A (used in FADD)
;    Destroys: A,H,L,B',C',H',L',F
;
NEG:            EXX	
                CPL	
                PUSH	HL	
                OR	A		;CLEAR CARRY	
                SBC	HL,HL	
                SBC	HL,BC	
                LD	B,H	
                LD	C,L	
                POP	HL	
                JR	NEG0	
;
;SCALE - Trig scaling.
;MOD48 - 48-bit floating-point "modulus" (remainder).
;   Inputs: HLH'L'C unsigned floating-point dividend
;           DED'E'B'C'B unsigned 48-bit FP divisor
;  Outputs: HLH'L'C floating point remainder (H7=1)
;           E = quotient (bit 7 is sticky)
; Destroys: A,B,C,D,E,H,L,B',C',D',E',H',L',IX,F
;FLO48 - Float unsigned number (48 bits)
;    Input/output in HLH'L'B'C'C
;   Destroys: C,H,L,B',C',H',L',F
;
SCALE:          LD	A,150	
                CP	C	
                LD	A,ACLOST	
                JP	C,ERROR_mat		;"Accuracy lost"	
                CALL	PIBY4	
                EXX	
                LD	BC,2169H	;3.141592653589793238	
                EXX	
MOD48:          SET	7,D		;IMPLIED 1	
                SET	7,H	
                LD	A,C	
                LD	C,0		;INIT QUOTIENT	
                LD	IX,0	
                PUSH	IX		;PUT ZERO ON STACK	
                CP	B	
                JR	C,MOD485	;DIVIDEND<DIVISOR	
MOD481:         EXX			;CARRY=0 HERE	
                EX	(SP),HL	
                SBC	HL,BC	
                EX	(SP),HL	
                SBC	HL,DE	
                EXX	
                SBC	HL,DE	
                JR	NC,MOD482	;DIVIDEND>=DIVISOR	
                EXX	
                EX	(SP),HL	
                ADD	HL,BC	
                EX	(SP),HL	
                ADC	HL,DE	
                EXX	
                ADC	HL,DE	
MOD482:         CCF	
                RL	C		;QUOTIENT	
                JR	NC,MOD483	
                SET	7,C		;STICKY BIT	
MOD483:         DEC	A	
                CP	B	
                JR	C,MOD484	;DIVIDEND<DIVISOR	
                EX	(SP),HL	
                ADD	HL,HL		;DIVIDEND * 2	
                EX	(SP),HL	
                EXX	
                ADC	HL,HL	
                EXX	
                ADC	HL,HL	
                JR	NC,MOD481	;AGAIN	
                OR	A	
                EXX	
                EX	(SP),HL	
                SBC	HL,BC		;OVERFLOW, SO SUBTRACT	
                EX	(SP),HL	
                SBC	HL,DE	
                EXX	
                SBC	HL,DE	
                OR	A	
                JR	MOD482	
;
MOD484:         INC	A	
MOD485:         LD	E,C		;QUOTIENT	
                LD	C,A		;REMAINDER EXPONENT	
                EXX	
                POP	BC	
                EXX	
FLO48:          BIT	7,H	
                RET	NZ	
                EXX	
                SLA	C	
                RL	B	
                ADC	HL,HL	
                EXX	
                ADC	HL,HL	
                DEC	C	
                JP	NZ,FLO48	
                RET	
;
;Float unsigned number
;    Input/output in HLH'L'C
;   Destroys: C,H,L,H',L',F
;
FLOAT:          BIT	7,H	
                RET	NZ	
                EXX			;SAME AS "X2"	
                ADD	HL,HL		;TIME-CRITICAL	
                EXX			;REGION	
                ADC	HL,HL		;(BENCHMARKS)	
                DEC	C	
                JP	NZ,FLOAT	
                RET	
;
;SFLOAT - Convert to floating-point if necessary.
;    Input: Variable-type number in HLH'L'C
;    Output: Floating-point in HLH'L'C
;    Destroys: A,C,H,L,H',L',F
;
FLOATA:         EX	AF,AF'	
                ; ADD	A,(RTABLE-DTABLE)/2	
                ADD	A,RTABLE-DTABLE/2	
                EX	AF,AF'	
FLOAT2:         CALL	SWAP	
                CALL	SFLOAT	
                CALL	SWAP	
SFLOAT:         DEC	C	
                INC	C	
                RET	NZ		;ALREADY FLOATING-POINT	
                CALL	TESTmat	
                RET	Z		;ZERO	
                LD	A,H	
                OR	A	
                CALL	M,NEGATE	
                LD	C,159	
                CALL	FLOAT	
                OR	A	
                RET	M		;NEGATIVE	
                RES	7,H	
                RET	
;
;ROUND UP
;Return with carry set if 32-bit overflow
;   Destroys: H,L,B',C',H',L',F
;
ADD1:           EXX	
                LD	BC,1	
                ADD	HL,BC	
                EXX	
                RET	NC	
                PUSH	BC	
                LD	BC,1	
                ADD	HL,BC	
                POP	BC	
                RET	
;
;ODD - Add one if even, leave alone if odd.
; (Used to perform unbiassed rounding, i.e.
;  number is rounded up half the time)
;    Destroys: L',F (carry cleared)
;
ODD:            OR	A		;CLEAR CARRY	
                EXX	
                SET	0,L		;MAKE ODD	
                EXX	
                RET	
;
;SWAP - Swap arguments.
;    Exchanges DE,HL D'E',H'L' and B,C
;    Destroys: A,B,C,D,E,H,L,D',E',H',L'
;SWAP1 - Swap DEHL with D'E'H'L'
;    Destroys: D,E,H,L,D',E',H',L'
;
SWAP:           LD	A,C	
                LD	C,B	
                LD	B,A	
SWAP1:          EX	DE,HL	
                EXX	
                EX	DE,HL	
                EXX	
                RET	
;
;DIV2 - destroys C,H,L,A',B',C',H',L',F,F'
;INCC - destroys C,F
;OFLOW
;
DIV2:           CALL	D2	
                EXX	
                RR	B	
                RR	C	
                EX	AF,AF'	
                OR	B	
                EX	AF,AF'	
                EXX	
INCC:           INC	C	
                RET	NZ	
OFLOW:          LD	A,TOOBIG	
                JP	ERROR_mat		;"Too big"	
;
;FTEST - Test for zero & sign
;    Output: A=0 if zero, A=&40 if +ve, A=&C0 if -ve
;
FTEST:          CALL	TESTmat	
                RET	Z	
                LD	A,H	
                AND	10000000B	
                OR	01000000B	
                RET	
;
;TEST - Test HLH'L' for zero.
;    Output: Z-flag set & A=0 if HLH'L'=0
;    Destroys: A,F
;
TESTmat:           LD	A,H	
                OR	L	
                EXX	
                OR	H	
                OR	L	
                EXX	
                RET	
;
;FCOMP - Compare two numbers
;    Output: A=0 if equal, A=&40 if L>R, A=&C0 if L<R
;
FCOMP:          LD	A,B	
                OR	C		;Both integer?	
                JR	NZ,FCOMP1	
                CALL	ICP	
FCOMP0:         LD	A,0	
                RET	Z		;Equal	
                LD	A,80H	
                RRA	
                RET	
;
FCOMP1:         CALL	FLOAT2		;Float both	
                CALL	FCP	
                JR	FCOMP0	
;
;Integer and floating point compare.
;Sets carry & zero flags according to HLH'L'C-DED'E'B
;Result pre-set to FALSE
;ICP1, FCP1 destroy A,F
;
;ZERO - Return zero.
; Destroys: A,C,H,L,H',L'
;
ICP:            CALL	ICP1	
ZEROmat:           LD	A,0	
                EXX	
                LD	H,A	
                LD	L,A	
                EXX	
                LD	H,A	
                LD	L,A	
                LD	C,A	
                RET	
;
FCP:            CALL	FCP1	
                JR	ZEROmat		;PRESET FALSE	
;
FCP0:           LD	A,C	
                CP	B		;COMPARE EXPONENTS	
                RET	NZ	
ICP0:           SBC	HL,DE		;COMP MANTISSA MSB	
                ADD	HL,DE	
                RET	NZ	
                EXX	
                SBC	HL,DE		;COMP MANTISSA LSB	
                ADD	HL,DE	
                EXX	
                RET	
;
FCP1:           LD	A,H	
                XOR	D	
                LD	A,H	
                RLA	
                RET	M	
                JR	NC,FCP0	
                CALL	FCP0	
                RET	Z		;** V0.1 BUG FIX	
                CCF	
                RET	
;
ICP1:           LD	A,H	
                XOR	D	
                JP	P,ICP0	
                LD	A,H	
                RLA	
                RET	
;
;ADD - Integer add.
;Carry, sign & zero flags valid on exit
;    Destroys: H,L,H',L',F
;
X10B:           DEC	B	
                INC	C	
X5:             CALL	COPY0	
                CALL	D2C	
                CALL	D2C	
                EX	AF,AF'		;SAVE CARRY	
ADD:            EXX	
                ADD	HL,DE	
                EXX	
                ADC	HL,DE	
                RET	
;
;SUB - Integer subtract.
;Carry, sign & zero flags valid on exit
;    Destroys: H,L,H',L',F
;
SUB:            EXX	
                OR	A	
                SBC	HL,DE	
                EXX	
                SBC	HL,DE	
                RET	
;
;X10 - unsigned integer * 10
;   Inputs: HLH'L' initial value
;  Outputs: DED'E' = initial HLH'L'
;           Carry bit set if overflow
;           If carry not set HLH'L'=result
; Destroys: D,E,H,L,D',E',H',L',F
;X2 - Multiply HLH'L' by 2 as 32-bit integer.
;    Carry set if MSB=1 before shift.
;    Sign set if MSB=1 after shift.
;    Destroys: H,L,H',L',F
;
X10:            CALL	COPY0		;DED'E'=HLH'L'	
                CALL	X2	
                RET	C		;TOO BIG	
                CALL	X2	
                RET	C	
                CALL	ADD	
                RET	C	
X2:             EXX	
                ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                RET	
;
;D2 - Divide HLH'L' by 2 as 32-bit integer.
;    Carry set if LSB=1 before shift.
;    Destroys: H,L,H',L',F
;
D2C:            INC	C	
D2:             SRL	H	
                RR	L	
                EXX	
                RR	H	
                RR	L	
                EXX	
                RET	
;
;COPY - COPY HLH'L'C INTO DED'E'B
;  Destroys: B,C,D,E,H,L,D',E',H',L'
;
COPY:           LD	B,C	
COPY0:          LD	D,H	
                LD	E,L	
                EXX	
                LD	D,H	
                LD	E,L	
                EXX	
                RET	
;
;SQUARE - PUSH X*X
;PUSH5 - PUSH HLH'L'C ONTO STACK.
;  Destroys: SP,IX
;
SQUARE:         CALL	COPY	
                CALL	FMUL	
PUSH5:          POP	IX		;RETURN ADDRESS	
                PUSH	BC	
                PUSH	HL	
                EXX	
                PUSH	HL	
                EXX	
                JP	(IX)		;"RETURN"	
;
;POP5 - POP DED'E'B OFF STACK.
;  Destroys: A,B,D,E,D',E',SP,IX
;
POP5:           POP	IX		;RETURN ADDRESS	
                EXX	
                POP	DE	
                EXX	
                POP	DE	
                LD	A,C	
                POP	BC	
                LD	B,C	
                LD	C,A	
                JP	(IX)		;"RETURN"	
;
;RATIO - Calculate (X-1)/(X+1)
;    Inputs: X in HLH'L'C
;   Outputs: (X-1)/(X+1) in HLH'L'C
;  Destroys: Everything except IY,SP,I
;
RATIO:          CALL	PUSH5		;SAVE X	
                CALL	DONE	
                CALL	FADD	
                CALL	POP5		;RESTORE X	
                CALL	PUSH5		;SAVE X+1	
                CALL	SWAP	
                CALL	DONE	
                CALL	FSUB	
                CALL	POP5		;RESTORE X+1	
                JP	FDIV	
;
;POLY - Evaluate a polynomial.
;    Inputs: X in HLH'L'C and also stored at (SP+2)
;            Polynomial coefficients follow call.
;   Outputs: Result in HLH'L'C
;  Destroys: Everything except IY,SP,I
;Routine terminates on finding a coefficient >=1.
;Note: The last coefficient is EXECUTED on return
;      so must contain only innocuous bytes!
;
POLY:           LD	IX,2	
                ADD	IX,SP	
                EX	(SP),IX	
                CALL	DLOAD5		;FIRST COEFFICIENT	
POLY1:          CALL	FMUL	
                LD	DE,5	
                ADD	IX,DE	
                CALL	DLOAD5		;NEXT COEFFICIENT	
                EX	(SP),IX	
                INC	B	
                DEC	B		;TEST	
                JP	M,FADD	
                CALL	FADD	
                CALL	DLOAD5		;X	
                EX	(SP),IX	
                JR	POLY1	
;
;POWR10 - Calculate power of ten.
;    Inputs: A=power of 10 required (A<128)
;            A=binary exponent to be exceeded (A>=128)
;   Outputs: DED'E'B = result
;            A = actual power of ten returned
;  Destroys: A,B,D,E,A',D',E',F,F'
;
POWR10:         INC	A	
                EX	AF,AF'	
                PUSH	HL	
                EXX	
                PUSH	HL	
                EXX	
                CALL	DONE	
                CALL	SWAP	
                XOR	A	
POWR11:         EX	AF,AF'	
                DEC	A	
                JR	Z,POWR14	;EXITmat TYPE 1	
                JP	P,POWR13	
                CP	C	
                JR	C,POWR14	;EXITmat TYPE 2	
                INC	A	
POWR13:         EX	AF,AF'	
                INC	A	
                SET	7,H	
                CALL	X5	
                JR	NC,POWR12	
                EX	AF,AF'	
                CALL	D2C	
                EX	AF,AF'	
POWR12:         EX	AF,AF'	
                CALL	C,ADD1		;ROUND UP	
                INC	C	
                JP	M,POWR11	
                JP	OFLOW	
POWR14:         CALL	SWAP	
                RES	7,D	
                EXX	
                POP	HL	
                EXX	
                POP	HL	
                EX	AF,AF'	
                RET	
;
;DIVA, DIVB - DIVISION PRIMITIVE.
;    Function: D'E'DE = H'L'HLD'E'DE / B'C'BC
;              Remainder in H'L'HL
;    Inputs: A = loop counter (normally -32)
;    Destroys: A,D,E,H,L,D',E',H',L',F
;
DIVA:           OR	A		;CLEAR CARRY	
DIV0:           SBC	HL,BC		;DIVIDEND-DIVISOR	
                EXX	
                SBC	HL,BC	
                EXX	
                JR	NC,DIV1	
                ADD	HL,BC		;DIVIDEND+DIVISOR	
                EXX	
                ADC	HL,BC	
                EXX	
DIV1:           CCF	
DIVC:           RL	E		;SHIFT RESULT INTO DE	
                RL	D	
                EXX	
                RL	E	
                RL	D	
                EXX	
                INC	A	
                RET	P	
DIVB:           ADC	HL,HL		;DIVIDEND*2	
                EXX	
                ADC	HL,HL	
                EXX	
                JR	NC,DIV0	
                OR	A	
                SBC	HL,BC		;DIVIDEND-DIVISOR	
                EXX	
                SBC	HL,BC	
                EXX	
                SCF	
                JP	DIVC	
;
;MULA, MULB - MULTIPLICATION PRIMITIVE.
;    Function: H'L'HLD'E'DE = B'C'BC * D'E'DE
;    Inputs: A = loop counter (usually -32)
;            H'L'HL = 0
;    Destroys: D,E,H,L,D',E',H',L',A,F
;
MULA:           OR	A		;CLEAR CARRY	
MUL0:           EXX	
                RR	D		;MULTIPLIER/2	
                RR	E	
                EXX	
                RR	D	
                RR	E	
                JR	NC,MUL1	
                ADD	HL,BC		;ADD IN MULTIPLICAND	
                EXX	
                ADC	HL,BC	
                EXX	
MUL1:           INC	A	
                RET	P	
MULB:           EXX	
                RR	H		;PRODUCT/2	
                RR	L	
                EXX	
                RR	H	
                RR	L	
                JP	MUL0	
;
;SQRA, SQRB - SQUARE ROOT PRIMITIVES
;    Function: B'C'BC = SQR (D'E'DE)
;    Inputs: A = loop counter (normally -31)
;            B'C'BCH'L'HL initialised to 0
;  Destroys: A,B,C,D,E,H,L,B',C',D',E',H',L',F
;
SQR1:           SBC	HL,BC	
                EXX	
                SBC	HL,BC	
                EXX	
                INC	C	
                JR	NC,SQR2	
                DEC	C	
                ADD	HL,BC	
                EXX	
                ADC	HL,BC	
                EXX	
                DEC	C	
SQR2:           INC	A	
                RET	P	
SQRA:           SLA	C	
                RL	B	
                INC	C	
                EXX	
                RL	C	
                RL	B	
                CALL	SLA8	
                CALL	SLA8	
                EXX	
                JP	NC,SQR1	
SQR3:           OR	A	
                SBC	HL,BC	
                EXX	
                SBC	HL,BC	
                EXX	
                INC	C	
                JP	SQR2	
;
SQRB:           ADD	HL,HL	
                EXX	
                ADC	HL,HL	
                EXX	
                JR	C,SQR3	
                INC	A	
                INC	C	
                SBC	HL,BC	
                EXX	
                SBC	HL,BC	
                EXX	
                RET	NC	
                ADD	HL,BC	
                EXX	
                ADC	HL,BC	
                EXX	
                DEC	C	
                RET	
;
SLA8:           EXX	
                SLA	E	
                RL	D	
                EXX	
                RL	E	
                RL	D	
                EXX	
                ADC	HL,HL	
                EXX	
                ADC	HL,HL	
                RET	
;
DIGITQ:         LD	A,(IX)	
                CP	'9'+1	
                CCF	
                RET	C	
                CP	'0'	
                RET	
;
SIGNQ:          LD	A,(IX)	
                INC	IX	
                CP	' '	
                JR	Z,SIGNQ	
                CP	'+'	
                RET	Z	
                CP	'-'	
                RET	Z	
                DEC	IX	
                RET	
;
ABS2:           EX	AF,AF'	
                BIT	7,H	
                CALL	NZ,NEGATE	;MAKE ARGUMENTS +VE	
                CALL	SWAP	
                BIT	7,H	
                CALL	NZ,NEGATE	
                LD	B,H	
                LD	C,L	
                LD	HL,0	
                EXX	
                LD	B,H	
                LD	C,L	
                LD	HL,0	
                RET	
;
;                END	
; --- End math.asm ---

; --- Begin data.asm ---
;
;Automatically created from original source on 2024-12-15 15:29:12
;
                .ASSUME ADL = 0	
;	.ORG 0x0000
;                DEFINE LORAM, SPACE = ROM	
;                SEGMENT LORAM	
;
;                XDEF	FLAGS	
;                XDEF	OSWRCHPT	
;                XDEF	OSWRCHCH	
;                XDEF	OSWRCHFH	
;                XDEF	KEYDOWN	
;                XDEF	KEYASCII	
;                XDEF	KEYCOUNT	
;                XDEF	SCRAP	
;                XDEF	BUFFER	
;                XDEF	LISTON	
;                XDEF	PAGE_	
;
FLAGS:          DS	1	
OSWRCHPT:       DS	2	
OSWRCHCH:       DS	1	
OSWRCHFH:       DS	1	
KEYDOWN:        DS	1	
KEYASCII:       DS	1	
KEYCOUNT:       DS	1	
SCRAP:          DS	31	
;
end_binary: ;  for 05_assemble.py to know where to truncate the binary file

                ALIGN 256	
;
;RAM MODULE FOR BBC BASIC INTERPRETER
;FOR USE WITH VERSION 5.0 OF BBC BASIC
;(C) COPYRIGHT R.T.RUSSELL 1981-2024
;
;                XDEF	ACCS	
;                XDEF	BUFFER	
;                XDEF	ONERSP	
;                XDEF	LIBASE	
;                XDEF	PAGE_	
;                XDEF	LOMEM	
;                XDEF	FREE	
;                XDEF	HIMEM	
;                XDEF	RANDOM	
;                XDEF	COUNT	
;                XDEF	WIDTH	
;                XDEF	ERL	
;                XDEF	ERR	
;                XDEF	ERRTRP	
;                XDEF	ERRTXT	
;                XDEF	TRACEN	
;                XDEF	AUTONO	
;                XDEF	INCREM	
;                XDEF	LISTON	
;                XDEF	DATPTR	
;                XDEF	FNPTR	
;                XDEF	PROPTR	
;                XDEF	STAVAR	
;                XDEF	OC	
;                XDEF	PC	
;                XDEF	DYNVAR	
;                XDEF	CURLIN	
;                XDEF	USER	
;
;n.b. ACCS, BUFFER & STAVAR must be on page boundaries.
;
ACCS:           DS	256		;STRING ACCUMULATOR	
BUFFER:         DS	256		;STRING INPUT BUFFER	

STAVAR:         DS	27*4		;STATIC VARIABLES	
; OC:             EQU	STAVAR+15*4	;CODE ORIGIN (O%)	; restored from equs.inc
; PC:             EQU	STAVAR+16*4	;PROGRAM COUNTER (P%)	; restored from equs.inc
OC:             EQU	15*4+STAVAR	;CODE ORIGIN (O%)	; restored from equs.inc
PC:             EQU	16*4+STAVAR	;PROGRAM COUNTER (P%)	; restored from equs.inc
DYNVAR:         DS	54*2		;DYN. VARIABLE POINTERS	
FNPTR:          DS	2		;DYN. FUNCTION POINTER	
PROPTR:         DS	2		;DYN. PROCEDURE POINTER	
;
PAGE_:          DS	2		;START OF USER PROGRAM	
LOMEM:          DS	2		;START OF DYN. STORAGE	
FREE:           DS	2		;FIRST FREE-SPACE BYTE	
HIMEM:          DS	2		;FIRST BYTE ABOVE STACK	
LIBASE:         DS	2		;START OF FIRST LIBRARY	
;
TRACEN:         DS	2		;TRACE FLAG & NUMBER	
AUTONO:         DS	2		;AUTO FLAG & NUMBER	
ERRTRP:         DS	2		;ON ERROR STMT POINTER \	
ONERSP:         DS	2		;ON ERROR LOCAL STKPTR /	
ERRTXT:         DS	2		;ERROR MESSAGE POINTER	
DATPTR:         DS	2		;DATA POINTER	
ERL:            DS	2		;LINE NO OF LAST ERROR	
CURLIN:         DS	2		;POINTER TO CURRENT LINE	
RANDOM:         DS	5		;RANDOM NUMBER	
COUNT:          DS	1		;PRINT POSITION	
WIDTH:          DS	1		;PRINT WIDTH	
ERR:            DS	1		;ERROR NUMBER	
LISTON:         DS	1		;LISTO & OPT FLAG	
INCREM:         DS	1		;AUTO INCREMENT	
VDU_BUFFER:		EQU	ACCS		; Storage for VDU commands ; originally in equs.inc
;
USER:           ; END	
; --- End data.asm ---

