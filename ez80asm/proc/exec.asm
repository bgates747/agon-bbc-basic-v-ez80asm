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
; TOFF:           EQU	87H	
; TSTEP:          EQU	88H	
; TSPC:           EQU	89H	
; TTAB:           EQU	8AH	
; TELSE:          EQU	8BH	
; TTHEN:          EQU	8CH	
; TLINO:          EQU	8DH	
; TTO:            EQU	0B8H	
; TBYex:           EQU	0C0H	
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
; TRETURN:        EQU	0F8H	
; TSTOP:          EQU	0FAH	
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
TLAST:          EQU	CMDTAB_END-CMDTAB/2+TBYex-128
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
                SUB	TBYex	
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
;END:            LD	E,0	
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
EXTRAS:         CP	TELSE-TBYex	
                JR	Z,REM		;ELSE	
                CP	TERROR-TBYex	
                JR	Z,THROW		;ERROR	
                CP	TLINE-TBYex	
                JP	Z,LINE		;LINE	
                CP	TOFF-TBYex	
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
                CP	'''	
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
;    include "exec.inc"