0000	c3 52 00 	jp $0052	jp $0000
0003	ff 	rst $38	rst $00
0004	ff 	rst $38	rst $00
0005	ff 	rst $38	rst $00
0006	ff 	rst $38	rst $00
0007	ff 	rst $38	rst $00
0008	49 cf 	rst.lis $08	rst.lis $00
000a	c9 	ret	ret
000b	ff 	rst $38	rst $00
000c	ff 	rst $38	rst $00
000d	ff 	rst $38	rst $00
000e	ff 	rst $38	rst $00
000f	ff 	rst $38	rst $00
0010	49 d7 	rst.lis $10	rst.lis $00
0012	c9 	ret	ret
0013	ff 	rst $38	rst $00
0014	ff 	rst $38	rst $00
0015	ff 	rst $38	rst $00
0016	ff 	rst $38	rst $00
0017	ff 	rst $38	rst $00
0018	49 df 	rst.lis $18	rst.lis $00
001a	c9 	ret	ret
001b	ff 	rst $38	rst $00
001c	ff 	rst $38	rst $00
001d	ff 	rst $38	rst $00
001e	ff 	rst $38	rst $00
001f	ff 	rst $38	rst $00
0020	ff 	rst $38	rst $00
0021	ff 	rst $38	rst $00
0022	ff 	rst $38	rst $00
0023	ff 	rst $38	rst $00
0024	ff 	rst $38	rst $00
0025	ff 	rst $38	rst $00
0026	ff 	rst $38	rst $00
0027	ff 	rst $38	rst $00
0028	ff 	rst $38	rst $00
0029	ff 	rst $38	rst $00
002a	ff 	rst $38	rst $00
002b	ff 	rst $38	rst $00
002c	ff 	rst $38	rst $00
002d	ff 	rst $38	rst $00
002e	ff 	rst $38	rst $00
002f	ff 	rst $38	rst $00
0030	ff 	rst $38	rst $00
0031	ff 	rst $38	rst $00
0032	ff 	rst $38	rst $00
0033	ff 	rst $38	rst $00
0034	ff 	rst $38	rst $00
0035	ff 	rst $38	rst $00
0036	ff 	rst $38	rst $00
0037	ff 	rst $38	rst $00
0038	fb 	ei	ei
0039	ed 4d 	reti	reti
003b	ff 	rst $38	rst $00
003c	ff 	rst $38	rst $00
003d	ff 	rst $38	rst $00
003e	ff 	rst $38	rst $00
003f	ff 	rst $38	rst $00
0040	4d 	ld c,l	ld c,l
0041	4f 	ld c,a	ld c,a
0042	53 	ld d,e	ld d,e
0043	00 	nop	nop
0044	00 	nop	nop
0045	42 	ld b,d	ld b,d
0046	42 	ld b,d	ld b,d
0047	43 	ld b,e	ld b,e
0048	42 	ld b,d	ld b,d
0049	41 	ld b,c	ld b,c
004a	53 	ld d,e	ld d,e
004b	49 43 	ld.lis b,e	ld.lis b,e
004d	2e 42 	ld l,$42	ld l,$00
004f	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
0051	00 	nop	nop
0052	5b fd e5 	push.lil iy	push.lil iy
0055	fd 21 00 00 	ld iy,$0000	ld iy,$0000
0059	fd 39 	add iy,sp	add iy,sp
005b	5b fd e5 	push.lil iy	push.lil iy
005e	e3 	ex (sp),hl	ex (sp),hl
005f	5b e5 	push.lil hl	push.lil hl
0061	e3 	ex (sp),hl	ex (sp),hl
0062	5b f5 	push.lil af	push.lil af
0064	5b c5 	push.lil bc	push.lil bc
0066	5b d5 	push.lil de	push.lil de
0068	5b dd e5 	push.lil ix	push.lil ix
006b	ed 6e 	ld a,mb	ld a,mb
006d	dd 21 65 01 	ld ix,$0165	ld ix,$0000
0071	cd 51 01 	call $0151	call $0000
0074	5b dd e5 	push.lil ix	push.lil ix
0077	cd e1 00 	call $00e1	call $0000
007a	5b dd e1 	pop.lil ix	pop.lil ix
007d	06 00 	ld b,$00	ld b,$00
007f	cd 9a 00 	call $009a	call $0000
0082	5b dd e1 	pop.lil ix	pop.lil ix
0085	5b d1 	pop.lil de	pop.lil de
0087	5b c1 	pop.lil bc	pop.lil bc
0089	5b f1 	pop.lil af	pop.lil af
008b	eb 	ex de,hl	ex de,hl
008c	5b e1 	pop.lil hl	pop.lil hl
008e	5b fd e1 	pop.lil iy	pop.lil iy
0091	fd f9 	ld sp,iy	ld sp,iy
0093	e3 	ex (sp),hl	ex (sp),hl
0094	eb 	ex de,hl	ex de,hl
0095	5b fd e1 	pop.lil iy	pop.lil iy
0098	49 c9 	ret.lis	ret.lis
009a	21 00 52 	ld hl,$5200	ld hl,$0000
009d	36 00 	ld (hl),$00	ld (hl),$00
009f	79 	ld a,c	ld a,c
00a0	fe 02 	cp $02	cp $00
00a2	28 24 	jr z,$+$26	jr z,$+$00
00a4	38 35 	jr c,$+$37	jr c,$+$00
00a6	cd fa 44 	call $44fa	call $0000
00a9	55 	ld d,l	ld d,l
00aa	73 	ld (hl),e	ld (hl),e
00ab	61 	ld h,c	ld h,c
00ac	67 	ld h,a	ld h,a
00ad	65 	ld h,l	ld h,l
00ae	3a 0a 0d 	ld a,($0d0a)	ld a,($0000)
00b1	52 55 	ld.sil d,l	ld.sil d,l
00b3	4e 	ld c,(hl)	ld c,(hl)
00b4	20 2e 	jr nz,$+$30	jr nz,$+$00
00b6	20 3c 	jr nz,$+$3e	jr nz,$+$00
00b8	66 	ld h,(hl)	ld h,(hl)
00b9	69 	ld l,c	ld l,c
00ba	6c 	ld l,h	ld l,h
00bb	65 	ld h,l	ld h,l
00bc	6e 	ld l,(hl)	ld l,(hl)
00bd	61 	ld h,c	ld h,c
00be	6d 	ld l,l	ld l,l
00bf	65 	ld h,l	ld h,l
00c0	3e 0a 	ld a,$0a	ld a,$00
00c2	0d 	dec c	dec c
00c3	00 	nop	nop
00c4	21 00 00 	ld hl,$0000	ld hl,$0000
00c7	c9 	ret	ret
00c8	5b dd 27 03 	ld.lil hl,(ix+$03)	ld.lil hl,(ix+$00)
00cc	11 00 52 	ld de,$5200	ld de,$0000
00cf	5b 7e 	ld.lil a,(hl)	ld.lil a,(hl)
00d1	12 	ld (de),a	ld (de),a
00d2	5b 23 	inc.lil hl	inc.lil hl
00d4	1c 	inc e	inc e
00d5	20 f8 	jr nz,$-$06	jr nz,$-$00
00d7	1d 	dec e	dec e
00d8	3e 0d 	ld a,$0d	ld a,$00
00da	12 	ld (de),a	ld (de),a
00db	e1 	pop hl	pop hl
00dc	5b e5 	push.lil hl	push.lil hl
00de	c3 17 37 	jp $3717	jp $0000
00e1	01 45 00 	ld bc,$0045	ld bc,$0000
00e4	cd 3f 01 	call $013f	call $0000
00e7	5b dd 0f 00 	ld.lil (ix),bc	ld.lil (ix),bc
00eb	5b dd 23 	inc.lil ix	inc.lil ix
00ee	5b dd 23 	inc.lil ix	inc.lil ix
00f1	5b dd 23 	inc.lil ix	inc.lil ix
00f4	cd 36 01 	call $0136	call $0000
00f7	01 01 00 	ld bc,$0001	ld bc,$0000
00fa	06 0f 	ld b,$0f	ld b,$00
00fc	c5 	push bc	push bc
00fd	5b e5 	push.lil hl	push.lil hl
00ff	cd 25 01 	call $0125	call $0000
0102	79 	ld a,c	ld a,c
0103	5b d1 	pop.lil de	pop.lil de
0105	c1 	pop bc	pop bc
0106	b7 	or a	or a
0107	c8 	ret z	ret z
0108	5b dd 1f 00 	ld.lil (ix),de	ld.lil (ix),de
010c	5b e5 	push.lil hl	push.lil hl
010e	5b d1 	pop.lil de	pop.lil de
0110	cd 36 01 	call $0136	call $0000
0113	af 	xor a	xor a
0114	5b 12 	ld.lil (de),a	ld.lil (de),a
0116	5b dd 23 	inc.lil ix	inc.lil ix
0119	5b dd 23 	inc.lil ix	inc.lil ix
011c	5b dd 23 	inc.lil ix	inc.lil ix
011f	0c 	inc c	inc c
0120	79 	ld a,c	ld a,c
0121	b8 	cp b	cp b
0122	38 d8 	jr c,$-$26	jr c,$-$00
0124	c9 	ret	ret
0125	0e 00 	ld c,$00	ld c,$00
0127	5b 7e 	ld.lil a,(hl)	ld.lil a,(hl)
0129	b7 	or a	or a
012a	c8 	ret z	ret z
012b	fe 0d 	cp $0d	cp $00
012d	c8 	ret z	ret z
012e	fe 20 	cp $20	cp $00
0130	c8 	ret z	ret z
0131	5b 23 	inc.lil hl	inc.lil hl
0133	0c 	inc c	inc c
0134	18 f1 	jr $-$0d	jr $-$00
0136	5b 7e 	ld.lil a,(hl)	ld.lil a,(hl)
0138	fe 20 	cp $20	cp $00
013a	c0 	ret nz	ret nz
013b	5b 23 	inc.lil hl	inc.lil hl
013d	18 f7 	jr $-$07	jr $-$00
013f	5b e5 	push.lil hl	push.lil hl
0141	5b c5 	push.lil bc	push.lil bc
0143	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
0148	5b 39 	add.lil hl,sp	add.lil hl,sp
014a	5b 77 	ld.lil (hl),a	ld.lil (hl),a
014c	5b c1 	pop.lil bc	pop.lil bc
014e	5b e1 	pop.lil hl	pop.lil hl
0150	c9 	ret	ret
0151	5b dd e5 	push.lil ix	push.lil ix
0154	5b dd 21 02 00 00 	ld.lil ix,$000002	ld.lil ix,$000000
015a	5b dd 39 	add.lil ix,sp	add.lil ix,sp
015d	5b dd 77 00 	ld.lil (ix),a	ld.lil (ix),a
0161	5b dd e1 	pop.lil ix	pop.lil ix
0164	c9 	ret	ret
0165	00 	nop	nop
0166	00 	nop	nop
0167	00 	nop	nop
0168	00 	nop	nop
0169	00 	nop	nop
016a	00 	nop	nop
016b	00 	nop	nop
016c	00 	nop	nop
016d	00 	nop	nop
016e	00 	nop	nop
016f	00 	nop	nop
0170	00 	nop	nop
0171	00 	nop	nop
0172	00 	nop	nop
0173	00 	nop	nop
0174	00 	nop	nop
0175	00 	nop	nop
0176	00 	nop	nop
0177	00 	nop	nop
0178	00 	nop	nop
0179	00 	nop	nop
017a	00 	nop	nop
017b	00 	nop	nop
017c	00 	nop	nop
017d	00 	nop	nop
017e	00 	nop	nop
017f	00 	nop	nop
0180	00 	nop	nop
0181	00 	nop	nop
0182	00 	nop	nop
0183	00 	nop	nop
0184	00 	nop	nop
0185	00 	nop	nop
0186	00 	nop	nop
0187	00 	nop	nop
0188	00 	nop	nop
0189	00 	nop	nop
018a	00 	nop	nop
018b	00 	nop	nop
018c	00 	nop	nop
018d	00 	nop	nop
018e	00 	nop	nop
018f	00 	nop	nop
0190	00 	nop	nop
0191	00 	nop	nop
0192	00 	nop	nop
0193	00 	nop	nop
0194	00 	nop	nop
0195	3e 01 	ld a,$01	ld a,$00
0197	21 17 51 	ld hl,$5117	ld hl,$0000
019a	cd 4f 14 	call $144f	call $0000
019d	21 17 51 	ld hl,$5117	ld hl,$0000
01a0	5e 	ld e,(hl)	ld e,(hl)
01a1	23 	inc hl	inc hl
01a2	56 	ld d,(hl)	ld d,(hl)
01a3	23 	inc hl	inc hl
01a4	7e 	ld a,(hl)	ld a,(hl)
01a5	23 	inc hl	inc hl
01a6	66 	ld h,(hl)	ld h,(hl)
01a7	6f 	ld l,a	ld l,a
01a8	eb 	ex de,hl	ex de,hl
01a9	c9 	ret	ret
01aa	3e 0e 	ld a,$0e	ld a,$00
01ac	21 17 51 	ld hl,$5117	ld hl,$0000
01af	36 00 	ld (hl),$00	ld (hl),$00
01b1	cd 4f 14 	call $144f	call $0000
01b4	21 17 51 	ld hl,$5117	ld hl,$0000
01b7	11 00 52 	ld de,$5200	ld de,$0000
01ba	7e 	ld a,(hl)	ld a,(hl)
01bb	bb 	cp e	cp e
01bc	c8 	ret z	ret z
01bd	01 19 00 	ld bc,$0019	ld bc,$0000
01c0	ed b0 	ldir	ldir
01c2	c9 	ret	ret
01c3	dd e5 	push ix	push ix
01c5	dd 21 17 51 	ld ix,$5117	ld ix,$0000
01c9	dd 75 00 	ld (ix),l	ld (ix),l
01cc	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
01cf	dd 73 02 	ld (ix+$02),e	ld (ix+$00),e
01d2	dd 72 03 	ld (ix+$03),d	ld (ix+$00),d
01d5	3e 02 	ld a,$02	ld a,$00
01d7	21 17 51 	ld hl,$5117	ld hl,$0000
01da	cd 4f 14 	call $144f	call $0000
01dd	dd e1 	pop ix	pop ix
01df	c9 	ret	ret
01e0	7b 	ld a,e	ld a,e
01e1	fe 1a 	cp $1a	cp $00
01e3	d0 	ret nc	ret nc
01e4	06 00 	ld b,$00	ld b,$00
01e6	4f 	ld c,a	ld c,a
01e7	11 18 51 	ld de,$5118	ld de,$0000
01ea	21 00 52 	ld hl,$5200	ld hl,$0000
01ed	ed b0 	ldir	ldir
01ef	21 17 51 	ld hl,$5117	ld hl,$0000
01f2	77 	ld (hl),a	ld (hl),a
01f3	3e 0f 	ld a,$0f	ld a,$00
01f5	c3 4f 14 	jp $144f	jp $0000
01f8	3e 0c 	ld a,$0c	ld a,$00
01fa	c3 95 11 	jp $1195	jp $0000
01fd	3e 81 	ld a,$81	ld a,$00
01ff	cd 6d 14 	call $146d	call $0000
0202	7c 	ld a,h	ld a,h
0203	b7 	or a	or a
0204	c0 	ret nz	ret nz
0205	7d 	ld a,l	ld a,l
0206	37 	scf	scf
0207	c9 	ret	ret
0208	3e 1f 	ld a,$1f	ld a,$00
020a	cd 95 11 	call $1195	call $0000
020d	7b 	ld a,e	ld a,e
020e	cd 95 11 	call $1195	call $0000
0211	7d 	ld a,l	ld a,l
0212	c3 95 11 	jp $1195	jp $0000
0215	3e 86 	ld a,$86	ld a,$00
0217	cd 6d 14 	call $146d	call $0000
021a	5d 	ld e,l	ld e,l
021b	6c 	ld l,h	ld l,h
021c	16 00 	ld d,$00	ld d,$00
021e	62 	ld h,d	ld h,d
021f	c9 	ret	ret
0220	cd 33 18 	call $1833	call $0000
0223	d9 	exx	exx
0224	e5 	push hl	push hl
0225	cd 5d 05 	call $055d	call $0000
0228	d9 	exx	exx
0229	d1 	pop de	pop de
022a	cd ae 20 	call $20ae	call $0000
022d	dd 21 17 51 	ld ix,$5117	ld ix,$0000
0231	dd 73 00 	ld (ix),e	ld (ix),e
0234	dd 72 01 	ld (ix+$01),d	ld (ix+$00),d
0237	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
023a	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
023d	21 17 51 	ld hl,$5117	ld hl,$0000
0240	3e 09 	ld a,$09	ld a,$00
0242	cd 4f 14 	call $144f	call $0000
0245	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
0248	6f 	ld l,a	ld l,a
0249	c6 01 	add a,$01	add a,$00
024b	9f 	sbc a,a	sbc a,a
024c	67 	ld h,a	ld h,a
024d	d9 	exx	exx
024e	67 	ld h,a	ld h,a
024f	6f 	ld l,a	ld l,a
0250	af 	xor a	xor a
0251	4f 	ld c,a	ld c,a
0252	c9 	ret	ret
0253	cd 60 18 	call $1860	call $0000
0256	d9 	exx	exx
0257	3e 80 	ld a,$80	ld a,$00
0259	cd 6d 14 	call $146d	call $0000
025c	af 	xor a	xor a
025d	18 ee 	jr $-$10	jr $-$00
025f	3e 87 	ld a,$87	ld a,$00
0261	cd 6d 14 	call $146d	call $0000
0264	6c 	ld l,h	ld l,h
0265	af 	xor a	xor a
0266	67 	ld h,a	ld h,a
0267	18 e4 	jr $-$1a	jr $-$00
0269	3a fc 54 	ld a,($54fc)	ld a,($0000)
026c	6f 	ld l,a	ld l,a
026d	18 f6 	jr $-$08	jr $-$00
026f	06 00 	ld b,$00	ld b,$00
0271	dd 21 17 51 	ld ix,$5117	ld ix,$0000
0275	c5 	push bc	push bc
0276	dd e5 	push ix	push ix
0278	cd 33 18 	call $1833	call $0000
027b	d9 	exx	exx
027c	dd e1 	pop ix	pop ix
027e	c1 	pop bc	pop bc
027f	dd 75 00 	ld (ix),l	ld (ix),l
0282	78 	ld a,b	ld a,b
0283	fe 0d 	cp $0d	cp $00
0285	28 0b 	jr z,$+$0d	jr z,$+$00
0287	04 	inc b	inc b
0288	dd 23 	inc ix	inc ix
028a	c5 	push bc	push bc
028b	dd e5 	push ix	push ix
028d	cd a2 20 	call $20a2	call $0000
0290	18 e6 	jr $-$18	jr $-$00
0292	21 17 51 	ld hl,$5117	ld hl,$0000
0295	3e 08 	ld a,$08	ld a,$00
0297	cd 4f 14 	call $144f	call $0000
029a	c3 99 24 	jp $2499	jp $0000
029d	06 00 	ld b,$00	ld b,$00
029f	dd 21 17 51 	ld ix,$5117	ld ix,$0000
02a3	c5 	push bc	push bc
02a4	dd e5 	push ix	push ix
02a6	cd 33 18 	call $1833	call $0000
02a9	d9 	exx	exx
02aa	dd e1 	pop ix	pop ix
02ac	c1 	pop bc	pop bc
02ad	dd 75 00 	ld (ix),l	ld (ix),l
02b0	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
02b3	dd 23 	inc ix	inc ix
02b5	dd 23 	inc ix	inc ix
02b7	04 	inc b	inc b
02b8	04 	inc b	inc b
02b9	78 	ld a,b	ld a,b
02ba	fe 08 	cp $08	cp $00
02bc	28 08 	jr z,$+$0a	jr z,$+$00
02be	c5 	push bc	push bc
02bf	dd e5 	push ix	push ix
02c1	cd a2 20 	call $20a2	call $0000
02c4	18 e0 	jr $-$1e	jr $-$00
02c6	21 17 51 	ld hl,$5117	ld hl,$0000
02c9	3e 07 	ld a,$07	ld a,$00
02cb	cd 4f 14 	call $144f	call $0000
02ce	c3 99 24 	jp $2499	jp $0000
02d1	cd 33 18 	call $1833	call $0000
02d4	af 	xor a	xor a
02d5	32 fb 54 	ld ($54fb),a	ld ($0000),a
02d8	d9 	exx	exx
02d9	65 	ld h,l	ld h,l
02da	2e 16 	ld l,$16	ld l,$00
02dc	cd 44 05 	call $0544	call $0000
02df	18 72 	jr $+$74	jr $+$00
02e1	3e 10 	ld a,$10	ld a,$00
02e3	cd 95 11 	call $1195	call $0000
02e6	18 6b 	jr $+$6d	jr $+$00
02e8	cd 33 18 	call $1833	call $0000
02eb	d9 	exx	exx
02ec	e5 	push hl	push hl
02ed	cd 5d 05 	call $055d	call $0000
02f0	d9 	exx	exx
02f1	d1 	pop de	pop de
02f2	0e 1d 	ld c,$1d	ld c,$00
02f4	cd 38 05 	call $0538	call $0000
02f7	18 5a 	jr $+$5c	jr $+$00
02f9	cd 33 18 	call $1833	call $0000
02fc	d9 	exx	exx
02fd	fd 7e 00 	ld a,(iy)	ld a,(iy)
0300	fe 2c 	cp $2c	cp $00
0302	28 08 	jr z,$+$0a	jr z,$+$00
0304	65 	ld h,l	ld h,l
0305	2e 11 	ld l,$11	ld l,$00
0307	cd 44 05 	call $0544	call $0000
030a	18 47 	jr $+$49	jr $+$00
030c	e5 	push hl	push hl
030d	cd 5d 05 	call $055d	call $0000
0310	d9 	exx	exx
0311	eb 	ex de,hl	ex de,hl
0312	21 00 00 	ld hl,$0000	ld hl,$0000
0315	fd 7e 00 	ld a,(iy)	ld a,(iy)
0318	fe 2c 	cp $2c	cp $00
031a	20 15 	jr nz,$+$17	jr nz,$+$00
031c	d5 	push de	push de
031d	cd 5d 05 	call $055d	call $0000
0320	d9 	exx	exx
0321	e5 	push hl	push hl
0322	cd 5d 05 	call $055d	call $0000
0325	d9 	exx	exx
0326	d1 	pop de	pop de
0327	c1 	pop bc	pop bc
0328	7d 	ld a,l	ld a,l
0329	e1 	pop hl	pop hl
032a	51 	ld d,c	ld d,c
032b	4d 	ld c,l	ld c,l
032c	6b 	ld l,e	ld l,e
032d	67 	ld h,a	ld h,a
032e	1e 10 	ld e,$10	ld e,$00
0330	c5 	push bc	push bc
0331	c1 	pop bc	pop bc
0332	06 13 	ld b,$13	ld b,$00
0334	cd 34 05 	call $0534	call $0000
0337	18 1a 	jr $+$1c	jr $+$00
0339	cd 33 18 	call $1833	call $0000
033c	d9 	exx	exx
033d	1e 00 	ld e,$00	ld e,$00
033f	fd 7e 00 	ld a,(iy)	ld a,(iy)
0342	fe 2c 	cp $2c	cp $00
0344	20 06 	jr nz,$+$08	jr nz,$+$00
0346	e5 	push hl	push hl
0347	cd 5d 05 	call $055d	call $0000
034a	d9 	exx	exx
034b	d1 	pop de	pop de
034c	65 	ld h,l	ld h,l
034d	6b 	ld l,e	ld l,e
034e	16 12 	ld d,$12	ld d,$00
0350	cd 40 05 	call $0540	call $0000
0353	c3 99 24 	jp $2499	jp $0000
0356	0e 01 	ld c,$01	ld c,$00
0358	18 02 	jr $+$04	jr $+$00
035a	0e 00 	ld c,$00	ld c,$00
035c	3e 17 	ld a,$17	ld a,$00
035e	cd 95 11 	call $1195	call $0000
0361	3e 01 	ld a,$01	ld a,$00
0363	cd 95 11 	call $1195	call $0000
0366	79 	ld a,c	ld a,c
0367	06 08 	ld b,$08	ld b,$00
0369	cd 95 11 	call $1195	call $0000
036c	af 	xor a	xor a
036d	10 fa 	djnz $-$04	djnz $-$00
036f	18 e2 	jr $-$1c	jr $-$00
0371	cd 33 18 	call $1833	call $0000
0374	d9 	exx	exx
0375	e5 	push hl	push hl
0376	cd 4c 05 	call $054c	call $0000
0379	e3 	ex (sp),hl	ex (sp),hl
037a	c5 	push bc	push bc
037b	eb 	ex de,hl	ex de,hl
037c	0e 04 	ld c,$04	ld c,$00
037e	cd 32 05 	call $0532	call $0000
0381	d1 	pop de	pop de
0382	e1 	pop hl	pop hl
0383	0e 05 	ld c,$05	ld c,$00
0385	18 2a 	jr $+$2c	jr $+$00
0387	fe 03 	cp $03	cp $00
0389	f5 	push af	push af
038a	20 02 	jr nz,$+$04	jr nz,$+$00
038c	fd 23 	inc iy	inc iy
038e	cd 33 18 	call $1833	call $0000
0391	d9 	exx	exx
0392	e5 	push hl	push hl
0393	cd 5d 05 	call $055d	call $0000
0396	d9 	exx	exx
0397	e5 	push hl	push hl
0398	cd 5d 05 	call $055d	call $0000
039b	d9 	exx	exx
039c	c1 	pop bc	pop bc
039d	d1 	pop de	pop de
039e	e5 	push hl	push hl
039f	69 	ld l,c	ld l,c
03a0	60 	ld h,b	ld h,b
03a1	0e 04 	ld c,$04	ld c,$00
03a3	cd 32 05 	call $0532	call $0000
03a6	d1 	pop de	pop de
03a7	21 00 00 	ld hl,$0000	ld hl,$0000
03aa	f1 	pop af	pop af
03ab	0e 91 	ld c,$91	ld c,$00
03ad	20 02 	jr nz,$+$04	jr nz,$+$00
03af	0e 99 	ld c,$99	ld c,$00
03b1	18 6c 	jr $+$6e	jr $+$00
03b3	fe 03 	cp $03	cp $00
03b5	f5 	push af	push af
03b6	20 02 	jr nz,$+$04	jr nz,$+$00
03b8	fd 23 	inc iy	inc iy
03ba	cd 33 18 	call $1833	call $0000
03bd	d9 	exx	exx
03be	e5 	push hl	push hl
03bf	cd 4c 05 	call $054c	call $0000
03c2	e3 	ex (sp),hl	ex (sp),hl
03c3	c5 	push bc	push bc
03c4	eb 	ex de,hl	ex de,hl
03c5	0e 04 	ld c,$04	ld c,$00
03c7	cd 32 05 	call $0532	call $0000
03ca	d1 	pop de	pop de
03cb	d5 	push de	push de
03cc	21 00 00 	ld hl,$0000	ld hl,$0000
03cf	4d 	ld c,l	ld c,l
03d0	cd 32 05 	call $0532	call $0000
03d3	d1 	pop de	pop de
03d4	af 	xor a	xor a
03d5	6f 	ld l,a	ld l,a
03d6	67 	ld h,a	ld h,a
03d7	ed 52 	sbc hl,de	sbc hl,de
03d9	eb 	ex de,hl	ex de,hl
03da	e1 	pop hl	pop hl
03db	f1 	pop af	pop af
03dc	0e c1 	ld c,$c1	ld c,$00
03de	20 3f 	jr nz,$+$41	jr nz,$+$00
03e0	0e c9 	ld c,$c9	ld c,$00
03e2	18 3b 	jr $+$3d	jr $+$00
03e4	0e 04 	ld c,$04	ld c,$00
03e6	18 23 	jr $+$25	jr $+$00
03e8	0e 05 	ld c,$05	ld c,$00
03ea	18 1f 	jr $+$21	jr $+$00
03ec	0e 85 	ld c,$85	ld c,$00
03ee	18 1b 	jr $+$1d	jr $+$00
03f0	0e 45 	ld c,$45	ld c,$00
03f2	fe 0f 	cp $0f	cp $00
03f4	28 15 	jr z,$+$17	jr z,$+$00
03f6	cd 33 18 	call $1833	call $0000
03f9	d9 	exx	exx
03fa	e5 	push hl	push hl
03fb	cd 5d 05 	call $055d	call $0000
03fe	d9 	exx	exx
03ff	fd 7e 00 	ld a,(iy)	ld a,(iy)
0402	fe 2c 	cp $2c	cp $00
0404	28 12 	jr z,$+$14	jr z,$+$00
0406	d1 	pop de	pop de
0407	0e 45 	ld c,$45	ld c,$00
0409	18 14 	jr $+$16	jr $+$00
040b	fe 0f 	cp $0f	cp $00
040d	20 04 	jr nz,$+$06	jr nz,$+$00
040f	fd 23 	inc iy	inc iy
0411	cb 91 	res 2,c	res 2,c
0413	c5 	push bc	push bc
0414	cd 33 18 	call $1833	call $0000
0417	d9 	exx	exx
0418	e5 	push hl	push hl
0419	cd 5d 05 	call $055d	call $0000
041c	d9 	exx	exx
041d	d1 	pop de	pop de
041e	c1 	pop bc	pop bc
041f	cd 32 05 	call $0532	call $0000
0422	c3 99 24 	jp $2499	jp $0000
0425	fe 03 	cp $03	cp $00
0427	f5 	push af	push af
0428	20 02 	jr nz,$+$04	jr nz,$+$00
042a	fd 23 	inc iy	inc iy
042c	cd 33 18 	call $1833	call $0000
042f	d9 	exx	exx
0430	e5 	push hl	push hl
0431	cd 5d 05 	call $055d	call $0000
0434	d9 	exx	exx
0435	e5 	push hl	push hl
0436	cd 5d 05 	call $055d	call $0000
0439	d9 	exx	exx
043a	e5 	push hl	push hl
043b	fd 7e 00 	ld a,(iy)	ld a,(iy)
043e	fe 2c 	cp $2c	cp $00
0440	20 04 	jr nz,$+$06	jr nz,$+$00
0442	cd 5d 05 	call $055d	call $0000
0445	d9 	exx	exx
0446	c1 	pop bc	pop bc
0447	d1 	pop de	pop de
0448	e3 	ex (sp),hl	ex (sp),hl
0449	c5 	push bc	push bc
044a	eb 	ex de,hl	ex de,hl
044b	0e 04 	ld c,$04	ld c,$00
044d	cd 32 05 	call $0532	call $0000
0450	fd 7e 00 	ld a,(iy)	ld a,(iy)
0453	fe b8 	cp $b8	cp $00
0455	28 09 	jr z,$+$0b	jr z,$+$00
0457	d1 	pop de	pop de
0458	e1 	pop hl	pop hl
0459	f1 	pop af	pop af
045a	20 22 	jr nz,$+$24	jr nz,$+$00
045c	0e 61 	ld c,$61	ld c,$00
045e	18 bf 	jr $-$3f	jr $-$00
0460	fd 23 	inc iy	inc iy
0462	cd 33 18 	call $1833	call $0000
0465	d9 	exx	exx
0466	e5 	push hl	push hl
0467	cd 5d 05 	call $055d	call $0000
046a	d9 	exx	exx
046b	c1 	pop bc	pop bc
046c	d1 	pop de	pop de
046d	e3 	ex (sp),hl	ex (sp),hl
046e	c5 	push bc	push bc
046f	0e 00 	ld c,$00	ld c,$00
0471	cd 32 05 	call $0532	call $0000
0474	d1 	pop de	pop de
0475	e1 	pop hl	pop hl
0476	f1 	pop af	pop af
0477	0e be 	ld c,$be	ld c,$00
0479	20 01 	jr nz,$+$03	jr nz,$+$00
047b	0d 	dec c	dec c
047c	18 a1 	jr $-$5d	jr $-$00
047e	0e 09 	ld c,$09	ld c,$00
0480	e5 	push hl	push hl
0481	21 00 00 	ld hl,$0000	ld hl,$0000
0484	cd 32 05 	call $0532	call $0000
0487	e1 	pop hl	pop hl
0488	d5 	push de	push de
0489	11 00 00 	ld de,$0000	ld de,$0000
048c	cd 32 05 	call $0532	call $0000
048f	d1 	pop de	pop de
0490	e5 	push hl	push hl
0491	af 	xor a	xor a
0492	6f 	ld l,a	ld l,a
0493	67 	ld h,a	ld h,a
0494	ed 52 	sbc hl,de	sbc hl,de
0496	eb 	ex de,hl	ex de,hl
0497	6f 	ld l,a	ld l,a
0498	67 	ld h,a	ld h,a
0499	cd 32 05 	call $0532	call $0000
049c	d1 	pop de	pop de
049d	af 	xor a	xor a
049e	6f 	ld l,a	ld l,a
049f	67 	ld h,a	ld h,a
04a0	ed 52 	sbc hl,de	sbc hl,de
04a2	5f 	ld e,a	ld e,a
04a3	57 	ld d,a	ld d,a
04a4	18 d6 	jr $-$28	jr $-$00
04a6	3e 80 	ld a,$80	ld a,$00
04a8	21 09 00 	ld hl,$0009	ld hl,$0000
04ab	cd 6d 14 	call $146d	call $0000
04ae	e5 	push hl	push hl
04af	3e 80 	ld a,$80	ld a,$00
04b1	21 08 00 	ld hl,$0008	ld hl,$0000
04b4	cd 6d 14 	call $146d	call $0000
04b7	e5 	push hl	push hl
04b8	3e 80 	ld a,$80	ld a,$00
04ba	21 07 00 	ld hl,$0007	ld hl,$0000
04bd	cd 6d 14 	call $146d	call $0000
04c0	e5 	push hl	push hl
04c1	cd d6 25 	call $25d6	call $0000
04c4	e1 	pop hl	pop hl
04c5	cd 63 05 	call $0563	call $0000
04c8	cd a2 20 	call $20a2	call $0000
04cb	cd 0b 45 	call $450b	call $0000
04ce	cd d6 25 	call $25d6	call $0000
04d1	e1 	pop hl	pop hl
04d2	cd 63 05 	call $0563	call $0000
04d5	cd a2 20 	call $20a2	call $0000
04d8	cd 0b 45 	call $450b	call $0000
04db	cd d6 25 	call $25d6	call $0000
04de	e1 	pop hl	pop hl
04df	cd 63 05 	call $0563	call $0000
04e2	c3 99 24 	jp $2499	jp $0000
04e5	cd 36 35 	call $3536	call $0000
04e8	28 f8 	jr z,$-$06	jr z,$-$00
04ea	cd 33 18 	call $1833	call $0000
04ed	d9 	exx	exx
04ee	44 	ld b,h	ld b,h
04ef	4d 	ld c,l	ld c,l
04f0	cd 95 01 	call $0195	call $0000
04f3	09 	add hl,bc	add hl,bc
04f4	01 00 00 	ld bc,$0000	ld bc,$0000
04f7	eb 	ex de,hl	ex de,hl
04f8	ed 4a 	adc hl,bc	adc hl,bc
04fa	eb 	ex de,hl	ex de,hl
04fb	cd 17 12 	call $1217	call $0000
04fe	d5 	push de	push de
04ff	e5 	push hl	push hl
0500	cd 95 01 	call $0195	call $0000
0503	c1 	pop bc	pop bc
0504	b7 	or a	or a
0505	ed 42 	sbc hl,bc	sbc hl,bc
0507	60 	ld h,b	ld h,b
0508	69 	ld l,c	ld l,c
0509	eb 	ex de,hl	ex de,hl
050a	c1 	pop bc	pop bc
050b	ed 42 	sbc hl,bc	sbc hl,bc
050d	30 d3 	jr nc,$-$2b	jr nc,$-$00
050f	eb 	ex de,hl	ex de,hl
0510	50 	ld d,b	ld d,b
0511	59 	ld e,c	ld e,c
0512	18 e7 	jr $-$17	jr $-$00
0514	e1 	pop hl	pop hl
0515	21 27 05 	ld hl,$0527	ld hl,$0000
0518	e5 	push hl	push hl
0519	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
051c	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
051f	dd 66 64 	ld h,(ix+$64)	ld h,(ix+$00)
0522	dd 6e 60 	ld l,(ix+$60)	ld l,(ix+$00)
0525	fd e9 	jp (iy)	jp (iy)
0527	f5 	push af	push af
0528	7d 	ld a,l	ld a,l
0529	6c 	ld l,h	ld l,h
052a	d9 	exx	exx
052b	c1 	pop bc	pop bc
052c	67 	ld h,a	ld h,a
052d	68 	ld l,b	ld l,b
052e	79 	ld a,c	ld a,c
052f	d9 	exx	exx
0530	67 	ld h,a	ld h,a
0531	c9 	ret	ret
0532	06 19 	ld b,$19	ld b,$00
0534	78 	ld a,b	ld a,b
0535	cd 95 11 	call $1195	call $0000
0538	79 	ld a,c	ld a,c
0539	cd 95 11 	call $1195	call $0000
053c	7b 	ld a,e	ld a,e
053d	cd 95 11 	call $1195	call $0000
0540	7a 	ld a,d	ld a,d
0541	cd 95 11 	call $1195	call $0000
0544	7d 	ld a,l	ld a,l
0545	cd 95 11 	call $1195	call $0000
0548	7c 	ld a,h	ld a,h
0549	c3 95 11 	jp $1195	jp $0000
054c	cd 5d 05 	call $055d	call $0000
054f	d9 	exx	exx
0550	e5 	push hl	push hl
0551	cd 5d 05 	call $055d	call $0000
0554	d9 	exx	exx
0555	e5 	push hl	push hl
0556	cd 5d 05 	call $055d	call $0000
0559	d9 	exx	exx
055a	c1 	pop bc	pop bc
055b	d1 	pop de	pop de
055c	c9 	ret	ret
055d	cd a2 20 	call $20a2	call $0000
0560	c3 33 18 	jp $1833	jp $0000
0563	cb 7f 	bit 7,a	bit 7,a
0565	20 0c 	jr nz,$+$0e	jr nz,$+$00
0567	cb 77 	bit 6,a	bit 6,a
0569	20 08 	jr nz,$+$0a	jr nz,$+$00
056b	d9 	exx	exx
056c	21 00 00 	ld hl,$0000	ld hl,$0000
056f	4d 	ld c,l	ld c,l
0570	c3 f0 31 	jp $31f0	jp $0000
0573	3e 32 	ld a,$32	ld a,$00
0575	cd 55 3f 	call $3f55	call $0000
0578	13 	inc de	inc de
0579	04 	inc b	inc b
057a	20 15 	jr nz,$+$17	jr nz,$+$00
057c	00 	nop	nop
057d	af 	xor a	xor a
057e	cd 55 3f 	call $3f55	call $0000
0581	53 	ld d,e	ld d,e
0582	6f 	ld l,a	ld l,a
0583	72 	ld (hl),d	ld (hl),d
0584	72 	ld (hl),d	ld (hl),d
0585	79 	ld a,c	ld a,c
0586	00 	nop	nop
0587	cd 0f 09 	call $090f	call $0000
058a	fd 23 	inc iy	inc iy
058c	fe 3a 	cp $3a	cp $00
058e	28 f7 	jr z,$-$07	jr z,$-$00
0590	fe 5d 	cp $5d	cp $00
0592	c8 	ret z	ret z
0593	fe 0d 	cp $0d	cp $00
0595	c8 	ret z	ret z
0596	fd 2b 	dec iy	dec iy
0598	dd 2a 40 54 	ld ix,($5440)	ld ix,($0000)
059c	21 fe 54 	ld hl,$54fe	ld hl,$0000
059f	cb 76 	bit 6,(hl)	bit 6,(hl)
05a1	28 04 	jr z,$+$06	jr z,$+$00
05a3	dd 2a 3c 54 	ld ix,($543c)	ld ix,($0000)
05a7	dd e5 	push ix	push ix
05a9	fd e5 	push iy	push iy
05ab	cd 3b 06 	call $063b	call $0000
05ae	c1 	pop bc	pop bc
05af	d1 	pop de	pop de
05b0	d8 	ret c	ret c
05b1	cd 0f 09 	call $090f	call $0000
05b4	37 	scf	scf
05b5	c0 	ret nz	ret nz
05b6	fd 2b 	dec iy	dec iy
05b8	fd 23 	inc iy	inc iy
05ba	fd 7e 00 	ld a,(iy)	ld a,(iy)
05bd	cd 33 09 	call $0933	call $0000
05c0	20 f6 	jr nz,$-$08	jr nz,$-$00
05c2	3a fe 54 	ld a,($54fe)	ld a,($0000)
05c5	dd e5 	push ix	push ix
05c7	e1 	pop hl	pop hl
05c8	b7 	or a	or a
05c9	ed 52 	sbc hl,de	sbc hl,de
05cb	eb 	ex de,hl	ex de,hl
05cc	e5 	push hl	push hl
05cd	2a 40 54 	ld hl,($5440)	ld hl,($0000)
05d0	e5 	push hl	push hl
05d1	19 	add hl,de	add hl,de
05d2	22 40 54 	ld ($5440),hl	ld ($0000),hl
05d5	cb 77 	bit 6,a	bit 6,a
05d7	28 07 	jr z,$+$09	jr z,$+$00
05d9	2a 3c 54 	ld hl,($543c)	ld hl,($0000)
05dc	19 	add hl,de	add hl,de
05dd	22 3c 54 	ld ($543c),hl	ld ($0000),hl
05e0	e1 	pop hl	pop hl
05e1	dd e1 	pop ix	pop ix
05e3	cb 67 	bit 4,a	bit 4,a
05e5	28 a0 	jr z,$-$5e	jr z,$-$00
05e7	7c 	ld a,h	ld a,h
05e8	cd 27 06 	call $0627	call $0000
05eb	7d 	ld a,l	ld a,l
05ec	cd 20 06 	call $0620	call $0000
05ef	af 	xor a	xor a
05f0	bb 	cp e	cp e
05f1	28 15 	jr z,$+$17	jr z,$+$00
05f3	3a fb 54 	ld a,($54fb)	ld a,($0000)
05f6	fe 11 	cp $11	cp $00
05f8	3e 05 	ld a,$05	ld a,$00
05fa	d4 7d 35 	call nc,$357d	call nc,$0000
05fd	dd 7e 00 	ld a,(ix)	ld a,(ix)
0600	cd 20 06 	call $0620	call $0000
0603	dd 23 	inc ix	inc ix
0605	1d 	dec e	dec e
0606	20 eb 	jr nz,$-$13	jr nz,$-$00
0608	3e 12 	ld a,$12	ld a,$00
060a	cd 7d 35 	call $357d	call $0000
060d	fd e5 	push iy	push iy
060f	e1 	pop hl	pop hl
0610	ed 42 	sbc hl,bc	sbc hl,bc
0612	0a 	ld a,(bc)	ld a,(bc)
0613	cd 1b 41 	call $411b	call $0000
0616	03 	inc bc	inc bc
0617	2d 	dec l	dec l
0618	20 f8 	jr nz,$-$06	jr nz,$-$00
061a	cd fb 40 	call $40fb	call $0000
061d	c3 87 05 	jp $0587	jp $0000
0620	cd 27 06 	call $0627	call $0000
0623	3e 20 	ld a,$20	ld a,$00
0625	18 11 	jr $+$13	jr $+$00
0627	f5 	push af	push af
0628	0f 	rrca	rrca
0629	0f 	rrca	rrca
062a	0f 	rrca	rrca
062b	0f 	rrca	rrca
062c	cd 30 06 	call $0630	call $0000
062f	f1 	pop af	pop af
0630	e6 0f 	and $0f	and $00
0632	c6 90 	add a,$90	add a,$00
0634	27 	daa	daa
0635	ce 40 	adc a,$40	adc a,$00
0637	27 	daa	daa
0638	c3 1b 41 	jp $411b	jp $0000
063b	fe 2e 	cp $2e	cp $00
063d	20 28 	jr nz,$+$2a	jr nz,$+$00
063f	fd 23 	inc iy	inc iy
0641	dd e5 	push ix	push ix
0643	cd d6 25 	call $25d6	call $0000
0646	f5 	push af	push af
0647	cd f8 1f 	call $1ff8	call $0000
064a	d9 	exx	exx
064b	2a 40 54 	ld hl,($5440)	ld hl,($0000)
064e	d9 	exx	exx
064f	3a fe 54 	ld a,($54fe)	ld a,($0000)
0652	e6 20 	and $20	and $00
0654	20 0b 	jr nz,$+$0d	jr nz,$+$00
0656	dd 7e 00 	ld a,(ix)	ld a,(ix)
0659	dd b6 01 	or (ix+$01)	or (ix+$00)
065c	3e 03 	ld a,$03	ld a,$00
065e	c2 44 3f 	jp nz,$3f44	jp nz,$0000
0661	f1 	pop af	pop af
0662	cd f0 31 	call $31f0	call $0000
0665	dd e1 	pop ix	pop ix
0667	cd 0f 09 	call $090f	call $0000
066a	c8 	ret z	ret z
066b	fe d6 	cp $d6	cp $00
066d	0e c4 	ld c,$c4	ld c,$00
066f	fd 23 	inc iy	inc iy
0671	ca 5e 07 	jp z,$075e	jp z,$0000
0674	fd 2b 	dec iy	dec iy
0676	21 39 09 	ld hl,$0939	ld hl,$0000
0679	cd c6 08 	call $08c6	call $0000
067c	d8 	ret c	ret c
067d	48 	ld c,b	ld c,b
067e	16 00 	ld d,$00	ld d,$00
0680	d6 27 	sub $27	sub $00
0682	30 07 	jr nc,$+$09	jr nc,$+$00
0684	fe e8 	cp $e8	cp $00
0686	d4 2c 08 	call nc,$082c	call nc,$0000
0689	18 68 	jr $+$6a	jr $+$00
068b	d6 0a 	sub $0a	sub $00
068d	30 0f 	jr nc,$+$11	jr nc,$+$00
068f	fe f9 	cp $f9	cp $00
0691	dc b6 08 	call c,$08b6	call c,$0000
0694	d8 	ret c	ret c
0695	cd 8b 08 	call $088b	call $0000
0698	d8 	ret c	ret c
0699	cd 30 08 	call $0830	call $0000
069c	18 55 	jr $+$57	jr $+$00
069e	d6 03 	sub $03	sub $00
06a0	30 06 	jr nc,$+$08	jr nc,$+$00
06a2	cd aa 08 	call $08aa	call $0000
06a5	d8 	ret c	ret c
06a6	18 4b 	jr $+$4d	jr $+$00
06a8	d6 0a 	sub $0a	sub $00
06aa	30 32 	jr nc,$+$34	jr nc,$+$00
06ac	fe fd 	cp $fd	cp $00
06ae	06 07 	ld b,$07	ld b,$00
06b0	d4 3e 08 	call nc,$083e	call nc,$0000
06b3	78 	ld a,b	ld a,b
06b4	fe 07 	cp $07	cp $00
06b6	20 10 	jr nz,$+$12	jr nz,$+$00
06b8	cd 8b 08 	call $088b	call $0000
06bb	79 	ld a,c	ld a,c
06bc	30 28 	jr nc,$+$2a	jr nc,$+$00
06be	ee 46 	xor $46	xor $00
06c0	cd 32 08 	call $0832	call $0000
06c3	cd 6e 08 	call $086e	call $0000
06c6	18 78 	jr $+$7a	jr $+$00
06c8	e6 3f 	and $3f	and $00
06ca	fe 0c 	cp $0c	cp $00
06cc	37 	scf	scf
06cd	c0 	ret nz	ret nz
06ce	79 	ld a,c	ld a,c
06cf	fe 80 	cp $80	cp $00
06d1	0e 09 	ld c,$09	ld c,$00
06d3	28 cd 	jr z,$-$31	jr z,$-$00
06d5	ee 1c 	xor $1c	xor $00
06d7	0f 	rrca	rrca
06d8	4f 	ld c,a	ld c,a
06d9	cd 2c 08 	call $082c	call $0000
06dc	18 c4 	jr $-$3a	jr $-$00
06de	d6 02 	sub $02	sub $00
06e0	30 14 	jr nc,$+$16	jr nc,$+$00
06e2	cd 91 08 	call $0891	call $0000
06e5	79 	ld a,c	ld a,c
06e6	d2 32 08 	jp nc,$0832	jp nc,$0000
06e9	ee 64 	xor $64	xor $00
06eb	07 	rlca	rlca
06ec	07 	rlca	rlca
06ed	07 	rlca	rlca
06ee	4f 	ld c,a	ld c,a
06ef	cd ae 08 	call $08ae	call $0000
06f2	d8 	ret c	ret c
06f3	79 	ld a,c	ld a,c
06f4	18 7f 	jr $+$81	jr $+$00
06f6	d6 02 	sub $02	sub $00
06f8	30 21 	jr nc,$+$23	jr nc,$+$00
06fa	fe ff 	cp $ff	cp $00
06fc	cc 21 08 	call z,$0821	call z,$0000
06ff	08 	ex af,af'	ex af,af'
0700	cd 91 08 	call $0891	call $0000
0703	d8 	ret c	ret c
0704	08 	ex af,af'	ex af,af'
0705	dc 21 08 	call c,$0821	call c,$0000
0708	24 	inc h	inc h
0709	28 e8 	jr z,$-$16	jr z,$-$00
070b	78 	ld a,b	ld a,b
070c	fe 07 	cp $07	cp $00
070e	37 	scf	scf
070f	c0 	ret nz	ret nz
0710	79 	ld a,c	ld a,c
0711	ee 03 	xor $03	xor $00
0713	07 	rlca	rlca
0714	07 	rlca	rlca
0715	07 	rlca	rlca
0716	cd 5e 08 	call $085e	call $0000
0719	18 25 	jr $+$27	jr $+$00
071b	d6 02 	sub $02	sub $00
071d	30 24 	jr nc,$+$26	jr nc,$+$00
071f	fe ff 	cp $ff	cp $00
0721	c4 97 08 	call nz,$0897	call nz,$0000
0724	79 	ld a,c	ld a,c
0725	30 02 	jr nc,$+$04	jr nc,$+$00
0727	3e 18 	ld a,$18	ld a,$00
0729	cd 5e 08 	call $085e	call $0000
072c	cd 6e 08 	call $086e	call $0000
072f	ed 5b 40 54 	ld de,($5440)	ld de,($0000)
0733	13 	inc de	inc de
0734	37 	scf	scf
0735	ed 52 	sbc hl,de	sbc hl,de
0737	7d 	ld a,l	ld a,l
0738	17 	rla	rla
0739	9f 	sbc a,a	sbc a,a
073a	bc 	cp h	cp h
073b	3e 01 	ld a,$01	ld a,$00
073d	c2 44 3f 	jp nz,$3f44	jp nz,$0000
0740	7d 	ld a,l	ld a,l
0741	18 32 	jr $+$34	jr $+$00
0743	47 	ld b,a	ld b,a
0744	20 16 	jr nz,$+$18	jr nz,$+$00
0746	cd 97 08 	call $0897	call $0000
0749	79 	ld a,c	ld a,c
074a	30 0b 	jr nc,$+$0d	jr nc,$+$00
074c	78 	ld a,b	ld a,b
074d	e6 3f 	and $3f	and $00
074f	fe 06 	cp $06	cp $00
0751	3e e9 	ld a,$e9	ld a,$00
0753	28 20 	jr z,$+$22	jr z,$+$00
0755	3e c3 	ld a,$c3	ld a,$00
0757	cd 5e 08 	call $085e	call $0000
075a	18 05 	jr $+$07	jr $+$00
075c	10 0c 	djnz $+$0e	djnz $+$00
075e	cd 79 07 	call $0779	call $0000
0761	cd 6e 08 	call $086e	call $0000
0764	cd 40 07 	call $0740	call $0000
0767	7c 	ld a,h	ld a,h
0768	18 0b 	jr $+$0d	jr $+$00
076a	10 0b 	djnz $+$0d	djnz $+$00
076c	cd 6e 08 	call $086e	call $0000
076f	a1 	and c	and c
0770	b4 	or h	or h
0771	20 c8 	jr nz,$-$36	jr nz,$-$00
0773	7d 	ld a,l	ld a,l
0774	b1 	or c	or c
0775	18 78 	jr $+$7a	jr $+$00
0777	10 0a 	djnz $+$0c	djnz $+$00
0779	cd 97 08 	call $0897	call $0000
077c	79 	ld a,c	ld a,c
077d	30 70 	jr nc,$+$72	jr nc,$+$00
077f	f6 09 	or $09	or $00
0781	18 6c 	jr $+$6e	jr $+$00
0783	10 6c 	djnz $+$6e	djnz $+$00
0785	cd c3 08 	call $08c3	call $0000
0788	30 5f 	jr nc,$+$61	jr nc,$+$00
078a	cd 91 08 	call $0891	call $0000
078d	08 	ex af,af'	ex af,af'
078e	cd 0f 09 	call $090f	call $0000
0791	fe 28 	cp $28	cp $00
0793	28 1d 	jr z,$+$1f	jr z,$+$00
0795	08 	ex af,af'	ex af,af'
0796	d2 b8 06 	jp nc,$06b8	jp nc,$0000
0799	0e 01 	ld c,$01	ld c,$00
079b	cd ae 08 	call $08ae	call $0000
079e	d8 	ret c	ret c
079f	3e 0e 	ld a,$0e	ld a,$00
07a1	b8 	cp b	cp b
07a2	47 	ld b,a	ld b,a
07a3	cc aa 08 	call z,$08aa	call z,$0000
07a6	78 	ld a,b	ld a,b
07a7	e6 3f 	and $3f	and $00
07a9	fe 0c 	cp $0c	cp $00
07ab	79 	ld a,c	ld a,c
07ac	20 a9 	jr nz,$-$55	jr nz,$-$00
07ae	3e f9 	ld a,$f9	ld a,$00
07b0	18 3d 	jr $+$3f	jr $+$00
07b2	08 	ex af,af'	ex af,af'
07b3	c5 	push bc	push bc
07b4	d4 8b 08 	call nc,$088b	call nc,$0000
07b7	79 	ld a,c	ld a,c
07b8	c1 	pop bc	pop bc
07b9	30 77 	jr nc,$+$79	jr nc,$+$00
07bb	0e 0a 	ld c,$0a	ld c,$00
07bd	cd ae 08 	call $08ae	call $0000
07c0	cd 08 08 	call $0808	call $0000
07c3	30 92 	jr nc,$-$6c	jr nc,$-$00
07c5	cd 6e 08 	call $086e	call $0000
07c8	0e 02 	ld c,$02	ld c,$00
07ca	cd aa 08 	call $08aa	call $0000
07cd	cd 08 08 	call $0808	call $0000
07d0	d8 	ret c	ret c
07d1	cd 5e 08 	call $085e	call $0000
07d4	18 8e 	jr $-$70	jr $-$00
07d6	05 	dec b	dec b
07d7	ca c3 06 	jp z,$06c3	jp z,$0000
07da	10 85 	djnz $-$79	djnz $-$00
07dc	cd 6e 08 	call $086e	call $0000
07df	21 fe 54 	ld hl,$54fe	ld hl,$0000
07e2	4f 	ld c,a	ld c,a
07e3	ed 6f 	rld	rld
07e5	79 	ld a,c	ld a,c
07e6	ed 67 	rrd	rrd
07e8	c9 	ret	ret
07e9	fe 04 	cp $04	cp $00
07eb	dc 2c 08 	call c,$082c	call c,$0000
07ee	78 	ld a,b	ld a,b
07ef	18 6d 	jr $+$6f	jr $+$00
07f1	10 e3 	djnz $-$1b	djnz $-$00
07f3	dd e5 	push ix	push ix
07f5	cd 3c 18 	call $183c	call $0000
07f8	dd e1 	pop ix	pop ix
07fa	21 00 52 	ld hl,$5200	ld hl,$0000
07fd	af 	xor a	xor a
07fe	bb 	cp e	cp e
07ff	c8 	ret z	ret z
0800	7e 	ld a,(hl)	ld a,(hl)
0801	23 	inc hl	inc hl
0802	cd 5e 08 	call $085e	call $0000
0805	1d 	dec e	dec e
0806	18 f5 	jr $-$09	jr $-$00
0808	78 	ld a,b	ld a,b
0809	38 0e 	jr c,$+$10	jr c,$+$00
080b	78 	ld a,b	ld a,b
080c	e6 3f 	and $3f	and $00
080e	fe 0c 	cp $0c	cp $00
0810	79 	ld a,c	ld a,c
0811	c8 	ret z	ret z
0812	cd 2c 08 	call $082c	call $0000
0815	79 	ld a,c	ld a,c
0816	f6 43 	or $43	or $00
0818	c9 	ret	ret
0819	fe 07 	cp $07	cp $00
081b	37 	scf	scf
081c	c0 	ret nz	ret nz
081d	79 	ld a,c	ld a,c
081e	f6 30 	or $30	or $00
0820	c9 	ret	ret
0821	c5 	push bc	push bc
0822	cd 3e 08 	call $083e	call $0000
0825	cb 68 	bit 5,b	bit 5,b
0827	c1 	pop bc	pop bc
0828	28 44 	jr z,$+$46	jr z,$+$00
082a	26 ff 	ld h,$ff	ld h,$00
082c	3e ed 	ld a,$ed	ld a,$00
082e	18 2e 	jr $+$30	jr $+$00
0830	3e cb 	ld a,$cb	ld a,$00
0832	fe 76 	cp $76	cp $00
0834	37 	scf	scf
0835	c8 	ret z	ret z
0836	cd 5e 08 	call $085e	call $0000
0839	14 	inc d	inc d
083a	f0 	ret p	ret p
083b	7b 	ld a,e	ld a,e
083c	18 20 	jr $+$22	jr $+$00
083e	e5 	push hl	push hl
083f	21 80 0a 	ld hl,$0a80	ld hl,$0000
0842	cd c6 08 	call $08c6	call $0000
0845	e1 	pop hl	pop hl
0846	d8 	ret c	ret c
0847	cb 78 	bit 7,b	bit 7,b
0849	c8 	ret z	ret z
084a	cb 58 	bit 3,b	bit 3,b
084c	e5 	push hl	push hl
084d	cc 65 08 	call z,$0865	call z,$0000
0850	5d 	ld e,l	ld e,l
0851	e1 	pop hl	pop hl
0852	3e dd 	ld a,$dd	ld a,$00
0854	cb 70 	bit 6,b	bit 6,b
0856	28 02 	jr z,$+$04	jr z,$+$00
0858	3e fd 	ld a,$fd	ld a,$00
085a	b7 	or a	or a
085b	14 	inc d	inc d
085c	57 	ld d,a	ld d,a
085d	f8 	ret m	ret m
085e	dd 77 00 	ld (ix),a	ld (ix),a
0861	dd 23 	inc ix	inc ix
0863	b7 	or a	or a
0864	c9 	ret	ret
0865	fd 7e 00 	ld a,(iy)	ld a,(iy)
0868	fe 29 	cp $29	cp $00
086a	21 00 00 	ld hl,$0000	ld hl,$0000
086d	c8 	ret z	ret z
086e	cd 0f 09 	call $090f	call $0000
0871	c5 	push bc	push bc
0872	d5 	push de	push de
0873	dd e5 	push ix	push ix
0875	cd 33 18 	call $1833	call $0000
0878	dd e1 	pop ix	pop ix
087a	d9 	exx	exx
087b	d1 	pop de	pop de
087c	c1 	pop bc	pop bc
087d	7d 	ld a,l	ld a,l
087e	b7 	or a	or a
087f	c9 	ret	ret
0880	cd 3e 08 	call $083e	call $0000
0883	d8 	ret c	ret c
0884	78 	ld a,b	ld a,b
0885	e6 3f 	and $3f	and $00
0887	fe 08 	cp $08	cp $00
0889	3f 	ccf	ccf
088a	c9 	ret	ret
088b	cd 80 08 	call $0880	call $0000
088e	d8 	ret c	ret c
088f	18 2f 	jr $+$31	jr $+$00
0891	cd 80 08 	call $0880	call $0000
0894	d8 	ret c	ret c
0895	18 26 	jr $+$28	jr $+$00
0897	cd 3e 08 	call $083e	call $0000
089a	d8 	ret c	ret c
089b	78 	ld a,b	ld a,b
089c	e6 1f 	and $1f	and $00
089e	d6 10 	sub $10	sub $00
08a0	30 1b 	jr nc,$+$1d	jr nc,$+$00
08a2	fe f1 	cp $f1	cp $00
08a4	37 	scf	scf
08a5	c0 	ret nz	ret nz
08a6	3e 03 	ld a,$03	ld a,$00
08a8	18 13 	jr $+$15	jr $+$00
08aa	cd 3e 08 	call $083e	call $0000
08ad	d8 	ret c	ret c
08ae	78 	ld a,b	ld a,b
08af	e6 0f 	and $0f	and $00
08b1	d6 08 	sub $08	sub $00
08b3	d8 	ret c	ret c
08b4	18 07 	jr $+$09	jr $+$00
08b6	cd 6e 08 	call $086e	call $0000
08b9	fe 08 	cp $08	cp $00
08bb	3f 	ccf	ccf
08bc	d8 	ret c	ret c
08bd	07 	rlca	rlca
08be	07 	rlca	rlca
08bf	07 	rlca	rlca
08c0	b1 	or c	or c
08c1	4f 	ld c,a	ld c,a
08c2	c9 	ret	ret
08c3	21 c5 0a 	ld hl,$0ac5	ld hl,$0000
08c6	cd 0f 09 	call $090f	call $0000
08c9	06 00 	ld b,$00	ld b,$00
08cb	37 	scf	scf
08cc	c8 	ret z	ret z
08cd	fe dd 	cp $dd	cp $00
08cf	28 04 	jr z,$+$06	jr z,$+$00
08d1	fe 85 	cp $85	cp $00
08d3	3f 	ccf	ccf
08d4	d8 	ret c	ret c
08d5	7e 	ld a,(hl)	ld a,(hl)
08d6	b7 	or a	or a
08d7	28 f0 	jr z,$-$0e	jr z,$-$00
08d9	fd ae 00 	xor (iy)	xor (iy)
08dc	e6 5f 	and $5f	and $00
08de	28 09 	jr z,$+$0b	jr z,$+$00
08e0	cb 7e 	bit 7,(hl)	bit 7,(hl)
08e2	23 	inc hl	inc hl
08e3	28 fb 	jr z,$-$03	jr z,$-$00
08e5	23 	inc hl	inc hl
08e6	04 	inc b	inc b
08e7	18 ec 	jr $-$12	jr $-$00
08e9	fd e5 	push iy	push iy
08eb	cb 7e 	bit 7,(hl)	bit 7,(hl)
08ed	fd 23 	inc iy	inc iy
08ef	23 	inc hl	inc hl
08f0	20 10 	jr nz,$+$12	jr nz,$+$00
08f2	be 	cp (hl)	cp (hl)
08f3	cc 0e 09 	call z,$090e	call z,$0000
08f6	7e 	ld a,(hl)	ld a,(hl)
08f7	fd ae 00 	xor (iy)	xor (iy)
08fa	e6 5f 	and $5f	and $00
08fc	28 ed 	jr z,$-$11	jr z,$-$00
08fe	fd e1 	pop iy	pop iy
0900	18 de 	jr $-$20	jr $-$00
0902	cd 21 09 	call $0921	call $0000
0905	c4 1b 09 	call nz,$091b	call nz,$0000
0908	20 f4 	jr nz,$-$0a	jr nz,$-$00
090a	78 	ld a,b	ld a,b
090b	46 	ld b,(hl)	ld b,(hl)
090c	e1 	pop hl	pop hl
090d	c9 	ret	ret
090e	23 	inc hl	inc hl
090f	cd 21 09 	call $0921	call $0000
0912	c0 	ret nz	ret nz
0913	cd 2d 09 	call $092d	call $0000
0916	c8 	ret z	ret z
0917	fd 23 	inc iy	inc iy
0919	18 f4 	jr $-$0a	jr $-$00
091b	fe 2b 	cp $2b	cp $00
091d	c8 	ret z	ret z
091e	fe 2d 	cp $2d	cp $00
0920	c9 	ret	ret
0921	fd 7e 00 	ld a,(iy)	ld a,(iy)
0924	fe 20 	cp $20	cp $00
0926	c8 	ret z	ret z
0927	fe 2c 	cp $2c	cp $00
0929	c8 	ret z	ret z
092a	fe 29 	cp $29	cp $00
092c	c8 	ret z	ret z
092d	fe 3b 	cp $3b	cp $00
092f	c8 	ret z	ret z
0930	fe 5c 	cp $5c	cp $00
0932	c8 	ret z	ret z
0933	fe 3a 	cp $3a	cp $00
0935	d0 	ret nc	ret nc
0936	fe 0d 	cp $0d	cp $00
0938	c9 	ret	ret
0939	4e 	ld c,(hl)	ld c,(hl)
093a	4f 	ld c,a	ld c,a
093b	d0 	ret nc	ret nc
093c	00 	nop	nop
093d	52 4c 	ld.sil c,h	ld.sil c,h
093f	43 	ld b,e	ld b,e
0940	c1 	pop bc	pop bc
0941	07 	rlca	rlca
0942	45 	ld b,l	ld b,l
0943	58 	ld e,b	ld e,b
0944	00 	nop	nop
0945	41 	ld b,c	ld b,c
0946	46 	ld b,(hl)	ld b,(hl)
0947	00 	nop	nop
0948	41 	ld b,c	ld b,c
0949	46 	ld b,(hl)	ld b,(hl)
094a	27 	daa	daa
094b	08 	ex af,af'	ex af,af'
094c	52 	noni.sil	noni.sil
094d	52 43 	ld.sil b,e	ld.sil b,e
094f	c1 	pop bc	pop bc
0950	0f 	rrca	rrca
0951	52 4c 	ld.sil c,h	ld.sil c,h
0953	c1 	pop bc	pop bc
0954	17 	rla	rla
0955	52 	noni.sil	noni.sil
0956	52 c1 	pop.sil bc	pop.sil bc
0958	1f 	rra	rra
0959	44 	ld b,h	ld b,h
095a	41 	ld b,c	ld b,c
095b	c1 	pop bc	pop bc
095c	27 	daa	daa
095d	43 	ld b,e	ld b,e
095e	50 	ld d,b	ld d,b
095f	cc 2f 53 	call z,$532f	call z,$0000
0962	43 	ld b,e	ld b,e
0963	c6 37 	add a,$37	add a,$00
0965	43 	ld b,e	ld b,e
0966	43 	ld b,e	ld b,e
0967	c6 3f 	add a,$3f	add a,$00
0969	48 	ld c,b	ld c,b
096a	41 	ld b,c	ld b,c
096b	4c 	ld c,h	ld c,h
096c	d4 76 45 	call nc,$4576	call nc,$0000
096f	58 	ld e,b	ld e,b
0970	d8 	ret c	ret c
0971	d9 	exx	exx
0972	45 	ld b,l	ld b,l
0973	58 	ld e,b	ld e,b
0974	00 	nop	nop
0975	44 	ld b,h	ld b,h
0976	45 	ld b,l	ld b,l
0977	00 	nop	nop
0978	48 	ld c,b	ld c,b
0979	cc eb 44 	call z,$44eb	call z,$0000
097c	c9 	ret	ret
097d	f3 	di	di
097e	45 	ld b,l	ld b,l
097f	c9 	ret	ret
0980	fb 	ei	ei
0981	4e 	ld c,(hl)	ld c,(hl)
0982	45 	ld b,l	ld b,l
0983	c7 	rst $00	rst $00
0984	44 	ld b,h	ld b,h
0985	49 4d 	ld.lis c,l	ld.lis c,l
0987	00 	nop	nop
0988	b0 	or b	or b
0989	46 	ld b,(hl)	ld b,(hl)
098a	52 45 	ld.sil b,l	ld.sil b,l
098c	54 	ld d,h	ld d,h
098d	ce 45 	adc a,$45	adc a,$00
098f	52 45 	ld.sil b,l	ld.sil b,l
0991	54 	ld d,h	ld d,h
0992	c9 	ret	ret
0993	4d 	ld c,l	ld c,l
0994	49 4d 	ld.lis c,l	ld.lis c,l
0996	00 	nop	nop
0997	b1 	or c	or c
0998	56 	ld d,(hl)	ld d,(hl)
0999	49 4d 	ld.lis c,l	ld.lis c,l
099b	00 	nop	nop
099c	b2 	or d	or d
099d	5e 	ld e,(hl)	ld e,(hl)
099e	52 	noni.sil	noni.sil
099f	52 c4 67 52 4c 	call.sil nz,$4c5267	call.sil nz,$000000
09a4	c4 6f 4c 	call nz,$4c6f	call nz,$0000
09a7	44 	ld b,h	ld b,h
09a8	c9 	ret	ret
09a9	a0 	and b	and b
09aa	43 	ld b,e	ld b,e
09ab	50 	ld d,b	ld d,b
09ac	c9 	ret	ret
09ad	a1 	and c	and c
09ae	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
09b0	c9 	ret	ret
09b1	a2 	and d	and d
09b2	4f 	ld c,a	ld c,a
09b3	55 	ld d,l	ld d,l
09b4	54 	ld d,h	ld d,h
09b5	c9 	ret	ret
09b6	a3 	and e	and e
09b7	4c 	ld c,h	ld c,h
09b8	44 	ld b,h	ld b,h
09b9	c4 a8 43 	call nz,$43a8	call nz,$0000
09bc	50 	ld d,b	ld d,b
09bd	c4 a9 49 	call nz,$49a9	call nz,$0000
09c0	4e 	ld c,(hl)	ld c,(hl)
09c1	c4 aa 4f 	call nz,$4faa	call nz,$0000
09c4	55 	ld d,l	ld d,l
09c5	54 	ld d,h	ld d,h
09c6	c4 ab 4c 	call nz,$4cab	call nz,$0000
09c9	44 	ld b,h	ld b,h
09ca	49 d2 b0 43 	jp.lis nc,$43b0	jp.lis nc,$0000
09ce	50 	ld d,b	ld d,b
09cf	49 d2 b1 49 	jp.lis nc,$49b1	jp.lis nc,$0000
09d3	4e 	ld c,(hl)	ld c,(hl)
09d4	49 d2 b2 4f 	jp.lis nc,$4fb2	jp.lis nc,$0000
09d8	54 	ld d,h	ld d,h
09d9	49 d2 b3 4c 	jp.lis nc,$4cb3	jp.lis nc,$0000
09dd	44 	ld b,h	ld b,h
09de	44 	ld b,h	ld b,h
09df	d2 b8 43 	jp nc,$43b8	jp nc,$0000
09e2	50 	ld d,b	ld d,b
09e3	44 	ld b,h	ld b,h
09e4	d2 b9 49 	jp nc,$49b9	jp nc,$0000
09e7	4e 	ld c,(hl)	ld c,(hl)
09e8	44 	ld b,h	ld b,h
09e9	d2 ba 4f 	jp nc,$4fba	jp nc,$0000
09ec	54 	ld d,h	ld d,h
09ed	44 	ld b,h	ld b,h
09ee	d2 bb 42 	jp nc,$42bb	jp nc,$0000
09f1	49 d4 40 52 	call.lis nc,$5240	call.lis nc,$0000
09f5	45 	ld b,l	ld b,l
09f6	d3 80 	out ($80),a	out ($00),a
09f8	53 	ld d,e	ld d,e
09f9	45 	ld b,l	ld b,l
09fa	d4 c0 52 	call nc,$52c0	call nc,$0000
09fd	4c 	ld c,h	ld c,h
09fe	c3 00 52 	jp $5200	jp $0000
0a01	52 c3 08 52 cc 	jp.sil $cc5208	jp.sil $000000
0a06	10 52 	djnz $+$54	djnz $+$00
0a08	d2 18 53 	jp nc,$5318	jp nc,$0000
0a0b	4c 	ld c,h	ld c,h
0a0c	c1 	pop bc	pop bc
0a0d	20 53 	jr nz,$+$55	jr nz,$+$00
0a0f	52 c1 	pop.sil bc	pop.sil bc
0a11	28 53 	jr z,$+$55	jr z,$+$00
0a13	52 cc 38 50 4f 	call.sil z,$4f5038	call.sil z,$000000
0a18	d0 	ret nc	ret nc
0a19	c1 	pop bc	pop bc
0a1a	50 	ld d,b	ld d,b
0a1b	55 	ld d,l	ld d,l
0a1c	53 	ld d,e	ld d,e
0a1d	c8 	ret z	ret z
0a1e	c5 	push bc	push bc
0a1f	45 	ld b,l	ld b,l
0a20	58 	ld e,b	ld e,b
0a21	00 	nop	nop
0a22	28 53 	jr z,$+$55	jr z,$+$00
0a24	d0 	ret nc	ret nc
0a25	e3 	ex (sp),hl	ex (sp),hl
0a26	53 	ld d,e	ld d,e
0a27	55 	ld d,l	ld d,l
0a28	c2 90 41 	jp nz,$4190	jp nz,$0000
0a2b	4e 	ld c,(hl)	ld c,(hl)
0a2c	c4 a0 58 	call nz,$58a0	call nz,$0000
0a2f	4f 	ld c,a	ld c,a
0a30	d2 a8 4f 	jp nc,$4fa8	jp nc,$0000
0a33	d2 b0 43 	jp nc,$43b0	jp nc,$0000
0a36	d0 	ret nc	ret nc
0a37	b8 	cp b	cp b
0a38	80 	add a,b	add a,b
0a39	a0 	and b	and b
0a3a	84 	add a,h	add a,h
0a3b	b0 	or b	or b
0a3c	41 	ld b,c	ld b,c
0a3d	44 	ld b,h	ld b,h
0a3e	c4 80 41 	call nz,$4180	call nz,$0000
0a41	44 	ld b,h	ld b,h
0a42	c3 88 53 	jp $5388	jp $0000
0a45	42 	ld b,d	ld b,d
0a46	c3 98 49 	jp $4998	jp $0000
0a49	4e 	ld c,(hl)	ld c,(hl)
0a4a	c3 04 44 	jp $4404	jp $0000
0a4d	45 	ld b,l	ld b,l
0a4e	c3 05 49 	jp $4905	jp $0000
0a51	ce 40 	adc a,$40	adc a,$00
0a53	4f 	ld c,a	ld c,a
0a54	55 	ld d,l	ld d,l
0a55	d4 41 4a 	call nc,$4a41	call nc,$0000
0a58	d2 20 44 	jp nc,$4420	jp nc,$0000
0a5b	4a 	ld c,d	ld c,d
0a5c	4e 	ld c,(hl)	ld c,(hl)
0a5d	da 10 4a 	jp c,$4a10	jp c,$0000
0a60	d0 	ret nc	ret nc
0a61	c2 43 41 	jp nz,$4143	jp nz,$0000
0a64	4c 	ld c,h	ld c,h
0a65	cc c4 52 	call z,$52c4	call z,$0000
0a68	53 	ld d,e	ld d,e
0a69	d4 c7 52 	call nc,$52c7	call nc,$0000
0a6c	45 	ld b,l	ld b,l
0a6d	d4 c0 4c 	call nc,$4cc0	call nc,$0000
0a70	c4 40 5d 	call nz,$5d40	call nz,$0000
0a73	cd 00 5d 	call $5d00	call $0000
0a76	c2 00 4f 	jp nz,$4f00	jp nz,$0000
0a79	50 	ld d,b	ld d,b
0a7a	d4 00 5d 	call nc,$5d00	call nc,$0000
0a7d	d7 	rst $10	rst $00
0a7e	00 	nop	nop
0a7f	00 	nop	nop
0a80	c2 00 c3 	jp nz,$c300	jp nz,$0000
0a83	01 c4 02 	ld bc,$02c4	ld bc,$0000
0a86	c5 	push bc	push bc
0a87	03 	inc bc	inc bc
0a88	c8 	ret z	ret z
0a89	04 	inc b	inc b
0a8a	cc 05 28 	call z,$2805	call z,$0000
0a8d	48 	ld c,b	ld c,b
0a8e	cc 06 c1 	call z,$c106	call z,$0000
0a91	07 	rlca	rlca
0a92	28 49 	jr z,$+$4b	jr z,$+$00
0a94	d8 	ret c	ret c
0a95	86 	add a,(hl)	add a,(hl)
0a96	28 49 	jr z,$+$4b	jr z,$+$00
0a98	d9 	exx	exx
0a99	c6 42 	add a,$42	add a,$00
0a9b	c3 08 44 	jp $4408	jp $0000
0a9e	c5 	push bc	push bc
0a9f	0a 	ld a,(bc)	ld a,(bc)
0aa0	48 	ld c,b	ld c,b
0aa1	cc 0c 49 	call z,$490c	call z,$0000
0aa4	d8 	ret c	ret c
0aa5	8c 	adc a,h	adc a,h
0aa6	49 d9 	exx.lis	exx.lis
0aa8	cc 41 c6 	call z,$c641	call z,$0000
0aab	0e 53 	ld c,$53	ld c,$00
0aad	d0 	ret nc	ret nc
0aae	0e 4e 	ld c,$4e	ld c,$00
0ab0	da 10 da 	jp c,$da10	jp c,$0000
0ab3	11 4e c3 	ld de,$c34e	ld de,$0000
0ab6	12 	ld (de),a	ld (de),a
0ab7	50 	ld d,b	ld d,b
0ab8	cf 	rst $08	rst $00
0ab9	14 	inc d	inc d
0aba	50 	ld d,b	ld d,b
0abb	c5 	push bc	push bc
0abc	15 	dec d	dec d
0abd	d0 	ret nc	ret nc
0abe	16 cd 	ld d,$cd	ld d,$00
0ac0	17 	rla	rla
0ac1	28 c3 	jr z,$-$3b	jr z,$-$00
0ac3	20 00 	jr nz,$+$02	jr nz,$+$00
0ac5	49 00 	nop.lis	nop.lis
0ac7	c1 	pop bc	pop bc
0ac8	47 	ld b,a	ld b,a
0ac9	52 00 	nop.sil	nop.sil
0acb	c1 	pop bc	pop bc
0acc	4f 	ld c,a	ld c,a
0acd	41 	ld b,c	ld b,c
0ace	00 	nop	nop
0acf	c9 	ret	ret
0ad0	57 	ld d,a	ld d,a
0ad1	41 	ld b,c	ld b,c
0ad2	00 	nop	nop
0ad3	d2 5f 28 	jp nc,$285f	jp nc,$0000
0ad6	42 	ld b,d	ld b,d
0ad7	43 	ld b,e	ld b,e
0ad8	00 	nop	nop
0ad9	c1 	pop bc	pop bc
0ada	02 	ld (bc),a	ld (bc),a
0adb	28 44 	jr z,$+$46	jr z,$+$00
0add	45 	ld b,l	ld b,l
0ade	00 	nop	nop
0adf	c1 	pop bc	pop bc
0ae0	12 	ld (de),a	ld (de),a
0ae1	41 	ld b,c	ld b,c
0ae2	00 	nop	nop
0ae3	28 42 	jr z,$+$44	jr z,$+$00
0ae5	c3 0a 41 	jp $410a	jp $0000
0ae8	00 	nop	nop
0ae9	28 44 	jr z,$+$46	jr z,$+$00
0aeb	c5 	push bc	push bc
0aec	1a 	ld a,(de)	ld a,(de)
0aed	00 	nop	nop
0aee	cd 8f 0e 	call $0e8f	call $0000
0af1	05 	dec b	dec b
0af2	0b 	dec bc	dec bc
0af3	2a 0b 4a 	ld hl,($4a0b)	ld hl,($0000)
0af6	0b 	dec bc	dec bc
0af7	6a 	ld l,d	ld l,d
0af8	0b 	dec bc	dec bc
0af9	85 	add a,l	add a,l
0afa	0b 	dec bc	dec bc
0afb	b1 	or c	or c
0afc	0b 	dec bc	dec bc
0afd	cc 0b f3 	call z,$f30b	call z,$0000
0b00	0b 	dec bc	dec bc
0b01	15 	dec d	dec d
0b02	0c 	inc c	inc c
0b03	37 	scf	scf
0b04	0c 	inc c	inc c
0b05	c5 	push bc	push bc
0b06	78 	ld a,b	ld a,b
0b07	2f 	cpl	cpl
0b08	4f 	ld c,a	ld c,a
0b09	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0b0c	a1 	and c	and c
0b0d	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0b10	c1 	pop bc	pop bc
0b11	c5 	push bc	push bc
0b12	78 	ld a,b	ld a,b
0b13	2f 	cpl	cpl
0b14	4f 	ld c,a	ld c,a
0b15	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0b18	a1 	and c	and c
0b19	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0b1c	c1 	pop bc	pop bc
0b1d	c5 	push bc	push bc
0b1e	78 	ld a,b	ld a,b
0b1f	2f 	cpl	cpl
0b20	4f 	ld c,a	ld c,a
0b21	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0b24	a1 	and c	and c
0b25	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0b28	c1 	pop bc	pop bc
0b29	c9 	ret	ret
0b2a	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0b2d	b0 	or b	or b
0b2e	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0b31	c5 	push bc	push bc
0b32	78 	ld a,b	ld a,b
0b33	2f 	cpl	cpl
0b34	4f 	ld c,a	ld c,a
0b35	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0b38	a1 	and c	and c
0b39	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0b3c	c1 	pop bc	pop bc
0b3d	c5 	push bc	push bc
0b3e	78 	ld a,b	ld a,b
0b3f	2f 	cpl	cpl
0b40	4f 	ld c,a	ld c,a
0b41	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0b44	a1 	and c	and c
0b45	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0b48	c1 	pop bc	pop bc
0b49	c9 	ret	ret
0b4a	c5 	push bc	push bc
0b4b	78 	ld a,b	ld a,b
0b4c	2f 	cpl	cpl
0b4d	4f 	ld c,a	ld c,a
0b4e	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0b51	a1 	and c	and c
0b52	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0b55	c1 	pop bc	pop bc
0b56	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0b59	b0 	or b	or b
0b5a	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0b5d	c5 	push bc	push bc
0b5e	78 	ld a,b	ld a,b
0b5f	2f 	cpl	cpl
0b60	4f 	ld c,a	ld c,a
0b61	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0b64	a1 	and c	and c
0b65	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0b68	c1 	pop bc	pop bc
0b69	c9 	ret	ret
0b6a	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0b6d	b0 	or b	or b
0b6e	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0b71	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0b74	b0 	or b	or b
0b75	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0b78	c5 	push bc	push bc
0b79	78 	ld a,b	ld a,b
0b7a	2f 	cpl	cpl
0b7b	4f 	ld c,a	ld c,a
0b7c	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0b7f	a1 	and c	and c
0b80	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0b83	c1 	pop bc	pop bc
0b84	c9 	ret	ret
0b85	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0b88	b0 	or b	or b
0b89	ed 39 9a 	out0 ($9a),a	out0 ($00),a
0b8c	c5 	push bc	push bc
0b8d	78 	ld a,b	ld a,b
0b8e	2f 	cpl	cpl
0b8f	4f 	ld c,a	ld c,a
0b90	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0b93	a1 	and c	and c
0b94	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0b97	c1 	pop bc	pop bc
0b98	c5 	push bc	push bc
0b99	78 	ld a,b	ld a,b
0b9a	2f 	cpl	cpl
0b9b	4f 	ld c,a	ld c,a
0b9c	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0b9f	a1 	and c	and c
0ba0	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0ba3	c1 	pop bc	pop bc
0ba4	c5 	push bc	push bc
0ba5	78 	ld a,b	ld a,b
0ba6	2f 	cpl	cpl
0ba7	4f 	ld c,a	ld c,a
0ba8	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0bab	a1 	and c	and c
0bac	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0baf	c1 	pop bc	pop bc
0bb0	c9 	ret	ret
0bb1	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0bb4	b0 	or b	or b
0bb5	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0bb8	c5 	push bc	push bc
0bb9	78 	ld a,b	ld a,b
0bba	2f 	cpl	cpl
0bbb	4f 	ld c,a	ld c,a
0bbc	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0bbf	a1 	and c	and c
0bc0	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0bc3	c1 	pop bc	pop bc
0bc4	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0bc7	b0 	or b	or b
0bc8	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0bcb	c9 	ret	ret
0bcc	c5 	push bc	push bc
0bcd	78 	ld a,b	ld a,b
0bce	2f 	cpl	cpl
0bcf	4f 	ld c,a	ld c,a
0bd0	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0bd3	a1 	and c	and c
0bd4	ed 39 9a 	out0 ($9a),a	out0 ($00),a
0bd7	c1 	pop bc	pop bc
0bd8	c5 	push bc	push bc
0bd9	78 	ld a,b	ld a,b
0bda	2f 	cpl	cpl
0bdb	4f 	ld c,a	ld c,a
0bdc	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0bdf	a1 	and c	and c
0be0	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0be3	c1 	pop bc	pop bc
0be4	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0be7	b0 	or b	or b
0be8	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0beb	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0bee	b0 	or b	or b
0bef	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0bf2	c9 	ret	ret
0bf3	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0bf6	b0 	or b	or b
0bf7	ed 39 9a 	out0 ($9a),a	out0 ($00),a
0bfa	c5 	push bc	push bc
0bfb	78 	ld a,b	ld a,b
0bfc	2f 	cpl	cpl
0bfd	4f 	ld c,a	ld c,a
0bfe	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0c01	a1 	and c	and c
0c02	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0c05	c1 	pop bc	pop bc
0c06	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0c09	b0 	or b	or b
0c0a	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0c0d	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0c10	b0 	or b	or b
0c11	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0c14	c9 	ret	ret
0c15	c5 	push bc	push bc
0c16	78 	ld a,b	ld a,b
0c17	2f 	cpl	cpl
0c18	4f 	ld c,a	ld c,a
0c19	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0c1c	a1 	and c	and c
0c1d	ed 39 9a 	out0 ($9a),a	out0 ($00),a
0c20	c1 	pop bc	pop bc
0c21	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0c24	b0 	or b	or b
0c25	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0c28	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0c2b	b0 	or b	or b
0c2c	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0c2f	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0c32	b0 	or b	or b
0c33	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0c36	c9 	ret	ret
0c37	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0c3a	b0 	or b	or b
0c3b	ed 39 9a 	out0 ($9a),a	out0 ($00),a
0c3e	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0c41	b0 	or b	or b
0c42	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0c45	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0c48	b0 	or b	or b
0c49	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0c4c	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0c4f	b0 	or b	or b
0c50	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0c53	c9 	ret	ret
0c54	dd e5 	push ix	push ix
0c56	3e 08 	ld a,$08	ld a,$00
0c58	49 cf 	rst.lis $08	rst.lis $00
0c5a	5b dd cb 04 a6 	res.lil 4,(ix+$04)	res.lil 4,(ix+$00)
0c5f	cd 33 18 	call $1833	call $0000
0c62	d9 	exx	exx
0c63	3e 16 	ld a,$16	ld a,$00
0c65	cd 95 11 	call $1195	call $0000
0c68	7d 	ld a,l	ld a,l
0c69	cd 95 11 	call $1195	call $0000
0c6c	3e 08 	ld a,$08	ld a,$00
0c6e	49 cf 	rst.lis $08	rst.lis $00
0c70	5b dd cb 04 66 	bit.lil 4,(ix+$04)	bit.lil 4,(ix+$00)
0c75	28 f9 	jr z,$-$05	jr z,$-$00
0c77	dd e1 	pop ix	pop ix
0c79	c3 99 24 	jp $2499	jp $0000
0c7c	fd 23 	inc iy	inc iy
0c7e	cd 33 18 	call $1833	call $0000
0c81	d9 	exx	exx
0c82	e5 	push hl	push hl
0c83	cd a2 20 	call $20a2	call $0000
0c86	cd 33 18 	call $1833	call $0000
0c89	d9 	exx	exx
0c8a	cd ae 20 	call $20ae	call $0000
0c8d	d1 	pop de	pop de
0c8e	cd 9a 0c 	call $0c9a	call $0000
0c91	11 00 52 	ld de,$5200	ld de,$0000
0c94	12 	ld (de),a	ld (de),a
0c95	3e 80 	ld a,$80	ld a,$00
0c97	d0 	ret nc	ret nc
0c98	1c 	inc e	inc e
0c99	c9 	ret	ret
0c9a	dd e5 	push ix	push ix
0c9c	3e 08 	ld a,$08	ld a,$00
0c9e	49 cf 	rst.lis $08	rst.lis $00
0ca0	5b dd cb 04 8e 	res.lil 1,(ix+$04)	res.lil 1,(ix+$00)
0ca5	3e 17 	ld a,$17	ld a,$00
0ca7	cd 95 11 	call $1195	call $0000
0caa	3e 00 	ld a,$00	ld a,$00
0cac	cd 95 11 	call $1195	call $0000
0caf	3e 83 	ld a,$83	ld a,$00
0cb1	cd 95 11 	call $1195	call $0000
0cb4	7b 	ld a,e	ld a,e
0cb5	cd 95 11 	call $1195	call $0000
0cb8	7a 	ld a,d	ld a,d
0cb9	cd 95 11 	call $1195	call $0000
0cbc	7d 	ld a,l	ld a,l
0cbd	cd 95 11 	call $1195	call $0000
0cc0	7c 	ld a,h	ld a,h
0cc1	cd 95 11 	call $1195	call $0000
0cc4	5b dd cb 04 4e 	bit.lil 1,(ix+$04)	bit.lil 1,(ix+$00)
0cc9	28 f9 	jr z,$-$05	jr z,$-$00
0ccb	5b dd 7e 09 	ld.lil a,(ix+$09)	ld.lil a,(ix+$00)
0ccf	b7 	or a	or a
0cd0	37 	scf	scf
0cd1	20 01 	jr nz,$+$03	jr nz,$+$00
0cd3	af 	xor a	xor a
0cd4	dd e1 	pop ix	pop ix
0cd6	c9 	ret	ret
0cd7	dd e5 	push ix	push ix
0cd9	3e 08 	ld a,$08	ld a,$00
0cdb	49 cf 	rst.lis $08	rst.lis $00
0cdd	5b dd cb 04 96 	res.lil 2,(ix+$04)	res.lil 2,(ix+$00)
0ce2	3e 17 	ld a,$17	ld a,$00
0ce4	cd 95 11 	call $1195	call $0000
0ce7	3e 00 	ld a,$00	ld a,$00
0ce9	cd 95 11 	call $1195	call $0000
0cec	3e 84 	ld a,$84	ld a,$00
0cee	cd 95 11 	call $1195	call $0000
0cf1	7b 	ld a,e	ld a,e
0cf2	cd 95 11 	call $1195	call $0000
0cf5	7a 	ld a,d	ld a,d
0cf6	cd 95 11 	call $1195	call $0000
0cf9	7d 	ld a,l	ld a,l
0cfa	cd 95 11 	call $1195	call $0000
0cfd	7c 	ld a,h	ld a,h
0cfe	cd 95 11 	call $1195	call $0000
0d01	5b dd cb 04 56 	bit.lil 2,(ix+$04)	bit.lil 2,(ix+$00)
0d06	28 f9 	jr z,$-$05	jr z,$-$00
0d08	5b dd 7e 16 	ld.lil a,(ix+$16)	ld.lil a,(ix+$00)
0d0c	dd e1 	pop ix	pop ix
0d0e	c9 	ret	ret
0d0f	cd 33 18 	call $1833	call $0000
0d12	d9 	exx	exx
0d13	7d 	ld a,l	ld a,l
0d14	32 00 52 	ld ($5200),a	ld ($0000),a
0d17	cd 0b 45 	call $450b	call $0000
0d1a	fe 2c 	cp $2c	cp $00
0d1c	28 0e 	jr z,$+$10	jr z,$+$00
0d1e	3e 11 	ld a,$11	ld a,$00
0d20	cd 95 11 	call $1195	call $0000
0d23	3a 00 52 	ld a,($5200)	ld a,($0000)
0d26	cd 95 11 	call $1195	call $0000
0d29	c3 99 24 	jp $2499	jp $0000
0d2c	cd a2 20 	call $20a2	call $0000
0d2f	cd 33 18 	call $1833	call $0000
0d32	d9 	exx	exx
0d33	7d 	ld a,l	ld a,l
0d34	32 01 52 	ld ($5201),a	ld ($0000),a
0d37	cd 0b 45 	call $450b	call $0000
0d3a	fe 2c 	cp $2c	cp $00
0d3c	28 23 	jr z,$+$25	jr z,$+$00
0d3e	3e 13 	ld a,$13	ld a,$00
0d40	cd 95 11 	call $1195	call $0000
0d43	3a 00 52 	ld a,($5200)	ld a,($0000)
0d46	cd 95 11 	call $1195	call $0000
0d49	3a 01 52 	ld a,($5201)	ld a,($0000)
0d4c	cd 95 11 	call $1195	call $0000
0d4f	3e 00 	ld a,$00	ld a,$00
0d51	cd 95 11 	call $1195	call $0000
0d54	3e 00 	ld a,$00	ld a,$00
0d56	cd 95 11 	call $1195	call $0000
0d59	3e 00 	ld a,$00	ld a,$00
0d5b	cd 95 11 	call $1195	call $0000
0d5e	c3 99 24 	jp $2499	jp $0000
0d61	cd a2 20 	call $20a2	call $0000
0d64	cd 33 18 	call $1833	call $0000
0d67	d9 	exx	exx
0d68	7d 	ld a,l	ld a,l
0d69	32 02 52 	ld ($5202),a	ld ($0000),a
0d6c	cd a2 20 	call $20a2	call $0000
0d6f	cd 33 18 	call $1833	call $0000
0d72	d9 	exx	exx
0d73	7d 	ld a,l	ld a,l
0d74	32 03 52 	ld ($5203),a	ld ($0000),a
0d77	3e 13 	ld a,$13	ld a,$00
0d79	cd 95 11 	call $1195	call $0000
0d7c	3a 00 52 	ld a,($5200)	ld a,($0000)
0d7f	cd 95 11 	call $1195	call $0000
0d82	3e ff 	ld a,$ff	ld a,$00
0d84	cd 95 11 	call $1195	call $0000
0d87	3a 01 52 	ld a,($5201)	ld a,($0000)
0d8a	cd 95 11 	call $1195	call $0000
0d8d	3a 02 52 	ld a,($5202)	ld a,($0000)
0d90	cd 95 11 	call $1195	call $0000
0d93	3a 03 52 	ld a,($5203)	ld a,($0000)
0d96	cd 95 11 	call $1195	call $0000
0d99	c3 99 24 	jp $2499	jp $0000
0d9c	f3 	di	di
0d9d	ed 6e 	ld a,mb	ld a,mb
0d9f	21 1a 0e 	ld hl,$0e1a	ld hl,$0000
0da2	cd dc 0d 	call $0ddc	call $0000
0da5	1e 32 	ld e,$32	ld e,$00
0da7	3e 14 	ld a,$14	ld a,$00
0da9	49 cf 	rst.lis $08	rst.lis $00
0dab	5b e5 	push.lil hl	push.lil hl
0dad	5b d1 	pop.lil de	pop.lil de
0daf	21 32 0e 	ld hl,$0e32	ld hl,$0000
0db2	ed 6e 	ld a,mb	ld a,mb
0db4	32 23 0e 	ld ($0e23),a	ld ($0000),a
0db7	cd dc 0d 	call $0ddc	call $0000
0dba	5b ed 1f 	ld.lil (hl),de	ld.lil (hl),de
0dbd	fb 	ei	ei
0dbe	c9 	ret	ret
0dbf	f3 	di	di
0dc0	21 32 0e 	ld hl,$0e32	ld hl,$0000
0dc3	3a 23 0e 	ld a,($0e23)	ld a,($0000)
0dc6	f5 	push af	push af
0dc7	cd dc 0d 	call $0ddc	call $0000
0dca	5b ed 17 	ld.lil de,(hl)	ld.lil de,(hl)
0dcd	5b d5 	push.lil de	push.lil de
0dcf	5b e1 	pop.lil hl	pop.lil hl
0dd1	1e 32 	ld e,$32	ld e,$00
0dd3	3e 14 	ld a,$14	ld a,$00
0dd5	49 cf 	rst.lis $08	rst.lis $00
0dd7	f1 	pop af	pop af
0dd8	ed 6d 	ld mb,a	ld mb,a
0dda	fb 	ei	ei
0ddb	c9 	ret	ret
0ddc	5b e5 	push.lil hl	push.lil hl
0dde	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
0de3	5b 39 	add.lil hl,sp	add.lil hl,sp
0de5	5b 77 	ld.lil (hl),a	ld.lil (hl),a
0de7	5b e1 	pop.lil hl	pop.lil hl
0de9	c9 	ret	ret
0dea	3e 08 	ld a,$08	ld a,$00
0dec	49 cf 	rst.lis $08	rst.lis $00
0dee	21 16 51 	ld hl,$5116	ld hl,$0000
0df1	5b dd 7e 19 	ld.lil a,(ix+$19)	ld.lil a,(ix+$00)
0df5	be 	cp (hl)	cp (hl)
0df6	20 09 	jr nz,$+$0b	jr nz,$+$00
0df8	af 	xor a	xor a
0df9	32 15 51 	ld ($5115),a	ld ($0000),a
0dfc	32 14 51 	ld ($5114),a	ld ($0000),a
0dff	5b c9 	ret.lil	ret.lil
0e01	77 	ld (hl),a	ld (hl),a
0e02	5b dd 7e 18 	ld.lil a,(ix+$18)	ld.lil a,(ix+$00)
0e06	b7 	or a	or a
0e07	28 ef 	jr z,$-$0f	jr z,$-$00
0e09	32 14 51 	ld ($5114),a	ld ($0000),a
0e0c	5b dd 7e 05 	ld.lil a,(ix+$05)	ld.lil a,(ix+$00)
0e10	32 15 51 	ld ($5115),a	ld ($0000),a
0e13	fe 1b 	cp $1b	cp $00
0e15	cc fa 11 	call z,$11fa	call z,$0000
0e18	49 c9 	ret.lis	ret.lis
0e1a	f3 	di	di
0e1b	f5 	push af	push af
0e1c	e5 	push hl	push hl
0e1d	dd e5 	push ix	push ix
0e1f	ed 6e 	ld a,mb	ld a,mb
0e21	f5 	push af	push af
0e22	3e 00 	ld a,$00	ld a,$00
0e24	ed 6d 	ld mb,a	ld mb,a
0e26	49 cd ea 0d 	call.lis $0dea	call.lis $0000
0e2a	f1 	pop af	pop af
0e2b	ed 6d 	ld mb,a	ld mb,a
0e2d	dd e1 	pop ix	pop ix
0e2f	e1 	pop hl	pop hl
0e30	f1 	pop af	pop af
0e31	c3 00 00 	jp $0000	jp $0000
0e34	00 	nop	nop
0e35	c5 	push bc	push bc
0e36	11 00 00 	ld de,$0000	ld de,$0000
0e39	cd 79 0e 	call $0e79	call $0000
0e3c	7e 	ld a,(hl)	ld a,(hl)
0e3d	fe 26 	cp $26	cp $00
0e3f	20 1e 	jr nz,$+$20	jr nz,$+$00
0e41	23 	inc hl	inc hl
0e42	7e 	ld a,(hl)	ld a,(hl)
0e43	cd 87 0e 	call $0e87	call $0000
0e46	d6 30 	sub $30	sub $00
0e48	38 2e 	jr c,$+$30	jr c,$+$00
0e4a	fe 0a 	cp $0a	cp $00
0e4c	38 06 	jr c,$+$08	jr c,$+$00
0e4e	d6 07 	sub $07	sub $00
0e50	fe 10 	cp $10	cp $00
0e52	30 24 	jr nc,$+$26	jr nc,$+$00
0e54	eb 	ex de,hl	ex de,hl
0e55	29 	add hl,hl	add hl,hl
0e56	29 	add hl,hl	add hl,hl
0e57	29 	add hl,hl	add hl,hl
0e58	29 	add hl,hl	add hl,hl
0e59	eb 	ex de,hl	ex de,hl
0e5a	b3 	or e	or e
0e5b	5f 	ld e,a	ld e,a
0e5c	23 	inc hl	inc hl
0e5d	18 e3 	jr $-$1b	jr $-$00
0e5f	7e 	ld a,(hl)	ld a,(hl)
0e60	d6 30 	sub $30	sub $00
0e62	38 14 	jr c,$+$16	jr c,$+$00
0e64	fe 0a 	cp $0a	cp $00
0e66	30 10 	jr nc,$+$12	jr nc,$+$00
0e68	eb 	ex de,hl	ex de,hl
0e69	44 	ld b,h	ld b,h
0e6a	4d 	ld c,l	ld c,l
0e6b	29 	add hl,hl	add hl,hl
0e6c	29 	add hl,hl	add hl,hl
0e6d	09 	add hl,bc	add hl,bc
0e6e	29 	add hl,hl	add hl,hl
0e6f	eb 	ex de,hl	ex de,hl
0e70	83 	add a,e	add a,e
0e71	5f 	ld e,a	ld e,a
0e72	8a 	adc a,d	adc a,d
0e73	93 	sub e	sub e
0e74	57 	ld d,a	ld d,a
0e75	23 	inc hl	inc hl
0e76	18 e7 	jr $-$17	jr $-$00
0e78	c1 	pop bc	pop bc
0e79	7e 	ld a,(hl)	ld a,(hl)
0e7a	fe 20 	cp $20	cp $00
0e7c	c0 	ret nz	ret nz
0e7d	23 	inc hl	inc hl
0e7e	18 f9 	jr $-$05	jr $-$00
0e80	7e 	ld a,(hl)	ld a,(hl)
0e81	fe 20 	cp $20	cp $00
0e83	c8 	ret z	ret z
0e84	23 	inc hl	inc hl
0e85	18 f9 	jr $-$05	jr $-$00
0e87	e6 7f 	and $7f	and $00
0e89	fe 60 	cp $60	cp $00
0e8b	d8 	ret c	ret c
0e8c	e6 5f 	and $5f	and $00
0e8e	c9 	ret	ret
0e8f	e3 	ex (sp),hl	ex (sp),hl
0e90	87 	add a,a	add a,a
0e91	85 	add a,l	add a,l
0e92	6f 	ld l,a	ld l,a
0e93	8c 	adc a,h	adc a,h
0e94	95 	sub l	sub l
0e95	67 	ld h,a	ld h,a
0e96	7e 	ld a,(hl)	ld a,(hl)
0e97	23 	inc hl	inc hl
0e98	66 	ld h,(hl)	ld h,(hl)
0e99	6f 	ld l,a	ld l,a
0e9a	e3 	ex (sp),hl	ex (sp),hl
0e9b	c9 	ret	ret
0e9c	c5 	push bc	push bc
0e9d	06 00 	ld b,$00	ld b,$00
0e9f	0e 0d 	ld c,$0d	ld c,$00
0ea1	18 05 	jr $+$07	jr $+$00
0ea3	c5 	push bc	push bc
0ea4	06 0d 	ld b,$0d	ld b,$00
0ea6	0e 00 	ld c,$00	ld c,$00
0ea8	e5 	push hl	push hl
0ea9	7e 	ld a,(hl)	ld a,(hl)
0eaa	b8 	cp b	cp b
0eab	28 03 	jr z,$+$05	jr z,$+$00
0ead	23 	inc hl	inc hl
0eae	18 f9 	jr $-$05	jr $-$00
0eb0	71 	ld (hl),c	ld (hl),c
0eb1	e1 	pop hl	pop hl
0eb2	c1 	pop bc	pop bc
0eb3	c9 	ret	ret
0eb4	7e 	ld a,(hl)	ld a,(hl)
0eb5	fe 20 	cp $20	cp $00
0eb7	28 09 	jr z,$+$0b	jr z,$+$00
0eb9	fe 0d 	cp $0d	cp $00
0ebb	28 05 	jr z,$+$07	jr z,$+$00
0ebd	12 	ld (de),a	ld (de),a
0ebe	23 	inc hl	inc hl
0ebf	13 	inc de	inc de
0ec0	18 f2 	jr $-$0c	jr $-$00
0ec2	af 	xor a	xor a
0ec3	12 	ld (de),a	ld (de),a
0ec4	13 	inc de	inc de
0ec5	c9 	ret	ret
0ec6	7e 	ld a,(hl)	ld a,(hl)
0ec7	fe 0d 	cp $0d	cp $00
0ec9	28 05 	jr z,$+$07	jr z,$+$00
0ecb	12 	ld (de),a	ld (de),a
0ecc	23 	inc hl	inc hl
0ecd	13 	inc de	inc de
0ece	18 f6 	jr $-$08	jr $-$00
0ed0	af 	xor a	xor a
0ed1	12 	ld (de),a	ld (de),a
0ed2	13 	inc de	inc de
0ed3	c9 	ret	ret
0ed4	7e 	ld a,(hl)	ld a,(hl)
0ed5	b9 	cp c	cp c
0ed6	c8 	ret z	ret z
0ed7	b7 	or a	or a
0ed8	c8 	ret z	ret z
0ed9	23 	inc hl	inc hl
0eda	18 f8 	jr $-$06	jr $-$00
0edc	7e 	ld a,(hl)	ld a,(hl)
0edd	cd 87 0e 	call $0e87	call $0000
0ee0	4f 	ld c,a	ld c,a
0ee1	1a 	ld a,(de)	ld a,(de)
0ee2	b9 	cp c	cp c
0ee3	c0 	ret nz	ret nz
0ee4	b1 	or c	or c
0ee5	c8 	ret z	ret z
0ee6	23 	inc hl	inc hl
0ee7	13 	inc de	inc de
0ee8	18 f2 	jr $-$0c	jr $-$00
0eea	7e 	ld a,(hl)	ld a,(hl)
0eeb	b7 	or a	or a
0eec	28 03 	jr z,$+$05	jr z,$+$00
0eee	23 	inc hl	inc hl
0eef	18 f9 	jr $-$05	jr $-$00
0ef1	1a 	ld a,(de)	ld a,(de)
0ef2	77 	ld (hl),a	ld (hl),a
0ef3	b7 	or a	or a
0ef4	c8 	ret z	ret z
0ef5	23 	inc hl	inc hl
0ef6	13 	inc de	inc de
0ef7	18 f8 	jr $-$06	jr $-$00
0ef9	7e 	ld a,(hl)	ld a,(hl)
0efa	32 00 52 	ld ($5200),a	ld ($0000),a
0efd	af 	xor a	xor a
0efe	32 01 52 	ld ($5201),a	ld ($0000),a
0f01	23 	inc hl	inc hl
0f02	23 	inc hl	inc hl
0f03	4e 	ld c,(hl)	ld c,(hl)
0f04	06 06 	ld b,$06	ld b,$00
0f06	ed 4c 	mlt bc	mlt bc
0f08	79 	ld a,c	ld a,c
0f09	32 02 52 	ld ($5202),a	ld ($0000),a
0f0c	23 	inc hl	inc hl
0f0d	23 	inc hl	inc hl
0f0e	e5 	push hl	push hl
0f0f	6e 	ld l,(hl)	ld l,(hl)
0f10	26 00 	ld h,$00	ld h,$00
0f12	11 84 0f 	ld de,$0f84	ld de,$0000
0f15	29 	add hl,hl	add hl,hl
0f16	19 	add hl,de	add hl,de
0f17	7e 	ld a,(hl)	ld a,(hl)
0f18	32 03 52 	ld ($5203),a	ld ($0000),a
0f1b	23 	inc hl	inc hl
0f1c	7e 	ld a,(hl)	ld a,(hl)
0f1d	32 04 52 	ld ($5204),a	ld ($0000),a
0f20	e1 	pop hl	pop hl
0f21	23 	inc hl	inc hl
0f22	23 	inc hl	inc hl
0f23	4e 	ld c,(hl)	ld c,(hl)
0f24	06 32 	ld b,$32	ld b,$00
0f26	ed 4c 	mlt bc	mlt bc
0f28	ed 43 05 52 	ld ($5205),bc	ld ($0000),bc
0f2c	dd e5 	push ix	push ix
0f2e	3e 08 	ld a,$08	ld a,$00
0f30	49 cf 	rst.lis $08	rst.lis $00
0f32	5b dd cb 04 9e 	res.lil 3,(ix+$04)	res.lil 3,(ix+$00)
0f37	3e 17 	ld a,$17	ld a,$00
0f39	cd 95 11 	call $1195	call $0000
0f3c	3e 00 	ld a,$00	ld a,$00
0f3e	cd 95 11 	call $1195	call $0000
0f41	3e 85 	ld a,$85	ld a,$00
0f43	cd 95 11 	call $1195	call $0000
0f46	3a 00 52 	ld a,($5200)	ld a,($0000)
0f49	cd 95 11 	call $1195	call $0000
0f4c	3a 01 52 	ld a,($5201)	ld a,($0000)
0f4f	cd 95 11 	call $1195	call $0000
0f52	3a 02 52 	ld a,($5202)	ld a,($0000)
0f55	cd 95 11 	call $1195	call $0000
0f58	3a 03 52 	ld a,($5203)	ld a,($0000)
0f5b	cd 95 11 	call $1195	call $0000
0f5e	3a 04 52 	ld a,($5204)	ld a,($0000)
0f61	cd 95 11 	call $1195	call $0000
0f64	3a 05 52 	ld a,($5205)	ld a,($0000)
0f67	cd 95 11 	call $1195	call $0000
0f6a	3a 06 52 	ld a,($5206)	ld a,($0000)
0f6d	cd 95 11 	call $1195	call $0000
0f70	5b dd cb 04 5e 	bit.lil 3,(ix+$04)	bit.lil 3,(ix+$00)
0f75	28 f9 	jr z,$-$05	jr z,$-$00
0f77	cd 1a 12 	call $121a	call $0000
0f7a	5b dd 7e 0e 	ld.lil a,(ix+$0e)	ld.lil a,(ix+$00)
0f7e	a7 	and a	and a
0f7f	28 b1 	jr z,$-$4d	jr z,$-$00
0f81	dd e1 	pop ix	pop ix
0f83	c9 	ret	ret
0f84	75 	ld (hl),l	ld (hl),l
0f85	00 	nop	nop
0f86	76 	halt	halt
0f87	00 	nop	nop
0f88	78 	ld a,b	ld a,b
0f89	00 	nop	nop
0f8a	7a 	ld a,d	ld a,d
0f8b	00 	nop	nop
0f8c	7b 	ld a,e	ld a,e
0f8d	00 	nop	nop
0f8e	83 	add a,e	add a,e
0f8f	00 	nop	nop
0f90	85 	add a,l	add a,l
0f91	00 	nop	nop
0f92	87 	add a,a	add a,a
0f93	00 	nop	nop
0f94	89 	adc a,c	adc a,c
0f95	00 	nop	nop
0f96	8b 	adc a,e	adc a,e
0f97	00 	nop	nop
0f98	8d 	adc a,l	adc a,l
0f99	00 	nop	nop
0f9a	8f 	adc a,a	adc a,a
0f9b	00 	nop	nop
0f9c	91 	sub c	sub c
0f9d	00 	nop	nop
0f9e	93 	sub e	sub e
0f9f	00 	nop	nop
0fa0	95 	sub l	sub l
0fa1	00 	nop	nop
0fa2	97 	sub a	sub a
0fa3	00 	nop	nop
0fa4	99 	sbc a,c	sbc a,c
0fa5	00 	nop	nop
0fa6	9c 	sbc a,h	sbc a,h
0fa7	00 	nop	nop
0fa8	9e 	sbc a,(hl)	sbc a,(hl)
0fa9	00 	nop	nop
0faa	a0 	and b	and b
0fab	00 	nop	nop
0fac	a2 	and d	and d
0fad	00 	nop	nop
0fae	a5 	and l	and l
0faf	00 	nop	nop
0fb0	a7 	and a	and a
0fb1	00 	nop	nop
0fb2	aa 	xor d	xor d
0fb3	00 	nop	nop
0fb4	ac 	xor h	xor h
0fb5	00 	nop	nop
0fb6	af 	xor a	xor a
0fb7	00 	nop	nop
0fb8	b1 	or c	or c
0fb9	00 	nop	nop
0fba	b4 	or h	or h
0fbb	00 	nop	nop
0fbc	b6 	or (hl)	or (hl)
0fbd	00 	nop	nop
0fbe	b9 	cp c	cp c
0fbf	00 	nop	nop
0fc0	bc 	cp h	cp h
0fc1	00 	nop	nop
0fc2	be 	cp (hl)	cp (hl)
0fc3	00 	nop	nop
0fc4	c1 	pop bc	pop bc
0fc5	00 	nop	nop
0fc6	c4 00 c7 	call nz,$c700	call nz,$0000
0fc9	00 	nop	nop
0fca	ca 00 cd 	jp z,$cd00	jp z,$0000
0fcd	00 	nop	nop
0fce	d0 	ret nc	ret nc
0fcf	00 	nop	nop
0fd0	d3 00 	out ($00),a	out ($00),a
0fd2	d6 00 	sub $00	sub $00
0fd4	d9 	exx	exx
0fd5	00 	nop	nop
0fd6	dc 00 df 	call c,$df00	call c,$0000
0fd9	00 	nop	nop
0fda	e2 00 e6 	jp po,$e600	jp po,$0000
0fdd	00 	nop	nop
0fde	e9 	jp (hl)	jp (hl)
0fdf	00 	nop	nop
0fe0	ec 00 f0 	call pe,$f000	call pe,$0000
0fe3	00 	nop	nop
0fe4	f3 	di	di
0fe5	00 	nop	nop
0fe6	f7 	rst $30	rst $00
0fe7	00 	nop	nop
0fe8	fb 	ei	ei
0fe9	00 	nop	nop
0fea	fe 00 	cp $00	cp $00
0fec	02 	ld (bc),a	ld (bc),a
0fed	01 06 01 	ld bc,$0106	ld bc,$0000
0ff0	09 	add hl,bc	add hl,bc
0ff1	01 0d 01 	ld bc,$010d	ld bc,$0000
0ff4	11 01 15 	ld de,$1501	ld de,$0000
0ff7	01 19 01 	ld bc,$0119	ld bc,$0000
0ffa	1d 	dec e	dec e
0ffb	01 21 01 	ld bc,$0121	ld bc,$0000
0ffe	26 01 	ld h,$01	ld h,$00
1000	2a 01 2e 	ld hl,($2e01)	ld hl,($0000)
1003	01 33 01 	ld bc,$0133	ld bc,$0000
1006	37 	scf	scf
1007	01 3c 01 	ld bc,$013c	ld bc,$0000
100a	40 01 45 01 	ld.sis bc,$0145	ld.sis bc,$0000
100e	4a 	ld c,d	ld c,d
100f	01 4e 01 	ld bc,$014e	ld bc,$0000
1012	53 	ld d,e	ld d,e
1013	01 58 01 	ld bc,$0158	ld bc,$0000
1016	5d 	ld e,l	ld e,l
1017	01 62 01 	ld bc,$0162	ld bc,$0000
101a	67 	ld h,a	ld h,a
101b	01 6d 01 	ld bc,$016d	ld bc,$0000
101e	72 	ld (hl),d	ld (hl),d
101f	01 77 01 	ld bc,$0177	ld bc,$0000
1022	7d 	ld a,l	ld a,l
1023	01 82 01 	ld bc,$0182	ld bc,$0000
1026	88 	adc a,b	adc a,b
1027	01 8e 01 	ld bc,$018e	ld bc,$0000
102a	93 	sub e	sub e
102b	01 99 01 	ld bc,$0199	ld bc,$0000
102e	9f 	sbc a,a	sbc a,a
102f	01 a5 01 	ld bc,$01a5	ld bc,$0000
1032	ab 	xor e	xor e
1033	01 b2 01 	ld bc,$01b2	ld bc,$0000
1036	b8 	cp b	cp b
1037	01 be 01 	ld bc,$01be	ld bc,$0000
103a	c5 	push bc	push bc
103b	01 cb 01 	ld bc,$01cb	ld bc,$0000
103e	d2 01 d9 	jp nc,$d901	jp nc,$0000
1041	01 e0 01 	ld bc,$01e0	ld bc,$0000
1044	e7 	rst $20	rst $00
1045	01 ee 01 	ld bc,$01ee	ld bc,$0000
1048	f5 	push af	push af
1049	01 fc 01 	ld bc,$01fc	ld bc,$0000
104c	04 	inc b	inc b
104d	02 	ld (bc),a	ld (bc),a
104e	0b 	dec bc	dec bc
104f	02 	ld (bc),a	ld (bc),a
1050	13 	inc de	inc de
1051	02 	ld (bc),a	ld (bc),a
1052	1b 	dec de	dec de
1053	02 	ld (bc),a	ld (bc),a
1054	22 02 2a 	ld ($2a02),hl	ld ($0000),hl
1057	02 	ld (bc),a	ld (bc),a
1058	32 02 3b 	ld ($3b02),a	ld ($0000),a
105b	02 	ld (bc),a	ld (bc),a
105c	43 	ld b,e	ld b,e
105d	02 	ld (bc),a	ld (bc),a
105e	4b 	ld c,e	ld c,e
105f	02 	ld (bc),a	ld (bc),a
1060	54 	ld d,h	ld d,h
1061	02 	ld (bc),a	ld (bc),a
1062	5d 	ld e,l	ld e,l
1063	02 	ld (bc),a	ld (bc),a
1064	65 	ld h,l	ld h,l
1065	02 	ld (bc),a	ld (bc),a
1066	6e 	ld l,(hl)	ld l,(hl)
1067	02 	ld (bc),a	ld (bc),a
1068	77 	ld (hl),a	ld (hl),a
1069	02 	ld (bc),a	ld (bc),a
106a	81 	add a,c	add a,c
106b	02 	ld (bc),a	ld (bc),a
106c	8a 	adc a,d	adc a,d
106d	02 	ld (bc),a	ld (bc),a
106e	93 	sub e	sub e
106f	02 	ld (bc),a	ld (bc),a
1070	9d 	sbc a,l	sbc a,l
1071	02 	ld (bc),a	ld (bc),a
1072	a7 	and a	and a
1073	02 	ld (bc),a	ld (bc),a
1074	b1 	or c	or c
1075	02 	ld (bc),a	ld (bc),a
1076	bb 	cp e	cp e
1077	02 	ld (bc),a	ld (bc),a
1078	c5 	push bc	push bc
1079	02 	ld (bc),a	ld (bc),a
107a	cf 	rst $08	rst $00
107b	02 	ld (bc),a	ld (bc),a
107c	d9 	exx	exx
107d	02 	ld (bc),a	ld (bc),a
107e	e4 02 ef 	call po,$ef02	call po,$0000
1081	02 	ld (bc),a	ld (bc),a
1082	fa 02 05 	jp m,$0502	jp m,$0000
1085	03 	inc bc	inc bc
1086	10 03 	djnz $+$05	djnz $+$00
1088	1b 	dec de	dec de
1089	03 	inc bc	inc bc
108a	27 	daa	daa
108b	03 	inc bc	inc bc
108c	33 	inc sp	inc sp
108d	03 	inc bc	inc bc
108e	3f 	ccf	ccf
108f	03 	inc bc	inc bc
1090	4b 	ld c,e	ld c,e
1091	03 	inc bc	inc bc
1092	57 	ld d,a	ld d,a
1093	03 	inc bc	inc bc
1094	63 	ld h,e	ld h,e
1095	03 	inc bc	inc bc
1096	70 	ld (hl),b	ld (hl),b
1097	03 	inc bc	inc bc
1098	7d 	ld a,l	ld a,l
1099	03 	inc bc	inc bc
109a	8a 	adc a,d	adc a,d
109b	03 	inc bc	inc bc
109c	97 	sub a	sub a
109d	03 	inc bc	inc bc
109e	a4 	and h	and h
109f	03 	inc bc	inc bc
10a0	b2 	or d	or d
10a1	03 	inc bc	inc bc
10a2	c0 	ret nz	ret nz
10a3	03 	inc bc	inc bc
10a4	ce 03 	adc a,$03	adc a,$00
10a6	dc 03 ea 	call c,$ea03	call c,$0000
10a9	03 	inc bc	inc bc
10aa	f9 	ld sp,hl	ld sp,hl
10ab	03 	inc bc	inc bc
10ac	08 	ex af,af'	ex af,af'
10ad	04 	inc b	inc b
10ae	17 	rla	rla
10af	04 	inc b	inc b
10b0	26 04 	ld h,$04	ld h,$00
10b2	36 04 	ld (hl),$04	ld (hl),$00
10b4	45 	ld b,l	ld b,l
10b5	04 	inc b	inc b
10b6	55 	ld d,l	ld d,l
10b7	04 	inc b	inc b
10b8	65 	ld h,l	ld h,l
10b9	04 	inc b	inc b
10ba	76 	halt	halt
10bb	04 	inc b	inc b
10bc	86 	add a,(hl)	add a,(hl)
10bd	04 	inc b	inc b
10be	97 	sub a	sub a
10bf	04 	inc b	inc b
10c0	a8 	xor b	xor b
10c1	04 	inc b	inc b
10c2	ba 	cp d	cp d
10c3	04 	inc b	inc b
10c4	cb 04 	rlc h	rlc h
10c6	dd 04 	trap	trap
10c8	ef 	rst $28	rst $00
10c9	04 	inc b	inc b
10ca	02 	ld (bc),a	ld (bc),a
10cb	05 	dec b	dec b
10cc	14 	inc d	inc d
10cd	05 	dec b	dec b
10ce	27 	daa	daa
10cf	05 	dec b	dec b
10d0	3a 05 4e 	ld a,($4e05)	ld a,($0000)
10d3	05 	dec b	dec b
10d4	62 	ld h,d	ld h,d
10d5	05 	dec b	dec b
10d6	76 	halt	halt
10d7	05 	dec b	dec b
10d8	8a 	adc a,d	adc a,d
10d9	05 	dec b	dec b
10da	9f 	sbc a,a	sbc a,a
10db	05 	dec b	dec b
10dc	b3 	or e	or e
10dd	05 	dec b	dec b
10de	c9 	ret	ret
10df	05 	dec b	dec b
10e0	de 05 	sbc a,$05	sbc a,$00
10e2	f4 05 0a 	call p,$0a05	call p,$0000
10e5	06 21 	ld b,$21	ld b,$00
10e7	06 38 	ld b,$38	ld b,$00
10e9	06 4f 	ld b,$4f	ld b,$00
10eb	06 66 	ld b,$66	ld b,$00
10ed	06 7e 	ld b,$7e	ld b,$00
10ef	06 96 	ld b,$96	ld b,$00
10f1	06 af 	ld b,$af	ld b,$00
10f3	06 c8 	ld b,$c8	ld b,$00
10f5	06 e1 	ld b,$e1	ld b,$00
10f7	06 fa 	ld b,$fa	ld b,$00
10f9	06 14 	ld b,$14	ld b,$00
10fb	07 	rlca	rlca
10fc	2f 	cpl	cpl
10fd	07 	rlca	rlca
10fe	4a 	ld c,d	ld c,d
10ff	07 	rlca	rlca
1100	65 	ld h,l	ld h,l
1101	07 	rlca	rlca
1102	80 	add a,b	add a,b
1103	07 	rlca	rlca
1104	9c 	sbc a,h	sbc a,h
1105	07 	rlca	rlca
1106	b8 	cp b	cp b
1107	07 	rlca	rlca
1108	d5 	push de	push de
1109	07 	rlca	rlca
110a	f2 07 10 	jp p,$1007	jp p,$0000
110d	08 	ex af,af'	ex af,af'
110e	2d 	dec l	dec l
110f	08 	ex af,af'	ex af,af'
1110	4b 	ld c,e	ld c,e
1111	08 	ex af,af'	ex af,af'
1112	6a 	ld l,d	ld l,d
1113	08 	ex af,af'	ex af,af'
1114	8a 	adc a,d	adc a,d
1115	08 	ex af,af'	ex af,af'
1116	a9 	xor c	xor c
1117	08 	ex af,af'	ex af,af'
1118	ca 08 ea 	jp z,$ea08	jp z,$0000
111b	08 	ex af,af'	ex af,af'
111c	0c 	inc c	inc c
111d	09 	add hl,bc	add hl,bc
111e	2d 	dec l	dec l
111f	09 	add hl,bc	add hl,bc
1120	4f 	ld c,a	ld c,a
1121	09 	add hl,bc	add hl,bc
1122	72 	ld (hl),d	ld (hl),d
1123	09 	add hl,bc	add hl,bc
1124	95 	sub l	sub l
1125	09 	add hl,bc	add hl,bc
1126	b9 	cp c	cp c
1127	09 	add hl,bc	add hl,bc
1128	dd 09 	add ix,bc	add ix,bc
112a	02 	ld (bc),a	ld (bc),a
112b	0a 	ld a,(bc)	ld a,(bc)
112c	27 	daa	daa
112d	0a 	ld a,(bc)	ld a,(bc)
112e	4d 	ld c,l	ld c,l
112f	0a 	ld a,(bc)	ld a,(bc)
1130	73 	ld (hl),e	ld (hl),e
1131	0a 	ld a,(bc)	ld a,(bc)
1132	9a 	sbc a,d	sbc a,d
1133	0a 	ld a,(bc)	ld a,(bc)
1134	c2 0a ea 	jp nz,$ea0a	jp nz,$0000
1137	0a 	ld a,(bc)	ld a,(bc)
1138	12 	ld (de),a	ld (de),a
1139	0b 	dec bc	dec bc
113a	3c 	inc a	inc a
113b	0b 	dec bc	dec bc
113c	66 	ld h,(hl)	ld h,(hl)
113d	0b 	dec bc	dec bc
113e	90 	sub b	sub b
113f	0b 	dec bc	dec bc
1140	bb 	cp e	cp e
1141	0b 	dec bc	dec bc
1142	e7 	rst $20	rst $00
1143	0b 	dec bc	dec bc
1144	13 	inc de	inc de
1145	0c 	inc c	inc c
1146	40 0c 	inc.sis c	inc.sis c
1148	6e 	ld l,(hl)	ld l,(hl)
1149	0c 	inc c	inc c
114a	9c 	sbc a,h	sbc a,h
114b	0c 	inc c	inc c
114c	cb 0c 	rrc h	rrc h
114e	fa 0c 2b 	jp m,$2b0c	jp m,$0000
1151	0d 	dec c	dec c
1152	5c 	ld e,h	ld e,h
1153	0d 	dec c	dec c
1154	8e 	adc a,(hl)	adc a,(hl)
1155	0d 	dec c	dec c
1156	c0 	ret nz	ret nz
1157	0d 	dec c	dec c
1158	f3 	di	di
1159	0d 	dec c	dec c
115a	27 	daa	daa
115b	0e 5c 	ld c,$5c	ld c,$00
115d	0e 91 	ld c,$91	ld c,$00
115f	0e c8 	ld c,$c8	ld c,$00
1161	0e ff 	ld c,$ff	ld c,$00
1163	0e 36 	ld c,$36	ld c,$00
1165	0f 	rrca	rrca
1166	6f 	ld l,a	ld l,a
1167	0f 	rrca	rrca
1168	a9 	xor c	xor c
1169	0f 	rrca	rrca
116a	e3 	ex (sp),hl	ex (sp),hl
116b	0f 	rrca	rrca
116c	1e 10 	ld e,$10	ld e,$00
116e	5a 	ld e,d	ld e,d
116f	10 97 	djnz $-$67	djnz $-$00
1171	10 d5 	djnz $-$29	djnz $-$00
1173	10 13 	djnz $+$15	djnz $+$00
1175	11 53 11 	ld de,$1153	ld de,$0000
1178	93 	sub e	sub e
1179	11 d5 11 	ld de,$11d5	ld de,$0000
117c	17 	rla	rla
117d	12 	ld (de),a	ld (de),a
117e	5b 12 	ld.lil (de),a	ld.lil (de),a
1180	9f 	sbc a,a	sbc a,a
1181	12 	ld (de),a	ld (de),a
1182	e4 12 cd 	call po,$cd12	call po,$0000
1185	9c 	sbc a,h	sbc a,h
1186	0d 	dec c	dec c
1187	af 	xor a	xor a
1188	32 0f 51 	ld ($510f),a	ld ($0000),a
118b	21 00 55 	ld hl,$5500	ld hl,$0000
118e	11 00 ff 	ld de,$ff00	ld de,$0000
1191	5f 	ld e,a	ld e,a
1192	c9 	ret	ret
1193	3e 3e 	ld a,$3e	ld a,$00
1195	e5 	push hl	push hl
1196	21 fe 54 	ld hl,$54fe	ld hl,$0000
1199	cb 5e 	bit 3,(hl)	bit 3,(hl)
119b	20 0a 	jr nz,$+$0c	jr nz,$+$00
119d	2a 12 51 	ld hl,($5112)	ld hl,($0000)
11a0	2d 	dec l	dec l
11a1	28 17 	jr z,$+$19	jr z,$+$00
11a3	e1 	pop hl	pop hl
11a4	49 d7 	rst.lis $10	rst.lis $00
11a6	c9 	ret	ret
11a7	2a 10 51 	ld hl,($5110)	ld hl,($0000)
11aa	fe 0a 	cp $0a	cp $00
11ac	28 0a 	jr z,$+$0c	jr z,$+$00
11ae	fe 0d 	cp $0d	cp $00
11b0	20 01 	jr nz,$+$03	jr nz,$+$00
11b2	af 	xor a	xor a
11b3	77 	ld (hl),a	ld (hl),a
11b4	23 	inc hl	inc hl
11b5	22 10 51 	ld ($5110),hl	ld ($0000),hl
11b8	e1 	pop hl	pop hl
11b9	c9 	ret	ret
11ba	d5 	push de	push de
11bb	5c 	ld e,h	ld e,h
11bc	cd 47 12 	call $1247	call $0000
11bf	d1 	pop de	pop de
11c0	e1 	pop hl	pop hl
11c1	c9 	ret	ret
11c2	3e 00 	ld a,$00	ld a,$00
11c4	49 cf 	rst.lis $08	rst.lis $00
11c6	fe 1b 	cp $1b	cp $00
11c8	28 55 	jr z,$+$57	jr z,$+$00
11ca	c9 	ret	ret
11cb	1e 01 	ld e,$01	ld e,$00
11cd	fd e5 	push iy	push iy
11cf	e5 	push hl	push hl
11d0	01 00 01 	ld bc,$0100	ld bc,$0000
11d3	3e 09 	ld a,$09	ld a,$00
11d5	49 cf 	rst.lis $08	rst.lis $00
11d7	e1 	pop hl	pop hl
11d8	fd e1 	pop iy	pop iy
11da	f5 	push af	push af
11db	cd 9c 0e 	call $0e9c	call $0000
11de	cd fb 40 	call $40fb	call $0000
11e1	f1 	pop af	pop af
11e2	fe 1b 	cp $1b	cp $00
11e4	ca 1f 12 	jp z,$121f	jp z,$0000
11e7	3a 0f 51 	ld a,($510f)	ld a,($0000)
11ea	cb bf 	res 7,a	res 7,a
11ec	32 0f 51 	ld ($510f),a	ld ($0000),a
11ef	cd 6f 16 	call $166f	call $0000
11f2	af 	xor a	xor a
11f3	32 14 51 	ld ($5114),a	ld ($0000),a
11f6	32 15 51 	ld ($5115),a	ld ($0000),a
11f9	c9 	ret	ret
11fa	e5 	push hl	push hl
11fb	21 0f 51 	ld hl,$510f	ld hl,$0000
11fe	cb 76 	bit 6,(hl)	bit 6,(hl)
1200	20 02 	jr nz,$+$04	jr nz,$+$00
1202	cb fe 	set 7,(hl)	set 7,(hl)
1204	e1 	pop hl	pop hl
1205	c9 	ret	ret
1206	cd 0f 12 	call $120f	call $0000
1209	c0 	ret nz	ret nz
120a	fe 1b 	cp $1b	cp $00
120c	28 ec 	jr z,$-$12	jr z,$-$00
120e	c9 	ret	ret
120f	3a 14 51 	ld a,($5114)	ld a,($0000)
1212	3d 	dec a	dec a
1213	3a 15 51 	ld a,($5115)	ld a,($0000)
1216	c9 	ret	ret
1217	cd 06 12 	call $1206	call $0000
121a	3a 0f 51 	ld a,($510f)	ld a,($0000)
121d	b7 	or a	or a
121e	f0 	ret p	ret p
121f	21 0f 51 	ld hl,$510f	ld hl,$0000
1222	cb be 	res 7,(hl)	res 7,(hl)
1224	c3 e3 25 	jp $25e3	jp $0000
1227	c9 	ret	ret
1228	0e 01 	ld c,$01	ld c,$00
122a	28 06 	jr z,$+$08	jr z,$+$00
122c	0e 32 	ld c,$32	ld c,$00
122e	38 02 	jr c,$+$04	jr c,$+$00
1230	0e 0a 	ld c,$0a	ld c,$00
1232	3e 0a 	ld a,$0a	ld a,$00
1234	49 cf 	rst.lis $08	rst.lis $00
1236	c9 	ret	ret
1237	c5 	push bc	push bc
1238	4b 	ld c,e	ld c,e
1239	3e 0b 	ld a,$0b	ld a,$00
123b	49 cf 	rst.lis $08	rst.lis $00
123d	c1 	pop bc	pop bc
123e	c9 	ret	ret
123f	c5 	push bc	push bc
1240	4b 	ld c,e	ld c,e
1241	3e 0c 	ld a,$0c	ld a,$00
1243	49 cf 	rst.lis $08	rst.lis $00
1245	c1 	pop bc	pop bc
1246	c9 	ret	ret
1247	c5 	push bc	push bc
1248	4b 	ld c,e	ld c,e
1249	47 	ld b,a	ld b,a
124a	3e 0d 	ld a,$0d	ld a,$00
124c	49 cf 	rst.lis $08	rst.lis $00
124e	c1 	pop bc	pop bc
124f	c9 	ret	ret
1250	c5 	push bc	push bc
1251	4b 	ld c,e	ld c,e
1252	3e 0e 	ld a,$0e	ld a,$00
1254	49 cf 	rst.lis $08	rst.lis $00
1256	c1 	pop bc	pop bc
1257	fe 01 	cp $01	cp $00
1259	c9 	ret	ret
125a	fd e5 	push iy	push iy
125c	4b 	ld c,e	ld c,e
125d	3e 19 	ld a,$19	ld a,$00
125f	49 cf 	rst.lis $08	rst.lis $00
1261	5b e5 	push.lil hl	push.lil hl
1263	5b fd e1 	pop.lil iy	pop.lil iy
1266	5b fd 6e 11 	ld.lil l,(iy+$11)	ld.lil l,(iy+$00)
126a	5b fd 66 12 	ld.lil h,(iy+$12)	ld.lil h,(iy+$00)
126e	5b fd 5e 13 	ld.lil e,(iy+$13)	ld.lil e,(iy+$00)
1272	5b fd 56 14 	ld.lil d,(iy+$14)	ld.lil d,(iy+$00)
1276	fd e1 	pop iy	pop iy
1278	c9 	ret	ret
1279	fd e5 	push iy	push iy
127b	4f 	ld c,a	ld c,a
127c	5b e5 	push.lil hl	push.lil hl
127e	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
1283	5b 39 	add.lil hl,sp	add.lil hl,sp
1285	5b 73 	ld.lil (hl),e	ld.lil (hl),e
1287	5b e1 	pop.lil hl	pop.lil hl
1289	5a 	ld e,d	ld e,d
128a	3e 1c 	ld a,$1c	ld a,$00
128c	49 cf 	rst.lis $08	rst.lis $00
128e	fd e1 	pop iy	pop iy
1290	c9 	ret	ret
1291	fd e5 	push iy	push iy
1293	4b 	ld c,e	ld c,e
1294	3e 19 	ld a,$19	ld a,$00
1296	49 cf 	rst.lis $08	rst.lis $00
1298	5b e5 	push.lil hl	push.lil hl
129a	5b fd e1 	pop.lil iy	pop.lil iy
129d	5b fd 6e 24 	ld.lil l,(iy+$24)	ld.lil l,(iy+$00)
12a1	5b fd 66 25 	ld.lil h,(iy+$25)	ld.lil h,(iy+$00)
12a5	5b fd 5e 26 	ld.lil e,(iy+$26)	ld.lil e,(iy+$00)
12a9	5b fd 56 27 	ld.lil d,(iy+$27)	ld.lil d,(iy+$00)
12ad	fd e1 	pop iy	pop iy
12af	c9 	ret	ret
12b0	c5 	push bc	push bc
12b1	d5 	push de	push de
12b2	11 00 52 	ld de,$5200	ld de,$0000
12b5	cd b4 0e 	call $0eb4	call $0000
12b8	21 00 52 	ld hl,$5200	ld hl,$0000
12bb	cd f9 13 	call $13f9	call $0000
12be	cd 0a 14 	call $140a	call $0000
12c1	d1 	pop de	pop de
12c2	c1 	pop bc	pop bc
12c3	b7 	or a	or a
12c4	ca 8b 13 	jp z,$138b	jp z,$0000
12c7	af 	xor a	xor a
12c8	cd 28 12 	call $1228	call $0000
12cb	5f 	ld e,a	ld e,a
12cc	b7 	or a	or a
12cd	3e 04 	ld a,$04	ld a,$00
12cf	ca 93 13 	jp z,$1393	jp z,$0000
12d2	cd 3e 40 	call $403e	call $0000
12d5	21 00 52 	ld hl,$5200	ld hl,$0000
12d8	cd 3f 12 	call $123f	call $0000
12db	38 1c 	jr c,$+$1e	jr c,$+$00
12dd	fe 0a 	cp $0a	cp $00
12df	28 18 	jr z,$+$1a	jr z,$+$00
12e1	fe 21 	cp $21	cp $00
12e3	38 f3 	jr c,$-$0b	jr c,$-$00
12e5	77 	ld (hl),a	ld (hl),a
12e6	2c 	inc l	inc l
12e7	cd 3f 12 	call $123f	call $0000
12ea	38 26 	jr c,$+$28	jr c,$+$00
12ec	fe 20 	cp $20	cp $00
12ee	38 05 	jr c,$+$07	jr c,$+$00
12f0	77 	ld (hl),a	ld (hl),a
12f1	2c 	inc l	inc l
12f2	ca ef 3e 	jp z,$3eef	jp z,$0000
12f5	fe 0a 	cp $0a	cp $00
12f7	20 ee 	jr nz,$-$10	jr nz,$-$00
12f9	36 0d 	ld (hl),$0d	ld (hl),$00
12fb	7d 	ld a,l	ld a,l
12fc	fe 02 	cp $02	cp $00
12fe	38 08 	jr c,$+$0a	jr c,$+$00
1300	d5 	push de	push de
1301	cd 1d 13 	call $131d	call $0000
1304	dc 1a 40 	call c,$401a	call c,$0000
1307	d1 	pop de	pop de
1308	cd 50 12 	call $1250	call $0000
130b	20 c8 	jr nz,$-$36	jr nz,$-$00
130d	cd 37 12 	call $1237	call $0000
1310	37 	scf	scf
1311	c9 	ret	ret
1312	fe 20 	cp $20	cp $00
1314	38 05 	jr c,$+$07	jr c,$+$00
1316	77 	ld (hl),a	ld (hl),a
1317	2c 	inc l	inc l
1318	ca ef 3e 	jp z,$3eef	jp z,$0000
131b	18 dc 	jr $-$22	jr $-$00
131d	af 	xor a	xor a
131e	32 fb 54 	ld ($54fb),a	ld ($0000),a
1321	fd 21 00 52 	ld iy,$5200	ld iy,$0000
1325	cd 8a 43 	call $438a	call $0000
1328	cd 0b 45 	call $450b	call $0000
132b	7c 	ld a,h	ld a,h
132c	b5 	or l	or l
132d	28 00 	jr z,$+$02	jr z,$+$00
132f	11 00 53 	ld de,$5300	ld de,$0000
1332	0e 01 	ld c,$01	ld c,$00
1334	e5 	push hl	push hl
1335	cd 18 44 	call $4418	call $0000
1338	e1 	pop hl	pop hl
1339	12 	ld (de),a	ld (de),a
133a	af 	xor a	xor a
133b	47 	ld b,a	ld b,a
133c	4b 	ld c,e	ld c,e
133d	13 	inc de	inc de
133e	12 	ld (de),a	ld (de),a
133f	7c 	ld a,h	ld a,h
1340	b5 	or l	or l
1341	fd 21 00 53 	ld iy,$5300	ld iy,$0000
1345	ca 99 24 	jp z,$2499	jp z,$0000
1348	c5 	push bc	push bc
1349	cd 43 41 	call $4143	call $0000
134c	cc e9 3f 	call z,$3fe9	call z,$0000
134f	c1 	pop bc	pop bc
1350	79 	ld a,c	ld a,c
1351	b7 	or a	or a
1352	c8 	ret z	ret z
1353	c6 04 	add a,$04	add a,$00
1355	4f 	ld c,a	ld c,a
1356	d5 	push de	push de
1357	c5 	push bc	push bc
1358	eb 	ex de,hl	ex de,hl
1359	c5 	push bc	push bc
135a	cd 25 40 	call $4025	call $0000
135d	c1 	pop bc	pop bc
135e	e5 	push hl	push hl
135f	09 	add hl,bc	add hl,bc
1360	e5 	push hl	push hl
1361	24 	inc h	inc h
1362	af 	xor a	xor a
1363	ed 72 	sbc hl,sp	sbc hl,sp
1365	e1 	pop hl	pop hl
1366	d2 44 3f 	jp nc,$3f44	jp nc,$0000
1369	e3 	ex (sp),hl	ex (sp),hl
136a	e5 	push hl	push hl
136b	23 	inc hl	inc hl
136c	b7 	or a	or a
136d	ed 52 	sbc hl,de	sbc hl,de
136f	44 	ld b,h	ld b,h
1370	4d 	ld c,l	ld c,l
1371	e1 	pop hl	pop hl
1372	d1 	pop de	pop de
1373	28 02 	jr z,$+$04	jr z,$+$00
1375	ed b8 	lddr	lddr
1377	c1 	pop bc	pop bc
1378	d1 	pop de	pop de
1379	23 	inc hl	inc hl
137a	71 	ld (hl),c	ld (hl),c
137b	23 	inc hl	inc hl
137c	73 	ld (hl),e	ld (hl),e
137d	23 	inc hl	inc hl
137e	72 	ld (hl),d	ld (hl),d
137f	23 	inc hl	inc hl
1380	11 00 53 	ld de,$5300	ld de,$0000
1383	eb 	ex de,hl	ex de,hl
1384	0d 	dec c	dec c
1385	0d 	dec c	dec c
1386	0d 	dec c	dec c
1387	ed b0 	ldir	ldir
1389	37 	scf	scf
138a	c9 	ret	ret
138b	3e 01 	ld a,$01	ld a,$00
138d	49 cf 	rst.lis $08	rst.lis $00
138f	d0 	ret nc	ret nc
1390	b7 	or a	or a
1391	37 	scf	scf
1392	c8 	ret z	ret z
1393	f5 	push af	push af
1394	21 00 52 	ld hl,$5200	ld hl,$0000
1397	01 00 01 	ld bc,$0100	ld bc,$0000
139a	5f 	ld e,a	ld e,a
139b	3e 0f 	ld a,$0f	ld a,$00
139d	49 cf 	rst.lis $08	rst.lis $00
139f	f1 	pop af	pop af
13a0	e5 	push hl	push hl
13a1	c6 7f 	add a,$7f	add a,$00
13a3	c3 55 3f 	jp $3f55	jp $0000
13a6	c5 	push bc	push bc
13a7	d5 	push de	push de
13a8	11 00 52 	ld de,$5200	ld de,$0000
13ab	cd b4 0e 	call $0eb4	call $0000
13ae	21 00 52 	ld hl,$5200	ld hl,$0000
13b1	cd f9 13 	call $13f9	call $0000
13b4	cd 0a 14 	call $140a	call $0000
13b7	d1 	pop de	pop de
13b8	c1 	pop bc	pop bc
13b9	b7 	or a	or a
13ba	28 35 	jr z,$+$37	jr z,$+$00
13bc	3a 12 51 	ld a,($5112)	ld a,($0000)
13bf	f5 	push af	push af
13c0	af 	xor a	xor a
13c1	3c 	inc a	inc a
13c2	32 12 51 	ld ($5112),a	ld ($0000),a
13c5	cd 28 12 	call $1228	call $0000
13c8	32 13 51 	ld ($5113),a	ld ($0000),a
13cb	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
13cf	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
13d2	d9 	exx	exx
13d3	01 00 00 	ld bc,$0000	ld bc,$0000
13d6	d9 	exx	exx
13d7	7e 	ld a,(hl)	ld a,(hl)
13d8	b7 	or a	or a
13d9	28 0a 	jr z,$+$0c	jr z,$+$00
13db	23 	inc hl	inc hl
13dc	5e 	ld e,(hl)	ld e,(hl)
13dd	23 	inc hl	inc hl
13de	56 	ld d,(hl)	ld d,(hl)
13df	23 	inc hl	inc hl
13e0	cd 5d 40 	call $405d	call $0000
13e3	18 f2 	jr $-$0c	jr $-$00
13e5	3a 13 51 	ld a,($5113)	ld a,($0000)
13e8	5f 	ld e,a	ld e,a
13e9	cd 37 12 	call $1237	call $0000
13ec	f1 	pop af	pop af
13ed	32 12 51 	ld ($5112),a	ld ($0000),a
13f0	c9 	ret	ret
13f1	3e 02 	ld a,$02	ld a,$00
13f3	49 cf 	rst.lis $08	rst.lis $00
13f5	b7 	or a	or a
13f6	c8 	ret z	ret z
13f7	18 9a 	jr $-$64	jr $-$00
13f9	e5 	push hl	push hl
13fa	0e 2e 	ld c,$2e	ld c,$00
13fc	cd d4 0e 	call $0ed4	call $0000
13ff	b7 	or a	or a
1400	20 06 	jr nz,$+$08	jr nz,$+$00
1402	11 36 14 	ld de,$1436	ld de,$0000
1405	cd ea 0e 	call $0eea	call $0000
1408	e1 	pop hl	pop hl
1409	c9 	ret	ret
140a	e5 	push hl	push hl
140b	0e 2e 	ld c,$2e	ld c,$00
140d	cd d4 0e 	call $0ed4	call $0000
1410	11 36 14 	ld de,$1436	ld de,$0000
1413	e5 	push hl	push hl
1414	cd dc 0e 	call $0edc	call $0000
1417	e1 	pop hl	pop hl
1418	28 18 	jr z,$+$1a	jr z,$+$00
141a	1a 	ld a,(de)	ld a,(de)
141b	13 	inc de	inc de
141c	b7 	or a	or a
141d	20 fb 	jr nz,$-$03	jr nz,$-$00
141f	13 	inc de	inc de
1420	1a 	ld a,(de)	ld a,(de)
1421	b7 	or a	or a
1422	20 ef 	jr nz,$-$0f	jr nz,$-$00
1424	3e cc 	ld a,$cc	ld a,$00
1426	cd 55 3f 	call $3f55	call $0000
1429	42 	ld b,d	ld b,d
142a	61 	ld h,c	ld h,c
142b	64 	ld h,h	ld h,h
142c	20 6e 	jr nz,$+$70	jr nz,$+$00
142e	61 	ld h,c	ld h,c
142f	6d 	ld l,l	ld l,l
1430	65 	ld h,l	ld h,l
1431	00 	nop	nop
1432	13 	inc de	inc de
1433	1a 	ld a,(de)	ld a,(de)
1434	e1 	pop hl	pop hl
1435	c9 	ret	ret
1436	2e 42 	ld l,$42	ld l,$00
1438	42 	ld b,d	ld b,d
1439	43 	ld b,e	ld b,e
143a	00 	nop	nop
143b	00 	nop	nop
143c	2e 54 	ld l,$54	ld l,$00
143e	58 	ld e,b	ld e,b
143f	54 	ld d,h	ld d,h
1440	00 	nop	nop
1441	01 2e 41 	ld bc,$412e	ld bc,$0000
1444	53 	ld d,e	ld d,e
1445	43 	ld b,e	ld b,e
1446	00 	nop	nop
1447	01 2e 42 	ld bc,$422e	ld bc,$0000
144a	41 	ld b,c	ld b,c
144b	53 	ld d,e	ld d,e
144c	00 	nop	nop
144d	01 00 fe 	ld bc,$fe00	ld bc,$0000
1450	07 	rlca	rlca
1451	ca f9 0e 	jp z,$0ef9	jp z,$0000
1454	fe 08 	cp $08	cp $00
1456	28 14 	jr z,$+$16	jr z,$+$00
1458	fe 09 	cp $09	cp $00
145a	28 03 	jr z,$+$05	jr z,$+$00
145c	c3 91 14 	jp $1491	jp $0000
145f	ed 5b 17 51 	ld de,($5117)	ld de,($0000)
1463	2a 19 51 	ld hl,($5119)	ld hl,($0000)
1466	cd d7 0c 	call $0cd7	call $0000
1469	32 1b 51 	ld ($511b),a	ld ($0000),a
146c	c9 	ret	ret
146d	fe 0b 	cp $0b	cp $00
146f	28 31 	jr z,$+$33	jr z,$+$00
1471	fe 0c 	cp $0c	cp $00
1473	28 54 	jr z,$+$56	jr z,$+$00
1475	fe 13 	cp $13	cp $00
1477	28 77 	jr z,$+$79	jr z,$+$00
1479	fe 76 	cp $76	cp $00
147b	28 7b 	jr z,$+$7d	jr z,$+$00
147d	fe 81 	cp $81	cp $00
147f	ca 20 15 	jp z,$1520	jp z,$0000
1482	fe 86 	cp $86	cp $00
1484	ca 3a 15 	jp z,$153a	jp z,$0000
1487	fe 87 	cp $87	cp $00
1489	ca 69 15 	jp z,$1569	jp z,$0000
148c	fe a0 	cp $a0	cp $00
148e	ca 7f 15 	jp z,$157f	jp z,$0000
1491	3e fe 	ld a,$fe	ld a,$00
1493	cd 55 3f 	call $3f55	call $0000
1496	42 	ld b,d	ld b,d
1497	61 	ld h,c	ld h,c
1498	64 	ld h,h	ld h,h
1499	20 63 	jr nz,$+$65	jr nz,$+$00
149b	6f 	ld l,a	ld l,a
149c	6d 	ld l,l	ld l,l
149d	6d 	ld l,l	ld l,l
149e	61 	ld h,c	ld h,c
149f	6e 	ld l,(hl)	ld l,(hl)
14a0	64 	ld h,h	ld h,h
14a1	00 	nop	nop
14a2	3e 17 	ld a,$17	ld a,$00
14a4	cd 95 11 	call $1195	call $0000
14a7	3e 00 	ld a,$00	ld a,$00
14a9	cd 95 11 	call $1195	call $0000
14ac	3e 88 	ld a,$88	ld a,$00
14ae	cd 95 11 	call $1195	call $0000
14b1	7d 	ld a,l	ld a,l
14b2	cd 95 11 	call $1195	call $0000
14b5	7c 	ld a,h	ld a,h
14b6	cd 95 11 	call $1195	call $0000
14b9	3e 00 	ld a,$00	ld a,$00
14bb	cd 95 11 	call $1195	call $0000
14be	3e 00 	ld a,$00	ld a,$00
14c0	cd 95 11 	call $1195	call $0000
14c3	3e ff 	ld a,$ff	ld a,$00
14c5	cd 95 11 	call $1195	call $0000
14c8	c9 	ret	ret
14c9	3e 17 	ld a,$17	ld a,$00
14cb	cd 95 11 	call $1195	call $0000
14ce	3e 00 	ld a,$00	ld a,$00
14d0	cd 95 11 	call $1195	call $0000
14d3	3e 88 	ld a,$88	ld a,$00
14d5	cd 95 11 	call $1195	call $0000
14d8	3e 00 	ld a,$00	ld a,$00
14da	cd 95 11 	call $1195	call $0000
14dd	3e 00 	ld a,$00	ld a,$00
14df	cd 95 11 	call $1195	call $0000
14e2	7d 	ld a,l	ld a,l
14e3	cd 95 11 	call $1195	call $0000
14e6	7c 	ld a,h	ld a,h
14e7	cd 95 11 	call $1195	call $0000
14ea	3e ff 	ld a,$ff	ld a,$00
14ec	cd 95 11 	call $1195	call $0000
14ef	c9 	ret	ret
14f0	cd 6f 16 	call $166f	call $0000
14f3	2e 00 	ld l,$00	ld l,$00
14f5	c3 4e 1b 	jp $1b4e	jp $0000
14f8	3e 17 	ld a,$17	ld a,$00
14fa	cd 95 11 	call $1195	call $0000
14fd	3e 00 	ld a,$00	ld a,$00
14ff	cd 95 11 	call $1195	call $0000
1502	3e 88 	ld a,$88	ld a,$00
1504	cd 95 11 	call $1195	call $0000
1507	3e 00 	ld a,$00	ld a,$00
1509	cd 95 11 	call $1195	call $0000
150c	3e 00 	ld a,$00	ld a,$00
150e	cd 95 11 	call $1195	call $0000
1511	3e 00 	ld a,$00	ld a,$00
1513	cd 95 11 	call $1195	call $0000
1516	3e 00 	ld a,$00	ld a,$00
1518	cd 95 11 	call $1195	call $0000
151b	7d 	ld a,l	ld a,l
151c	cd 95 11 	call $1195	call $0000
151f	c9 	ret	ret
1520	cd 0f 12 	call $120f	call $0000
1523	28 09 	jr z,$+$0b	jr z,$+$00
1525	7c 	ld a,h	ld a,h
1526	b5 	or l	or l
1527	c8 	ret z	ret z
1528	cd 6f 16 	call $166f	call $0000
152b	2b 	dec hl	dec hl
152c	18 f2 	jr $-$0c	jr $-$00
152e	21 14 51 	ld hl,$5114	ld hl,$0000
1531	36 00 	ld (hl),$00	ld (hl),$00
1533	fe 1b 	cp $1b	cp $00
1535	37 	scf	scf
1536	c0 	ret nz	ret nz
1537	c3 fa 11 	jp $11fa	jp $0000
153a	dd e5 	push ix	push ix
153c	3e 08 	ld a,$08	ld a,$00
153e	49 cf 	rst.lis $08	rst.lis $00
1540	5b dd cb 04 86 	res.lil 0,(ix+$04)	res.lil 0,(ix+$00)
1545	3e 17 	ld a,$17	ld a,$00
1547	cd 95 11 	call $1195	call $0000
154a	3e 00 	ld a,$00	ld a,$00
154c	cd 95 11 	call $1195	call $0000
154f	3e 82 	ld a,$82	ld a,$00
1551	cd 95 11 	call $1195	call $0000
1554	5b dd cb 04 46 	bit.lil 0,(ix+$04)	bit.lil 0,(ix+$00)
1559	28 f9 	jr z,$-$05	jr z,$-$00
155b	16 00 	ld d,$00	ld d,$00
155d	62 	ld h,d	ld h,d
155e	5b dd 5e 07 	ld.lil e,(ix+$07)	ld.lil e,(ix+$00)
1562	5b dd 6e 08 	ld.lil l,(ix+$08)	ld.lil l,(ix+$00)
1566	dd e1 	pop ix	pop ix
1568	c9 	ret	ret
1569	dd e5 	push ix	push ix
156b	cd 15 02 	call $0215	call $0000
156e	cd 9a 0c 	call $0c9a	call $0000
1571	6f 	ld l,a	ld l,a
1572	3e 08 	ld a,$08	ld a,$00
1574	49 cf 	rst.lis $08	rst.lis $00
1576	5b dd 66 27 	ld.lil h,(ix+$27)	ld.lil h,(ix+$00)
157a	dd e1 	pop ix	pop ix
157c	c3 50 1b 	jp $1b50	jp $0000
157f	dd e5 	push ix	push ix
1581	3e 08 	ld a,$08	ld a,$00
1583	49 cf 	rst.lis $08	rst.lis $00
1585	5b 01 00 00 00 	ld.lil bc,$000000	ld.lil bc,$000000
158a	4d 	ld c,l	ld c,l
158b	5b dd 09 	add.lil ix,bc	add.lil ix,bc
158e	5b dd 6e 00 	ld.lil l,(ix)	ld.lil l,(ix)
1592	dd e1 	pop ix	pop ix
1594	c3 4e 1b 	jp $1b4e	jp $0000
1597	cd f1 15 	call $15f1	call $0000
159a	fe 0d 	cp $0d	cp $00
159c	c8 	ret z	ret z
159d	fe 7c 	cp $7c	cp $00
159f	c8 	ret z	ret z
15a0	eb 	ex de,hl	ex de,hl
15a1	21 00 16 	ld hl,$1600	ld hl,$0000
15a4	1a 	ld a,(de)	ld a,(de)
15a5	cd f8 15 	call $15f8	call $0000
15a8	be 	cp (hl)	cp (hl)
15a9	28 0b 	jr z,$+$0d	jr z,$+$00
15ab	38 2e 	jr c,$+$30	jr c,$+$00
15ad	cb 7e 	bit 7,(hl)	bit 7,(hl)
15af	23 	inc hl	inc hl
15b0	28 fb 	jr z,$-$03	jr z,$-$00
15b2	23 	inc hl	inc hl
15b3	23 	inc hl	inc hl
15b4	18 ee 	jr $-$10	jr $-$00
15b6	d5 	push de	push de
15b7	13 	inc de	inc de
15b8	23 	inc hl	inc hl
15b9	1a 	ld a,(de)	ld a,(de)
15ba	cd f8 15 	call $15f8	call $0000
15bd	fe 2e 	cp $2e	cp $00
15bf	28 0a 	jr z,$+$0c	jr z,$+$00
15c1	ae 	xor (hl)	xor (hl)
15c2	28 f3 	jr z,$-$0b	jr z,$-$00
15c4	fe 80 	cp $80	cp $00
15c6	28 03 	jr z,$+$05	jr z,$+$00
15c8	d1 	pop de	pop de
15c9	18 e2 	jr $-$1c	jr $-$00
15cb	f1 	pop af	pop af
15cc	13 	inc de	inc de
15cd	cb 7e 	bit 7,(hl)	bit 7,(hl)
15cf	23 	inc hl	inc hl
15d0	28 fb 	jr z,$-$03	jr z,$-$00
15d2	7e 	ld a,(hl)	ld a,(hl)
15d3	23 	inc hl	inc hl
15d4	66 	ld h,(hl)	ld h,(hl)
15d5	6f 	ld l,a	ld l,a
15d6	e5 	push hl	push hl
15d7	eb 	ex de,hl	ex de,hl
15d8	c3 f1 15 	jp $15f1	jp $0000
15db	eb 	ex de,hl	ex de,hl
15dc	11 00 52 	ld de,$5200	ld de,$0000
15df	d5 	push de	push de
15e0	cd c6 0e 	call $0ec6	call $0000
15e3	e1 	pop hl	pop hl
15e4	fd e5 	push iy	push iy
15e6	3e 10 	ld a,$10	ld a,$00
15e8	49 cf 	rst.lis $08	rst.lis $00
15ea	fd e1 	pop iy	pop iy
15ec	b7 	or a	or a
15ed	c8 	ret z	ret z
15ee	c3 93 13 	jp $1393	jp $0000
15f1	7e 	ld a,(hl)	ld a,(hl)
15f2	fe 20 	cp $20	cp $00
15f4	c0 	ret nz	ret nz
15f5	23 	inc hl	inc hl
15f6	18 f9 	jr $-$05	jr $-$00
15f8	e6 7f 	and $7f	and $00
15fa	fe 60 	cp $60	cp $00
15fc	d8 	ret c	ret c
15fd	e6 5f 	and $5f	and $00
15ff	c9 	ret	ret
1600	42 	ld b,d	ld b,d
1601	59 	ld e,c	ld e,c
1602	45 	ld b,l	ld b,l
1603	10 16 	djnz $+$18	djnz $+$00
1605	45 	ld b,l	ld b,l
1606	44 	ld b,h	ld b,h
1607	49 54 	ld.lis d,h	ld.lis d,h
1609	1b 	dec de	dec de
160a	16 46 	ld d,$46	ld d,$00
160c	58 	ld e,b	ld e,b
160d	57 	ld d,a	ld d,a
160e	16 ff 	ld d,$ff	ld d,$00
1610	cd bf 0d 	call $0dbf	call $0000
1613	5b dd e1 	pop.lil ix	pop.lil ix
1616	21 00 00 	ld hl,$0000	ld hl,$0000
1619	dd e9 	jp (ix)	jp (ix)
161b	cd 35 0e 	call $0e35	call $0000
161e	eb 	ex de,hl	ex de,hl
161f	cd 43 41 	call $4143	call $0000
1622	3e 29 	ld a,$29	ld a,$00
1624	c2 44 3f 	jp nz,$3f44	jp nz,$0000
1627	23 	inc hl	inc hl
1628	5e 	ld e,(hl)	ld e,(hl)
1629	23 	inc hl	inc hl
162a	56 	ld d,(hl)	ld d,(hl)
162b	23 	inc hl	inc hl
162c	dd 21 00 52 	ld ix,$5200	ld ix,$0000
1630	dd 22 10 51 	ld ($5110),ix	ld ($0000),ix
1634	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
1638	dd 7e 00 	ld a,(ix)	ld a,(ix)
163b	f5 	push af	push af
163c	dd 36 00 09 	ld (ix),$09	ld (ix),$00
1640	cd 5d 40 	call $405d	call $0000
1643	f1 	pop af	pop af
1644	dd 77 00 	ld (ix),a	ld (ix),a
1647	21 00 52 	ld hl,$5200	ld hl,$0000
164a	5d 	ld e,l	ld e,l
164b	cd cd 11 	call $11cd	call $0000
164e	cd 1d 13 	call $131d	call $0000
1651	dc 1a 40 	call c,$401a	call c,$0000
1654	c3 b0 37 	jp $37b0	jp $0000
1657	cd 35 0e 	call $0e35	call $0000
165a	4b 	ld c,e	ld c,e
165b	cd 35 0e 	call $0e35	call $0000
165e	7a 	ld a,d	ld a,d
165f	b7 	or a	or a
1660	28 03 	jr z,$+$05	jr z,$+$00
1662	eb 	ex de,hl	ex de,hl
1663	18 06 	jr $+$08	jr $+$00
1665	43 	ld b,e	ld b,e
1666	cd 35 0e 	call $0e35	call $0000
1669	68 	ld l,b	ld l,b
166a	63 	ld h,e	ld h,e
166b	79 	ld a,c	ld a,c
166c	c3 6d 14 	jp $146d	jp $0000
166f	dd e5 	push ix	push ix
1671	3e 08 	ld a,$08	ld a,$00
1673	49 cf 	rst.lis $08	rst.lis $00
1675	5b dd 7e 00 	ld.lil a,(ix)	ld.lil a,(ix)
1679	5b dd be 00 	cp.lil (ix)	cp.lil (ix)
167d	28 fa 	jr z,$-$04	jr z,$-$00
167f	dd e1 	pop ix	pop ix
1681	c9 	ret	ret
1682	60 	ld h,b	ld h,b
1683	1f 	rra	rra
1684	5b 1b 	dec.lil de	dec.lil de
1686	78 	ld a,b	ld a,b
1687	1b 	dec de	dec de
1688	2d 	dec l	dec l
1689	1b 	dec de	dec de
168a	80 	add a,b	add a,b
168b	1b 	dec de	dec de
168c	23 	inc hl	inc hl
168d	1b 	dec de	dec de
168e	28 1b 	jr z,$+$1d	jr z,$+$00
1690	cc 1b 08 	call z,$081b	call z,$0000
1693	1c 	inc e	inc e
1694	53 	ld d,e	ld d,e
1695	02 	ld (bc),a	ld (bc),a
1696	10 1b 	djnz $+$1d	djnz $+$00
1698	00 	nop	nop
1699	1c 	inc e	inc e
169a	04 	inc b	inc b
169b	1c 	inc e	inc e
169c	ec 1a ec 	call pe,$ec1a	call pe,$0000
169f	1b 	dec de	dec de
16a0	4b 	ld c,e	ld c,e
16a1	1b 	dec de	dec de
16a2	d4 1b 41 	call nc,$411b	call nc,$0000
16a5	1b 	dec de	dec de
16a6	46 	ld b,(hl)	ld b,(hl)
16a7	1b 	dec de	dec de
16a8	2c 	inc l	inc l
16a9	1c 	inc e	inc e
16aa	f4 1b 70 	call p,$701b	call p,$0000
16ad	1b 	dec de	dec de
16ae	f8 	ret m	ret m
16af	1f 	rra	rra
16b0	e3 	ex (sp),hl	ex (sp),hl
16b1	29 	add hl,hl	add hl,hl
16b2	fa 1a f5 	jp m,$f51a	jp m,$0000
16b5	1a 	ld a,(de)	ld a,(de)
16b6	a5 	and l	and l
16b7	1d 	dec e	dec e
16b8	e0 	ret po	ret po
16b9	1b 	dec de	dec de
16ba	1d 	dec e	dec e
16bb	1b 	dec de	dec de
16bc	f8 	ret m	ret m
16bd	1b 	dec de	dec de
16be	fc 1b d0 	call m,$d01b	call m,$0000
16c1	1b 	dec de	dec de
16c2	58 	ld e,b	ld e,b
16c3	1b 	dec de	dec de
16c4	56 	ld d,(hl)	ld d,(hl)
16c5	1b 	dec de	dec de
16c6	c8 	ret z	ret z
16c7	1b 	dec de	dec de
16c8	20 02 	jr nz,$+$04	jr nz,$+$00
16ca	d5 	push de	push de
16cb	1a 	ld a,(de)	ld a,(de)
16cc	d8 	ret c	ret c
16cd	1b 	dec de	dec de
16ce	59 	ld e,c	ld e,c
16cf	1c 	inc e	inc e
16d0	dc 1b f0 	call c,$f01b	call c,$0000
16d3	1b 	dec de	dec de
16d4	e4 1b e8 	call po,$e81b	call po,$0000
16d7	1b 	dec de	dec de
16d8	32 1b bd 	ld ($bd1b),a	ld ($0000),a
16db	1b 	dec de	dec de
16dc	3f 	ccf	ccf
16dd	30 1f 	jr nc,$+$21	jr nc,$+$00
16df	1c 	inc e	inc e
16e0	db 1a 	in a,($1a)	in a,($00)
16e2	26 1e 	ld h,$1e	ld h,$00
16e4	2d 	dec l	dec l
16e5	1e 8e 	ld e,$8e	ld e,$00
16e7	1e ce 	ld e,$ce	ld e,$00
16e9	1e 9e 	ld e,$9e	ld e,$00
16eb	1e fc 	ld e,$fc	ld e,$00
16ed	1e b8 	ld e,$b8	ld e,$00
16ef	1f 	rra	rra
16f0	26 1f 	ld h,$1f	ld h,$00
16f2	e0 	ret po	ret po
16f3	1a 	ld a,(de)	ld a,(de)
16f4	e9 	jp (hl)	jp (hl)
16f5	1c 	inc e	inc e
16f6	ab 	xor e	xor e
16f7	1b 	dec de	dec de
16f8	b3 	or e	or e
16f9	1b 	dec de	dec de
16fa	a5 	and l	and l
16fb	1b 	dec de	dec de
16fc	98 	sbc a,b	sbc a,b
16fd	1b 	dec de	dec de
16fe	b9 	cp c	cp c
16ff	1b 	dec de	dec de
1700	9e 	sbc a,(hl)	sbc a,(hl)
1701	1b 	dec de	dec de
1702	cd 17 17 	call $1717	call $0000
1705	fe 82 	cp $82	cp $00
1707	28 03 	jr z,$+$05	jr z,$+$00
1709	fe 84 	cp $84	cp $00
170b	c0 	ret nz	ret nz
170c	cd 73 20 	call $2073	call $0000
170f	cd 17 17 	call $1717	call $0000
1712	cd 83 20 	call $2083	call $0000
1715	18 ee 	jr $-$10	jr $-$00
1717	cd 28 17 	call $1728	call $0000
171a	fe 80 	cp $80	cp $00
171c	c0 	ret nz	ret nz
171d	cd 73 20 	call $2073	call $0000
1720	cd 28 17 	call $1728	call $0000
1723	cd 83 20 	call $2083	call $0000
1726	18 f2 	jr $-$0c	jr $-$00
1728	cd a0 17 	call $17a0	call $0000
172b	cd 6a 20 	call $206a	call $0000
172e	c0 	ret nz	ret nz
172f	47 	ld b,a	ld b,a
1730	fd 23 	inc iy	inc iy
1732	cd 0b 45 	call $450b	call $0000
1735	cd 6a 20 	call $206a	call $0000
1738	20 07 	jr nz,$+$09	jr nz,$+$00
173a	fd 23 	inc iy	inc iy
173c	b8 	cp b	cp b
173d	28 1c 	jr z,$+$1e	jr z,$+$00
173f	80 	add a,b	add a,b
1740	47 	ld b,a	ld b,a
1741	78 	ld a,b	ld a,b
1742	08 	ex af,af'	ex af,af'
1743	fa 73 17 	jp m,$1773	jp m,$0000
1746	08 	ex af,af'	ex af,af'
1747	d6 04 	sub $04	sub $00
1749	fe 3a 	cp $3a	cp $00
174b	20 02 	jr nz,$+$04	jr nz,$+$00
174d	c6 02 	add a,$02	add a,$00
174f	e6 0f 	and $0f	and $00
1751	cd 77 20 	call $2077	call $0000
1754	cd a0 17 	call $17a0	call $0000
1757	cd 83 20 	call $2083	call $0000
175a	c9 	ret	ret
175b	fe 3d 	cp $3d	cp $00
175d	28 e2 	jr z,$-$1c	jr z,$-$00
175f	cd 0b 45 	call $450b	call $0000
1762	cd 6a 20 	call $206a	call $0000
1765	20 07 	jr nz,$+$09	jr nz,$+$00
1767	b8 	cp b	cp b
1768	c2 e0 25 	jp nz,$25e0	jp nz,$0000
176b	fd 23 	inc iy	inc iy
176d	04 	inc b	inc b
176e	78 	ld a,b	ld a,b
176f	d6 12 	sub $12	sub $00
1771	18 de 	jr $-$20	jr $-$00
1773	08 	ex af,af'	ex af,af'
1774	3d 	dec a	dec a
1775	e6 07 	and $07	and $00
1777	cd 19 20 	call $2019	call $0000
177a	f5 	push af	push af
177b	cd a0 17 	call $17a0	call $0000
177e	08 	ex af,af'	ex af,af'
177f	f2 6e 18 	jp p,$186e	jp p,$0000
1782	f1 	pop af	pop af
1783	4b 	ld c,e	ld c,e
1784	d1 	pop de	pop de
1785	21 00 00 	ld hl,$0000	ld hl,$0000
1788	39 	add hl,sp	add hl,sp
1789	43 	ld b,e	ld b,e
178a	d5 	push de	push de
178b	11 00 52 	ld de,$5200	ld de,$0000
178e	eb 	ex de,hl	ex de,hl
178f	cd bb 20 	call $20bb	call $0000
1792	d1 	pop de	pop de
1793	eb 	ex de,hl	ex de,hl
1794	26 00 	ld h,$00	ld h,$00
1796	39 	add hl,sp	add hl,sp
1797	f9 	ld sp,hl	ld sp,hl
1798	eb 	ex de,hl	ex de,hl
1799	af 	xor a	xor a
179a	4f 	ld c,a	ld c,a
179b	08 	ex af,af'	ex af,af'
179c	fd 7e 00 	ld a,(iy)	ld a,(iy)
179f	c9 	ret	ret
17a0	cd ee 17 	call $17ee	call $0000
17a3	fe 2d 	cp $2d	cp $00
17a5	28 08 	jr z,$+$0a	jr z,$+$00
17a7	fe 2b 	cp $2b	cp $00
17a9	c0 	ret nz	ret nz
17aa	08 	ex af,af'	ex af,af'
17ab	fa ba 17 	jp m,$17ba	jp m,$0000
17ae	08 	ex af,af'	ex af,af'
17af	cd 73 20 	call $2073	call $0000
17b2	cd ee 17 	call $17ee	call $0000
17b5	cd 83 20 	call $2083	call $0000
17b8	18 e9 	jr $-$15	jr $-$00
17ba	08 	ex af,af'	ex af,af'
17bb	fd 23 	inc iy	inc iy
17bd	cd 19 20 	call $2019	call $0000
17c0	cd ee 17 	call $17ee	call $0000
17c3	08 	ex af,af'	ex af,af'
17c4	f2 6e 18 	jp p,$186e	jp p,$0000
17c7	4b 	ld c,e	ld c,e
17c8	d1 	pop de	pop de
17c9	d5 	push de	push de
17ca	21 00 52 	ld hl,$5200	ld hl,$0000
17cd	54 	ld d,h	ld d,h
17ce	79 	ld a,c	ld a,c
17cf	b7 	or a	or a
17d0	28 0e 	jr z,$+$10	jr z,$+$00
17d2	45 	ld b,l	ld b,l
17d3	6f 	ld l,a	ld l,a
17d4	83 	add a,e	add a,e
17d5	5f 	ld e,a	ld e,a
17d6	3e 13 	ld a,$13	ld a,$00
17d8	38 6b 	jr c,$+$6d	jr c,$+$00
17da	d5 	push de	push de
17db	1d 	dec e	dec e
17dc	2d 	dec l	dec l
17dd	ed b8 	lddr	lddr
17df	d1 	pop de	pop de
17e0	d9 	exx	exx
17e1	c1 	pop bc	pop bc
17e2	cd 37 20 	call $2037	call $0000
17e5	d9 	exx	exx
17e6	f6 80 	or $80	or $00
17e8	08 	ex af,af'	ex af,af'
17e9	fd 7e 00 	ld a,(iy)	ld a,(iy)
17ec	18 b5 	jr $-$49	jr $-$00
17ee	cd 14 18 	call $1814	call $0000
17f1	fe 2a 	cp $2a	cp $00
17f3	28 0b 	jr z,$+$0d	jr z,$+$00
17f5	fe 2f 	cp $2f	cp $00
17f7	28 07 	jr z,$+$09	jr z,$+$00
17f9	fe 83 	cp $83	cp $00
17fb	28 03 	jr z,$+$05	jr z,$+$00
17fd	fe 81 	cp $81	cp $00
17ff	c0 	ret nz	ret nz
1800	cd 73 20 	call $2073	call $0000
1803	cd 14 18 	call $1814	call $0000
1806	cd 83 20 	call $2083	call $0000
1809	18 e6 	jr $-$18	jr $-$00
180b	7b 	ld a,e	ld a,e
180c	fe 2b 	cp $2b	cp $00
180e	28 de 	jr z,$-$20	jr z,$-$00
1810	fe 2d 	cp $2d	cp $00
1812	28 da 	jr z,$-$24	jr z,$-$00
1814	cd d0 18 	call $18d0	call $0000
1817	b7 	or a	or a
1818	08 	ex af,af'	ex af,af'
1819	cd 0b 45 	call $450b	call $0000
181c	fe 5e 	cp $5e	cp $00
181e	c0 	ret nz	ret nz
181f	cd 73 20 	call $2073	call $0000
1822	cd d0 18 	call $18d0	call $0000
1825	b7 	or a	or a
1826	08 	ex af,af'	ex af,af'
1827	cd 83 20 	call $2083	call $0000
182a	18 ed 	jr $-$11	jr $-$00
182c	cd 02 17 	call $1702	call $0000
182f	08 	ex af,af'	ex af,af'
1830	f0 	ret p	ret p
1831	18 3b 	jr $+$3d	jr $+$00
1833	cd 02 17 	call $1702	call $0000
1836	08 	ex af,af'	ex af,af'
1837	f2 17 1c 	jp p,$1c17	jp p,$0000
183a	18 32 	jr $+$34	jr $+$00
183c	cd 02 17 	call $1702	call $0000
183f	08 	ex af,af'	ex af,af'
1840	f8 	ret m	ret m
1841	18 2b 	jr $+$2d	jr $+$00
1843	3e 1c 	ld a,$1c	ld a,$00
1845	c3 44 3f 	jp $3f44	jp $0000
1848	d9 	exx	exx
1849	7c 	ld a,h	ld a,h
184a	2f 	cpl	cpl
184b	67 	ld h,a	ld h,a
184c	7d 	ld a,l	ld a,l
184d	2f 	cpl	cpl
184e	6f 	ld l,a	ld l,a
184f	d9 	exx	exx
1850	7c 	ld a,h	ld a,h
1851	2f 	cpl	cpl
1852	67 	ld h,a	ld h,a
1853	7d 	ld a,l	ld a,l
1854	2f 	cpl	cpl
1855	6f 	ld l,a	ld l,a
1856	d9 	exx	exx
1857	23 	inc hl	inc hl
1858	7c 	ld a,h	ld a,h
1859	b5 	or l	or l
185a	d9 	exx	exx
185b	3e 00 	ld a,$00	ld a,$00
185d	c0 	ret nz	ret nz
185e	23 	inc hl	inc hl
185f	c9 	ret	ret
1860	cd d0 18 	call $18d0	call $0000
1863	b7 	or a	or a
1864	f2 17 1c 	jp p,$1c17	jp p,$0000
1867	18 05 	jr $+$07	jr $+$00
1869	cd d0 18 	call $18d0	call $0000
186c	b7 	or a	or a
186d	f8 	ret m	ret m
186e	3e 06 	ld a,$06	ld a,$00
1870	18 d3 	jr $-$2b	jr $-$00
1872	cd 02 17 	call $1702	call $0000
1875	cd ae 20 	call $20ae	call $0000
1878	08 	ex af,af'	ex af,af'
1879	c9 	ret	ret
187a	cd d0 18 	call $18d0	call $0000
187d	b7 	or a	or a
187e	f0 	ret p	ret p
187f	18 ed 	jr $-$11	jr $-$00
1881	cd f8 1f 	call $1ff8	call $0000
1884	cd 57 20 	call $2057	call $0000
1887	38 ba 	jr c,$-$44	jr c,$-$00
1889	fd 23 	inc iy	inc iy
188b	e6 0f 	and $0f	and $00
188d	06 04 	ld b,$04	ld b,$00
188f	d9 	exx	exx
1890	29 	add hl,hl	add hl,hl
1891	d9 	exx	exx
1892	ed 6a 	adc hl,hl	adc hl,hl
1894	10 f9 	djnz $-$05	djnz $-$00
1896	d9 	exx	exx
1897	b5 	or l	or l
1898	6f 	ld l,a	ld l,a
1899	d9 	exx	exx
189a	cd 57 20 	call $2057	call $0000
189d	30 ea 	jr nc,$-$14	jr nc,$-$00
189f	af 	xor a	xor a
18a0	c9 	ret	ret
18a1	cd f8 1f 	call $1ff8	call $0000
18a4	cd 4a 20 	call $204a	call $0000
18a7	38 9a 	jr c,$-$64	jr c,$-$00
18a9	fd 23 	inc iy	inc iy
18ab	cb 1f 	rr a	rr a
18ad	d9 	exx	exx
18ae	ed 6a 	adc hl,hl	adc hl,hl
18b0	d9 	exx	exx
18b1	ed 6a 	adc hl,hl	adc hl,hl
18b3	cd 4a 20 	call $204a	call $0000
18b6	30 f1 	jr nc,$-$0d	jr nc,$-$00
18b8	af 	xor a	xor a
18b9	c9 	ret	ret
18ba	cd 7a 18 	call $187a	call $0000
18bd	0d 	dec c	dec c
18be	0c 	inc c	inc c
18bf	28 87 	jr z,$-$77	jr z,$-$00
18c1	7c 	ld a,h	ld a,h
18c2	ee 80 	xor $80	xor $00
18c4	67 	ld h,a	ld h,a
18c5	af 	xor a	xor a
18c6	c9 	ret	ret
18c7	cd d6 25 	call $25d6	call $0000
18ca	e5 	push hl	push hl
18cb	d9 	exx	exx
18cc	e1 	pop hl	pop hl
18cd	c3 50 1b 	jp $1b50	jp $0000
18d0	cd 86 32 	call $3286	call $0000
18d3	cd 0b 45 	call $450b	call $0000
18d6	fd 23 	inc iy	inc iy
18d8	fe 8d 	cp $8d	cp $00
18da	38 08 	jr c,$+$0a	jr c,$+$00
18dc	fe c7 	cp $c7	cp $00
18de	da c1 20 	jp c,$20c1	jp c,$0000
18e1	c3 30 1a 	jp $1a30	jp $0000
18e4	fe 3a 	cp $3a	cp $00
18e6	30 25 	jr nc,$+$27	jr nc,$+$00
18e8	fe 30 	cp $30	cp $00
18ea	30 7b 	jr nc,$+$7d	jr nc,$+$00
18ec	fe 28 	cp $28	cp $00
18ee	28 82 	jr z,$-$7c	jr z,$-$00
18f0	fe 2d 	cp $2d	cp $00
18f2	28 c6 	jr z,$-$38	jr z,$-$00
18f4	fe 2b 	cp $2b	cp $00
18f6	28 82 	jr z,$-$7c	jr z,$-$00
18f8	fe 2e 	cp $2e	cp $00
18fa	28 6b 	jr z,$+$6d	jr z,$+$00
18fc	fe 26 	cp $26	cp $00
18fe	28 81 	jr z,$-$7d	jr z,$-$00
1900	fe 25 	cp $25	cp $00
1902	28 9d 	jr z,$-$61	jr z,$-$00
1904	fe 22 	cp $22	cp $00
1906	28 72 	jr z,$+$74	jr z,$+$00
1908	fe 0a 	cp $0a	cp $00
190a	ca d0 1a 	jp z,$1ad0	jp z,$0000
190d	fe 83 	cp $83	cp $00
190f	ca 4d 1d 	jp z,$1d4d	jp z,$0000
1912	fe 5e 	cp $5e	cp $00
1914	28 b1 	jr z,$-$4d	jr z,$-$00
1916	fd 2b 	dec iy	dec iy
1918	cd e3 41 	call $41e3	call $0000
191b	20 2f 	jr nz,$+$31	jr nz,$+$00
191d	cb 77 	bit 6,a	bit 6,a
191f	20 7e 	jr nz,$+$80	jr nz,$+$00
1921	b7 	or a	or a
1922	fa 0e 1a 	jp m,$1a0e	jp m,$0000
1925	cb 57 	bit 2,a	bit 2,a
1927	0e 00 	ld c,$00	ld c,$00
1929	28 16 	jr z,$+$18	jr z,$+$00
192b	cb 47 	bit 0,a	bit 0,a
192d	28 03 	jr z,$+$05	jr z,$+$00
192f	dd 4e 04 	ld c,(ix+$04)	ld c,(ix+$00)
1932	d9 	exx	exx
1933	dd 6e 00 	ld l,(ix)	ld l,(ix)
1936	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
1939	d9 	exx	exx
193a	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
193d	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
1940	c9 	ret	ret
1941	21 00 00 	ld hl,$0000	ld hl,$0000
1944	d9 	exx	exx
1945	26 00 	ld h,$00	ld h,$00
1947	dd 6e 00 	ld l,(ix)	ld l,(ix)
194a	d9 	exx	exx
194b	c9 	ret	ret
194c	da e0 25 	jp c,$25e0	jp c,$0000
194f	3a fe 54 	ld a,($54fe)	ld a,($0000)
1952	cb 6f 	bit 5,a	bit 5,a
1954	3e 1a 	ld a,$1a	ld a,$00
1956	20 36 	jr nz,$+$38	jr nz,$+$00
1958	fd 23 	inc iy	inc iy
195a	cd ef 43 	call $43ef	call $0000
195d	30 f9 	jr nc,$-$05	jr nc,$-$00
195f	dd 21 40 54 	ld ix,$5440	ld ix,$0000
1963	af 	xor a	xor a
1964	4f 	ld c,a	ld c,a
1965	18 cb 	jr $-$33	jr $-$00
1967	fd 2b 	dec iy	dec iy
1969	fd e5 	push iy	push iy
196b	dd e1 	pop ix	pop ix
196d	3e 24 	ld a,$24	ld a,$00
196f	cd 15 45 	call $4515	call $0000
1972	38 1a 	jr c,$+$1c	jr c,$+$00
1974	dd e5 	push ix	push ix
1976	fd e1 	pop iy	pop iy
1978	af 	xor a	xor a
1979	c9 	ret	ret
197a	11 00 52 	ld de,$5200	ld de,$0000
197d	fd 7e 00 	ld a,(iy)	ld a,(iy)
1980	fd 23 	inc iy	inc iy
1982	fe 22 	cp $22	cp $00
1984	28 0b 	jr z,$+$0d	jr z,$+$00
1986	12 	ld (de),a	ld (de),a
1987	1c 	inc e	inc e
1988	fe 0d 	cp $0d	cp $00
198a	20 f1 	jr nz,$-$0d	jr nz,$-$00
198c	3e 09 	ld a,$09	ld a,$00
198e	c3 44 3f 	jp $3f44	jp $0000
1991	fd 7e 00 	ld a,(iy)	ld a,(iy)
1994	fe 22 	cp $22	cp $00
1996	fd 23 	inc iy	inc iy
1998	28 ec 	jr z,$-$12	jr z,$-$00
199a	fd 2b 	dec iy	dec iy
199c	3e 80 	ld a,$80	ld a,$00
199e	c9 	ret	ret
199f	3e 0e 	ld a,$0e	ld a,$00
19a1	c3 44 3f 	jp $3f44	jp $0000
19a4	7e 	ld a,(hl)	ld a,(hl)
19a5	23 	inc hl	inc hl
19a6	b7 	or a	or a
19a7	28 f6 	jr z,$-$08	jr z,$-$00
19a9	11 01 00 	ld de,$0001	ld de,$0000
19ac	4e 	ld c,(hl)	ld c,(hl)
19ad	23 	inc hl	inc hl
19ae	46 	ld b,(hl)	ld b,(hl)
19af	23 	inc hl	inc hl
19b0	eb 	ex de,hl	ex de,hl
19b1	f5 	push af	push af
19b2	d5 	push de	push de
19b3	cd bd 36 	call $36bd	call $0000
19b6	d1 	pop de	pop de
19b7	f1 	pop af	pop af
19b8	eb 	ex de,hl	ex de,hl
19b9	3d 	dec a	dec a
19ba	20 f0 	jr nz,$-$0e	jr nz,$-$00
19bc	c9 	ret	ret
19bd	cd 0b 45 	call $450b	call $0000
19c0	cd e3 41 	call $41e3	call $0000
19c3	20 87 	jr nz,$-$77	jr nz,$-$00
19c5	cb 77 	bit 6,a	bit 6,a
19c7	37 	scf	scf
19c8	28 82 	jr z,$-$7c	jr z,$-$00
19ca	e6 8f 	and $8f	and $00
19cc	47 	ld b,a	ld b,a
19cd	7e 	ld a,(hl)	ld a,(hl)
19ce	23 	inc hl	inc hl
19cf	66 	ld h,(hl)	ld h,(hl)
19d0	6f 	ld l,a	ld l,a
19d1	e6 fe 	and $fe	and $00
19d3	b4 	or h	or h
19d4	28 c9 	jr z,$-$35	jr z,$-$00
19d6	c9 	ret	ret
19d7	cd 0b 45 	call $450b	call $0000
19da	fe 28 	cp $28	cp $00
19dc	20 df 	jr nz,$-$1f	jr nz,$-$00
19de	fd 23 	inc iy	inc iy
19e0	cd bd 19 	call $19bd	call $0000
19e3	cd ae 20 	call $20ae	call $0000
19e6	c9 	ret	ret
19e7	cb 57 	bit 2,a	bit 2,a
19e9	06 00 	ld b,$00	ld b,$00
19eb	28 16 	jr z,$+$18	jr z,$+$00
19ed	cb 47 	bit 0,a	bit 0,a
19ef	28 03 	jr z,$+$05	jr z,$+$00
19f1	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
19f4	d9 	exx	exx
19f5	dd 5e 00 	ld e,(ix)	ld e,(ix)
19f8	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
19fb	d9 	exx	exx
19fc	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
19ff	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
1a02	c9 	ret	ret
1a03	11 00 00 	ld de,$0000	ld de,$0000
1a06	d9 	exx	exx
1a07	16 00 	ld d,$00	ld d,$00
1a09	dd 5e 00 	ld e,(ix)	ld e,(ix)
1a0c	d9 	exx	exx
1a0d	c9 	ret	ret
1a0e	11 00 52 	ld de,$5200	ld de,$0000
1a11	1f 	rra	rra
1a12	30 10 	jr nc,$+$12	jr nc,$+$00
1a14	cd 32 19 	call $1932	call $0000
1a17	d9 	exx	exx
1a18	7d 	ld a,l	ld a,l
1a19	d9 	exx	exx
1a1a	b7 	or a	or a
1a1b	4f 	ld c,a	ld c,a
1a1c	3e 80 	ld a,$80	ld a,$00
1a1e	c8 	ret z	ret z
1a1f	06 00 	ld b,$00	ld b,$00
1a21	ed b0 	ldir	ldir
1a23	c9 	ret	ret
1a24	7e 	ld a,(hl)	ld a,(hl)
1a25	12 	ld (de),a	ld (de),a
1a26	23 	inc hl	inc hl
1a27	fe 0d 	cp $0d	cp $00
1a29	3e 80 	ld a,$80	ld a,$00
1a2b	c8 	ret z	ret z
1a2c	1c 	inc e	inc e
1a2d	20 f5 	jr nz,$-$09	jr nz,$-$00
1a2f	c9 	ret	ret
1a30	fe eb 	cp $eb	cp $00
1a32	ca 5f 02 	jp z,$025f	jp z,$0000
1a35	fe fe 	cp $fe	cp $00
1a37	ca 69 02 	jp z,$0269	jp z,$0000
1a3a	fe f6 	cp $f6	cp $00
1a3c	28 11 	jr z,$+$13	jr z,$+$00
1a3e	fe e0 	cp $e0	cp $00
1a40	28 07 	jr z,$+$09	jr z,$+$00
1a42	fe de 	cp $de	cp $00
1a44	28 44 	jr z,$+$46	jr z,$+$00
1a46	c3 e0 25 	jp $25e0	jp $0000
1a49	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
1a4c	c3 50 1b 	jp $1b50	jp $0000
1a4f	fd 7e 00 	ld a,(iy)	ld a,(iy)
1a52	fe 24 	cp $24	cp $00
1a54	20 f0 	jr nz,$-$0e	jr nz,$-$00
1a56	fd 23 	inc iy	inc iy
1a58	2a ee 54 	ld hl,($54ee)	ld hl,($0000)
1a5b	11 00 52 	ld de,$5200	ld de,$0000
1a5e	7e 	ld a,(hl)	ld a,(hl)
1a5f	b7 	or a	or a
1a60	28 c7 	jr z,$-$37	jr z,$-$00
1a62	ed a0 	ldi	ldi
1a64	fe a0 	cp $a0	cp $00
1a66	ea 5e 1a 	jp pe,$1a5e	jp pe,$0000
1a69	fe 0a 	cp $0a	cp $00
1a6b	28 f1 	jr z,$-$0d	jr z,$-$00
1a6d	1d 	dec e	dec e
1a6e	e5 	push hl	push hl
1a6f	21 84 38 	ld hl,$3884	ld hl,$0000
1a72	01 5b 03 	ld bc,$035b	ld bc,$0000
1a75	ed b1 	cpir	cpir
1a77	06 a0 	ld b,$a0	ld b,$00
1a79	fe 91 	cp $91	cp $00
1a7b	ea 7f 1a 	jp pe,$1a7f	jp pe,$0000
1a7e	04 	inc b	inc b
1a7f	7e 	ld a,(hl)	ld a,(hl)
1a80	ed a0 	ldi	ldi
1a82	b8 	cp b	cp b
1a83	ea 7f 1a 	jp pe,$1a7f	jp pe,$0000
1a86	e1 	pop hl	pop hl
1a87	1d 	dec e	dec e
1a88	18 d4 	jr $-$2a	jr $-$00
1a8a	cd 0b 45 	call $450b	call $0000
1a8d	fe 28 	cp $28	cp $00
1a8f	20 09 	jr nz,$+$0b	jr nz,$+$00
1a91	fd 23 	inc iy	inc iy
1a93	cd 9a 1a 	call $1a9a	call $0000
1a96	cd ae 20 	call $20ae	call $0000
1a99	c9 	ret	ret
1a9a	cd bd 19 	call $19bd	call $0000
1a9d	e5 	push hl	push hl
1a9e	cd 0b 45 	call $450b	call $0000
1aa1	1e 00 	ld e,$00	ld e,$00
1aa3	fe 2c 	cp $2c	cp $00
1aa5	20 0b 	jr nz,$+$0d	jr nz,$+$00
1aa7	fd 23 	inc iy	inc iy
1aa9	cd 33 18 	call $1833	call $0000
1aac	d9 	exx	exx
1aad	eb 	ex de,hl	ex de,hl
1aae	1c 	inc e	inc e
1aaf	1d 	dec e	dec e
1ab0	28 19 	jr z,$+$1b	jr z,$+$00
1ab2	e1 	pop hl	pop hl
1ab3	7e 	ld a,(hl)	ld a,(hl)
1ab4	23 	inc hl	inc hl
1ab5	bb 	cp e	cp e
1ab6	38 13 	jr c,$+$15	jr c,$+$00
1ab8	1d 	dec e	dec e
1ab9	fa c6 1a 	jp m,$1ac6	jp m,$0000
1abc	19 	add hl,de	add hl,de
1abd	19 	add hl,de	add hl,de
1abe	7e 	ld a,(hl)	ld a,(hl)
1abf	23 	inc hl	inc hl
1ac0	66 	ld h,(hl)	ld h,(hl)
1ac1	6f 	ld l,a	ld l,a
1ac2	2b 	dec hl	dec hl
1ac3	c3 50 1b 	jp $1b50	jp $0000
1ac6	6f 	ld l,a	ld l,a
1ac7	26 00 	ld h,$00	ld h,$00
1ac9	18 f8 	jr $-$06	jr $-$00
1acb	3e 0f 	ld a,$0f	ld a,$00
1acd	c3 44 3f 	jp $3f44	jp $0000
1ad0	cd 7d 05 	call $057d	call $0000
1ad3	18 7b 	jr $+$7d	jr $+$00
1ad5	cd 15 02 	call $0215	call $0000
1ad8	eb 	ex de,hl	ex de,hl
1ad9	18 75 	jr $+$77	jr $+$00
1adb	cd 15 02 	call $0215	call $0000
1ade	18 70 	jr $+$72	jr $+$00
1ae0	cd d1 36 	call $36d1	call $0000
1ae3	cd 50 12 	call $1250	call $0000
1ae6	ca bd 1b 	jp z,$1bbd	jp z,$0000
1ae9	c3 f8 1f 	jp $1ff8	jp $0000
1aec	cd d1 36 	call $36d1	call $0000
1aef	cd 3f 12 	call $123f	call $0000
1af2	6f 	ld l,a	ld l,a
1af3	18 59 	jr $+$5b	jr $+$00
1af5	cd 8e 1e 	call $1e8e	call $0000
1af8	18 19 	jr $+$1b	jr $+$00
1afa	cd 0b 45 	call $450b	call $0000
1afd	fe 28 	cp $28	cp $00
1aff	20 0a 	jr nz,$+$0c	jr nz,$+$00
1b01	cd 60 18 	call $1860	call $0000
1b04	d9 	exx	exx
1b05	44 	ld b,h	ld b,h
1b06	4d 	ld c,l	ld c,l
1b07	ed 68 	in l,(bc)	in l,(bc)
1b09	18 43 	jr $+$45	jr $+$00
1b0b	cd 2d 1e 	call $1e2d	call $0000
1b0e	18 08 	jr $+$0a	jr $+$00
1b10	cd 69 18 	call $1869	call $0000
1b13	af 	xor a	xor a
1b14	bb 	cp e	cp e
1b15	ca bd 1b 	jp z,$1bbd	jp z,$0000
1b18	2a 00 52 	ld hl,($5200)	ld hl,($0000)
1b1b	18 31 	jr $+$33	jr $+$00
1b1d	cd 69 18 	call $1869	call $0000
1b20	eb 	ex de,hl	ex de,hl
1b21	18 2b 	jr $+$2d	jr $+$00
1b23	2a de 54 	ld hl,($54de)	ld hl,($0000)
1b26	18 28 	jr $+$2a	jr $+$00
1b28	2a e2 54 	ld hl,($54e2)	ld hl,($0000)
1b2b	18 23 	jr $+$25	jr $+$00
1b2d	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
1b30	18 1e 	jr $+$20	jr $+$00
1b32	fd 7e 00 	ld a,(iy)	ld a,(iy)
1b35	fd 23 	inc iy	inc iy
1b37	fe 50 	cp $50	cp $00
1b39	c2 e0 25 	jp nz,$25e0	jp nz,$0000
1b3c	cd 25 40 	call $4025	call $0000
1b3f	18 0f 	jr $+$11	jr $+$00
1b41	2a f2 54 	ld hl,($54f2)	ld hl,($0000)
1b44	18 0a 	jr $+$0c	jr $+$00
1b46	2a fd 54 	ld hl,($54fd)	ld hl,($0000)
1b49	18 03 	jr $+$05	jr $+$00
1b4b	2a fb 54 	ld hl,($54fb)	ld hl,($0000)
1b4e	26 00 	ld h,$00	ld h,$00
1b50	d9 	exx	exx
1b51	af 	xor a	xor a
1b52	4f 	ld c,a	ld c,a
1b53	67 	ld h,a	ld h,a
1b54	6f 	ld l,a	ld l,a
1b55	c9 	ret	ret
1b56	af 	xor a	xor a
1b57	21 3e 02 	ld hl,$023e	ld hl,$0000
1b5a	21 3e 01 	ld hl,$013e	ld hl,$0000
1b5d	f5 	push af	push af
1b5e	cd 69 18 	call $1869	call $0000
1b61	3e 0d 	ld a,$0d	ld a,$00
1b63	12 	ld (de),a	ld (de),a
1b64	f1 	pop af	pop af
1b65	c6 ff 	add a,$ff	add a,$00
1b67	21 00 52 	ld hl,$5200	ld hl,$0000
1b6a	cd 28 12 	call $1228	call $0000
1b6d	6f 	ld l,a	ld l,a
1b6e	18 de 	jr $-$20	jr $-$00
1b70	cd d1 36 	call $36d1	call $0000
1b73	cd 91 12 	call $1291	call $0000
1b76	18 12 	jr $+$14	jr $+$00
1b78	cd d1 36 	call $36d1	call $0000
1b7b	cd 5a 12 	call $125a	call $0000
1b7e	18 0a 	jr $+$0c	jr $+$00
1b80	fd 7e 00 	ld a,(iy)	ld a,(iy)
1b83	fe 24 	cp $24	cp $00
1b85	28 09 	jr z,$+$0b	jr z,$+$00
1b87	cd 95 01 	call $0195	call $0000
1b8a	d5 	push de	push de
1b8b	d9 	exx	exx
1b8c	e1 	pop hl	pop hl
1b8d	af 	xor a	xor a
1b8e	4f 	ld c,a	ld c,a
1b8f	c9 	ret	ret
1b90	fd 23 	inc iy	inc iy
1b92	cd aa 01 	call $01aa	call $0000
1b95	3e 80 	ld a,$80	ld a,$00
1b97	c9 	ret	ret
1b98	cd f5 1f 	call $1ff5	call $0000
1b9b	d0 	ret nc	ret nc
1b9c	18 1f 	jr $+$21	jr $+$00
1b9e	cd f5 1f 	call $1ff5	call $0000
1ba1	c8 	ret z	ret z
1ba2	d8 	ret c	ret c
1ba3	18 18 	jr $+$1a	jr $+$00
1ba5	cd f5 1f 	call $1ff5	call $0000
1ba8	d8 	ret c	ret c
1ba9	18 12 	jr $+$14	jr $+$00
1bab	cd f5 1f 	call $1ff5	call $0000
1bae	28 0d 	jr z,$+$0f	jr z,$+$00
1bb0	d0 	ret nc	ret nc
1bb1	18 0a 	jr $+$0c	jr $+$00
1bb3	cd f5 1f 	call $1ff5	call $0000
1bb6	c8 	ret z	ret z
1bb7	18 04 	jr $+$06	jr $+$00
1bb9	cd f5 1f 	call $1ff5	call $0000
1bbc	c0 	ret nz	ret nz
1bbd	3e ff 	ld a,$ff	ld a,$00
1bbf	d9 	exx	exx
1bc0	67 	ld h,a	ld h,a
1bc1	6f 	ld l,a	ld l,a
1bc2	d9 	exx	exx
1bc3	67 	ld h,a	ld h,a
1bc4	6f 	ld l,a	ld l,a
1bc5	3c 	inc a	inc a
1bc6	4f 	ld c,a	ld c,a
1bc7	c9 	ret	ret
1bc8	3e 23 	ld a,$23	ld a,$00
1bca	18 43 	jr $+$45	jr $+$00
1bcc	3e 10 	ld a,$10	ld a,$00
1bce	18 3a 	jr $+$3c	jr $+$00
1bd0	3e 1a 	ld a,$1a	ld a,$00
1bd2	18 36 	jr $+$38	jr $+$00
1bd4	3e 15 	ld a,$15	ld a,$00
1bd6	18 32 	jr $+$34	jr $+$00
1bd8	3e 1b 	ld a,$1b	ld a,$00
1bda	18 2e 	jr $+$30	jr $+$00
1bdc	3e 1c 	ld a,$1c	ld a,$00
1bde	18 2a 	jr $+$2c	jr $+$00
1be0	3e 17 	ld a,$17	ld a,$00
1be2	18 26 	jr $+$28	jr $+$00
1be4	3e 1e 	ld a,$1e	ld a,$00
1be6	18 22 	jr $+$24	jr $+$00
1be8	3e 1f 	ld a,$1f	ld a,$00
1bea	18 1e 	jr $+$20	jr $+$00
1bec	3e 14 	ld a,$14	ld a,$00
1bee	18 1a 	jr $+$1c	jr $+$00
1bf0	3e 1d 	ld a,$1d	ld a,$00
1bf2	18 16 	jr $+$18	jr $+$00
1bf4	3e 16 	ld a,$16	ld a,$00
1bf6	18 12 	jr $+$14	jr $+$00
1bf8	3e 18 	ld a,$18	ld a,$00
1bfa	18 0e 	jr $+$10	jr $+$00
1bfc	3e 19 	ld a,$19	ld a,$00
1bfe	18 0a 	jr $+$0c	jr $+$00
1c00	3e 12 	ld a,$12	ld a,$00
1c02	18 06 	jr $+$08	jr $+$00
1c04	3e 13 	ld a,$13	ld a,$00
1c06	18 02 	jr $+$04	jr $+$00
1c08	3e 11 	ld a,$11	ld a,$00
1c0a	f5 	push af	push af
1c0b	cd 7a 18 	call $187a	call $0000
1c0e	f1 	pop af	pop af
1c0f	cd 15 45 	call $4515	call $0000
1c12	da 44 3f 	jp c,$3f44	jp c,$0000
1c15	af 	xor a	xor a
1c16	c9 	ret	ret
1c17	3e 26 	ld a,$26	ld a,$00
1c19	18 f4 	jr $-$0a	jr $-$00
1c1b	3e 27 	ld a,$27	ld a,$00
1c1d	18 f0 	jr $-$0e	jr $-$00
1c1f	cd 69 18 	call $1869	call $0000
1c22	af 	xor a	xor a
1c23	12 	ld (de),a	ld (de),a
1c24	dd 21 00 52 	ld ix,$5200	ld ix,$0000
1c28	3e 24 	ld a,$24	ld a,$00
1c2a	18 e3 	jr $-$1b	jr $-$00
1c2c	cd 69 18 	call $1869	call $0000
1c2f	3e 0d 	ld a,$0d	ld a,$00
1c31	12 	ld (de),a	ld (de),a
1c32	fd e5 	push iy	push iy
1c34	11 00 52 	ld de,$5200	ld de,$0000
1c37	fd 21 00 52 	ld iy,$5200	ld iy,$0000
1c3b	0e 00 	ld c,$00	ld c,$00
1c3d	cd 18 44 	call $4418	call $0000
1c40	12 	ld (de),a	ld (de),a
1c41	13 	inc de	inc de
1c42	af 	xor a	xor a
1c43	cd 19 20 	call $2019	call $0000
1c46	fd 21 02 00 	ld iy,$0002	ld iy,$0000
1c4a	fd 39 	add iy,sp	add iy,sp
1c4c	cd 02 17 	call $1702	call $0000
1c4f	fd e1 	pop iy	pop iy
1c51	fd 39 	add iy,sp	add iy,sp
1c53	fd f9 	ld sp,iy	ld sp,iy
1c55	fd e1 	pop iy	pop iy
1c57	08 	ex af,af'	ex af,af'
1c58	c9 	ret	ret
1c59	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
1c5d	cd 0b 45 	call $450b	call $0000
1c60	fe 28 	cp $28	cp $00
1c62	28 1c 	jr z,$+$1e	jr z,$+$00
1c64	cd 2f 19 	call $192f	call $0000
1c67	cb 19 	rr c	rr c
1c69	06 20 	ld b,$20	ld b,$00
1c6b	d9 	exx	exx
1c6c	ed 6a 	adc hl,hl	adc hl,hl
1c6e	d9 	exx	exx
1c6f	ed 6a 	adc hl,hl	adc hl,hl
1c71	cb 5d 	bit 3,l	bit 3,l
1c73	28 01 	jr z,$+$03	jr z,$+$00
1c75	3f 	ccf	ccf
1c76	10 f3 	djnz $-$0b	djnz $-$00
1c78	cb 11 	rl c	rl c
1c7a	cd 06 32 	call $3206	call $0000
1c7d	af 	xor a	xor a
1c7e	4f 	ld c,a	ld c,a
1c7f	c9 	ret	ret
1c80	cd 60 18 	call $1860	call $0000
1c83	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
1c87	cb 7c 	bit 7,h	bit 7,h
1c89	37 	scf	scf
1c8a	20 ec 	jr nz,$-$12	jr nz,$-$00
1c8c	cd 59 1f 	call $1f59	call $0000
1c8f	f5 	push af	push af
1c90	41 	ld b,c	ld b,c
1c91	eb 	ex de,hl	ex de,hl
1c92	d9 	exx	exx
1c93	eb 	ex de,hl	ex de,hl
1c94	cd 2f 19 	call $192f	call $0000
1c97	c4 67 1c 	call nz,$1c67	call nz,$0000
1c9a	d9 	exx	exx
1c9b	0e 7f 	ld c,$7f	ld c,$00
1c9d	cb 7c 	bit 7,h	bit 7,h
1c9f	20 08 	jr nz,$+$0a	jr nz,$+$00
1ca1	d9 	exx	exx
1ca2	29 	add hl,hl	add hl,hl
1ca3	d9 	exx	exx
1ca4	ed 6a 	adc hl,hl	adc hl,hl
1ca6	0d 	dec c	dec c
1ca7	20 f4 	jr nz,$-$0a	jr nz,$-$00
1ca9	cb bc 	res 7,h	res 7,h
1cab	f1 	pop af	pop af
1cac	c8 	ret z	ret z
1cad	d9 	exx	exx
1cae	7b 	ld a,e	ld a,e
1caf	3d 	dec a	dec a
1cb0	b2 	or d	or d
1cb1	d9 	exx	exx
1cb2	b3 	or e	or e
1cb3	b2 	or d	or d
1cb4	c8 	ret z	ret z
1cb5	06 00 	ld b,$00	ld b,$00
1cb7	3e 0a 	ld a,$0a	ld a,$00
1cb9	cd 15 45 	call $4515	call $0000
1cbc	da 44 3f 	jp c,$3f44	jp c,$0000
1cbf	cd 17 1c 	call $1c17	call $0000
1cc2	c3 56 18 	jp $1856	jp $0000
1cc5	fd 23 	inc iy	inc iy
1cc7	cd d7 19 	call $19d7	call $0000
1cca	cb 78 	bit 7,b	bit 7,b
1ccc	ca 6e 18 	jp z,$186e	jp z,$0000
1ccf	cd a4 19 	call $19a4	call $0000
1cd2	e5 	push hl	push hl
1cd3	dd e1 	pop ix	pop ix
1cd5	af 	xor a	xor a
1cd6	67 	ld h,a	ld h,a
1cd7	6f 	ld l,a	ld l,a
1cd8	47 	ld b,a	ld b,a
1cd9	dd 4e 00 	ld c,(ix)	ld c,(ix)
1cdc	09 	add hl,bc	add hl,bc
1cdd	0e 04 	ld c,$04	ld c,$00
1cdf	dd 09 	add ix,bc	add ix,bc
1ce1	1b 	dec de	dec de
1ce2	7a 	ld a,d	ld a,d
1ce3	b3 	or e	or e
1ce4	20 f3 	jr nz,$-$0b	jr nz,$-$00
1ce6	c3 50 1b 	jp $1b50	jp $0000
1ce9	cd 0b 45 	call $450b	call $0000
1cec	fe a9 	cp $a9	cp $00
1cee	28 d5 	jr z,$-$29	jr z,$-$00
1cf0	cd d7 19 	call $19d7	call $0000
1cf3	cb 78 	bit 7,b	bit 7,b
1cf5	20 27 	jr nz,$+$29	jr nz,$+$00
1cf7	c5 	push bc	push bc
1cf8	cd a4 19 	call $19a4	call $0000
1cfb	e5 	push hl	push hl
1cfc	dd e1 	pop ix	pop ix
1cfe	cd f8 1f 	call $1ff8	call $0000
1d01	f1 	pop af	pop af
1d02	d5 	push de	push de
1d03	f5 	push af	push af
1d04	cd e7 19 	call $19e7	call $0000
1d07	3e 0b 	ld a,$0b	ld a,$00
1d09	cd 15 45 	call $4515	call $0000
1d0c	da 44 3f 	jp c,$3f44	jp c,$0000
1d0f	f1 	pop af	pop af
1d10	16 00 	ld d,$00	ld d,$00
1d12	5f 	ld e,a	ld e,a
1d13	dd 19 	add ix,de	add ix,de
1d15	d1 	pop de	pop de
1d16	1b 	dec de	dec de
1d17	47 	ld b,a	ld b,a
1d18	7a 	ld a,d	ld a,d
1d19	b3 	or e	or e
1d1a	78 	ld a,b	ld a,b
1d1b	20 e5 	jr nz,$-$19	jr nz,$-$00
1d1d	c9 	ret	ret
1d1e	cd a4 19 	call $19a4	call $0000
1d21	e5 	push hl	push hl
1d22	dd e1 	pop ix	pop ix
1d24	eb 	ex de,hl	ex de,hl
1d25	11 00 52 	ld de,$5200	ld de,$0000
1d28	06 00 	ld b,$00	ld b,$00
1d2a	e5 	push hl	push hl
1d2b	dd 4e 00 	ld c,(ix)	ld c,(ix)
1d2e	79 	ld a,c	ld a,c
1d2f	b7 	or a	or a
1d30	28 0e 	jr z,$+$10	jr z,$+$00
1d32	83 	add a,e	add a,e
1d33	3e 13 	ld a,$13	ld a,$00
1d35	da 44 3f 	jp c,$3f44	jp c,$0000
1d38	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
1d3b	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
1d3e	ed b0 	ldir	ldir
1d40	e1 	pop hl	pop hl
1d41	0e 04 	ld c,$04	ld c,$00
1d43	dd 09 	add ix,bc	add ix,bc
1d45	2b 	dec hl	dec hl
1d46	7c 	ld a,h	ld a,h
1d47	b5 	or l	or l
1d48	20 e0 	jr nz,$-$1e	jr nz,$-$00
1d4a	f6 80 	or $80	or $00
1d4c	c9 	ret	ret
1d4d	cd d7 19 	call $19d7	call $0000
1d50	cb 78 	bit 7,b	bit 7,b
1d52	c2 6e 18 	jp nz,$186e	jp nz,$0000
1d55	c5 	push bc	push bc
1d56	cd a4 19 	call $19a4	call $0000
1d59	e5 	push hl	push hl
1d5a	dd e1 	pop ix	pop ix
1d5c	cd f8 1f 	call $1ff8	call $0000
1d5f	f1 	pop af	pop af
1d60	d5 	push de	push de
1d61	f5 	push af	push af
1d62	c5 	push bc	push bc
1d63	e5 	push hl	push hl
1d64	d9 	exx	exx
1d65	e5 	push hl	push hl
1d66	d9 	exx	exx
1d67	cd 25 19 	call $1925	call $0000
1d6a	af 	xor a	xor a
1d6b	47 	ld b,a	ld b,a
1d6c	57 	ld d,a	ld d,a
1d6d	5f 	ld e,a	ld e,a
1d6e	d9 	exx	exx
1d6f	57 	ld d,a	ld d,a
1d70	1e 02 	ld e,$02	ld e,$00
1d72	d9 	exx	exx
1d73	3e 0e 	ld a,$0e	ld a,$00
1d75	dd e5 	push ix	push ix
1d77	cd 15 45 	call $4515	call $0000
1d7a	dd e1 	pop ix	pop ix
1d7c	da 44 3f 	jp c,$3f44	jp c,$0000
1d7f	d9 	exx	exx
1d80	eb 	ex de,hl	ex de,hl
1d81	e1 	pop hl	pop hl
1d82	d9 	exx	exx
1d83	eb 	ex de,hl	ex de,hl
1d84	e1 	pop hl	pop hl
1d85	79 	ld a,c	ld a,c
1d86	c1 	pop bc	pop bc
1d87	47 	ld b,a	ld b,a
1d88	3e 0b 	ld a,$0b	ld a,$00
1d8a	cd 15 45 	call $4515	call $0000
1d8d	da 44 3f 	jp c,$3f44	jp c,$0000
1d90	f1 	pop af	pop af
1d91	16 00 	ld d,$00	ld d,$00
1d93	5f 	ld e,a	ld e,a
1d94	dd 19 	add ix,de	add ix,de
1d96	d1 	pop de	pop de
1d97	1b 	dec de	dec de
1d98	47 	ld b,a	ld b,a
1d99	7a 	ld a,d	ld a,d
1d9a	b3 	or e	or e
1d9b	78 	ld a,b	ld a,b
1d9c	20 c2 	jr nz,$-$3c	jr nz,$-$00
1d9e	3e 1e 	ld a,$1e	ld a,$00
1da0	cd 15 45 	call $4515	call $0000
1da3	af 	xor a	xor a
1da4	c9 	ret	ret
1da5	cd 3c 18 	call $183c	call $0000
1da8	cd a2 20 	call $20a2	call $0000
1dab	cd 19 20 	call $2019	call $0000
1dae	cd 3c 18 	call $183c	call $0000
1db1	c1 	pop bc	pop bc
1db2	21 00 00 	ld hl,$0000	ld hl,$0000
1db5	39 	add hl,sp	add hl,sp
1db6	c5 	push bc	push bc
1db7	43 	ld b,e	ld b,e
1db8	cd 0b 45 	call $450b	call $0000
1dbb	fe 2c 	cp $2c	cp $00
1dbd	3e 00 	ld a,$00	ld a,$00
1dbf	20 17 	jr nz,$+$19	jr nz,$+$00
1dc1	fd 23 	inc iy	inc iy
1dc3	c5 	push bc	push bc
1dc4	e5 	push hl	push hl
1dc5	cd 19 20 	call $2019	call $0000
1dc8	cd 33 18 	call $1833	call $0000
1dcb	c1 	pop bc	pop bc
1dcc	cd 37 20 	call $2037	call $0000
1dcf	e1 	pop hl	pop hl
1dd0	c1 	pop bc	pop bc
1dd1	d9 	exx	exx
1dd2	7d 	ld a,l	ld a,l
1dd3	d9 	exx	exx
1dd4	b7 	or a	or a
1dd5	28 01 	jr z,$+$03	jr z,$+$00
1dd7	3d 	dec a	dec a
1dd8	11 00 52 	ld de,$5200	ld de,$0000
1ddb	cd f2 1d 	call $1df2	call $0000
1dde	d1 	pop de	pop de
1ddf	28 03 	jr z,$+$05	jr z,$+$00
1de1	ed 62 	sbc hl,hl	sbc hl,hl
1de3	39 	add hl,sp	add hl,sp
1de4	ed 72 	sbc hl,sp	sbc hl,sp
1de6	eb 	ex de,hl	ex de,hl
1de7	26 00 	ld h,$00	ld h,$00
1de9	39 	add hl,sp	add hl,sp
1dea	f9 	ld sp,hl	ld sp,hl
1deb	eb 	ex de,hl	ex de,hl
1dec	cd ae 20 	call $20ae	call $0000
1def	c3 50 1b 	jp $1b50	jp $0000
1df2	c5 	push bc	push bc
1df3	06 00 	ld b,$00	ld b,$00
1df5	4f 	ld c,a	ld c,a
1df6	09 	add hl,bc	add hl,bc
1df7	c1 	pop bc	pop bc
1df8	91 	sub c	sub c
1df9	30 28 	jr nc,$+$2a	jr nc,$+$00
1dfb	ed 44 	neg	neg
1dfd	4f 	ld c,a	ld c,a
1dfe	1a 	ld a,(de)	ld a,(de)
1dff	c5 	push bc	push bc
1e00	06 00 	ld b,$00	ld b,$00
1e02	ed b1 	cpir	cpir
1e04	79 	ld a,c	ld a,c
1e05	c1 	pop bc	pop bc
1e06	20 1b 	jr nz,$+$1d	jr nz,$+$00
1e08	4f 	ld c,a	ld c,a
1e09	05 	dec b	dec b
1e0a	b8 	cp b	cp b
1e0b	04 	inc b	inc b
1e0c	38 15 	jr c,$+$17	jr c,$+$00
1e0e	c5 	push bc	push bc
1e0f	d5 	push de	push de
1e10	e5 	push hl	push hl
1e11	05 	dec b	dec b
1e12	28 08 	jr z,$+$0a	jr z,$+$00
1e14	13 	inc de	inc de
1e15	1a 	ld a,(de)	ld a,(de)
1e16	be 	cp (hl)	cp (hl)
1e17	20 03 	jr nz,$+$05	jr nz,$+$00
1e19	23 	inc hl	inc hl
1e1a	10 f8 	djnz $-$06	djnz $-$00
1e1c	e1 	pop hl	pop hl
1e1d	d1 	pop de	pop de
1e1e	c1 	pop bc	pop bc
1e1f	20 dd 	jr nz,$-$21	jr nz,$-$00
1e21	af 	xor a	xor a
1e22	c9 	ret	ret
1e23	f6 ff 	or $ff	or $00
1e25	c9 	ret	ret
1e26	cd 60 18 	call $1860	call $0000
1e29	d9 	exx	exx
1e2a	7d 	ld a,l	ld a,l
1e2b	18 0a 	jr $+$0c	jr $+$00
1e2d	cd 0b 45 	call $450b	call $0000
1e30	fe 23 	cp $23	cp $00
1e32	28 06 	jr z,$+$08	jr z,$+$00
1e34	cd c2 11 	call $11c2	call $0000
1e37	37 	scf	scf
1e38	18 5b 	jr $+$5d	jr $+$00
1e3a	cd db 36 	call $36db	call $0000
1e3d	cd 0b 45 	call $450b	call $0000
1e40	fe 0f 	cp $0f	cp $00
1e42	28 04 	jr z,$+$06	jr z,$+$00
1e44	fe b8 	cp $b8	cp $00
1e46	20 0c 	jr nz,$+$0e	jr nz,$+$00
1e48	fd 23 	inc iy	inc iy
1e4a	f5 	push af	push af
1e4b	d5 	push de	push de
1e4c	cd 60 18 	call $1860	call $0000
1e4f	d9 	exx	exx
1e50	44 	ld b,h	ld b,h
1e51	4d 	ld c,l	ld c,l
1e52	d1 	pop de	pop de
1e53	f1 	pop af	pop af
1e54	21 00 52 	ld hl,$5200	ld hl,$0000
1e57	fe b8 	cp $b8	cp $00
1e59	28 08 	jr z,$+$0a	jr z,$+$00
1e5b	51 	ld d,c	ld d,c
1e5c	01 00 01 	ld bc,$0100	ld bc,$0000
1e5f	fe 0f 	cp $0f	cp $00
1e61	28 04 	jr z,$+$06	jr z,$+$00
1e63	16 00 	ld d,$00	ld d,$00
1e65	cb c8 	set 1,b	set 1,b
1e67	c5 	push bc	push bc
1e68	cd 3f 12 	call $123f	call $0000
1e6b	c1 	pop bc	pop bc
1e6c	38 1c 	jr c,$+$1e	jr c,$+$00
1e6e	cb 48 	bit 1,b	bit 1,b
1e70	28 13 	jr z,$+$15	jr z,$+$00
1e72	b9 	cp c	cp c
1e73	28 15 	jr z,$+$17	jr z,$+$00
1e75	cb 78 	bit 7,b	bit 7,b
1e77	20 08 	jr nz,$+$0a	jr nz,$+$00
1e79	cb 40 	bit 0,b	bit 0,b
1e7b	28 08 	jr z,$+$0a	jr z,$+$00
1e7d	fe 0a 	cp $0a	cp $00
1e7f	28 09 	jr z,$+$0b	jr z,$+$00
1e81	fe 0d 	cp $0d	cp $00
1e83	28 05 	jr z,$+$07	jr z,$+$00
1e85	77 	ld (hl),a	ld (hl),a
1e86	2c 	inc l	inc l
1e87	15 	dec d	dec d
1e88	20 dd 	jr nz,$-$21	jr nz,$-$00
1e8a	eb 	ex de,hl	ex de,hl
1e8b	3e 80 	ld a,$80	ld a,$00
1e8d	c9 	ret	ret
1e8e	cd 60 18 	call $1860	call $0000
1e91	d9 	exx	exx
1e92	cd fd 01 	call $01fd	call $0000
1e95	11 00 52 	ld de,$5200	ld de,$0000
1e98	12 	ld (de),a	ld (de),a
1e99	3e 80 	ld a,$80	ld a,$00
1e9b	d0 	ret nc	ret nc
1e9c	1c 	inc e	inc e
1e9d	c9 	ret	ret
1e9e	cd 3c 18 	call $183c	call $0000
1ea1	cd a2 20 	call $20a2	call $0000
1ea4	cd 19 20 	call $2019	call $0000
1ea7	cd 33 18 	call $1833	call $0000
1eaa	c1 	pop bc	pop bc
1eab	cd 37 20 	call $2037	call $0000
1eae	d9 	exx	exx
1eaf	7d 	ld a,l	ld a,l
1eb0	d9 	exx	exx
1eb1	b7 	or a	or a
1eb2	28 0d 	jr z,$+$0f	jr z,$+$00
1eb4	3d 	dec a	dec a
1eb5	6f 	ld l,a	ld l,a
1eb6	93 	sub e	sub e
1eb7	1e 00 	ld e,$00	ld e,$00
1eb9	30 06 	jr nc,$+$08	jr nc,$+$00
1ebb	ed 44 	neg	neg
1ebd	4f 	ld c,a	ld c,a
1ebe	cd 1d 1f 	call $1f1d	call $0000
1ec1	cd 0b 45 	call $450b	call $0000
1ec4	fe 2c 	cp $2c	cp $00
1ec6	28 1a 	jr z,$+$1c	jr z,$+$00
1ec8	cd ae 20 	call $20ae	call $0000
1ecb	3e 80 	ld a,$80	ld a,$00
1ecd	c9 	ret	ret
1ece	cd 3c 18 	call $183c	call $0000
1ed1	cd 0b 45 	call $450b	call $0000
1ed4	fe 2c 	cp $2c	cp $00
1ed6	28 0a 	jr z,$+$0c	jr z,$+$00
1ed8	cd ae 20 	call $20ae	call $0000
1edb	7b 	ld a,e	ld a,e
1edc	b7 	or a	or a
1edd	28 1a 	jr z,$+$1c	jr z,$+$00
1edf	1d 	dec e	dec e
1ee0	18 17 	jr $+$19	jr $+$00
1ee2	fd 23 	inc iy	inc iy
1ee4	cd 19 20 	call $2019	call $0000
1ee7	cd 33 18 	call $1833	call $0000
1eea	c1 	pop bc	pop bc
1eeb	cd 37 20 	call $2037	call $0000
1eee	cd ae 20 	call $20ae	call $0000
1ef1	d9 	exx	exx
1ef2	7d 	ld a,l	ld a,l
1ef3	d9 	exx	exx
1ef4	bb 	cp e	cp e
1ef5	30 02 	jr nc,$+$04	jr nc,$+$00
1ef7	6b 	ld l,e	ld l,e
1ef8	5f 	ld e,a	ld e,a
1ef9	3e 80 	ld a,$80	ld a,$00
1efb	c9 	ret	ret
1efc	cd 3c 18 	call $183c	call $0000
1eff	cd 0b 45 	call $450b	call $0000
1f02	fe 2c 	cp $2c	cp $00
1f04	28 0c 	jr z,$+$0e	jr z,$+$00
1f06	cd ae 20 	call $20ae	call $0000
1f09	7b 	ld a,e	ld a,e
1f0a	b7 	or a	or a
1f0b	28 ec 	jr z,$-$12	jr z,$-$00
1f0d	3d 	dec a	dec a
1f0e	0e 01 	ld c,$01	ld c,$00
1f10	18 0a 	jr $+$0c	jr $+$00
1f12	cd e2 1e 	call $1ee2	call $0000
1f15	d0 	ret nc	ret nc
1f16	1c 	inc e	inc e
1f17	1d 	dec e	dec e
1f18	c8 	ret z	ret z
1f19	4b 	ld c,e	ld c,e
1f1a	7d 	ld a,l	ld a,l
1f1b	93 	sub e	sub e
1f1c	6f 	ld l,a	ld l,a
1f1d	06 00 	ld b,$00	ld b,$00
1f1f	62 	ld h,d	ld h,d
1f20	58 	ld e,b	ld e,b
1f21	ed b0 	ldir	ldir
1f23	3e 80 	ld a,$80	ld a,$00
1f25	c9 	ret	ret
1f26	cd 33 18 	call $1833	call $0000
1f29	cd a2 20 	call $20a2	call $0000
1f2c	d9 	exx	exx
1f2d	7d 	ld a,l	ld a,l
1f2e	d9 	exx	exx
1f2f	f5 	push af	push af
1f30	cd 3c 18 	call $183c	call $0000
1f33	cd ae 20 	call $20ae	call $0000
1f36	f1 	pop af	pop af
1f37	b7 	or a	or a
1f38	28 be 	jr z,$-$40	jr z,$-$00
1f3a	3d 	dec a	dec a
1f3b	4f 	ld c,a	ld c,a
1f3c	3e 80 	ld a,$80	ld a,$00
1f3e	c8 	ret z	ret z
1f3f	1c 	inc e	inc e
1f40	1d 	dec e	dec e
1f41	c8 	ret z	ret z
1f42	43 	ld b,e	ld b,e
1f43	62 	ld h,d	ld h,d
1f44	2e 00 	ld l,$00	ld l,$00
1f46	c5 	push bc	push bc
1f47	7e 	ld a,(hl)	ld a,(hl)
1f48	23 	inc hl	inc hl
1f49	12 	ld (de),a	ld (de),a
1f4a	1c 	inc e	inc e
1f4b	3e 13 	ld a,$13	ld a,$00
1f4d	ca 44 3f 	jp z,$3f44	jp z,$0000
1f50	10 f5 	djnz $-$09	djnz $-$00
1f52	c1 	pop bc	pop bc
1f53	0d 	dec c	dec c
1f54	20 f0 	jr nz,$-$0e	jr nz,$-$00
1f56	3e 80 	ld a,$80	ld a,$00
1f58	c9 	ret	ret
1f59	7c 	ld a,h	ld a,h
1f5a	b5 	or l	or l
1f5b	d9 	exx	exx
1f5c	b4 	or h	or h
1f5d	b5 	or l	or l
1f5e	d9 	exx	exx
1f5f	c9 	ret	ret
1f60	d9 	exx	exx
1f61	fd 7e 00 	ld a,(iy)	ld a,(iy)
1f64	fd 23 	inc iy	inc iy
1f66	17 	rla	rla
1f67	17 	rla	rla
1f68	67 	ld h,a	ld h,a
1f69	e6 c0 	and $c0	and $00
1f6b	fd ae 00 	xor (iy)	xor (iy)
1f6e	fd 23 	inc iy	inc iy
1f70	6f 	ld l,a	ld l,a
1f71	7c 	ld a,h	ld a,h
1f72	17 	rla	rla
1f73	17 	rla	rla
1f74	e6 c0 	and $c0	and $00
1f76	fd ae 00 	xor (iy)	xor (iy)
1f79	fd 23 	inc iy	inc iy
1f7b	67 	ld h,a	ld h,a
1f7c	d9 	exx	exx
1f7d	af 	xor a	xor a
1f7e	4f 	ld c,a	ld c,a
1f7f	67 	ld h,a	ld h,a
1f80	6f 	ld l,a	ld l,a
1f81	c9 	ret	ret
1f82	fd 23 	inc iy	inc iy
1f84	cd 7a 18 	call $187a	call $0000
1f87	cd 8d 1f 	call $1f8d	call $0000
1f8a	3e 80 	ld a,$80	ld a,$00
1f8c	c9 	ret	ret
1f8d	cd 17 1c 	call $1c17	call $0000
1f90	01 08 00 	ld bc,$0008	ld bc,$0000
1f93	11 00 52 	ld de,$5200	ld de,$0000
1f96	c5 	push bc	push bc
1f97	06 04 	ld b,$04	ld b,$00
1f99	af 	xor a	xor a
1f9a	d9 	exx	exx
1f9b	29 	add hl,hl	add hl,hl
1f9c	d9 	exx	exx
1f9d	ed 6a 	adc hl,hl	adc hl,hl
1f9f	17 	rla	rla
1fa0	10 f8 	djnz $-$06	djnz $-$00
1fa2	c1 	pop bc	pop bc
1fa3	0d 	dec c	dec c
1fa4	f8 	ret m	ret m
1fa5	28 06 	jr z,$+$08	jr z,$+$00
1fa7	b7 	or a	or a
1fa8	20 03 	jr nz,$+$05	jr nz,$+$00
1faa	b8 	cp b	cp b
1fab	28 e9 	jr z,$-$15	jr z,$-$00
1fad	c6 90 	add a,$90	add a,$00
1faf	27 	daa	daa
1fb0	ce 40 	adc a,$40	adc a,$00
1fb2	27 	daa	daa
1fb3	12 	ld (de),a	ld (de),a
1fb4	13 	inc de	inc de
1fb5	47 	ld b,a	ld b,a
1fb6	18 de 	jr $-$20	jr $-$00
1fb8	cd 0b 45 	call $450b	call $0000
1fbb	fe 7e 	cp $7e	cp $00
1fbd	28 c3 	jr z,$-$3b	jr z,$-$00
1fbf	cd 7a 18 	call $187a	call $0000
1fc2	dd 21 00 54 	ld ix,$5400	ld ix,$0000
1fc6	dd 7e 03 	ld a,(ix+$03)	ld a,(ix+$00)
1fc9	b7 	or a	or a
1fca	dd 21 f2 1f 	ld ix,$1ff2	ld ix,$0000
1fce	28 04 	jr z,$+$06	jr z,$+$00
1fd0	dd 21 00 54 	ld ix,$5400	ld ix,$0000
1fd4	11 00 52 	ld de,$5200	ld de,$0000
1fd7	3e 25 	ld a,$25	ld a,$00
1fd9	cd 15 45 	call $4515	call $0000
1fdc	da 44 3f 	jp c,$3f44	jp c,$0000
1fdf	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
1fe3	3e 80 	ld a,$80	ld a,$00
1fe5	c8 	ret z	ret z
1fe6	79 	ld a,c	ld a,c
1fe7	c6 04 	add a,$04	add a,$00
1fe9	bb 	cp e	cp e
1fea	28 f7 	jr z,$-$07	jr z,$-$00
1fec	eb 	ex de,hl	ex de,hl
1fed	36 20 	ld (hl),$20	ld (hl),$00
1fef	23 	inc hl	inc hl
1ff0	eb 	ex de,hl	ex de,hl
1ff1	18 f6 	jr $-$08	jr $-$00
1ff3	09 	add hl,bc	add hl,bc
1ff4	00 	nop	nop
1ff5	cd 02 20 	call $2002	call $0000
1ff8	3e 00 	ld a,$00	ld a,$00
1ffa	d9 	exx	exx
1ffb	67 	ld h,a	ld h,a
1ffc	6f 	ld l,a	ld l,a
1ffd	d9 	exx	exx
1ffe	67 	ld h,a	ld h,a
1fff	6f 	ld l,a	ld l,a
2000	4f 	ld c,a	ld c,a
2001	c9 	ret	ret
2002	04 	inc b	inc b
2003	0c 	inc c	inc c
2004	05 	dec b	dec b
2005	28 0a 	jr z,$+$0c	jr z,$+$00
2007	0d 	dec c	dec c
2008	28 0c 	jr z,$+$0e	jr z,$+$00
200a	1a 	ld a,(de)	ld a,(de)
200b	be 	cp (hl)	cp (hl)
200c	c0 	ret nz	ret nz
200d	13 	inc de	inc de
200e	23 	inc hl	inc hl
200f	18 f3 	jr $-$0b	jr $-$00
2011	b7 	or a	or a
2012	0d 	dec c	dec c
2013	c8 	ret z	ret z
2014	37 	scf	scf
2015	c9 	ret	ret
2016	b7 	or a	or a
2017	0c 	inc c	inc c
2018	c9 	ret	ret
2019	21 00 52 	ld hl,$5200	ld hl,$0000
201c	cd 86 32 	call $3286	call $0000
201f	dd e1 	pop ix	pop ix
2021	b7 	or a	or a
2022	54 	ld d,h	ld d,h
2023	4b 	ld c,e	ld c,e
2024	ed 52 	sbc hl,de	sbc hl,de
2026	39 	add hl,sp	add hl,sp
2027	f9 	ld sp,hl	ld sp,hl
2028	47 	ld b,a	ld b,a
2029	c5 	push bc	push bc
202a	28 09 	jr z,$+$0b	jr z,$+$00
202c	eb 	ex de,hl	ex de,hl
202d	06 00 	ld b,$00	ld b,$00
202f	68 	ld l,b	ld l,b
2030	ed b0 	ldir	ldir
2032	cd 86 32 	call $3286	call $0000
2035	dd e9 	jp (ix)	jp (ix)
2037	dd e1 	pop ix	pop ix
2039	21 00 00 	ld hl,$0000	ld hl,$0000
203c	44 	ld b,h	ld b,h
203d	39 	add hl,sp	add hl,sp
203e	11 00 52 	ld de,$5200	ld de,$0000
2041	0c 	inc c	inc c
2042	0d 	dec c	dec c
2043	28 02 	jr z,$+$04	jr z,$+$00
2045	ed b0 	ldir	ldir
2047	f9 	ld sp,hl	ld sp,hl
2048	dd e9 	jp (ix)	jp (ix)
204a	fd 7e 00 	ld a,(iy)	ld a,(iy)
204d	fe 30 	cp $30	cp $00
204f	d8 	ret c	ret c
2050	fe 32 	cp $32	cp $00
2052	3f 	ccf	ccf
2053	d8 	ret c	ret c
2054	d6 30 	sub $30	sub $00
2056	c9 	ret	ret
2057	fd 7e 00 	ld a,(iy)	ld a,(iy)
205a	fe 30 	cp $30	cp $00
205c	d8 	ret c	ret c
205d	fe 3a 	cp $3a	cp $00
205f	3f 	ccf	ccf
2060	d0 	ret nc	ret nc
2061	fe 41 	cp $41	cp $00
2063	d8 	ret c	ret c
2064	d6 37 	sub $37	sub $00
2066	fe 10 	cp $10	cp $00
2068	3f 	ccf	ccf
2069	c9 	ret	ret
206a	fe 3e 	cp $3e	cp $00
206c	d0 	ret nc	ret nc
206d	fe 3d 	cp $3d	cp $00
206f	d0 	ret nc	ret nc
2070	fe 3c 	cp $3c	cp $00
2072	c9 	ret	ret
2073	fd 23 	inc iy	inc iy
2075	e6 0f 	and $0f	and $00
2077	08 	ex af,af'	ex af,af'
2078	fa 6e 18 	jp m,$186e	jp m,$0000
207b	08 	ex af,af'	ex af,af'
207c	e3 	ex (sp),hl	ex (sp),hl
207d	d9 	exx	exx
207e	e5 	push hl	push hl
207f	d9 	exx	exx
2080	f5 	push af	push af
2081	c5 	push bc	push bc
2082	e9 	jp (hl)	jp (hl)
2083	08 	ex af,af'	ex af,af'
2084	fa 6e 18 	jp m,$186e	jp m,$0000
2087	d9 	exx	exx
2088	c1 	pop bc	pop bc
2089	d9 	exx	exx
208a	79 	ld a,c	ld a,c
208b	c1 	pop bc	pop bc
208c	47 	ld b,a	ld b,a
208d	f1 	pop af	pop af
208e	d9 	exx	exx
208f	eb 	ex de,hl	ex de,hl
2090	e1 	pop hl	pop hl
2091	d9 	exx	exx
2092	eb 	ex de,hl	ex de,hl
2093	e1 	pop hl	pop hl
2094	d9 	exx	exx
2095	c5 	push bc	push bc
2096	d9 	exx	exx
2097	cd 15 45 	call $4515	call $0000
209a	38 1c 	jr c,$+$1e	jr c,$+$00
209c	af 	xor a	xor a
209d	08 	ex af,af'	ex af,af'
209e	fd 7e 00 	ld a,(iy)	ld a,(iy)
20a1	c9 	ret	ret
20a2	cd 0b 45 	call $450b	call $0000
20a5	fd 23 	inc iy	inc iy
20a7	fe 2c 	cp $2c	cp $00
20a9	c8 	ret z	ret z
20aa	3e 05 	ld a,$05	ld a,$00
20ac	18 0a 	jr $+$0c	jr $+$00
20ae	cd 0b 45 	call $450b	call $0000
20b1	fd 23 	inc iy	inc iy
20b3	fe 29 	cp $29	cp $00
20b5	c8 	ret z	ret z
20b6	3e 1b 	ld a,$1b	ld a,$00
20b8	c3 44 3f 	jp $3f44	jp $0000
20bb	e5 	push hl	push hl
20bc	21 f6 16 	ld hl,$16f6	ld hl,$0000
20bf	18 06 	jr $+$08	jr $+$00
20c1	e5 	push hl	push hl
20c2	d6 8d 	sub $8d	sub $00
20c4	21 82 16 	ld hl,$1682	ld hl,$0000
20c7	c5 	push bc	push bc
20c8	87 	add a,a	add a,a
20c9	4f 	ld c,a	ld c,a
20ca	06 00 	ld b,$00	ld b,$00
20cc	09 	add hl,bc	add hl,bc
20cd	7e 	ld a,(hl)	ld a,(hl)
20ce	23 	inc hl	inc hl
20cf	66 	ld h,(hl)	ld h,(hl)
20d0	6f 	ld l,a	ld l,a
20d1	c1 	pop bc	pop bc
20d2	e3 	ex (sp),hl	ex (sp),hl
20d3	c9 	ret	ret
20d4	7a 	ld a,d	ld a,d
20d5	d5 	push de	push de
20d6	e5 	push hl	push hl
20d7	dd e3 	ex (sp),ix	ex (sp),ix
20d9	b7 	or a	or a
20da	fa eb 20 	jp m,$20eb	jp m,$0000
20dd	cd 25 19 	call $1925	call $0000
20e0	dd e3 	ex (sp),ix	ex (sp),ix
20e2	cd ce 31 	call $31ce	call $0000
20e5	e1 	pop hl	pop hl
20e6	d1 	pop de	pop de
20e7	4a 	ld c,d	ld c,d
20e8	06 00 	ld b,$00	ld b,$00
20ea	c9 	ret	ret
20eb	d5 	push de	push de
20ec	cd 0e 1a 	call $1a0e	call $0000
20ef	e1 	pop hl	pop hl
20f0	dd e3 	ex (sp),ix	ex (sp),ix
20f2	cd 18 32 	call $3218	call $0000
20f5	e1 	pop hl	pop hl
20f6	d1 	pop de	pop de
20f7	01 04 00 	ld bc,$0004	ld bc,$0000
20fa	c9 	ret	ret
20fb	cb b2 	res 6,d	res 6,d
20fd	d5 	push de	push de
20fe	cd cd 19 	call $19cd	call $0000
2101	cd a4 19 	call $19a4	call $0000
2104	c1 	pop bc	pop bc
2105	78 	ld a,b	ld a,b
2106	d5 	push de	push de
2107	c5 	push bc	push bc
2108	e5 	push hl	push hl
2109	cd ad 36 	call $36ad	call $0000
210c	42 	ld b,d	ld b,d
210d	4b 	ld c,e	ld c,e
210e	dd e1 	pop ix	pop ix
2110	d1 	pop de	pop de
2111	af 	xor a	xor a
2112	ed 62 	sbc hl,hl	sbc hl,hl
2114	39 	add hl,sp	add hl,sp
2115	ed 42 	sbc hl,bc	sbc hl,bc
2117	38 9f 	jr c,$-$5f	jr c,$-$00
2119	c5 	push bc	push bc
211a	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
211e	04 	inc b	inc b
211f	ed 42 	sbc hl,bc	sbc hl,bc
2121	09 	add hl,bc	add hl,bc
2122	c1 	pop bc	pop bc
2123	38 93 	jr c,$-$6b	jr c,$-$00
2125	f9 	ld sp,hl	ld sp,hl
2126	36 00 	ld (hl),$00	ld (hl),$00
2128	23 	inc hl	inc hl
2129	0b 	dec bc	dec bc
212a	78 	ld a,b	ld a,b
212b	b1 	or c	or c
212c	20 f8 	jr nz,$-$06	jr nz,$-$00
212e	4e 	ld c,(hl)	ld c,(hl)
212f	23 	inc hl	inc hl
2130	46 	ld b,(hl)	ld b,(hl)
2131	67 	ld h,a	ld h,a
2132	6f 	ld l,a	ld l,a
2133	39 	add hl,sp	add hl,sp
2134	cd 3c 21 	call $213c	call $0000
2137	f9 	ld sp,hl	ld sp,hl
2138	c1 	pop bc	pop bc
2139	c3 99 24 	jp $2499	jp $0000
213c	3e 3d 	ld a,$3d	ld a,$00
213e	fd 2b 	dec iy	dec iy
2140	fd 23 	inc iy	inc iy
2142	d5 	push de	push de
2143	c5 	push bc	push bc
2144	e5 	push hl	push hl
2145	dd e5 	push ix	push ix
2147	5f 	ld e,a	ld e,a
2148	cd b6 21 	call $21b6	call $0000
214b	dd e1 	pop ix	pop ix
214d	e1 	pop hl	pop hl
214e	c1 	pop bc	pop bc
214f	d1 	pop de	pop de
2150	cd 0b 45 	call $450b	call $0000
2153	fe 2c 	cp $2c	cp $00
2155	28 13 	jr z,$+$15	jr z,$+$00
2157	cd 36 35 	call $3536	call $0000
215a	20 e4 	jr nz,$-$1a	jr nz,$-$00
215c	c5 	push bc	push bc
215d	cd d4 20 	call $20d4	call $0000
2160	09 	add hl,bc	add hl,bc
2161	dd 09 	add ix,bc	add ix,bc
2163	c1 	pop bc	pop bc
2164	0b 	dec bc	dec bc
2165	78 	ld a,b	ld a,b
2166	b1 	or c	or c
2167	20 f3 	jr nz,$-$0b	jr nz,$-$00
2169	c9 	ret	ret
216a	c5 	push bc	push bc
216b	cd d4 20 	call $20d4	call $0000
216e	fd 23 	inc iy	inc iy
2170	09 	add hl,bc	add hl,bc
2171	dd 09 	add ix,bc	add ix,bc
2173	c1 	pop bc	pop bc
2174	0b 	dec bc	dec bc
2175	78 	ld a,b	ld a,b
2176	b1 	or c	or c
2177	c8 	ret z	ret z
2178	c5 	push bc	push bc
2179	d5 	push de	push de
217a	e5 	push hl	push hl
217b	dd e5 	push ix	push ix
217d	cb 7a 	bit 7,d	bit 7,d
217f	20 0e 	jr nz,$+$10	jr nz,$+$00
2181	d5 	push de	push de
2182	cd 2c 18 	call $182c	call $0000
2185	d1 	pop de	pop de
2186	dd e1 	pop ix	pop ix
2188	dd e5 	push ix	push ix
218a	cd ce 31 	call $31ce	call $0000
218d	18 0c 	jr $+$0e	jr $+$00
218f	d5 	push de	push de
2190	cd 3c 18 	call $183c	call $0000
2193	e1 	pop hl	pop hl
2194	dd e1 	pop ix	pop ix
2196	dd e5 	push ix	push ix
2198	cd 18 32 	call $3218	call $0000
219b	dd e1 	pop ix	pop ix
219d	e1 	pop hl	pop hl
219e	d1 	pop de	pop de
219f	01 04 00 	ld bc,$0004	ld bc,$0000
21a2	cb 7a 	bit 7,d	bit 7,d
21a4	20 01 	jr nz,$+$03	jr nz,$+$00
21a6	4a 	ld c,d	ld c,d
21a7	cd 0b 45 	call $450b	call $0000
21aa	fe 2c 	cp $2c	cp $00
21ac	28 c0 	jr z,$-$3e	jr z,$-$00
21ae	d1 	pop de	pop de
21af	09 	add hl,bc	add hl,bc
21b0	1b 	dec de	dec de
21b1	7a 	ld a,d	ld a,d
21b2	b3 	or e	or e
21b3	20 fa 	jr nz,$-$04	jr nz,$-$00
21b5	c9 	ret	ret
21b6	cd 0b 45 	call $450b	call $0000
21b9	e5 	push hl	push hl
21ba	c5 	push bc	push bc
21bb	fd e5 	push iy	push iy
21bd	d5 	push de	push de
21be	fe 2d 	cp $2d	cp $00
21c0	20 0c 	jr nz,$+$0e	jr nz,$+$00
21c2	7b 	ld a,e	ld a,e
21c3	fe 3d 	cp $3d	cp $00
21c5	20 07 	jr nz,$+$09	jr nz,$+$00
21c7	fd 23 	inc iy	inc iy
21c9	cd 0b 45 	call $450b	call $0000
21cc	1e 2d 	ld e,$2d	ld e,$00
21ce	d5 	push de	push de
21cf	cd e3 41 	call $41e3	call $0000
21d2	d1 	pop de	pop de
21d3	20 56 	jr nz,$+$58	jr nz,$+$00
21d5	cb 77 	bit 6,a	bit 6,a
21d7	28 52 	jr z,$+$54	jr z,$+$00
21d9	c1 	pop bc	pop bc
21da	c1 	pop bc	pop bc
21db	cb b7 	res 6,a	res 6,a
21dd	ba 	cp d	cp d
21de	c2 6e 18 	jp nz,$186e	jp nz,$0000
21e1	d5 	push de	push de
21e2	cd cd 19 	call $19cd	call $0000
21e5	cd a4 19 	call $19a4	call $0000
21e8	42 	ld b,d	ld b,d
21e9	4b 	ld c,e	ld c,e
21ea	d1 	pop de	pop de
21eb	e3 	ex (sp),hl	ex (sp),hl
21ec	cd 0b 45 	call $450b	call $0000
21ef	dd e1 	pop ix	pop ix
21f1	fe 2e 	cp $2e	cp $00
21f3	ca 83 22 	jp z,$2283	jp z,$0000
21f6	b7 	or a	or a
21f7	ed 42 	sbc hl,bc	sbc hl,bc
21f9	c2 6e 18 	jp nz,$186e	jp nz,$0000
21fc	e1 	pop hl	pop hl
21fd	cb 7a 	bit 7,d	bit 7,d
21ff	20 1d 	jr nz,$+$1f	jr nz,$+$00
2201	c5 	push bc	push bc
2202	e5 	push hl	push hl
2203	7a 	ld a,d	ld a,d
2204	cd 25 19 	call $1925	call $0000
2207	dd e3 	ex (sp),ix	ex (sp),ix
2209	d5 	push de	push de
220a	cd ce 31 	call $31ce	call $0000
220d	d1 	pop de	pop de
220e	dd e3 	ex (sp),ix	ex (sp),ix
2210	e1 	pop hl	pop hl
2211	4a 	ld c,d	ld c,d
2212	06 00 	ld b,$00	ld b,$00
2214	dd 09 	add ix,bc	add ix,bc
2216	09 	add hl,bc	add hl,bc
2217	c1 	pop bc	pop bc
2218	0b 	dec bc	dec bc
2219	78 	ld a,b	ld a,b
221a	b1 	or c	or c
221b	20 e4 	jr nz,$-$1a	jr nz,$-$00
221d	c9 	ret	ret
221e	eb 	ex de,hl	ex de,hl
221f	60 	ld h,b	ld h,b
2220	69 	ld l,c	ld l,c
2221	29 	add hl,hl	add hl,hl
2222	29 	add hl,hl	add hl,hl
2223	44 	ld b,h	ld b,h
2224	4d 	ld c,l	ld c,l
2225	dd e5 	push ix	push ix
2227	e1 	pop hl	pop hl
2228	ed b0 	ldir	ldir
222a	c9 	ret	ret
222b	d1 	pop de	pop de
222c	fd e1 	pop iy	pop iy
222e	cb 7a 	bit 7,d	bit 7,d
2230	20 28 	jr nz,$+$2a	jr nz,$+$00
2232	d5 	push de	push de
2233	cd 0b 18 	call $180b	call $0000
2236	79 	ld a,c	ld a,c
2237	d1 	pop de	pop de
2238	c1 	pop bc	pop bc
2239	dd e1 	pop ix	pop ix
223b	e5 	push hl	push hl
223c	c5 	push bc	push bc
223d	d5 	push de	push de
223e	d9 	exx	exx
223f	e5 	push hl	push hl
2240	d9 	exx	exx
2241	f5 	push af	push af
2242	4f 	ld c,a	ld c,a
2243	cd ce 31 	call $31ce	call $0000
2246	f1 	pop af	pop af
2247	d9 	exx	exx
2248	e1 	pop hl	pop hl
2249	d9 	exx	exx
224a	d1 	pop de	pop de
224b	4a 	ld c,d	ld c,d
224c	06 00 	ld b,$00	ld b,$00
224e	dd 09 	add ix,bc	add ix,bc
2250	c1 	pop bc	pop bc
2251	0b 	dec bc	dec bc
2252	ed 62 	sbc hl,hl	sbc hl,hl
2254	ed 42 	sbc hl,bc	sbc hl,bc
2256	e1 	pop hl	pop hl
2257	20 e2 	jr nz,$-$1c	jr nz,$-$00
2259	c9 	ret	ret
225a	cd 3c 18 	call $183c	call $0000
225d	7b 	ld a,e	ld a,e
225e	b7 	or a	or a
225f	28 0b 	jr z,$+$0d	jr z,$+$00
2261	21 00 52 	ld hl,$5200	ld hl,$0000
2264	11 00 53 	ld de,$5300	ld de,$0000
2267	4f 	ld c,a	ld c,a
2268	06 00 	ld b,$00	ld b,$00
226a	ed b0 	ldir	ldir
226c	c1 	pop bc	pop bc
226d	dd e1 	pop ix	pop ix
226f	d9 	exx	exx
2270	6f 	ld l,a	ld l,a
2271	d9 	exx	exx
2272	11 04 00 	ld de,$0004	ld de,$0000
2275	21 00 53 	ld hl,$5300	ld hl,$0000
2278	cd 09 32 	call $3209	call $0000
227b	dd 19 	add ix,de	add ix,de
227d	0b 	dec bc	dec bc
227e	78 	ld a,b	ld a,b
227f	b1 	or c	or c
2280	20 f6 	jr nz,$-$08	jr nz,$-$00
2282	c9 	ret	ret
2283	fd 23 	inc iy	inc iy
2285	7a 	ld a,d	ld a,d
2286	b7 	or a	or a
2287	fa 6e 18 	jp m,$186e	jp m,$0000
228a	eb 	ex de,hl	ex de,hl
228b	e1 	pop hl	pop hl
228c	d5 	push de	push de
228d	e5 	push hl	push hl
228e	dd e5 	push ix	push ix
2290	f5 	push af	push af
2291	cd bd 19 	call $19bd	call $0000
2294	cd a4 19 	call $19a4	call $0000
2297	f1 	pop af	pop af
2298	eb 	ex de,hl	ex de,hl
2299	dd 6e 00 	ld l,(ix)	ld l,(ix)
229c	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
229f	6e 	ld l,(hl)	ld l,(hl)
22a0	2d 	dec l	dec l
22a1	eb 	ex de,hl	ex de,hl
22a2	dd e1 	pop ix	pop ix
22a4	c1 	pop bc	pop bc
22a5	d1 	pop de	pop de
22a6	fd e5 	push iy	push iy
22a8	c5 	push bc	push bc
22a9	e5 	push hl	push hl
22aa	fd e1 	pop iy	pop iy
22ac	21 01 00 	ld hl,$0001	ld hl,$0000
22af	28 06 	jr z,$+$08	jr z,$+$00
22b1	fd 66 ff 	ld h,(iy-$01)	ld h,(iy-$00)
22b4	fd 6e fe 	ld l,(iy-$02)	ld l,(iy-$00)
22b7	d5 	push de	push de
22b8	eb 	ex de,hl	ex de,hl
22b9	cd ad 36 	call $36ad	call $0000
22bc	eb 	ex de,hl	ex de,hl
22bd	d1 	pop de	pop de
22be	dd 46 ff 	ld b,(ix-$01)	ld b,(ix-$00)
22c1	dd 4e fe 	ld c,(ix-$02)	ld c,(ix-$00)
22c4	c5 	push bc	push bc
22c5	d5 	push de	push de
22c6	e5 	push hl	push hl
22c7	dd e5 	push ix	push ix
22c9	fd e5 	push iy	push iy
22cb	50 	ld d,b	ld d,b
22cc	59 	ld e,c	ld e,c
22cd	f5 	push af	push af
22ce	cd f8 1f 	call $1ff8	call $0000
22d1	f1 	pop af	pop af
22d2	d5 	push de	push de
22d3	c5 	push bc	push bc
22d4	e5 	push hl	push hl
22d5	d9 	exx	exx
22d6	e5 	push hl	push hl
22d7	d9 	exx	exx
22d8	cd 25 19 	call $1925	call $0000
22db	dd e5 	push ix	push ix
22dd	fd e3 	ex (sp),iy	ex (sp),iy
22df	dd e1 	pop ix	pop ix
22e1	cd e7 19 	call $19e7	call $0000
22e4	dd e5 	push ix	push ix
22e6	fd e3 	ex (sp),iy	ex (sp),iy
22e8	dd e1 	pop ix	pop ix
22ea	f5 	push af	push af
22eb	3e 0a 	ld a,$0a	ld a,$00
22ed	cd 15 45 	call $4515	call $0000
22f0	da 44 3f 	jp c,$3f44	jp c,$0000
22f3	f1 	pop af	pop af
22f4	d9 	exx	exx
22f5	eb 	ex de,hl	ex de,hl
22f6	e1 	pop hl	pop hl
22f7	d9 	exx	exx
22f8	eb 	ex de,hl	ex de,hl
22f9	e1 	pop hl	pop hl
22fa	08 	ex af,af'	ex af,af'
22fb	79 	ld a,c	ld a,c
22fc	c1 	pop bc	pop bc
22fd	47 	ld b,a	ld b,a
22fe	08 	ex af,af'	ex af,af'
22ff	f5 	push af	push af
2300	3e 0b 	ld a,$0b	ld a,$00
2302	cd 15 45 	call $4515	call $0000
2305	da 44 3f 	jp c,$3f44	jp c,$0000
2308	f1 	pop af	pop af
2309	d1 	pop de	pop de
230a	d9 	exx	exx
230b	4f 	ld c,a	ld c,a
230c	06 00 	ld b,$00	ld b,$00
230e	dd 09 	add ix,bc	add ix,bc
2310	d1 	pop de	pop de
2311	c1 	pop bc	pop bc
2312	e3 	ex (sp),hl	ex (sp),hl
2313	eb 	ex de,hl	ex de,hl
2314	fd 19 	add iy,de	add iy,de
2316	eb 	ex de,hl	ex de,hl
2317	e3 	ex (sp),hl	ex (sp),hl
2318	c5 	push bc	push bc
2319	d5 	push de	push de
231a	d9 	exx	exx
231b	1b 	dec de	dec de
231c	1c 	inc e	inc e
231d	1d 	dec e	dec e
231e	20 b2 	jr nz,$-$4c	jr nz,$-$00
2320	14 	inc d	inc d
2321	15 	dec d	dec d
2322	20 ae 	jr nz,$-$50	jr nz,$-$00
2324	fd e1 	pop iy	pop iy
2326	dd e1 	pop ix	pop ix
2328	d9 	exx	exx
2329	08 	ex af,af'	ex af,af'
232a	f1 	pop af	pop af
232b	c1 	pop bc	pop bc
232c	d1 	pop de	pop de
232d	dd e3 	ex (sp),ix	ex (sp),ix
232f	d5 	push de	push de
2330	c5 	push bc	push bc
2331	f5 	push af	push af
2332	08 	ex af,af'	ex af,af'
2333	d9 	exx	exx
2334	f5 	push af	push af
2335	d5 	push de	push de
2336	cd f0 31 	call $31f0	call $0000
2339	d1 	pop de	pop de
233a	f1 	pop af	pop af
233b	4f 	ld c,a	ld c,a
233c	06 00 	ld b,$00	ld b,$00
233e	dd 09 	add ix,bc	add ix,bc
2340	d9 	exx	exx
2341	08 	ex af,af'	ex af,af'
2342	f1 	pop af	pop af
2343	c1 	pop bc	pop bc
2344	d1 	pop de	pop de
2345	dd e3 	ex (sp),ix	ex (sp),ix
2347	d5 	push de	push de
2348	c5 	push bc	push bc
2349	f5 	push af	push af
234a	08 	ex af,af'	ex af,af'
234b	d9 	exx	exx
234c	e1 	pop hl	pop hl
234d	d1 	pop de	pop de
234e	c1 	pop bc	pop bc
234f	1b 	dec de	dec de
2350	c5 	push bc	push bc
2351	d5 	push de	push de
2352	e5 	push hl	push hl
2353	4f 	ld c,a	ld c,a
2354	06 00 	ld b,$00	ld b,$00
2356	fd 09 	add iy,bc	add iy,bc
2358	f5 	push af	push af
2359	e5 	push hl	push hl
235a	cd ad 36 	call $36ad	call $0000
235d	c1 	pop bc	pop bc
235e	cd 90 23 	call $2390	call $0000
2361	f1 	pop af	pop af
2362	b7 	or a	or a
2363	01 00 00 	ld bc,$0000	ld bc,$0000
2366	ed 42 	sbc hl,bc	sbc hl,bc
2368	e1 	pop hl	pop hl
2369	d1 	pop de	pop de
236a	c1 	pop bc	pop bc
236b	20 15 	jr nz,$+$17	jr nz,$+$00
236d	d5 	push de	push de
236e	e5 	push hl	push hl
236f	eb 	ex de,hl	ex de,hl
2370	fd e5 	push iy	push iy
2372	e1 	pop hl	pop hl
2373	b7 	or a	or a
2374	ed 52 	sbc hl,de	sbc hl,de
2376	e5 	push hl	push hl
2377	fd e1 	pop iy	pop iy
2379	50 	ld d,b	ld d,b
237a	59 	ld e,c	ld e,c
237b	cd ad 36 	call $36ad	call $0000
237e	dd 19 	add ix,de	add ix,de
2380	e1 	pop hl	pop hl
2381	d1 	pop de	pop de
2382	1c 	inc e	inc e
2383	1d 	dec e	dec e
2384	c2 c4 22 	jp nz,$22c4	jp nz,$0000
2387	14 	inc d	inc d
2388	15 	dec d	dec d
2389	c2 c4 22 	jp nz,$22c4	jp nz,$0000
238c	e1 	pop hl	pop hl
238d	fd e1 	pop iy	pop iy
238f	c9 	ret	ret
2390	af 	xor a	xor a
2391	67 	ld h,a	ld h,a
2392	6f 	ld l,a	ld l,a
2393	3e 11 	ld a,$11	ld a,$00
2395	ed 42 	sbc hl,bc	sbc hl,bc
2397	30 01 	jr nc,$+$03	jr nc,$+$00
2399	09 	add hl,bc	add hl,bc
239a	3f 	ccf	ccf
239b	cb 13 	rl e	rl e
239d	cb 12 	rl d	rl d
239f	3d 	dec a	dec a
23a0	c8 	ret z	ret z
23a1	ed 6a 	adc hl,hl	adc hl,hl
23a3	18 f0 	jr $-$0e	jr $-$00
23a5	77 	ld (hl),a	ld (hl),a
23a6	30 8b 	jr nc,$-$73	jr nc,$-$00
23a8	30 81 	jr nc,$-$7d	jr nc,$-$00
23aa	30 e0 	jr nc,$-$1e	jr nc,$-$00
23ac	25 	dec h	dec h
23ad	e0 	ret po	ret po
23ae	25 	dec h	dec h
23af	e0 	ret po	ret po
23b0	25 	dec h	dec h
23b1	e0 	ret po	ret po
23b2	25 	dec h	dec h
23b3	26 2e 	ld h,$2e	ld h,$00
23b5	57 	ld d,a	ld d,a
23b6	2d 	dec l	dec l
23b7	e0 	ret po	ret po
23b8	25 	dec h	dec h
23b9	e0 	ret po	ret po
23ba	25 	dec h	dec h
23bb	99 	sbc a,c	sbc a,c
23bc	24 	inc h	inc h
23bd	e0 	ret po	ret po
23be	25 	dec h	dec h
23bf	99 	sbc a,c	sbc a,c
23c0	24 	inc h	inc h
23c1	43 	ld b,e	ld b,e
23c2	2e 01 	ld l,$01	ld l,$00
23c4	2f 	cpl	cpl
23c5	15 	dec d	dec d
23c6	2f 	cpl	cpl
23c7	23 	inc hl	inc hl
23c8	2f 	cpl	cpl
23c9	42 	ld b,d	ld b,d
23ca	2f 	cpl	cpl
23cb	54 	ld d,h	ld d,h
23cc	2f 	cpl	cpl
23cd	9d 	sbc a,l	sbc a,l
23ce	02 	ld (bc),a	ld (bc),a
23cf	d3 2f 	out ($2f),a	out ($00),a
23d1	0c 	inc c	inc c
23d2	30 4c 	jr nc,$+$4e	jr nc,$+$00
23d4	24 	inc h	inc h
23d5	96 	sub (hl)	sub (hl)
23d6	2e cb 	ld l,$cb	ld l,$00
23d8	2f 	cpl	cpl
23d9	e1 	pop hl	pop hl
23da	02 	ld (bc),a	ld (bc),a
23db	75 	ld (hl),l	ld (hl),l
23dc	2e 31 	ld l,$31	ld l,$00
23de	25 	dec h	dec h
23df	31 25 3e 	ld sp,$3e25	ld sp,$0000
23e2	26 e8 	ld h,$e8	ld h,$00
23e4	03 	inc bc	inc bc
23e5	d3 24 	out ($24),a	out ($00),a
23e7	7d 	ld a,l	ld a,l
23e8	2b 	dec hl	dec hl
23e9	6f 	ld l,a	ld l,a
23ea	02 	ld (bc),a	ld (bc),a
23eb	14 	inc d	inc d
23ec	29 	add hl,hl	add hl,hl
23ed	cb 28 	sra b	sra b
23ef	b4 	or h	or h
23f0	28 39 	jr z,$+$3b	jr z,$+$00
23f2	03 	inc bc	inc bc
23f3	c9 	ret	ret
23f4	2c 	inc l	inc l
23f5	e2 2b a1 	jp po,$a12b	jp po,$0000
23f8	25 	dec h	dec h
23f9	13 	inc de	inc de
23fa	2b 	dec hl	dec hl
23fb	d1 	pop de	pop de
23fc	02 	ld (bc),a	ld (bc),a
23fd	e4 03 61 	call po,$6103	call po,$0000
2400	29 	add hl,hl	add hl,hl
2401	3a 28 9c 	ld a,($9c28)	ld a,($0000)
2404	2f 	cpl	cpl
2405	f0 	ret p	ret p
2406	03 	inc bc	inc bc
2407	46 	ld b,(hl)	ld b,(hl)
2408	27 	daa	daa
2409	e7 	rst $20	rst $00
240a	29 	add hl,hl	add hl,hl
240b	80 	add a,b	add a,b
240c	2c 	inc l	inc l
240d	31 25 e5 	ld sp,$e525	ld sp,$0000
2410	28 91 	jr z,$-$6d	jr z,$-$00
2412	2e bc 	ld l,$bc	ld l,$00
2414	2e d6 	ld l,$d6	ld l,$00
2416	28 47 	jr z,$+$49	jr z,$+$00
2418	24 	inc h	inc h
2419	7e 	ld a,(hl)	ld a,(hl)
241a	2e f9 	ld l,$f9	ld l,$00
241c	02 	ld (bc),a	ld (bc),a
241d	83 	add a,e	add a,e
241e	2f 	cpl	cpl
241f	ed 28 79 	in0 l,($79)	in0 l,($00)
2422	2f 	cpl	cpl
2423	08 	ex af,af'	ex af,af'
2424	25 	dec h	dec h
2425	31 25 87 	ld sp,$8725	ld sp,$0000
2428	03 	inc bc	inc bc
2429	b3 	or e	or e
242a	03 	inc bc	inc bc
242b	ec 03 a6 	call pe,$a603	call pe,$0000
242e	04 	inc b	inc b
242f	e8 	ret pe	ret pe
2430	02 	ld (bc),a	ld (bc),a
2431	10 16 	djnz $+$18	djnz $+$00
2433	25 	dec h	dec h
2434	04 	inc b	inc b
2435	5e 	ld e,(hl)	ld e,(hl)
2436	25 	dec h	dec h
2437	7d 	ld a,l	ld a,l
2438	05 	dec b	dec b
2439	7d 	ld a,l	ld a,l
243a	05 	dec b	dec b
243b	e5 	push hl	push hl
243c	04 	inc b	inc b
243d	e0 	ret po	ret po
243e	25 	dec h	dec h
243f	31 25 9d 	ld sp,$9d25	ld sp,$0000
2442	31 e0 25 	ld sp,$25e0	ld sp,$0000
2445	23 	inc hl	inc hl
2446	31 cd 36 	ld sp,$36cd	ld sp,$0000
2449	35 	dec (hl)	dec (hl)
244a	28 0d 	jr z,$+$0f	jr z,$+$00
244c	cd 3c 18 	call $183c	call $0000
244f	3e 0d 	ld a,$0d	ld a,$00
2451	12 	ld (de),a	ld (de),a
2452	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
2456	cd 00 40 	call $4000	call $0000
2459	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
245d	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
2461	ed 5f 	ld a,r	ld a,r
2463	28 fc 	jr z,$-$02	jr z,$-$00
2465	07 	rlca	rlca
2466	07 	rlca	rlca
2467	dd 77 03 	ld (ix+$03),a	ld (ix+$00),a
246a	9f 	sbc a,a	sbc a,a
246b	dd 77 04 	ld (ix+$04),a	ld (ix+$00),a
246e	cd 43 40 	call $4043	call $0000
2471	21 00 00 	ld hl,$0000	ld hl,$0000
2474	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
2477	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
247a	cd f9 35 	call $35f9	call $0000
247d	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2480	fd 2a dc 54 	ld iy,($54dc)	ld iy,($0000)
2484	cd db 24 	call $24db	call $0000
2487	fd 7e 00 	ld a,(iy)	ld a,(iy)
248a	fe 8b 	cp $8b	cp $00
248c	ca 30 2d 	jp z,$2d30	jp z,$0000
248f	fe c9 	cp $c9	cp $00
2491	ca 43 2d 	jp z,$2d43	jp z,$0000
2494	fe cc 	cp $cc	cp $00
2496	ca 43 2d 	jp z,$2d43	jp z,$0000
2499	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
249d	cd 17 12 	call $1217	call $0000
24a0	cd 0b 45 	call $450b	call $0000
24a3	fd 23 	inc iy	inc iy
24a5	fe 3a 	cp $3a	cp $00
24a7	28 f7 	jr z,$-$07	jr z,$-$00
24a9	fe 0d 	cp $0d	cp $00
24ab	28 d7 	jr z,$-$27	jr z,$-$00
24ad	fe 98 	cp $98	cp $00
24af	ea 93 25 	jp pe,$2593	jp pe,$0000
24b2	d6 c7 	sub $c7	sub $00
24b4	fa 16 25 	jp m,$2516	jp m,$0000
24b7	87 	add a,a	add a,a
24b8	4f 	ld c,a	ld c,a
24b9	06 00 	ld b,$00	ld b,$00
24bb	21 a5 23 	ld hl,$23a5	ld hl,$0000
24be	09 	add hl,bc	add hl,bc
24bf	7e 	ld a,(hl)	ld a,(hl)
24c0	23 	inc hl	inc hl
24c1	66 	ld h,(hl)	ld h,(hl)
24c2	6f 	ld l,a	ld l,a
24c3	cd 0b 45 	call $450b	call $0000
24c6	e9 	jp (hl)	jp (hl)
24c7	fd e5 	push iy	push iy
24c9	e1 	pop hl	pop hl
24ca	ed 4b dc 54 	ld bc,($54dc)	ld bc,($0000)
24ce	ed 42 	sbc hl,bc	sbc hl,bc
24d0	da b0 37 	jp c,$37b0	jp c,$0000
24d3	1e 00 	ld e,$00	ld e,$00
24d5	cd 37 12 	call $1237	call $0000
24d8	c3 af 37 	jp $37af	jp $0000
24db	fd 7e 00 	ld a,(iy)	ld a,(iy)
24de	01 03 00 	ld bc,$0003	ld bc,$0000
24e1	fd 09 	add iy,bc	add iy,bc
24e3	b7 	or a	or a
24e4	28 e1 	jr z,$-$1d	jr z,$-$00
24e6	2a e6 54 	ld hl,($54e6)	ld hl,($0000)
24e9	7c 	ld a,h	ld a,h
24ea	b5 	or l	or l
24eb	c8 	ret z	ret z
24ec	fd 56 ff 	ld d,(iy-$01)	ld d,(iy-$00)
24ef	fd 5e fe 	ld e,(iy-$02)	ld e,(iy-$00)
24f2	ed 52 	sbc hl,de	sbc hl,de
24f4	d8 	ret c	ret c
24f5	eb 	ex de,hl	ex de,hl
24f6	3e 5b 	ld a,$5b	ld a,$00
24f8	cd 02 41 	call $4102	call $0000
24fb	cd 92 41 	call $4192	call $0000
24fe	3e 5d 	ld a,$5d	ld a,$00
2500	cd 02 41 	call $4102	call $0000
2503	3e 20 	ld a,$20	ld a,$00
2505	c3 02 41 	jp $4102	jp $0000
2508	cd 3c 18 	call $183c	call $0000
250b	3e 0d 	ld a,$0d	ld a,$00
250d	12 	ld (de),a	ld (de),a
250e	21 00 52 	ld hl,$5200	ld hl,$0000
2511	cd 97 15 	call $1597	call $0000
2514	18 83 	jr $-$7b	jr $-$00
2516	fe c4 	cp $c4	cp $00
2518	28 17 	jr z,$+$19	jr z,$+$00
251a	fe be 	cp $be	cp $00
251c	28 21 	jr z,$+$23	jr z,$+$00
251e	fe bf 	cp $bf	cp $00
2520	ca 71 03 	jp z,$0371	jp z,$0000
2523	fe c0 	cp $c0	cp $00
2525	ca 5a 03 	jp z,$035a	jp z,$0000
2528	c3 e0 25 	jp $25e0	jp $0000
252b	fd e5 	push iy	push iy
252d	e1 	pop hl	pop hl
252e	cd 97 15 	call $1597	call $0000
2531	fd e5 	push iy	push iy
2533	e1 	pop hl	pop hl
2534	3e 0d 	ld a,$0d	ld a,$00
2536	47 	ld b,a	ld b,a
2537	ed b1 	cpir	cpir
2539	e5 	push hl	push hl
253a	fd e1 	pop iy	pop iy
253c	c3 84 24 	jp $2484	jp $0000
253f	cd 33 18 	call $1833	call $0000
2542	d9 	exx	exx
2543	e5 	push hl	push hl
2544	d9 	exx	exx
2545	cd a2 20 	call $20a2	call $0000
2548	cd 3c 18 	call $183c	call $0000
254b	e1 	pop hl	pop hl
254c	af 	xor a	xor a
254d	12 	ld (de),a	ld (de),a
254e	7d 	ld a,l	ld a,l
254f	21 00 52 	ld hl,$5200	ld hl,$0000
2552	11 00 53 	ld de,$5300	ld de,$0000
2555	d5 	push de	push de
2556	01 00 01 	ld bc,$0100	ld bc,$0000
2559	ed b0 	ldir	ldir
255b	c3 55 3f 	jp $3f55	jp $0000
255e	cd e3 41 	call $41e3	call $0000
2561	20 0b 	jr nz,$+$0d	jr nz,$+$00
2563	f5 	push af	push af
2564	e5 	push hl	push hl
2565	cd a2 20 	call $20a2	call $0000
2568	cd 0b 45 	call $450b	call $0000
256b	cd e3 41 	call $41e3	call $0000
256e	20 6d 	jr nz,$+$6f	jr nz,$+$00
2570	d1 	pop de	pop de
2571	c1 	pop bc	pop bc
2572	b8 	cp b	cp b
2573	20 74 	jr nz,$+$76	jr nz,$+$00
2575	e6 0f 	and $0f	and $00
2577	28 70 	jr z,$+$72	jr z,$+$00
2579	78 	ld a,b	ld a,b
257a	e6 c0 	and $c0	and $00
257c	28 0a 	jr z,$+$0c	jr z,$+$00
257e	06 02 	ld b,$02	ld b,$00
2580	f2 88 25 	jp p,$2588	jp p,$0000
2583	ea 88 25 	jp pe,$2588	jp pe,$0000
2586	06 04 	ld b,$04	ld b,$00
2588	4e 	ld c,(hl)	ld c,(hl)
2589	1a 	ld a,(de)	ld a,(de)
258a	77 	ld (hl),a	ld (hl),a
258b	79 	ld a,c	ld a,c
258c	12 	ld (de),a	ld (de),a
258d	13 	inc de	inc de
258e	23 	inc hl	inc hl
258f	10 f7 	djnz $-$07	djnz $-$00
2591	18 28 	jr $+$2a	jr $+$00
2593	fe 2a 	cp $2a	cp $00
2595	28 94 	jr z,$-$6a	jr z,$-$00
2597	fe 3d 	cp $3d	cp $00
2599	28 71 	jr z,$+$73	jr z,$+$00
259b	fe 5b 	cp $5b	cp $00
259d	28 52 	jr z,$+$54	jr z,$+$00
259f	fd 2b 	dec iy	dec iy
25a1	cd af 31 	call $31af	call $0000
25a4	ca 99 24 	jp z,$2499	jp z,$0000
25a7	38 37 	jr c,$+$39	jr c,$+$00
25a9	f2 fb 20 	jp p,$20fb	jp p,$0000
25ac	ea fb 20 	jp pe,$20fb	jp pe,$0000
25af	7a 	ld a,d	ld a,d
25b0	d5 	push de	push de
25b1	e5 	push hl	push hl
25b2	cd 3c 18 	call $183c	call $0000
25b5	dd e1 	pop ix	pop ix
25b7	e1 	pop hl	pop hl
25b8	cd 18 32 	call $3218	call $0000
25bb	c3 99 24 	jp $2499	jp $0000
25be	cd e3 41 	call $41e3	call $0000
25c1	20 1a 	jr nz,$+$1c	jr nz,$+$00
25c3	47 	ld b,a	ld b,a
25c4	e6 c0 	and $c0	and $00
25c6	f2 e9 25 	jp p,$25e9	jp p,$0000
25c9	ea e6 25 	jp pe,$25e6	jp pe,$0000
25cc	cb 40 	bit 0,b	bit 0,b
25ce	28 19 	jr z,$+$1b	jr z,$+$00
25d0	cd 0b 45 	call $450b	call $0000
25d3	fe 2c 	cp $2c	cp $00
25d5	c9 	ret	ret
25d6	cd e3 41 	call $41e3	call $0000
25d9	c8 	ret z	ret z
25da	d2 cd 41 	jp nc,$41cd	jp nc,$0000
25dd	3e 1a 	ld a,$1a	ld a,$00
25df	21 3e 10 	ld hl,$103e	ld hl,$0000
25e2	21 3e 11 	ld hl,$113e	ld hl,$0000
25e5	21 3e 0e 	ld hl,$0e3e	ld hl,$0000
25e8	21 3e 06 	ld hl,$063e	ld hl,$0000
25eb	c3 44 3f 	jp $3f44	jp $0000
25ee	cd db 24 	call $24db	call $0000
25f1	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
25f5	cd 17 12 	call $1217	call $0000
25f8	cd 87 05 	call $0587	call $0000
25fb	38 e3 	jr c,$-$1b	jr c,$-$00
25fd	fe 0d 	cp $0d	cp $00
25ff	28 ed 	jr z,$-$11	jr z,$-$00
2601	21 fe 54 	ld hl,$54fe	ld hl,$0000
2604	7e 	ld a,(hl)	ld a,(hl)
2605	e6 0f 	and $0f	and $00
2607	f6 30 	or $30	or $00
2609	77 	ld (hl),a	ld (hl),a
260a	18 af 	jr $-$4f	jr $-$00
260c	cd 02 17 	call $1702	call $0000
260f	08 	ex af,af'	ex af,af'
2610	87 	add a,a	add a,a
2611	7b 	ld a,e	ld a,e
2612	38 01 	jr c,$+$03	jr c,$+$00
2614	79 	ld a,c	ld a,c
2615	08 	ex af,af'	ex af,af'
2616	e5 	push hl	push hl
2617	d9 	exx	exx
2618	c1 	pop bc	pop bc
2619	eb 	ex de,hl	ex de,hl
261a	d9 	exx	exx
261b	c1 	pop bc	pop bc
261c	21 e7 29 	ld hl,$29e7	ld hl,$0000
261f	af 	xor a	xor a
2620	ed 42 	sbc hl,bc	sbc hl,bc
2622	28 0a 	jr z,$+$0c	jr z,$+$00
2624	c5 	push bc	push bc
2625	cd 31 34 	call $3431	call $0000
2628	20 f1 	jr nz,$-$0d	jr nz,$-$00
262a	3e 07 	ld a,$07	ld a,$00
262c	18 bd 	jr $-$41	jr $-$00
262e	fd e1 	pop iy	pop iy
2630	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
2634	d9 	exx	exx
2635	eb 	ex de,hl	ex de,hl
2636	c5 	push bc	push bc
2637	d9 	exx	exx
2638	e1 	pop hl	pop hl
2639	08 	ex af,af'	ex af,af'
263a	5f 	ld e,a	ld e,a
263b	4f 	ld c,a	ld c,a
263c	1f 	rra	rra
263d	c9 	ret	ret
263e	fd e5 	push iy	push iy
2640	fe 21 	cp $21	cp $00
2642	ca 0f 27 	jp z,$270f	jp z,$0000
2645	cd b0 42 	call $42b0	call $0000
2648	da f9 26 	jp c,$26f9	jp c,$0000
264b	c4 3c 43 	call nz,$433c	call nz,$0000
264e	fd 7e 00 	ld a,(iy)	ld a,(iy)
2651	fe 28 	cp $28	cp $00
2653	c2 0f 27 	jp nz,$270f	jp nz,$0000
2656	e5 	push hl	push hl
2657	dd e1 	pop ix	pop ix
2659	7e 	ld a,(hl)	ld a,(hl)
265a	e6 fe 	and $fe	and $00
265c	23 	inc hl	inc hl
265d	b6 	or (hl)	or (hl)
265e	c2 0f 27 	jp nz,$270f	jp nz,$0000
2661	c1 	pop bc	pop bc
2662	7a 	ld a,d	ld a,d
2663	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
2666	e5 	push hl	push hl
2667	dd e3 	ex (sp),ix	ex (sp),ix
2669	e5 	push hl	push hl
266a	f5 	push af	push af
266b	11 01 00 	ld de,$0001	ld de,$0000
266e	42 	ld b,d	ld b,d
266f	fd 23 	inc iy	inc iy
2671	c5 	push bc	push bc
2672	d5 	push de	push de
2673	dd e5 	push ix	push ix
2675	cd 33 18 	call $1833	call $0000
2678	cb 7c 	bit 7,h	bit 7,h
267a	20 7d 	jr nz,$+$7f	jr nz,$+$00
267c	d9 	exx	exx
267d	23 	inc hl	inc hl
267e	dd e1 	pop ix	pop ix
2680	dd 23 	inc ix	inc ix
2682	dd 75 00 	ld (ix),l	ld (ix),l
2685	dd 23 	inc ix	inc ix
2687	dd 74 00 	ld (ix),h	ld (ix),h
268a	c1 	pop bc	pop bc
268b	cd bd 36 	call $36bd	call $0000
268e	38 6c 	jr c,$+$6e	jr c,$+$00
2690	eb 	ex de,hl	ex de,hl
2691	c1 	pop bc	pop bc
2692	04 	inc b	inc b
2693	fd 7e 00 	ld a,(iy)	ld a,(iy)
2696	fe 2c 	cp $2c	cp $00
2698	28 d5 	jr z,$-$29	jr z,$-$00
269a	dd 23 	inc ix	inc ix
269c	cd ae 20 	call $20ae	call $0000
269f	f1 	pop af	pop af
26a0	cd ad 36 	call $36ad	call $0000
26a3	38 57 	jr c,$+$59	jr c,$+$00
26a5	e1 	pop hl	pop hl
26a6	70 	ld (hl),b	ld (hl),b
26a7	dd e3 	ex (sp),ix	ex (sp),ix
26a9	e1 	pop hl	pop hl
26aa	e6 80 	and $80	and $00
26ac	dd b6 00 	or (ix)	or (ix)
26af	e5 	push hl	push hl
26b0	24 	inc h	inc h
26b1	19 	add hl,de	add hl,de
26b2	38 48 	jr c,$+$4a	jr c,$+$00
26b4	ed 72 	sbc hl,sp	sbc hl,sp
26b6	30 44 	jr nc,$+$46	jr nc,$+$00
26b8	e1 	pop hl	pop hl
26b9	e5 	push hl	push hl
26ba	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
26be	b7 	or a	or a
26bf	ed 42 	sbc hl,bc	sbc hl,bc
26c1	44 	ld b,h	ld b,h
26c2	4d 	ld c,l	ld c,l
26c3	e1 	pop hl	pop hl
26c4	ed 42 	sbc hl,bc	sbc hl,bc
26c6	cb 47 	bit 0,a	bit 0,a
26c8	28 12 	jr z,$+$14	jr z,$+$00
26ca	21 00 00 	ld hl,$0000	ld hl,$0000
26cd	ed 52 	sbc hl,de	sbc hl,de
26cf	b7 	or a	or a
26d0	ed 42 	sbc hl,bc	sbc hl,bc
26d2	39 	add hl,sp	add hl,sp
26d3	28 07 	jr z,$+$09	jr z,$+$00
26d5	f9 	ld sp,hl	ld sp,hl
26d6	d5 	push de	push de
26d7	c5 	push bc	push bc
26d8	f5 	push af	push af
26d9	cd dc 26 	call $26dc	call $0000
26dc	dd 75 00 	ld (ix),l	ld (ix),l
26df	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
26e2	78 	ld a,b	ld a,b
26e3	b1 	or c	or c
26e4	28 09 	jr z,$+$0b	jr z,$+$00
26e6	d5 	push de	push de
26e7	eb 	ex de,hl	ex de,hl
26e8	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
26eb	ed b0 	ldir	ldir
26ed	eb 	ex de,hl	ex de,hl
26ee	d1 	pop de	pop de
26ef	7a 	ld a,d	ld a,d
26f0	b3 	or e	or e
26f1	28 0e 	jr z,$+$10	jr z,$+$00
26f3	36 00 	ld (hl),$00	ld (hl),$00
26f5	23 	inc hl	inc hl
26f6	1b 	dec de	dec de
26f7	18 f6 	jr $-$08	jr $-$00
26f9	3e 0a 	ld a,$0a	ld a,$00
26fb	21 3e 0b 	ld hl,$0b3e	ld hl,$0000
26fe	c3 44 3f 	jp $3f44	jp $0000
2701	ed 72 	sbc hl,sp	sbc hl,sp
2703	30 04 	jr nc,$+$06	jr nc,$+$00
2705	39 	add hl,sp	add hl,sp
2706	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
2709	cd 00 45 	call $4500	call $0000
270c	c3 3e 26 	jp $263e	jp $0000
270f	fd e1 	pop iy	pop iy
2711	cd d6 25 	call $25d6	call $0000
2714	b7 	or a	or a
2715	28 e2 	jr z,$-$1c	jr z,$-$00
2717	fa f9 26 	jp m,$26f9	jp m,$0000
271a	cb 77 	bit 6,a	bit 6,a
271c	20 db 	jr nz,$-$23	jr nz,$-$00
271e	47 	ld b,a	ld b,a
271f	cd 0b 45 	call $450b	call $0000
2722	fe ea 	cp $ea	cp $00
2724	3e 00 	ld a,$00	ld a,$00
2726	20 03 	jr nz,$+$05	jr nz,$+$00
2728	fd 23 	inc iy	inc iy
272a	3c 	inc a	inc a
272b	f5 	push af	push af
272c	78 	ld a,b	ld a,b
272d	d9 	exx	exx
272e	21 00 00 	ld hl,$0000	ld hl,$0000
2731	4c 	ld c,h	ld c,h
2732	cd f0 31 	call $31f0	call $0000
2735	dd e5 	push ix	push ix
2737	cd 33 18 	call $1833	call $0000
273a	dd e1 	pop ix	pop ix
273c	d9 	exx	exx
273d	23 	inc hl	inc hl
273e	eb 	ex de,hl	ex de,hl
273f	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
2742	f1 	pop af	pop af
2743	c3 af 26 	jp $26af	jp $0000
2746	fe 23 	cp $23	cp $00
2748	20 64 	jr nz,$+$66	jr nz,$+$00
274a	cd db 36 	call $36db	call $0000
274d	cd 00 45 	call $4500	call $0000
2750	d5 	push de	push de
2751	cd 02 17 	call $1702	call $0000
2754	08 	ex af,af'	ex af,af'
2755	fa 75 27 	jp m,$2775	jp m,$0000
2758	d1 	pop de	pop de
2759	c5 	push bc	push bc
275a	d9 	exx	exx
275b	7d 	ld a,l	ld a,l
275c	d9 	exx	exx
275d	cd 47 12 	call $1247	call $0000
2760	d9 	exx	exx
2761	7c 	ld a,h	ld a,h
2762	d9 	exx	exx
2763	cd 47 12 	call $1247	call $0000
2766	7d 	ld a,l	ld a,l
2767	cd 47 12 	call $1247	call $0000
276a	7c 	ld a,h	ld a,h
276b	cd 47 12 	call $1247	call $0000
276e	c1 	pop bc	pop bc
276f	79 	ld a,c	ld a,c
2770	cd 47 12 	call $1247	call $0000
2773	18 d8 	jr $-$26	jr $-$00
2775	4b 	ld c,e	ld c,e
2776	d1 	pop de	pop de
2777	21 00 52 	ld hl,$5200	ld hl,$0000
277a	0c 	inc c	inc c
277b	0d 	dec c	dec c
277c	28 09 	jr z,$+$0b	jr z,$+$00
277e	7e 	ld a,(hl)	ld a,(hl)
277f	23 	inc hl	inc hl
2780	c5 	push bc	push bc
2781	cd 47 12 	call $1247	call $0000
2784	c1 	pop bc	pop bc
2785	18 f4 	jr $-$0a	jr $-$00
2787	3e 0d 	ld a,$0d	ld a,$00
2789	cd 47 12 	call $1247	call $0000
278c	18 bf 	jr $-$3f	jr $-$00
278e	06 02 	ld b,$02	ld b,$00
2790	18 22 	jr $+$24	jr $+$00
2792	01 00 01 	ld bc,$0100	ld bc,$0000
2795	18 1d 	jr $+$1f	jr $+$00
2797	21 00 54 	ld hl,$5400	ld hl,$0000
279a	af 	xor a	xor a
279b	be 	cp (hl)	cp (hl)
279c	28 10 	jr z,$+$12	jr z,$+$00
279e	3a fb 54 	ld a,($54fb)	ld a,($0000)
27a1	b7 	or a	or a
27a2	28 0a 	jr z,$+$0c	jr z,$+$00
27a4	96 	sub (hl)	sub (hl)
27a5	28 07 	jr z,$+$09	jr z,$+$00
27a7	30 fb 	jr nc,$-$03	jr nc,$-$00
27a9	ed 44 	neg	neg
27ab	cd a3 35 	call $35a3	call $0000
27ae	3a 00 54 	ld a,($5400)	ld a,($0000)
27b1	4f 	ld c,a	ld c,a
27b2	06 00 	ld b,$00	ld b,$00
27b4	cd 36 35 	call $3536	call $0000
27b7	28 38 	jr z,$+$3a	jr z,$+$00
27b9	cb 80 	res 0,b	res 0,b
27bb	fd 23 	inc iy	inc iy
27bd	fe 7e 	cp $7e	cp $00
27bf	28 cd 	jr z,$-$31	jr z,$-$00
27c1	fe 3b 	cp $3b	cp $00
27c3	28 cd 	jr z,$-$31	jr z,$-$00
27c5	fe 2c 	cp $2c	cp $00
27c7	28 ce 	jr z,$-$30	jr z,$-$00
27c9	cd 5c 35 	call $355c	call $0000
27cc	28 e6 	jr z,$-$18	jr z,$-$00
27ce	fd 2b 	dec iy	dec iy
27d0	c5 	push bc	push bc
27d1	cd 02 17 	call $1702	call $0000
27d4	08 	ex af,af'	ex af,af'
27d5	fa eb 27 	jp m,$27eb	jp m,$0000
27d8	d1 	pop de	pop de
27d9	d5 	push de	push de
27da	cb 4a 	bit 1,d	bit 1,d
27dc	f5 	push af	push af
27dd	cc d0 1f 	call z,$1fd0	call z,$0000
27e0	f1 	pop af	pop af
27e1	c4 8d 1f 	call nz,$1f8d	call nz,$0000
27e4	c1 	pop bc	pop bc
27e5	c5 	push bc	push bc
27e6	79 	ld a,c	ld a,c
27e7	93 	sub e	sub e
27e8	d4 a3 35 	call nc,$35a3	call nc,$0000
27eb	c1 	pop bc	pop bc
27ec	cd b1 35 	call $35b1	call $0000
27ef	18 c3 	jr $-$3b	jr $-$00
27f1	cb 40 	bit 0,b	bit 0,b
27f3	cc fb 40 	call z,$40fb	call z,$0000
27f6	18 3f 	jr $+$41	jr $+$00
27f8	fd 23 	inc iy	inc iy
27fa	cd 0b 45 	call $450b	call $0000
27fd	21 00 00 	ld hl,$0000	ld hl,$0000
2800	fe ea 	cp $ea	cp $00
2802	20 1d 	jr nz,$+$1f	jr nz,$+$00
2804	fd 23 	inc iy	inc iy
2806	2a ea 54 	ld hl,($54ea)	ld hl,($0000)
2809	e5 	push hl	push hl
280a	2a ec 54 	ld hl,($54ec)	ld hl,($0000)
280d	e5 	push hl	push hl
280e	21 00 04 	ld hl,$0400	ld hl,$0000
2811	e5 	push hl	push hl
2812	21 ea 54 	ld hl,$54ea	ld hl,$0000
2815	e5 	push hl	push hl
2816	21 2a 35 	ld hl,$352a	ld hl,$0000
2819	e5 	push hl	push hl
281a	21 00 00 	ld hl,$0000	ld hl,$0000
281d	39 	add hl,sp	add hl,sp
281e	cd 0b 45 	call $450b	call $0000
2821	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
2824	fd 22 ea 54 	ld ($54ea),iy	ld ($0000),iy
2828	fe 87 	cp $87	cp $00
282a	c2 31 25 	jp nz,$2531	jp nz,$0000
282d	fd 23 	inc iy	inc iy
282f	ed 62 	sbc hl,hl	sbc hl,hl
2831	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
2834	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
2837	c3 99 24 	jp $2499	jp $0000
283a	cd 36 35 	call $3536	call $0000
283d	ca 56 03 	jp z,$0356	jp z,$0000
2840	fe 85 	cp $85	cp $00
2842	28 b4 	jr z,$-$4a	jr z,$-$00
2844	cd 33 18 	call $1833	call $0000
2847	fd 7e 00 	ld a,(iy)	ld a,(iy)
284a	fd 23 	inc iy	inc iy
284c	1e 2c 	ld e,$2c	ld e,$00
284e	fe e5 	cp $e5	cp $00
2850	28 0b 	jr z,$+$0d	jr z,$+$00
2852	fe e4 	cp $e4	cp $00
2854	28 07 	jr z,$+$09	jr z,$+$00
2856	1e f2 	ld e,$f2	ld e,$00
2858	bb 	cp e	cp e
2859	3e 27 	ld a,$27	ld a,$00
285b	20 4f 	jr nz,$+$51	jr nz,$+$00
285d	57 	ld d,a	ld d,a
285e	d9 	exx	exx
285f	e5 	push hl	push hl
2860	d9 	exx	exx
2861	c1 	pop bc	pop bc
2862	78 	ld a,b	ld a,b
2863	b4 	or h	or h
2864	b5 	or l	or l
2865	20 32 	jr nz,$+$34	jr nz,$+$00
2867	b1 	or c	or c
2868	28 2f 	jr z,$+$31	jr z,$+$00
286a	0d 	dec c	dec c
286b	28 11 	jr z,$+$13	jr z,$+$00
286d	cd 36 35 	call $3536	call $0000
2870	28 27 	jr z,$+$29	jr z,$+$00
2872	fd 23 	inc iy	inc iy
2874	fe 22 	cp $22	cp $00
2876	28 1a 	jr z,$+$1c	jr z,$+$00
2878	bb 	cp e	cp e
2879	20 f2 	jr nz,$-$0c	jr nz,$-$00
287b	0d 	dec c	dec c
287c	20 ef 	jr nz,$-$0f	jr nz,$-$00
287e	7b 	ld a,e	ld a,e
287f	fe f2 	cp $f2	cp $00
2881	28 2c 	jr z,$+$2e	jr z,$+$00
2883	d5 	push de	push de
2884	cd 60 18 	call $1860	call $0000
2887	d1 	pop de	pop de
2888	7a 	ld a,d	ld a,d
2889	fe e5 	cp $e5	cp $00
288b	28 30 	jr z,$+$32	jr z,$+$00
288d	cd 42 35 	call $3542	call $0000
2890	18 3c 	jr $+$3e	jr $+$00
2892	cd 99 36 	call $3699	call $0000
2895	fd 23 	inc iy	inc iy
2897	18 d4 	jr $-$2a	jr $-$00
2899	fd 7e 00 	ld a,(iy)	ld a,(iy)
289c	fd 23 	inc iy	inc iy
289e	fe 8b 	cp $8b	cp $00
28a0	ca e2 2c 	jp z,$2ce2	jp z,$0000
28a3	fe 0d 	cp $0d	cp $00
28a5	20 f2 	jr nz,$-$0c	jr nz,$-$00
28a7	3e 28 	ld a,$28	ld a,$00
28a9	21 3e 22 	ld hl,$223e	ld hl,$0000
28ac	c3 44 3f 	jp $3f44	jp $0000
28af	3e ee 	ld a,$ee	ld a,$00
28b1	c3 e7 29 	jp $29e7	jp $0000
28b4	cd 60 18 	call $1860	call $0000
28b7	cd 36 35 	call $3536	call $0000
28ba	c2 e0 25 	jp nz,$25e0	jp nz,$0000
28bd	d9 	exx	exx
28be	cd 43 41 	call $4143	call $0000
28c1	e5 	push hl	push hl
28c2	fd e1 	pop iy	pop iy
28c4	ca 84 24 	jp z,$2484	jp z,$0000
28c7	3e 29 	ld a,$29	ld a,$00
28c9	18 e1 	jr $-$1d	jr $-$00
28cb	cd 60 18 	call $1860	call $0000
28ce	fd e5 	push iy	push iy
28d0	cd 86 32 	call $3286	call $0000
28d3	cd b7 28 	call $28b7	call $0000
28d6	d1 	pop de	pop de
28d7	21 d6 28 	ld hl,$28d6	ld hl,$0000
28da	b7 	or a	or a
28db	ed 52 	sbc hl,de	sbc hl,de
28dd	fd e1 	pop iy	pop iy
28df	28 30 	jr z,$+$32	jr z,$+$00
28e1	3e 26 	ld a,$26	ld a,$00
28e3	18 c7 	jr $-$37	jr $-$00
28e5	fd e5 	push iy	push iy
28e7	cd 86 32 	call $3286	call $0000
28ea	cd 99 24 	call $2499	call $0000
28ed	c1 	pop bc	pop bc
28ee	c5 	push bc	push bc
28ef	21 ed 28 	ld hl,$28ed	ld hl,$0000
28f2	b7 	or a	or a
28f3	ed 42 	sbc hl,bc	sbc hl,bc
28f5	28 0b 	jr z,$+$0d	jr z,$+$00
28f7	3e 03 	ld a,$03	ld a,$00
28f9	cd 31 34 	call $3431	call $0000
28fc	20 ef 	jr nz,$-$0f	jr nz,$-$00
28fe	3e 2b 	ld a,$2b	ld a,$00
2900	18 aa 	jr $-$54	jr $-$00
2902	cd 33 18 	call $1833	call $0000
2905	cd 59 1f 	call $1f59	call $0000
2908	c1 	pop bc	pop bc
2909	d1 	pop de	pop de
290a	20 05 	jr nz,$+$07	jr nz,$+$00
290c	d5 	push de	push de
290d	c5 	push bc	push bc
290e	d5 	push de	push de
290f	fd e1 	pop iy	pop iy
2911	c3 99 24 	jp $2499	jp $0000
2914	cd af 31 	call $31af	call $0000
2917	20 91 	jr nz,$-$6d	jr nz,$-$00
2919	f5 	push af	push af
291a	fd 7e 00 	ld a,(iy)	ld a,(iy)
291d	fe b8 	cp $b8	cp $00
291f	3e 24 	ld a,$24	ld a,$00
2921	20 89 	jr nz,$-$75	jr nz,$-$00
2923	fd 23 	inc iy	inc iy
2925	dd e5 	push ix	push ix
2927	cd 2c 18 	call $182c	call $0000
292a	dd e1 	pop ix	pop ix
292c	f1 	pop af	pop af
292d	47 	ld b,a	ld b,a
292e	c5 	push bc	push bc
292f	e5 	push hl	push hl
2930	21 00 00 	ld hl,$0000	ld hl,$0000
2933	4c 	ld c,h	ld c,h
2934	d9 	exx	exx
2935	e5 	push hl	push hl
2936	21 01 00 	ld hl,$0001	ld hl,$0000
2939	d9 	exx	exx
293a	fd 7e 00 	ld a,(iy)	ld a,(iy)
293d	fe 88 	cp $88	cp $00
293f	20 09 	jr nz,$+$0b	jr nz,$+$00
2941	fd 23 	inc iy	inc iy
2943	dd e5 	push ix	push ix
2945	cd 2c 18 	call $182c	call $0000
2948	dd e1 	pop ix	pop ix
294a	06 08 	ld b,$08	ld b,$00
294c	cb 7c 	bit 7,h	bit 7,h
294e	20 02 	jr nz,$+$04	jr nz,$+$00
2950	06 0c 	ld b,$0c	ld b,$00
2952	c5 	push bc	push bc
2953	e5 	push hl	push hl
2954	d9 	exx	exx
2955	e5 	push hl	push hl
2956	d9 	exx	exx
2957	fd e5 	push iy	push iy
2959	dd e5 	push ix	push ix
295b	cd 86 32 	call $3286	call $0000
295e	cd 99 24 	call $2499	call $0000
2961	c1 	pop bc	pop bc
2962	21 61 29 	ld hl,$2961	ld hl,$0000
2965	b7 	or a	or a
2966	ed 42 	sbc hl,bc	sbc hl,bc
2968	28 0c 	jr z,$+$0e	jr z,$+$00
296a	c5 	push bc	push bc
296b	3e 03 	ld a,$03	ld a,$00
296d	cd 31 34 	call $3431	call $0000
2970	20 ef 	jr nz,$-$0f	jr nz,$-$00
2972	3e 20 	ld a,$20	ld a,$00
2974	18 6a 	jr $+$6c	jr $+$00
2976	cd 36 35 	call $3536	call $0000
2979	e1 	pop hl	pop hl
297a	e5 	push hl	push hl
297b	c5 	push bc	push bc
297c	e5 	push hl	push hl
297d	c4 e3 41 	call nz,$41e3	call nz,$0000
2980	d1 	pop de	pop de
2981	eb 	ex de,hl	ex de,hl
2982	b7 	or a	or a
2983	ed 52 	sbc hl,de	sbc hl,de
2985	20 47 	jr nz,$+$49	jr nz,$+$00
2987	d5 	push de	push de
2988	dd 21 08 00 	ld ix,$0008	ld ix,$0000
298c	dd 39 	add ix,sp	add ix,sp
298e	cd f1 19 	call $19f1	call $0000
2991	dd 7e 0b 	ld a,(ix+$0b)	ld a,(ix+$00)
2994	dd e1 	pop ix	pop ix
2996	cd 25 19 	call $1925	call $0000
2999	f5 	push af	push af
299a	3e 0b 	ld a,$0b	ld a,$00
299c	cd 15 45 	call $4515	call $0000
299f	38 3f 	jr c,$+$41	jr c,$+$00
29a1	f1 	pop af	pop af
29a2	cd f0 31 	call $31f0	call $0000
29a5	dd 21 0c 00 	ld ix,$000c	ld ix,$0000
29a9	dd 39 	add ix,sp	add ix,sp
29ab	cd f1 19 	call $19f1	call $0000
29ae	dd 7e ff 	ld a,(ix-$01)	ld a,(ix-$00)
29b1	cd 15 45 	call $4515	call $0000
29b4	38 2a 	jr c,$+$2c	jr c,$+$00
29b6	24 	inc h	inc h
29b7	20 0a 	jr nz,$+$0c	jr nz,$+$00
29b9	21 12 00 	ld hl,$0012	ld hl,$0000
29bc	39 	add hl,sp	add hl,sp
29bd	f9 	ld sp,hl	ld sp,hl
29be	cd 00 45 	call $4500	call $0000
29c1	18 9e 	jr $-$60	jr $-$00
29c3	c1 	pop bc	pop bc
29c4	d1 	pop de	pop de
29c5	fd e1 	pop iy	pop iy
29c7	fd e5 	push iy	push iy
29c9	d5 	push de	push de
29ca	c5 	push bc	push bc
29cb	c3 99 24 	jp $2499	jp $0000
29ce	21 12 00 	ld hl,$0012	ld hl,$0000
29d1	39 	add hl,sp	add hl,sp
29d2	f9 	ld sp,hl	ld sp,hl
29d3	c1 	pop bc	pop bc
29d4	21 61 29 	ld hl,$2961	ld hl,$0000
29d7	ed 42 	sbc hl,bc	sbc hl,bc
29d9	e1 	pop hl	pop hl
29da	e5 	push hl	push hl
29db	c5 	push bc	push bc
29dc	28 a5 	jr z,$-$59	jr z,$-$00
29de	3e 21 	ld a,$21	ld a,$00
29e0	c3 44 3f 	jp $3f44	jp $0000
29e3	f5 	push af	push af
29e4	cd eb 29 	call $29eb	call $0000
29e7	f5 	push af	push af
29e8	cd eb 29 	call $29eb	call $0000
29eb	cd 86 32 	call $3286	call $0000
29ee	fd 2b 	dec iy	dec iy
29f0	fd e5 	push iy	push iy
29f2	cd 96 42 	call $4296	call $0000
29f5	c1 	pop bc	pop bc
29f6	28 39 	jr z,$+$3b	jr z,$+$00
29f8	3e 1e 	ld a,$1e	ld a,$00
29fa	38 e4 	jr c,$-$1a	jr c,$-$00
29fc	c5 	push bc	push bc
29fd	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
2a00	3e dd 	ld a,$dd	ld a,$00
2a02	cd fb 35 	call $35fb	call $0000
2a05	38 21 	jr c,$+$23	jr c,$+$00
2a07	e5 	push hl	push hl
2a08	fd e1 	pop iy	pop iy
2a0a	fd 23 	inc iy	inc iy
2a0c	cd 0b 45 	call $450b	call $0000
2a0f	cd 96 42 	call $4296	call $0000
2a12	fd e5 	push iy	push iy
2a14	d1 	pop de	pop de
2a15	38 09 	jr c,$+$0b	jr c,$+$00
2a17	c4 3c 43 	call nz,$433c	call nz,$0000
2a1a	fd e5 	push iy	push iy
2a1c	d1 	pop de	pop de
2a1d	73 	ld (hl),e	ld (hl),e
2a1e	23 	inc hl	inc hl
2a1f	72 	ld (hl),d	ld (hl),d
2a20	eb 	ex de,hl	ex de,hl
2a21	3e 0d 	ld a,$0d	ld a,$00
2a23	47 	ld b,a	ld b,a
2a24	ed b1 	cpir	cpir
2a26	18 d8 	jr $-$26	jr $-$00
2a28	fd e1 	pop iy	pop iy
2a2a	cd 96 42 	call $4296	call $0000
2a2d	3e 1d 	ld a,$1d	ld a,$00
2a2f	20 af 	jr nz,$-$4f	jr nz,$-$00
2a31	5e 	ld e,(hl)	ld e,(hl)
2a32	23 	inc hl	inc hl
2a33	56 	ld d,(hl)	ld d,(hl)
2a34	21 02 00 	ld hl,$0002	ld hl,$0000
2a37	39 	add hl,sp	add hl,sp
2a38	cd 0b 45 	call $450b	call $0000
2a3b	d5 	push de	push de
2a3c	fd e3 	ex (sp),iy	ex (sp),iy
2a3e	d1 	pop de	pop de
2a3f	fe 28 	cp $28	cp $00
2a41	c2 e5 2a 	jp nz,$2ae5	jp nz,$0000
2a44	cd 0b 45 	call $450b	call $0000
2a47	fe 28 	cp $28	cp $00
2a49	c2 e0 25 	jp nz,$25e0	jp nz,$0000
2a4c	fd e5 	push iy	push iy
2a4e	c1 	pop bc	pop bc
2a4f	d9 	exx	exx
2a50	08 	ex af,af'	ex af,af'
2a51	af 	xor a	xor a
2a52	08 	ex af,af'	ex af,af'
2a53	cd be 34 	call $34be	call $0000
2a56	08 	ex af,af'	ex af,af'
2a57	b7 	or a	or a
2a58	28 16 	jr z,$+$18	jr z,$+$00
2a5a	e5 	push hl	push hl
2a5b	ed 44 	neg	neg
2a5d	6f 	ld l,a	ld l,a
2a5e	ed 44 	neg	neg
2a60	26 ff 	ld h,$ff	ld h,$00
2a62	29 	add hl,hl	add hl,hl
2a63	29 	add hl,hl	add hl,hl
2a64	29 	add hl,hl	add hl,hl
2a65	e3 	ex (sp),hl	ex (sp),hl
2a66	dd e1 	pop ix	pop ix
2a68	dd 39 	add ix,sp	add ix,sp
2a6a	dd f9 	ld sp,ix	ld sp,ix
2a6c	f5 	push af	push af
2a6d	cd 70 2a 	call $2a70	call $0000
2a70	08 	ex af,af'	ex af,af'
2a71	cd ae 20 	call $20ae	call $0000
2a74	d9 	exx	exx
2a75	c5 	push bc	push bc
2a76	fd e1 	pop iy	pop iy
2a78	e5 	push hl	push hl
2a79	cd cd 32 	call $32cd	call $0000
2a7c	e1 	pop hl	pop hl
2a7d	e3 	ex (sp),hl	ex (sp),hl
2a7e	b7 	or a	or a
2a7f	01 70 2a 	ld bc,$2a70	ld bc,$0000
2a82	ed 42 	sbc hl,bc	sbc hl,bc
2a84	09 	add hl,bc	add hl,bc
2a85	e3 	ex (sp),hl	ex (sp),hl
2a86	20 5d 	jr nz,$+$5f	jr nz,$+$00
2a88	d5 	push de	push de
2a89	e5 	push hl	push hl
2a8a	21 07 00 	ld hl,$0007	ld hl,$0000
2a8d	39 	add hl,sp	add hl,sp
2a8e	7e 	ld a,(hl)	ld a,(hl)
2a8f	23 	inc hl	inc hl
2a90	e5 	push hl	push hl
2a91	dd e1 	pop ix	pop ix
2a93	5f 	ld e,a	ld e,a
2a94	16 00 	ld d,$00	ld d,$00
2a96	eb 	ex de,hl	ex de,hl
2a97	29 	add hl,hl	add hl,hl
2a98	29 	add hl,hl	add hl,hl
2a99	29 	add hl,hl	add hl,hl
2a9a	19 	add hl,de	add hl,de
2a9b	23 	inc hl	inc hl
2a9c	23 	inc hl	inc hl
2a9d	5e 	ld e,(hl)	ld e,(hl)
2a9e	23 	inc hl	inc hl
2a9f	56 	ld d,(hl)	ld d,(hl)
2aa0	23 	inc hl	inc hl
2aa1	4e 	ld c,(hl)	ld c,(hl)
2aa2	23 	inc hl	inc hl
2aa3	46 	ld b,(hl)	ld b,(hl)
2aa4	c5 	push bc	push bc
2aa5	e5 	push hl	push hl
2aa6	dd e5 	push ix	push ix
2aa8	47 	ld b,a	ld b,a
2aa9	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
2aac	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
2aaf	b7 	or a	or a
2ab0	ed 52 	sbc hl,de	sbc hl,de
2ab2	28 09 	jr z,$+$0b	jr z,$+$00
2ab4	eb 	ex de,hl	ex de,hl
2ab5	11 08 00 	ld de,$0008	ld de,$0000
2ab8	dd 19 	add ix,de	add ix,de
2aba	eb 	ex de,hl	ex de,hl
2abb	10 ec 	djnz $-$12	djnz $-$00
2abd	dd e1 	pop ix	pop ix
2abf	e1 	pop hl	pop hl
2ac0	c1 	pop bc	pop bc
2ac1	20 02 	jr nz,$+$04	jr nz,$+$00
2ac3	cb e6 	set 4,(hl)	set 4,(hl)
2ac5	11 03 00 	ld de,$0003	ld de,$0000
2ac8	cb 70 	bit 6,b	bit 6,b
2aca	20 08 	jr nz,$+$0a	jr nz,$+$00
2acc	1e 05 	ld e,$05	ld e,$00
2ace	cb 78 	bit 7,b	bit 7,b
2ad0	28 02 	jr z,$+$04	jr z,$+$00
2ad2	59 	ld e,c	ld e,c
2ad3	13 	inc de	inc de
2ad4	19 	add hl,de	add hl,de
2ad5	4e 	ld c,(hl)	ld c,(hl)
2ad6	23 	inc hl	inc hl
2ad7	46 	ld b,(hl)	ld b,(hl)
2ad8	23 	inc hl	inc hl
2ad9	eb 	ex de,hl	ex de,hl
2ada	21 2a 35 	ld hl,$352a	ld hl,$0000
2add	b7 	or a	or a
2ade	ed 42 	sbc hl,bc	sbc hl,bc
2ae0	eb 	ex de,hl	ex de,hl
2ae1	28 ba 	jr z,$-$44	jr z,$-$00
2ae3	e1 	pop hl	pop hl
2ae4	d1 	pop de	pop de
2ae5	73 	ld (hl),e	ld (hl),e
2ae6	23 	inc hl	inc hl
2ae7	7e 	ld a,(hl)	ld a,(hl)
2ae8	72 	ld (hl),d	ld (hl),d
2ae9	fe ee 	cp $ee	cp $00
2aeb	20 0c 	jr nz,$+$0e	jr nz,$+$00
2aed	d5 	push de	push de
2aee	fd e3 	ex (sp),iy	ex (sp),iy
2af0	cd 42 35 	call $3542	call $0000
2af3	fd e3 	ex (sp),iy	ex (sp),iy
2af5	d1 	pop de	pop de
2af6	72 	ld (hl),d	ld (hl),d
2af7	2b 	dec hl	dec hl
2af8	73 	ld (hl),e	ld (hl),e
2af9	c3 99 24 	jp $2499	jp $0000
2afc	fd 23 	inc iy	inc iy
2afe	18 f9 	jr $-$05	jr $-$00
2b00	fd 23 	inc iy	inc iy
2b02	2a f0 54 	ld hl,($54f0)	ld hl,($0000)
2b05	e5 	push hl	push hl
2b06	3e 40 	ld a,$40	ld a,$00
2b08	f5 	push af	push af
2b09	21 f0 54 	ld hl,$54f0	ld hl,$0000
2b0c	e5 	push hl	push hl
2b0d	21 2a 35 	ld hl,$352a	ld hl,$0000
2b10	e5 	push hl	push hl
2b11	18 e6 	jr $-$18	jr $-$00
2b13	fe 85 	cp $85	cp $00
2b15	28 e5 	jr z,$-$19	jr z,$-$00
2b17	fe dc 	cp $dc	cp $00
2b19	28 e5 	jr z,$-$19	jr z,$-$00
2b1b	c1 	pop bc	pop bc
2b1c	c5 	push bc	push bc
2b1d	21 e7 29 	ld hl,$29e7	ld hl,$0000
2b20	b7 	or a	or a
2b21	ed 42 	sbc hl,bc	sbc hl,bc
2b23	28 23 	jr z,$+$25	jr z,$+$00
2b25	21 eb 29 	ld hl,$29eb	ld hl,$0000
2b28	b7 	or a	or a
2b29	ed 42 	sbc hl,bc	sbc hl,bc
2b2b	28 1b 	jr z,$+$1d	jr z,$+$00
2b2d	21 2a 35 	ld hl,$352a	ld hl,$0000
2b30	b7 	or a	or a
2b31	ed 42 	sbc hl,bc	sbc hl,bc
2b33	28 13 	jr z,$+$15	jr z,$+$00
2b35	21 dc 26 	ld hl,$26dc	ld hl,$0000
2b38	b7 	or a	or a
2b39	ed 42 	sbc hl,bc	sbc hl,bc
2b3b	28 0b 	jr z,$+$0d	jr z,$+$00
2b3d	21 70 2a 	ld hl,$2a70	ld hl,$0000
2b40	b7 	or a	or a
2b41	ed 42 	sbc hl,bc	sbc hl,bc
2b43	3e 0c 	ld a,$0c	ld a,$00
2b45	c2 44 3f 	jp nz,$3f44	jp nz,$0000
2b48	fd e5 	push iy	push iy
2b4a	c1 	pop bc	pop bc
2b4b	d9 	exx	exx
2b4c	fd 2b 	dec iy	dec iy
2b4e	cd be 34 	call $34be	call $0000
2b51	d9 	exx	exx
2b52	c5 	push bc	push bc
2b53	fd e1 	pop iy	pop iy
2b55	cd e3 41 	call $41e3	call $0000
2b58	c2 e0 25 	jp nz,$25e0	jp nz,$0000
2b5b	cb 77 	bit 6,a	bit 6,a
2b5d	20 14 	jr nz,$+$16	jr nz,$+$00
2b5f	b7 	or a	or a
2b60	08 	ex af,af'	ex af,af'
2b61	cd f8 1f 	call $1ff8	call $0000
2b64	08 	ex af,af'	ex af,af'
2b65	f5 	push af	push af
2b66	f4 f0 31 	call p,$31f0	call p,$0000
2b69	f1 	pop af	pop af
2b6a	59 	ld e,c	ld e,c
2b6b	fc 41 32 	call m,$3241	call m,$0000
2b6e	cd 00 45 	call $4500	call $0000
2b71	18 e2 	jr $-$1c	jr $-$00
2b73	dd 36 00 01 	ld (ix),$01	ld (ix),$00
2b77	dd 36 01 00 	ld (ix+$01),$00	ld (ix+$00),$00
2b7b	18 f1 	jr $-$0d	jr $-$00
2b7d	c1 	pop bc	pop bc
2b7e	21 eb 29 	ld hl,$29eb	ld hl,$0000
2b81	af 	xor a	xor a
2b82	ed 42 	sbc hl,bc	sbc hl,bc
2b84	28 0b 	jr z,$+$0d	jr z,$+$00
2b86	c5 	push bc	push bc
2b87	cd 31 34 	call $3431	call $0000
2b8a	20 f1 	jr nz,$-$0d	jr nz,$-$00
2b8c	3e 0d 	ld a,$0d	ld a,$00
2b8e	c3 44 3f 	jp $3f44	jp $0000
2b91	fd e1 	pop iy	pop iy
2b93	c3 99 24 	jp $2499	jp $0000
2b96	cd db 36 	call $36db	call $0000
2b99	cd 00 45 	call $4500	call $0000
2b9c	d5 	push de	push de
2b9d	cd d6 25 	call $25d6	call $0000
2ba0	d1 	pop de	pop de
2ba1	f5 	push af	push af
2ba2	e5 	push hl	push hl
2ba3	b7 	or a	or a
2ba4	fa c9 2b 	jp m,$2bc9	jp m,$0000
2ba7	cd 3f 12 	call $123f	call $0000
2baa	d9 	exx	exx
2bab	6f 	ld l,a	ld l,a
2bac	d9 	exx	exx
2bad	cd 3f 12 	call $123f	call $0000
2bb0	d9 	exx	exx
2bb1	67 	ld h,a	ld h,a
2bb2	d9 	exx	exx
2bb3	cd 3f 12 	call $123f	call $0000
2bb6	6f 	ld l,a	ld l,a
2bb7	cd 3f 12 	call $123f	call $0000
2bba	67 	ld h,a	ld h,a
2bbb	cd 3f 12 	call $123f	call $0000
2bbe	4f 	ld c,a	ld c,a
2bbf	dd e1 	pop ix	pop ix
2bc1	f1 	pop af	pop af
2bc2	d5 	push de	push de
2bc3	cd f0 31 	call $31f0	call $0000
2bc6	d1 	pop de	pop de
2bc7	18 d0 	jr $-$2e	jr $-$00
2bc9	21 00 52 	ld hl,$5200	ld hl,$0000
2bcc	cd 3f 12 	call $123f	call $0000
2bcf	fe 0d 	cp $0d	cp $00
2bd1	28 04 	jr z,$+$06	jr z,$+$00
2bd3	77 	ld (hl),a	ld (hl),a
2bd4	2c 	inc l	inc l
2bd5	20 f5 	jr nz,$-$09	jr nz,$-$00
2bd7	dd e1 	pop ix	pop ix
2bd9	f1 	pop af	pop af
2bda	d5 	push de	push de
2bdb	eb 	ex de,hl	ex de,hl
2bdc	cd 3e 32 	call $323e	call $0000
2bdf	d1 	pop de	pop de
2be0	18 b7 	jr $-$47	jr $-$00
2be2	fe 23 	cp $23	cp $00
2be4	28 b0 	jr z,$-$4e	jr z,$-$00
2be6	0e 00 	ld c,$00	ld c,$00
2be8	fe 86 	cp $86	cp $00
2bea	20 04 	jr nz,$+$06	jr nz,$+$00
2bec	fd 23 	inc iy	inc iy
2bee	0e 80 	ld c,$80	ld c,$00
2bf0	21 00 53 	ld hl,$5300	ld hl,$0000
2bf3	36 0d 	ld (hl),$0d	ld (hl),$00
2bf5	cd 36 35 	call $3536	call $0000
2bf8	28 99 	jr z,$-$65	jr z,$-$00
2bfa	fd 23 	inc iy	inc iy
2bfc	fe 2c 	cp $2c	cp $00
2bfe	28 51 	jr z,$+$53	jr z,$+$00
2c00	fe 3b 	cp $3b	cp $00
2c02	28 4d 	jr z,$+$4f	jr z,$+$00
2c04	e5 	push hl	push hl
2c05	fe 22 	cp $22	cp $00
2c07	20 0a 	jr nz,$+$0c	jr nz,$+$00
2c09	c5 	push bc	push bc
2c0a	cd 7a 19 	call $197a	call $0000
2c0d	c1 	pop bc	pop bc
2c0e	cd b1 35 	call $35b1	call $0000
2c11	18 05 	jr $+$07	jr $+$00
2c13	cd 5c 35 	call $355c	call $0000
2c16	20 05 	jr nz,$+$07	jr nz,$+$00
2c18	e1 	pop hl	pop hl
2c19	cb c1 	set 0,c	set 0,c
2c1b	18 d3 	jr $-$2b	jr $-$00
2c1d	fd 2b 	dec iy	dec iy
2c1f	c5 	push bc	push bc
2c20	cd d6 25 	call $25d6	call $0000
2c23	c1 	pop bc	pop bc
2c24	e1 	pop hl	pop hl
2c25	f5 	push af	push af
2c26	7e 	ld a,(hl)	ld a,(hl)
2c27	23 	inc hl	inc hl
2c28	fe 0d 	cp $0d	cp $00
2c2a	cc 55 2c 	call z,$2c55	call z,$0000
2c2d	cb 79 	bit 7,c	bit 7,c
2c2f	f5 	push af	push af
2c30	c4 cf 35 	call nz,$35cf	call nz,$0000
2c33	f1 	pop af	pop af
2c34	cc be 35 	call z,$35be	call z,$0000
2c37	f1 	pop af	pop af
2c38	c5 	push bc	push bc
2c39	e5 	push hl	push hl
2c3a	b7 	or a	or a
2c3b	fa 4c 2c 	jp m,$2c4c	jp m,$0000
2c3e	f5 	push af	push af
2c3f	dd e5 	push ix	push ix
2c41	cd 22 1c 	call $1c22	call $0000
2c44	dd e1 	pop ix	pop ix
2c46	f1 	pop af	pop af
2c47	cd f0 31 	call $31f0	call $0000
2c4a	18 03 	jr $+$05	jr $+$00
2c4c	cd 3e 32 	call $323e	call $0000
2c4f	e1 	pop hl	pop hl
2c50	c1 	pop bc	pop bc
2c51	cb 81 	res 0,c	res 0,c
2c53	18 a0 	jr $-$5e	jr $-$00
2c55	cb 41 	bit 0,c	bit 0,c
2c57	20 0a 	jr nz,$+$0c	jr nz,$+$00
2c59	3e 3f 	ld a,$3f	ld a,$00
2c5b	cd 02 41 	call $4102	call $0000
2c5e	3e 20 	ld a,$20	ld a,$00
2c60	cd 02 41 	call $4102	call $0000
2c63	21 00 53 	ld hl,$5300	ld hl,$0000
2c66	c5 	push bc	push bc
2c67	e5 	push hl	push hl
2c68	dd e5 	push ix	push ix
2c6a	cd cb 11 	call $11cb	call $0000
2c6d	dd e1 	pop ix	pop ix
2c6f	e1 	pop hl	pop hl
2c70	c1 	pop bc	pop bc
2c71	47 	ld b,a	ld b,a
2c72	af 	xor a	xor a
2c73	32 fb 54 	ld ($54fb),a	ld ($0000),a
2c76	b8 	cp b	cp b
2c77	c8 	ret z	ret z
2c78	7e 	ld a,(hl)	ld a,(hl)
2c79	fe 0d 	cp $0d	cp $00
2c7b	c8 	ret z	ret z
2c7c	23 	inc hl	inc hl
2c7d	10 f9 	djnz $-$05	djnz $-$00
2c7f	c9 	ret	ret
2c80	fe 23 	cp $23	cp $00
2c82	ca 96 2b 	jp z,$2b96	jp z,$0000
2c85	2a f0 54 	ld hl,($54f0)	ld hl,($0000)
2c88	7e 	ld a,(hl)	ld a,(hl)
2c89	fe 3a 	cp $3a	cp $00
2c8b	cc 78 2c 	call z,$2c78	call z,$0000
2c8e	23 	inc hl	inc hl
2c8f	fe 0d 	cp $0d	cp $00
2c91	cc c0 2c 	call z,$2cc0	call z,$0000
2c94	e5 	push hl	push hl
2c95	cd d6 25 	call $25d6	call $0000
2c98	e1 	pop hl	pop hl
2c99	b7 	or a	or a
2c9a	fa b0 2c 	jp m,$2cb0	jp m,$0000
2c9d	e5 	push hl	push hl
2c9e	fd e3 	ex (sp),iy	ex (sp),iy
2ca0	f5 	push af	push af
2ca1	dd e5 	push ix	push ix
2ca3	cd 2c 18 	call $182c	call $0000
2ca6	dd e1 	pop ix	pop ix
2ca8	f1 	pop af	pop af
2ca9	cd f0 31 	call $31f0	call $0000
2cac	fd e3 	ex (sp),iy	ex (sp),iy
2cae	18 07 	jr $+$09	jr $+$00
2cb0	cd be 35 	call $35be	call $0000
2cb3	e5 	push hl	push hl
2cb4	cd 3e 32 	call $323e	call $0000
2cb7	e1 	pop hl	pop hl
2cb8	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2cbb	cd 00 45 	call $4500	call $0000
2cbe	18 c8 	jr $-$36	jr $-$00
2cc0	cd f9 35 	call $35f9	call $0000
2cc3	23 	inc hl	inc hl
2cc4	d0 	ret nc	ret nc
2cc5	3e 2a 	ld a,$2a	ld a,$00
2cc7	18 64 	jr $+$66	jr $+$00
2cc9	cd 33 18 	call $1833	call $0000
2ccc	cd 59 1f 	call $1f59	call $0000
2ccf	28 2a 	jr z,$+$2c	jr z,$+$00
2cd1	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cd4	fe 8c 	cp $8c	cp $00
2cd6	c2 99 24 	jp nz,$2499	jp nz,$0000
2cd9	fd 23 	inc iy	inc iy
2cdb	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cde	fe 3b 	cp $3b	cp $00
2ce0	28 f7 	jr z,$-$07	jr z,$-$00
2ce2	cd 0b 45 	call $450b	call $0000
2ce5	fe 8d 	cp $8d	cp $00
2ce7	c2 99 24 	jp nz,$2499	jp nz,$0000
2cea	c3 b4 28 	jp $28b4	jp $0000
2ced	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cf0	fd 23 	inc iy	inc iy
2cf2	fe 3b 	cp $3b	cp $00
2cf4	20 0a 	jr nz,$+$0c	jr nz,$+$00
2cf6	18 1e 	jr $+$20	jr $+$00
2cf8	cd 99 36 	call $3699	call $0000
2cfb	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cfe	fd 23 	inc iy	inc iy
2d00	fe 22 	cp $22	cp $00
2d02	28 f4 	jr z,$-$0a	jr z,$-$00
2d04	fe f4 	cp $f4	cp $00
2d06	ca 31 25 	jp z,$2531	jp z,$0000
2d09	fe 0d 	cp $0d	cp $00
2d0b	ca 84 24 	jp z,$2484	jp z,$0000
2d0e	fe 8b 	cp $8b	cp $00
2d10	28 d0 	jr z,$-$2e	jr z,$-$00
2d12	fe 8c 	cp $8c	cp $00
2d14	20 e5 	jr nz,$-$19	jr nz,$-$00
2d16	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d19	fe 0d 	cp $0d	cp $00
2d1b	20 d0 	jr nz,$-$2e	jr nz,$-$00
2d1d	01 8b 00 	ld bc,$008b	ld bc,$0000
2d20	11 8c cd 	ld de,$cd8c	ld de,$0000
2d23	fd 23 	inc iy	inc iy
2d25	cd 11 36 	call $3611	call $0000
2d28	ca a0 24 	jp z,$24a0	jp z,$0000
2d2b	3e 31 	ld a,$31	ld a,$00
2d2d	c3 44 3f 	jp $3f44	jp $0000
2d30	01 fd ff 	ld bc,$fffd	ld bc,$0000
2d33	fd 09 	add iy,bc	add iy,bc
2d35	01 cd 00 	ld bc,$00cd	ld bc,$0000
2d38	11 8c cd 	ld de,$cd8c	ld de,$0000
2d3b	cd 11 36 	call $3611	call $0000
2d3e	20 eb 	jr nz,$-$13	jr nz,$-$00
2d40	c3 99 24 	jp $2499	jp $0000
2d43	01 fd ff 	ld bc,$fffd	ld bc,$0000
2d46	fd 09 	add iy,bc	add iy,bc
2d48	01 cb 00 	ld bc,$00cb	ld bc,$0000
2d4b	11 ca cb 	ld de,$cbca	ld de,$0000
2d4e	cd 11 36 	call $3611	call $0000
2d51	28 ed 	jr z,$-$11	jr z,$-$00
2d53	3e 2f 	ld a,$2f	ld a,$00
2d55	18 d6 	jr $-$28	jr $-$00
2d57	cd 02 17 	call $1702	call $0000
2d5a	08 	ex af,af'	ex af,af'
2d5b	06 00 	ld b,$00	ld b,$00
2d5d	f2 66 2d 	jp p,$2d66	jp p,$0000
2d60	cd 19 20 	call $2019	call $0000
2d63	c1 	pop bc	pop bc
2d64	06 01 	ld b,$01	ld b,$00
2d66	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d69	fd 23 	inc iy	inc iy
2d6b	fe ca 	cp $ca	cp $00
2d6d	3e 25 	ld a,$25	ld a,$00
2d6f	20 bc 	jr nz,$-$42	jr nz,$-$00
2d71	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d74	fd 23 	inc iy	inc iy
2d76	fe 0d 	cp $0d	cp $00
2d78	3e 30 	ld a,$30	ld a,$00
2d7a	20 b1 	jr nz,$-$4d	jr nz,$-$00
2d7c	af 	xor a	xor a
2d7d	d9 	exx	exx
2d7e	e5 	push hl	push hl
2d7f	d9 	exx	exx
2d80	e5 	push hl	push hl
2d81	c5 	push bc	push bc
2d82	6f 	ld l,a	ld l,a
2d83	01 c9 cc 	ld bc,$ccc9	ld bc,$0000
2d86	11 ca cb 	ld de,$cbca	ld de,$0000
2d89	cd 13 36 	call $3613	call $0000
2d8c	c1 	pop bc	pop bc
2d8d	e1 	pop hl	pop hl
2d8e	d9 	exx	exx
2d8f	e1 	pop hl	pop hl
2d90	d9 	exx	exx
2d91	3e 2f 	ld a,$2f	ld a,$00
2d93	c2 44 3f 	jp nz,$3f44	jp nz,$0000
2d96	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
2d99	fe cb 	cp $cb	cp $00
2d9b	28 56 	jr z,$+$58	jr z,$+$00
2d9d	fe cc 	cp $cc	cp $00
2d9f	28 52 	jr z,$+$54	jr z,$+$00
2da1	cb 40 	bit 0,b	bit 0,b
2da3	20 69 	jr nz,$+$6b	jr nz,$+$00
2da5	c5 	push bc	push bc
2da6	e5 	push hl	push hl
2da7	d9 	exx	exx
2da8	e5 	push hl	push hl
2da9	d9 	exx	exx
2daa	cd 2c 18 	call $182c	call $0000
2dad	dd 21 00 00 	ld ix,$0000	ld ix,$0000
2db1	dd 39 	add ix,sp	add ix,sp
2db3	d9 	exx	exx
2db4	dd 5e 00 	ld e,(ix)	ld e,(ix)
2db7	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
2dba	d9 	exx	exx
2dbb	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
2dbe	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
2dc1	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
2dc4	3e 09 	ld a,$09	ld a,$00
2dc6	cd 15 45 	call $4515	call $0000
2dc9	7d 	ld a,l	ld a,l
2dca	b7 	or a	or a
2dcb	d9 	exx	exx
2dcc	e1 	pop hl	pop hl
2dcd	d9 	exx	exx
2dce	e1 	pop hl	pop hl
2dcf	c1 	pop bc	pop bc
2dd0	20 2c 	jr nz,$+$2e	jr nz,$+$00
2dd2	fd 7e 00 	ld a,(iy)	ld a,(iy)
2dd5	fd 23 	inc iy	inc iy
2dd7	fe 2c 	cp $2c	cp $00
2dd9	28 c6 	jr z,$-$38	jr z,$-$00
2ddb	d9 	exx	exx
2ddc	fd e5 	push iy	push iy
2dde	e3 	ex (sp),hl	ex (sp),hl
2ddf	3e 0d 	ld a,$0d	ld a,$00
2de1	47 	ld b,a	ld b,a
2de2	ed b1 	cpir	cpir
2de4	e3 	ex (sp),hl	ex (sp),hl
2de5	fd e1 	pop iy	pop iy
2de7	d9 	exx	exx
2de8	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
2deb	fe ca 	cp $ca	cp $00
2ded	20 8d 	jr nz,$-$71	jr nz,$-$00
2def	3e 01 	ld a,$01	ld a,$00
2df1	18 8a 	jr $-$74	jr $-$00
2df3	cb 40 	bit 0,b	bit 0,b
2df5	28 49 	jr z,$+$4b	jr z,$+$00
2df7	26 00 	ld h,$00	ld h,$00
2df9	69 	ld l,c	ld l,c
2dfa	39 	add hl,sp	add hl,sp
2dfb	f9 	ld sp,hl	ld sp,hl
2dfc	18 42 	jr $+$44	jr $+$00
2dfe	cd 0b 45 	call $450b	call $0000
2e01	fe 2c 	cp $2c	cp $00
2e03	20 ee 	jr nz,$-$10	jr nz,$-$00
2e05	fd 23 	inc iy	inc iy
2e07	c5 	push bc	push bc
2e08	cd 02 17 	call $1702	call $0000
2e0b	c1 	pop bc	pop bc
2e0c	18 f0 	jr $-$0e	jr $-$00
2e0e	c5 	push bc	push bc
2e0f	cd 3c 18 	call $183c	call $0000
2e12	c1 	pop bc	pop bc
2e13	21 00 00 	ld hl,$0000	ld hl,$0000
2e16	39 	add hl,sp	add hl,sp
2e17	43 	ld b,e	ld b,e
2e18	11 00 52 	ld de,$5200	ld de,$0000
2e1b	c5 	push bc	push bc
2e1c	cd f5 1f 	call $1ff5	call $0000
2e1f	c1 	pop bc	pop bc
2e20	06 01 	ld b,$01	ld b,$00
2e22	20 ae 	jr nz,$-$50	jr nz,$-$00
2e24	18 d8 	jr $-$26	jr $-$00
2e26	fd e5 	push iy	push iy
2e28	cd 86 32 	call $3286	call $0000
2e2b	cd 2e 2e 	call $2e2e	call $0000
2e2e	cd 33 18 	call $1833	call $0000
2e31	cd 59 1f 	call $1f59	call $0000
2e34	20 0a 	jr nz,$+$0c	jr nz,$+$00
2e36	c1 	pop bc	pop bc
2e37	c1 	pop bc	pop bc
2e38	01 00 95 	ld bc,$9500	ld bc,$0000
2e3b	16 01 	ld d,$01	ld d,$00
2e3d	cd 50 36 	call $3650	call $0000
2e40	c3 99 24 	jp $2499	jp $0000
2e43	c1 	pop bc	pop bc
2e44	d1 	pop de	pop de
2e45	d5 	push de	push de
2e46	c5 	push bc	push bc
2e47	b7 	or a	or a
2e48	21 2e 2e 	ld hl,$2e2e	ld hl,$0000
2e4b	ed 42 	sbc hl,bc	sbc hl,bc
2e4d	28 0b 	jr z,$+$0d	jr z,$+$00
2e4f	3e 03 	ld a,$03	ld a,$00
2e51	cd 31 34 	call $3431	call $0000
2e54	20 ed 	jr nz,$-$11	jr nz,$-$00
2e56	3e 2e 	ld a,$2e	ld a,$00
2e58	18 4f 	jr $+$51	jr $+$00
2e5a	fd e5 	push iy	push iy
2e5c	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2e60	fd 19 	add iy,de	add iy,de
2e62	cd 33 18 	call $1833	call $0000
2e65	cd 59 1f 	call $1f59	call $0000
2e68	d1 	pop de	pop de
2e69	20 d5 	jr nz,$-$29	jr nz,$-$00
2e6b	c1 	pop bc	pop bc
2e6c	c1 	pop bc	pop bc
2e6d	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2e71	fd 19 	add iy,de	add iy,de
2e73	18 cb 	jr $-$33	jr $-$00
2e75	cd f8 01 	call $01f8	call $0000
2e78	af 	xor a	xor a
2e79	32 fb 54 	ld ($54fb),a	ld ($0000),a
2e7c	18 c2 	jr $-$3c	jr $-$00
2e7e	cd fa 44 	call $44fa	call $0000
2e81	0d 	dec c	dec c
2e82	0a 	ld a,(bc)	ld a,(bc)
2e83	fa 00 cd 	jp m,$cd00	jp m,$0000
2e86	5b 41 	ld.lil b,c	ld.lil b,c
2e88	cd 82 41 	call $4182	call $0000
2e8b	cd fb 40 	call $40fb	call $0000
2e8e	c3 b0 37 	jp $37b0	jp $0000
2e91	cd e5 44 	call $44e5	call $0000
2e94	18 aa 	jr $-$54	jr $-$00
2e96	cd 43 40 	call $4043	call $0000
2e99	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
2e9c	18 3b 	jr $+$3d	jr $+$00
2e9e	fd 23 	inc iy	inc iy
2ea0	3e 02 	ld a,$02	ld a,$00
2ea2	cd 31 34 	call $3431	call $0000
2ea5	20 99 	jr nz,$-$65	jr nz,$-$00
2ea7	3e 35 	ld a,$35	ld a,$00
2ea9	c3 44 3f 	jp $3f44	jp $0000
2eac	fd 23 	inc iy	inc iy
2eae	3e 01 	ld a,$01	ld a,$00
2eb0	cd 31 34 	call $3431	call $0000
2eb3	20 8b 	jr nz,$-$73	jr nz,$-$00
2eb5	3e 36 	ld a,$36	ld a,$00
2eb7	21 3e 29 	ld hl,$293e	ld hl,$0000
2eba	18 ed 	jr $-$11	jr $-$00
2ebc	fe 85 	cp $85	cp $00
2ebe	28 de 	jr z,$-$20	jr z,$-$00
2ec0	fe dc 	cp $dc	cp $00
2ec2	28 e8 	jr z,$-$16	jr z,$-$00
2ec4	fe 2b 	cp $2b	cp $00
2ec6	28 1a 	jr z,$+$1c	jr z,$+$00
2ec8	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
2ecb	cd 36 35 	call $3536	call $0000
2ece	28 09 	jr z,$+$0b	jr z,$+$00
2ed0	cd 60 18 	call $1860	call $0000
2ed3	d9 	exx	exx
2ed4	cd 43 41 	call $4143	call $0000
2ed7	20 df 	jr nz,$-$1f	jr nz,$-$00
2ed9	cd f9 35 	call $35f9	call $0000
2edc	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2edf	c3 99 24 	jp $2499	jp $0000
2ee2	cd 33 18 	call $1833	call $0000
2ee5	d9 	exx	exx
2ee6	eb 	ex de,hl	ex de,hl
2ee7	fd e5 	push iy	push iy
2ee9	e1 	pop hl	pop hl
2eea	3e 0d 	ld a,$0d	ld a,$00
2eec	47 	ld b,a	ld b,a
2eed	ed b1 	cpir	cpir
2eef	1d 	dec e	dec e
2ef0	28 e7 	jr z,$-$17	jr z,$-$00
2ef2	fa d9 2e 	jp m,$2ed9	jp m,$0000
2ef5	af 	xor a	xor a
2ef6	47 	ld b,a	ld b,a
2ef7	4e 	ld c,(hl)	ld c,(hl)
2ef8	b9 	cp c	cp c
2ef9	28 bd 	jr z,$-$41	jr z,$-$00
2efb	09 	add hl,bc	add hl,bc
2efc	1d 	dec e	dec e
2efd	20 f8 	jr nz,$-$06	jr nz,$-$00
2eff	18 d8 	jr $-$26	jr $-$00
2f01	cd d1 36 	call $36d1	call $0000
2f04	cd 4f 35 	call $354f	call $0000
2f07	7b 	ld a,e	ld a,e
2f08	f5 	push af	push af
2f09	cd 33 18 	call $1833	call $0000
2f0c	e5 	push hl	push hl
2f0d	d9 	exx	exx
2f0e	d1 	pop de	pop de
2f0f	f1 	pop af	pop af
2f10	cd 79 12 	call $1279	call $0000
2f13	18 61 	jr $+$63	jr $+$00
2f15	cd 4f 35 	call $354f	call $0000
2f18	cd 33 18 	call $1833	call $0000
2f1b	d9 	exx	exx
2f1c	2e 00 	ld l,$00	ld l,$00
2f1e	22 dc 54 	ld ($54dc),hl	ld ($0000),hl
2f21	18 53 	jr $+$55	jr $+$00
2f23	fe 24 	cp $24	cp $00
2f25	28 0e 	jr z,$+$10	jr z,$+$00
2f27	cd 4f 35 	call $354f	call $0000
2f2a	cd 33 18 	call $1833	call $0000
2f2d	e5 	push hl	push hl
2f2e	d9 	exx	exx
2f2f	d1 	pop de	pop de
2f30	cd c3 01 	call $01c3	call $0000
2f33	18 41 	jr $+$43	jr $+$00
2f35	fd 23 	inc iy	inc iy
2f37	cd 4f 35 	call $354f	call $0000
2f3a	cd 3c 18 	call $183c	call $0000
2f3d	cd e0 01 	call $01e0	call $0000
2f40	18 34 	jr $+$36	jr $+$00
2f42	cd 4f 35 	call $354f	call $0000
2f45	cd 33 18 	call $1833	call $0000
2f48	cd 43 40 	call $4043	call $0000
2f4b	d9 	exx	exx
2f4c	22 de 54 	ld ($54de),hl	ld ($0000),hl
2f4f	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
2f52	18 22 	jr $+$24	jr $+$00
2f54	cd 4f 35 	call $354f	call $0000
2f57	cd 33 18 	call $1833	call $0000
2f5a	d9 	exx	exx
2f5b	ed 5b e0 54 	ld de,($54e0)	ld de,($0000)
2f5f	14 	inc d	inc d
2f60	af 	xor a	xor a
2f61	ed 52 	sbc hl,de	sbc hl,de
2f63	19 	add hl,de	add hl,de
2f64	da 44 3f 	jp c,$3f44	jp c,$0000
2f67	ed 5b e2 54 	ld de,($54e2)	ld de,($0000)
2f6b	22 e2 54 	ld ($54e2),hl	ld ($0000),hl
2f6e	eb 	ex de,hl	ex de,hl
2f6f	ed 72 	sbc hl,sp	sbc hl,sp
2f71	c2 99 24 	jp nz,$2499	jp nz,$0000
2f74	eb 	ex de,hl	ex de,hl
2f75	f9 	ld sp,hl	ld sp,hl
2f76	c3 99 24 	jp $2499	jp $0000
2f79	cd 33 18 	call $1833	call $0000
2f7c	d9 	exx	exx
2f7d	7d 	ld a,l	ld a,l
2f7e	32 fc 54 	ld ($54fc),a	ld ($0000),a
2f81	18 f3 	jr $-$0b	jr $-$00
2f83	fd 23 	inc iy	inc iy
2f85	21 00 00 	ld hl,$0000	ld hl,$0000
2f88	fe ee 	cp $ee	cp $00
2f8a	28 0a 	jr z,$+$0c	jr z,$+$00
2f8c	fe 87 	cp $87	cp $00
2f8e	28 07 	jr z,$+$09	jr z,$+$00
2f90	fd 2b 	dec iy	dec iy
2f92	cd 33 18 	call $1833	call $0000
2f95	d9 	exx	exx
2f96	2b 	dec hl	dec hl
2f97	22 e6 54 	ld ($54e6),hl	ld ($0000),hl
2f9a	18 da 	jr $-$24	jr $-$00
2f9c	cd 33 18 	call $1833	call $0000
2f9f	d9 	exx	exx
2fa0	7d 	ld a,l	ld a,l
2fa1	06 01 	ld b,$01	ld b,$00
2fa3	cd 95 11 	call $1195	call $0000
2fa6	10 fb 	djnz $-$03	djnz $-$00
2fa8	fd 7e 00 	ld a,(iy)	ld a,(iy)
2fab	fe 7c 	cp $7c	cp $00
2fad	28 15 	jr z,$+$17	jr z,$+$00
2faf	fe 2c 	cp $2c	cp $00
2fb1	28 08 	jr z,$+$0a	jr z,$+$00
2fb3	fe 3b 	cp $3b	cp $00
2fb5	20 06 	jr nz,$+$08	jr nz,$+$00
2fb7	7c 	ld a,h	ld a,h
2fb8	cd 95 11 	call $1195	call $0000
2fbb	fd 23 	inc iy	inc iy
2fbd	cd 36 35 	call $3536	call $0000
2fc0	20 da 	jr nz,$-$24	jr nz,$-$00
2fc2	18 b2 	jr $-$4c	jr $-$00
2fc4	fd 23 	inc iy	inc iy
2fc6	af 	xor a	xor a
2fc7	06 09 	ld b,$09	ld b,$00
2fc9	18 d8 	jr $-$26	jr $-$00
2fcb	cd d1 36 	call $36d1	call $0000
2fce	cd 37 12 	call $1237	call $0000
2fd1	18 a3 	jr $-$5b	jr $-$00
2fd3	cd d1 36 	call $36d1	call $0000
2fd6	d5 	push de	push de
2fd7	cd a2 20 	call $20a2	call $0000
2fda	cd 02 17 	call $1702	call $0000
2fdd	08 	ex af,af'	ex af,af'
2fde	fa ec 2f 	jp m,$2fec	jp m,$0000
2fe1	cd 17 1c 	call $1c17	call $0000
2fe4	d9 	exx	exx
2fe5	7d 	ld a,l	ld a,l
2fe6	d1 	pop de	pop de
2fe7	cd 47 12 	call $1247	call $0000
2fea	18 8a 	jr $-$74	jr $-$00
2fec	7b 	ld a,e	ld a,e
2fed	d1 	pop de	pop de
2fee	57 	ld d,a	ld d,a
2fef	21 00 52 	ld hl,$5200	ld hl,$0000
2ff2	7e 	ld a,(hl)	ld a,(hl)
2ff3	23 	inc hl	inc hl
2ff4	cd 47 12 	call $1247	call $0000
2ff7	15 	dec d	dec d
2ff8	20 f8 	jr nz,$-$06	jr nz,$-$00
2ffa	cd 0b 45 	call $450b	call $0000
2ffd	fe 3b 	cp $3b	cp $00
2fff	fd 23 	inc iy	inc iy
3001	28 e7 	jr z,$-$17	jr z,$-$00
3003	3e 0a 	ld a,$0a	ld a,$00
3005	cd 47 12 	call $1247	call $0000
3008	fd 2b 	dec iy	dec iy
300a	18 de 	jr $-$20	jr $-$00
300c	cd 33 18 	call $1833	call $0000
300f	d9 	exx	exx
3010	e5 	push hl	push hl
3011	06 00 	ld b,$00	ld b,$00
3013	11 00 53 	ld de,$5300	ld de,$0000
3016	cd 0b 45 	call $450b	call $0000
3019	fe 2c 	cp $2c	cp $00
301b	20 17 	jr nz,$+$19	jr nz,$+$00
301d	fd 23 	inc iy	inc iy
301f	04 	inc b	inc b
3020	cd 0b 45 	call $450b	call $0000
3023	c5 	push bc	push bc
3024	d5 	push de	push de
3025	cd d6 25 	call $25d6	call $0000
3028	d1 	pop de	pop de
3029	c1 	pop bc	pop bc
302a	13 	inc de	inc de
302b	12 	ld (de),a	ld (de),a
302c	13 	inc de	inc de
302d	eb 	ex de,hl	ex de,hl
302e	73 	ld (hl),e	ld (hl),e
302f	23 	inc hl	inc hl
3030	72 	ld (hl),d	ld (hl),d
3031	eb 	ex de,hl	ex de,hl
3032	18 e2 	jr $-$1c	jr $-$00
3034	78 	ld a,b	ld a,b
3035	32 00 53 	ld ($5300),a	ld ($0000),a
3038	e1 	pop hl	pop hl
3039	cd 43 30 	call $3043	call $0000
303c	c3 99 24 	jp $2499	jp $0000
303f	cd 60 18 	call $1860	call $0000
3042	d9 	exx	exx
3043	e5 	push hl	push hl
3044	fd e3 	ex (sp),iy	ex (sp),iy
3046	24 	inc h	inc h
3047	21 72 30 	ld hl,$3072	ld hl,$0000
304a	e5 	push hl	push hl
304b	dd 21 00 54 	ld ix,$5400	ld ix,$0000
304f	cc 14 05 	call z,$0514	call z,$0000
3052	dd 4e 18 	ld c,(ix+$18)	ld c,(ix+$00)
3055	c5 	push bc	push bc
3056	f1 	pop af	pop af
3057	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
305a	dd 46 08 	ld b,(ix+$08)	ld b,(ix+$00)
305d	dd 4e 0c 	ld c,(ix+$0c)	ld c,(ix+$00)
3060	dd 56 10 	ld d,(ix+$10)	ld d,(ix+$00)
3063	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
3066	dd 66 20 	ld h,(ix+$20)	ld h,(ix+$00)
3069	dd 6e 30 	ld l,(ix+$30)	ld l,(ix+$00)
306c	dd 21 00 53 	ld ix,$5300	ld ix,$0000
3070	fd e9 	jp (iy)	jp (iy)
3072	fd e1 	pop iy	pop iy
3074	af 	xor a	xor a
3075	4f 	ld c,a	ld c,a
3076	c9 	ret	ret
3077	cd be 25 	call $25be	call $0000
307a	21 00 ff 	ld hl,$ff00	ld hl,$0000
307d	20 48 	jr nz,$+$4a	jr nz,$+$00
307f	18 26 	jr $+$28	jr $+$00
3081	cd be 25 	call $25be	call $0000
3084	21 ff ff 	ld hl,$ffff	ld hl,$0000
3087	20 3e 	jr nz,$+$40	jr nz,$+$00
3089	18 1c 	jr $+$1e	jr $+$00
308b	cd be 25 	call $25be	call $0000
308e	3e 05 	ld a,$05	ld a,$00
3090	c2 44 3f 	jp nz,$3f44	jp nz,$0000
3093	fd 23 	inc iy	inc iy
3095	dd e5 	push ix	push ix
3097	cd 33 18 	call $1833	call $0000
309a	dd e1 	pop ix	pop ix
309c	d9 	exx	exx
309d	cd 0b 45 	call $450b	call $0000
30a0	2d 	dec l	dec l
30a1	26 fe 	ld h,$fe	ld h,$00
30a3	fe 2c 	cp $2c	cp $00
30a5	20 20 	jr nz,$+$22	jr nz,$+$00
30a7	fd 23 	inc iy	inc iy
30a9	e5 	push hl	push hl
30aa	dd e5 	push ix	push ix
30ac	cd 33 18 	call $1833	call $0000
30af	dd e1 	pop ix	pop ix
30b1	d9 	exx	exx
30b2	7d 	ld a,l	ld a,l
30b3	e1 	pop hl	pop hl
30b4	b7 	or a	or a
30b5	28 0d 	jr z,$+$0f	jr z,$+$00
30b7	3d 	dec a	dec a
30b8	85 	add a,l	add a,l
30b9	67 	ld h,a	ld h,a
30ba	30 0b 	jr nc,$+$0d	jr nc,$+$00
30bc	7d 	ld a,l	ld a,l
30bd	3c 	inc a	inc a
30be	28 07 	jr z,$+$09	jr z,$+$00
30c0	26 fe 	ld h,$fe	ld h,$00
30c2	18 03 	jr $+$05	jr $+$00
30c4	21 01 00 	ld hl,$0001	ld hl,$0000
30c7	cd ae 20 	call $20ae	call $0000
30ca	cd 4f 35 	call $354f	call $0000
30cd	e5 	push hl	push hl
30ce	dd e5 	push ix	push ix
30d0	cd 3c 18 	call $183c	call $0000
30d3	dd e1 	pop ix	pop ix
30d5	e1 	pop hl	pop hl
30d6	4b 	ld c,e	ld c,e
30d7	dd 46 00 	ld b,(ix)	ld b,(ix)
30da	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
30dd	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
30e0	7d 	ld a,l	ld a,l
30e1	3c 	inc a	inc a
30e2	20 0f 	jr nz,$+$11	jr nz,$+$00
30e4	24 	inc h	inc h
30e5	24 	inc h	inc h
30e6	79 	ld a,c	ld a,c
30e7	bc 	cp h	cp h
30e8	30 01 	jr nc,$+$03	jr nc,$+$00
30ea	67 	ld h,a	ld h,a
30eb	78 	ld a,b	ld a,b
30ec	94 	sub h	sub h
30ed	30 01 	jr nc,$+$03	jr nc,$+$00
30ef	af 	xor a	xor a
30f0	6f 	ld l,a	ld l,a
30f1	18 12 	jr $+$14	jr $+$00
30f3	7c 	ld a,h	ld a,h
30f4	3c 	inc a	inc a
30f5	20 06 	jr nz,$+$08	jr nz,$+$00
30f7	78 	ld a,b	ld a,b
30f8	d6 02 	sub $02	sub $00
30fa	38 24 	jr c,$+$26	jr c,$+$00
30fc	67 	ld h,a	ld h,a
30fd	7d 	ld a,l	ld a,l
30fe	b8 	cp b	cp b
30ff	30 1f 	jr nc,$+$21	jr nc,$+$00
3101	7c 	ld a,h	ld a,h
3102	b8 	cp b	cp b
3103	38 03 	jr c,$+$05	jr c,$+$00
3105	78 	ld a,b	ld a,b
3106	3d 	dec a	dec a
3107	67 	ld h,a	ld h,a
3108	7c 	ld a,h	ld a,h
3109	95 	sub l	sub l
310a	38 14 	jr c,$+$16	jr c,$+$00
310c	3c 	inc a	inc a
310d	b9 	cp c	cp c
310e	38 01 	jr c,$+$03	jr c,$+$00
3110	79 	ld a,c	ld a,c
3111	06 00 	ld b,$00	ld b,$00
3113	60 	ld h,b	ld h,b
3114	4f 	ld c,a	ld c,a
3115	b7 	or a	or a
3116	28 08 	jr z,$+$0a	jr z,$+$00
3118	eb 	ex de,hl	ex de,hl
3119	19 	add hl,de	add hl,de
311a	eb 	ex de,hl	ex de,hl
311b	21 00 52 	ld hl,$5200	ld hl,$0000
311e	ed b0 	ldir	ldir
3120	c3 99 24 	jp $2499	jp $0000
3123	fd 23 	inc iy	inc iy
3125	fe e3 	cp $e3	cp $00
3127	20 0c 	jr nz,$+$0e	jr nz,$+$00
3129	dd 21 00 00 	ld ix,$0000	ld ix,$0000
312d	cd 36 35 	call $3536	call $0000
3130	c4 e3 41 	call nz,$41e3	call nz,$0000
3133	3e e3 	ld a,$e3	ld a,$00
3135	16 01 	ld d,$01	ld d,$00
3137	5f 	ld e,a	ld e,a
3138	7b 	ld a,e	ld a,e
3139	c1 	pop bc	pop bc
313a	21 61 29 	ld hl,$2961	ld hl,$0000
313d	b7 	or a	or a
313e	ed 42 	sbc hl,bc	sbc hl,bc
3140	28 25 	jr z,$+$27	jr z,$+$00
3142	21 ed 28 	ld hl,$28ed	ld hl,$0000
3145	b7 	or a	or a
3146	ed 42 	sbc hl,bc	sbc hl,bc
3148	28 38 	jr z,$+$3a	jr z,$+$00
314a	21 2e 2e 	ld hl,$2e2e	ld hl,$0000
314d	b7 	or a	or a
314e	ed 42 	sbc hl,bc	sbc hl,bc
3150	28 3a 	jr z,$+$3c	jr z,$+$00
3152	c5 	push bc	push bc
3153	dd e5 	push ix	push ix
3155	c1 	pop bc	pop bc
3156	d9 	exx	exx
3157	3e 03 	ld a,$03	ld a,$00
3159	cd 31 34 	call $3431	call $0000
315c	d9 	exx	exx
315d	c5 	push bc	push bc
315e	dd e1 	pop ix	pop ix
3160	20 d6 	jr nz,$-$28	jr nz,$-$00
3162	3e 2c 	ld a,$2c	ld a,$00
3164	c3 44 3f 	jp $3f44	jp $0000
3167	c1 	pop bc	pop bc
3168	21 0e 00 	ld hl,$000e	ld hl,$0000
316b	39 	add hl,sp	add hl,sp
316c	f9 	ld sp,hl	ld sp,hl
316d	fe e3 	cp $e3	cp $00
316f	20 c7 	jr nz,$-$37	jr nz,$-$00
3171	dd e5 	push ix	push ix
3173	e1 	pop hl	pop hl
3174	7c 	ld a,h	ld a,h
3175	b5 	or l	or l
3176	28 02 	jr z,$+$04	jr z,$+$00
3178	ed 42 	sbc hl,bc	sbc hl,bc
317a	01 00 d0 	ld bc,$d000	ld bc,$0000
317d	28 15 	jr z,$+$17	jr z,$+$00
317f	14 	inc d	inc d
3180	18 b6 	jr $-$48	jr $-$00
3182	c1 	pop bc	pop bc
3183	fe f5 	cp $f5	cp $00
3185	20 b1 	jr nz,$-$4d	jr nz,$-$00
3187	01 00 f2 	ld bc,$f200	ld bc,$0000
318a	18 08 	jr $+$0a	jr $+$00
318c	c1 	pop bc	pop bc
318d	fe c7 	cp $c7	cp $00
318f	20 a7 	jr nz,$-$57	jr nz,$-$00
3191	01 00 95 	ld bc,$9500	ld bc,$0000
3194	cd 50 36 	call $3650	call $0000
3197	cd 42 35 	call $3542	call $0000
319a	c3 99 24 	jp $2499	jp $0000
319d	cd 33 18 	call $1833	call $0000
31a0	d9 	exx	exx
31a1	e5 	push hl	push hl
31a2	cd a2 20 	call $20a2	call $0000
31a5	cd 33 18 	call $1833	call $0000
31a8	d9 	exx	exx
31a9	c1 	pop bc	pop bc
31aa	ed 69 	out (bc),l	out (bc),l
31ac	c3 99 24 	jp $2499	jp $0000
31af	cd e3 41 	call $41e3	call $0000
31b2	d8 	ret c	ret c
31b3	c4 cd 41 	call nz,$41cd	call nz,$0000
31b6	57 	ld d,a	ld d,a
31b7	cd 0b 45 	call $450b	call $0000
31ba	fd 23 	inc iy	inc iy
31bc	5f 	ld e,a	ld e,a
31bd	fe 3d 	cp $3d	cp $00
31bf	c4 4f 35 	call nz,$354f	call nz,$0000
31c2	7a 	ld a,d	ld a,d
31c3	e6 c0 	and $c0	and $00
31c5	c0 	ret nz	ret nz
31c6	d5 	push de	push de
31c7	e5 	push hl	push hl
31c8	cd 2c 18 	call $182c	call $0000
31cb	dd e1 	pop ix	pop ix
31cd	d1 	pop de	pop de
31ce	7b 	ld a,e	ld a,e
31cf	fe 3d 	cp $3d	cp $00
31d1	28 1c 	jr z,$+$1e	jr z,$+$00
31d3	d5 	push de	push de
31d4	d9 	exx	exx
31d5	eb 	ex de,hl	ex de,hl
31d6	d9 	exx	exx
31d7	eb 	ex de,hl	ex de,hl
31d8	41 	ld b,c	ld b,c
31d9	e3 	ex (sp),hl	ex (sp),hl
31da	7c 	ld a,h	ld a,h
31db	e3 	ex (sp),hl	ex (sp),hl
31dc	cd 25 19 	call $1925	call $0000
31df	e3 	ex (sp),hl	ex (sp),hl
31e0	7d 	ld a,l	ld a,l
31e1	e3 	ex (sp),hl	ex (sp),hl
31e2	e6 0f 	and $0f	and $00
31e4	dd e5 	push ix	push ix
31e6	cd 15 45 	call $4515	call $0000
31e9	dd e1 	pop ix	pop ix
31eb	d1 	pop de	pop de
31ec	da 44 3f 	jp c,$3f44	jp c,$0000
31ef	7a 	ld a,d	ld a,d
31f0	fe 05 	cp $05	cp $00
31f2	28 12 	jr z,$+$14	jr z,$+$00
31f4	f5 	push af	push af
31f5	0c 	inc c	inc c
31f6	0d 	dec c	dec c
31f7	c4 17 1c 	call nz,$1c17	call nz,$0000
31fa	f1 	pop af	pop af
31fb	fe 04 	cp $04	cp $00
31fd	28 0a 	jr z,$+$0c	jr z,$+$00
31ff	bf 	cp a	cp a
3200	d9 	exx	exx
3201	dd 75 00 	ld (ix),l	ld (ix),l
3204	d9 	exx	exx
3205	c9 	ret	ret
3206	dd 71 04 	ld (ix+$04),c	ld (ix+$00),c
3209	d9 	exx	exx
320a	dd 75 00 	ld (ix),l	ld (ix),l
320d	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
3210	d9 	exx	exx
3211	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
3214	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
3217	c9 	ret	ret
3218	7d 	ld a,l	ld a,l
3219	fe 2b 	cp $2b	cp $00
321b	7c 	ld a,h	ld a,h
321c	20 20 	jr nz,$+$22	jr nz,$+$00
321e	fd e5 	push iy	push iy
3220	dd e5 	push ix	push ix
3222	fd e1 	pop iy	pop iy
3224	cd 19 20 	call $2019	call $0000
3227	fd e5 	push iy	push iy
3229	dd e1 	pop ix	pop ix
322b	cd 0e 1a 	call $1a0e	call $0000
322e	c1 	pop bc	pop bc
322f	78 	ld a,b	ld a,b
3230	0c 	inc c	inc c
3231	0d 	dec c	dec c
3232	28 08 	jr z,$+$0a	jr z,$+$00
3234	21 00 00 	ld hl,$0000	ld hl,$0000
3237	44 	ld b,h	ld b,h
3238	39 	add hl,sp	add hl,sp
3239	ed b0 	ldir	ldir
323b	f9 	ld sp,hl	ld sp,hl
323c	fd e1 	pop iy	pop iy
323e	21 00 52 	ld hl,$5200	ld hl,$0000
3241	1f 	rra	rra
3242	30 4f 	jr nc,$+$51	jr nc,$+$00
3244	e5 	push hl	push hl
3245	cd 32 19 	call $1932	call $0000
3248	7b 	ld a,e	ld a,e
3249	d9 	exx	exx
324a	6f 	ld l,a	ld l,a
324b	7c 	ld a,h	ld a,h
324c	d9 	exx	exx
324d	bb 	cp e	cp e
324e	30 24 	jr nc,$+$26	jr nc,$+$00
3250	d9 	exx	exx
3251	65 	ld h,l	ld h,l
3252	d9 	exx	exx
3253	e5 	push hl	push hl
3254	06 00 	ld b,$00	ld b,$00
3256	4f 	ld c,a	ld c,a
3257	09 	add hl,bc	add hl,bc
3258	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
325c	ed 42 	sbc hl,bc	sbc hl,bc
325e	e1 	pop hl	pop hl
325f	28 12 	jr z,$+$14	jr z,$+$00
3261	60 	ld h,b	ld h,b
3262	69 	ld l,c	ld l,c
3263	b7 	or a	or a
3264	28 0d 	jr z,$+$0f	jr z,$+$00
3266	7b 	ld a,e	ld a,e
3267	5f 	ld e,a	ld e,a
3268	1d 	dec e	dec e
3269	a3 	and e	and e
326a	20 fb 	jr nz,$-$03	jr nz,$-$00
326c	37 	scf	scf
326d	cb 13 	rl e	rl e
326f	7b 	ld a,e	ld a,e
3270	d9 	exx	exx
3271	67 	ld h,a	ld h,a
3272	d9 	exx	exx
3273	37 	scf	scf
3274	cd 09 32 	call $3209	call $0000
3277	06 00 	ld b,$00	ld b,$00
3279	4b 	ld c,e	ld c,e
327a	eb 	ex de,hl	ex de,hl
327b	e1 	pop hl	pop hl
327c	0d 	dec c	dec c
327d	0c 	inc c	inc c
327e	c8 	ret z	ret z
327f	ed b0 	ldir	ldir
3281	d0 	ret nc	ret nc
3282	ed 53 e0 54 	ld ($54e0),de	ld ($0000),de
3286	e5 	push hl	push hl
3287	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
328a	24 	inc h	inc h
328b	ed 72 	sbc hl,sp	sbc hl,sp
328d	e1 	pop hl	pop hl
328e	d8 	ret c	ret c
328f	af 	xor a	xor a
3290	c3 44 3f 	jp $3f44	jp $0000
3293	4b 	ld c,e	ld c,e
3294	dd e5 	push ix	push ix
3296	d1 	pop de	pop de
3297	af 	xor a	xor a
3298	47 	ld b,a	ld b,a
3299	b9 	cp c	cp c
329a	28 02 	jr z,$+$04	jr z,$+$00
329c	ed b0 	ldir	ldir
329e	3e 0d 	ld a,$0d	ld a,$00
32a0	12 	ld (de),a	ld (de),a
32a1	c9 	ret	ret
32a2	dd 75 00 	ld (ix),l	ld (ix),l
32a5	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
32a8	dd 77 02 	ld (ix+$02),a	ld (ix+$00),a
32ab	fd e3 	ex (sp),iy	ex (sp),iy
32ad	f5 	push af	push af
32ae	fd e5 	push iy	push iy
32b0	dd e5 	push ix	push ix
32b2	cd 0b 45 	call $450b	call $0000
32b5	cd d6 25 	call $25d6	call $0000
32b8	dd e1 	pop ix	pop ix
32ba	dd 75 04 	ld (ix+$04),l	ld (ix+$00),l
32bd	dd 74 05 	ld (ix+$05),h	ld (ix+$00),h
32c0	dd 77 06 	ld (ix+$06),a	ld (ix+$00),a
32c3	fd e1 	pop iy	pop iy
32c5	f1 	pop af	pop af
32c6	01 08 00 	ld bc,$0008	ld bc,$0000
32c9	dd 09 	add ix,bc	add ix,bc
32cb	18 2d 	jr $+$2f	jr $+$00
32cd	3e ff 	ld a,$ff	ld a,$00
32cf	f5 	push af	push af
32d0	fd 23 	inc iy	inc iy
32d2	13 	inc de	inc de
32d3	d5 	push de	push de
32d4	06 00 	ld b,$00	ld b,$00
32d6	cd 0b 45 	call $450b	call $0000
32d9	fe f8 	cp $f8	cp $00
32db	20 06 	jr nz,$+$08	jr nz,$+$00
32dd	fd 23 	inc iy	inc iy
32df	cd 0b 45 	call $450b	call $0000
32e2	04 	inc b	inc b
32e3	c5 	push bc	push bc
32e4	dd e5 	push ix	push ix
32e6	cd e3 41 	call $41e3	call $0000
32e9	38 49 	jr c,$+$4b	jr c,$+$00
32eb	c4 cd 41 	call nz,$41cd	call nz,$0000
32ee	dd e1 	pop ix	pop ix
32f0	c1 	pop bc	pop bc
32f1	d1 	pop de	pop de
32f2	e5 	push hl	push hl
32f3	f5 	push af	push af
32f4	d5 	push de	push de
32f5	05 	dec b	dec b
32f6	28 aa 	jr z,$-$54	jr z,$-$00
32f8	fd e3 	ex (sp),iy	ex (sp),iy
32fa	cb 77 	bit 6,a	bit 6,a
32fc	20 3b 	jr nz,$+$3d	jr nz,$+$00
32fe	b7 	or a	or a
32ff	fa 15 33 	jp m,$3315	jp m,$0000
3302	dd e5 	push ix	push ix
3304	cd 2c 18 	call $182c	call $0000
3307	dd e1 	pop ix	pop ix
3309	fd e3 	ex (sp),iy	ex (sp),iy
330b	d1 	pop de	pop de
330c	f1 	pop af	pop af
330d	d9 	exx	exx
330e	e5 	push hl	push hl
330f	d9 	exx	exx
3310	e5 	push hl	push hl
3311	47 	ld b,a	ld b,a
3312	c5 	push bc	push bc
3313	18 13 	jr $+$15	jr $+$00
3315	dd e5 	push ix	push ix
3317	cd 3c 18 	call $183c	call $0000
331a	d9 	exx	exx
331b	c1 	pop bc	pop bc
331c	fd e3 	ex (sp),iy	ex (sp),iy
331e	d1 	pop de	pop de
331f	d9 	exx	exx
3320	f1 	pop af	pop af
3321	cd 19 20 	call $2019	call $0000
3324	d9 	exx	exx
3325	c5 	push bc	push bc
3326	dd e1 	pop ix	pop ix
3328	cd 0b 45 	call $450b	call $0000
332b	fe 2c 	cp $2c	cp $00
332d	20 27 	jr nz,$+$29	jr nz,$+$00
332f	1a 	ld a,(de)	ld a,(de)
3330	fe 2c 	cp $2c	cp $00
3332	28 9c 	jr z,$-$62	jr z,$-$00
3334	3e 1f 	ld a,$1f	ld a,$00
3336	c3 44 3f 	jp $3f44	jp $0000
3339	dd e5 	push ix	push ix
333b	cd 0b 45 	call $450b	call $0000
333e	cd e3 41 	call $41e3	call $0000
3341	38 f1 	jr c,$-$0d	jr c,$-$00
3343	dd 4e 00 	ld c,(ix)	ld c,(ix)
3346	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
3349	dd e1 	pop ix	pop ix
334b	cd 0b 45 	call $450b	call $0000
334e	fd e3 	ex (sp),iy	ex (sp),iy
3350	d1 	pop de	pop de
3351	f1 	pop af	pop af
3352	c5 	push bc	push bc
3353	f5 	push af	push af
3354	18 d2 	jr $-$2c	jr $-$00
3356	cd ae 20 	call $20ae	call $0000
3359	1a 	ld a,(de)	ld a,(de)
335a	fe 29 	cp $29	cp $00
335c	20 d6 	jr nz,$-$28	jr nz,$-$00
335e	13 	inc de	inc de
335f	d9 	exx	exx
3360	c1 	pop bc	pop bc
3361	78 	ld a,b	ld a,b
3362	3c 	inc a	inc a
3363	d9 	exx	exx
3364	c8 	ret z	ret z
3365	d9 	exx	exx
3366	3d 	dec a	dec a
3367	cb 77 	bit 6,a	bit 6,a
3369	20 19 	jr nz,$+$1b	jr nz,$+$00
336b	b7 	or a	or a
336c	fa 7a 33 	jp m,$337a	jp m,$0000
336f	e1 	pop hl	pop hl
3370	d9 	exx	exx
3371	e1 	pop hl	pop hl
3372	d9 	exx	exx
3373	dd e1 	pop ix	pop ix
3375	cd f0 31 	call $31f0	call $0000
3378	18 e6 	jr $-$18	jr $-$00
337a	cd 37 20 	call $2037	call $0000
337d	dd e1 	pop ix	pop ix
337f	cd 3e 32 	call $323e	call $0000
3382	18 dc 	jr $-$22	jr $-$00
3384	c1 	pop bc	pop bc
3385	dd e1 	pop ix	pop ix
3387	dd 71 00 	ld (ix),c	ld (ix),c
338a	dd 70 01 	ld (ix+$01),b	ld (ix+$00),b
338d	18 d1 	jr $-$2d	jr $-$00
338f	3e ff 	ld a,$ff	ld a,$00
3391	f5 	push af	push af
3392	d9 	exx	exx
3393	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
3396	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
3399	e5 	push hl	push hl
339a	dd 6e 00 	ld l,(ix)	ld l,(ix)
339d	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
33a0	dd 7e 02 	ld a,(ix+$02)	ld a,(ix+$00)
33a3	cb 77 	bit 6,a	bit 6,a
33a5	20 19 	jr nz,$+$1b	jr nz,$+$00
33a7	b7 	or a	or a
33a8	fa c6 33 	jp m,$33c6	jp m,$0000
33ab	e5 	push hl	push hl
33ac	dd e3 	ex (sp),ix	ex (sp),ix
33ae	cd 25 19 	call $1925	call $0000
33b1	dd e1 	pop ix	pop ix
33b3	d9 	exx	exx
33b4	e5 	push hl	push hl
33b5	d9 	exx	exx
33b6	e5 	push hl	push hl
33b7	dd 46 06 	ld b,(ix+$06)	ld b,(ix+$00)
33ba	c5 	push bc	push bc
33bb	cd 86 32 	call $3286	call $0000
33be	18 1e 	jr $+$20	jr $+$00
33c0	5e 	ld e,(hl)	ld e,(hl)
33c1	23 	inc hl	inc hl
33c2	56 	ld d,(hl)	ld d,(hl)
33c3	d5 	push de	push de
33c4	18 f1 	jr $-$0d	jr $-$00
33c6	e5 	push hl	push hl
33c7	dd e3 	ex (sp),ix	ex (sp),ix
33c9	cd 0e 1a 	call $1a0e	call $0000
33cc	dd e1 	pop ix	pop ix
33ce	dd 7e 06 	ld a,(ix+$06)	ld a,(ix+$00)
33d1	d9 	exx	exx
33d2	dd e5 	push ix	push ix
33d4	e1 	pop hl	pop hl
33d5	d9 	exx	exx
33d6	cd 19 20 	call $2019	call $0000
33d9	d9 	exx	exx
33da	e5 	push hl	push hl
33db	dd e1 	pop ix	pop ix
33dd	d9 	exx	exx
33de	11 08 00 	ld de,$0008	ld de,$0000
33e1	dd 19 	add ix,de	add ix,de
33e3	d9 	exx	exx
33e4	10 ac 	djnz $-$52	djnz $-$00
33e6	c3 5f 33 	jp $335f	jp $0000
33e9	c1 	pop bc	pop bc
33ea	26 00 	ld h,$00	ld h,$00
33ec	68 	ld l,b	ld l,b
33ed	29 	add hl,hl	add hl,hl
33ee	29 	add hl,hl	add hl,hl
33ef	29 	add hl,hl	add hl,hl
33f0	39 	add hl,sp	add hl,sp
33f1	dd 21 00 00 	ld ix,$0000	ld ix,$0000
33f5	dd 39 	add ix,sp	add ix,sp
33f7	f5 	push af	push af
33f8	d5 	push de	push de
33f9	e5 	push hl	push hl
33fa	d9 	exx	exx
33fb	c5 	push bc	push bc
33fc	d5 	push de	push de
33fd	d9 	exx	exx
33fe	78 	ld a,b	ld a,b
33ff	21 00 52 	ld hl,$5200	ld hl,$0000
3402	11 00 53 	ld de,$5300	ld de,$0000
3405	01 ff 00 	ld bc,$00ff	ld bc,$0000
3408	ed b0 	ldir	ldir
340a	47 	ld b,a	ld b,a
340b	cd 8f 33 	call $338f	call $0000
340e	21 00 53 	ld hl,$5300	ld hl,$0000
3411	11 00 52 	ld de,$5200	ld de,$0000
3414	01 ff 00 	ld bc,$00ff	ld bc,$0000
3417	ed b0 	ldir	ldir
3419	d9 	exx	exx
341a	d1 	pop de	pop de
341b	c1 	pop bc	pop bc
341c	d9 	exx	exx
341d	e1 	pop hl	pop hl
341e	d1 	pop de	pop de
341f	f1 	pop af	pop af
3420	18 0a 	jr $+$0c	jr $+$00
3422	c1 	pop bc	pop bc
3423	cb 78 	bit 7,b	bit 7,b
3425	e1 	pop hl	pop hl
3426	c1 	pop bc	pop bc
3427	09 	add hl,bc	add hl,bc
3428	39 	add hl,sp	add hl,sp
3429	c4 e3 36 	call nz,$36e3	call nz,$0000
342c	f9 	ld sp,hl	ld sp,hl
342d	dd 23 	inc ix	inc ix
342f	18 05 	jr $+$07	jr $+$00
3431	d1 	pop de	pop de
3432	dd 21 00 00 	ld ix,$0000	ld ix,$0000
3436	c1 	pop bc	pop bc
3437	21 2a 35 	ld hl,$352a	ld hl,$0000
343a	b7 	or a	or a
343b	ed 42 	sbc hl,bc	sbc hl,bc
343d	28 1a 	jr z,$+$1c	jr z,$+$00
343f	b7 	or a	or a
3440	20 0f 	jr nz,$+$11	jr nz,$+$00
3442	21 70 2a 	ld hl,$2a70	ld hl,$0000
3445	ed 42 	sbc hl,bc	sbc hl,bc
3447	28 a0 	jr z,$-$5e	jr z,$-$00
3449	21 dc 26 	ld hl,$26dc	ld hl,$0000
344c	b7 	or a	or a
344d	ed 42 	sbc hl,bc	sbc hl,bc
344f	28 d1 	jr z,$-$2d	jr z,$-$00
3451	dd e5 	push ix	push ix
3453	e1 	pop hl	pop hl
3454	7c 	ld a,h	ld a,h
3455	b5 	or l	or l
3456	c5 	push bc	push bc
3457	eb 	ex de,hl	ex de,hl
3458	e9 	jp (hl)	jp (hl)
3459	dd e1 	pop ix	pop ix
345b	b7 	or a	or a
345c	28 20 	jr z,$+$22	jr z,$+$00
345e	dd e5 	push ix	push ix
3460	c1 	pop bc	pop bc
3461	cb 47 	bit 0,a	bit 0,a
3463	28 07 	jr z,$+$09	jr z,$+$00
3465	21 f0 54 	ld hl,$54f0	ld hl,$0000
3468	ed 42 	sbc hl,bc	sbc hl,bc
346a	28 12 	jr z,$+$14	jr z,$+$00
346c	b7 	or a	or a
346d	cb 4f 	bit 1,a	bit 1,a
346f	28 07 	jr z,$+$09	jr z,$+$00
3471	21 ea 54 	ld hl,$54ea	ld hl,$0000
3474	ed 42 	sbc hl,bc	sbc hl,bc
3476	28 06 	jr z,$+$08	jr z,$+$00
3478	c5 	push bc	push bc
3479	01 2a 35 	ld bc,$352a	ld bc,$0000
347c	18 d8 	jr $-$26	jr $-$00
347e	c1 	pop bc	pop bc
347f	cb 70 	bit 6,b	bit 6,b
3481	20 14 	jr nz,$+$16	jr nz,$+$00
3483	cb 78 	bit 7,b	bit 7,b
3485	20 23 	jr nz,$+$25	jr nz,$+$00
3487	e1 	pop hl	pop hl
3488	d9 	exx	exx
3489	e1 	pop hl	pop hl
348a	d9 	exx	exx
348b	cb 60 	bit 4,b	bit 4,b
348d	20 a7 	jr nz,$-$57	jr nz,$-$00
348f	f5 	push af	push af
3490	78 	ld a,b	ld a,b
3491	cd f0 31 	call $31f0	call $0000
3494	f1 	pop af	pop af
3495	18 9f 	jr $-$5f	jr $-$00
3497	e1 	pop hl	pop hl
3498	cb 60 	bit 4,b	bit 4,b
349a	20 9a 	jr nz,$-$64	jr nz,$-$00
349c	dd 75 00 	ld (ix),l	ld (ix),l
349f	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
34a2	18 92 	jr $-$6c	jr $-$00
34a4	06 00 	ld b,$00	ld b,$00
34a6	09 	add hl,bc	add hl,bc
34a7	f9 	ld sp,hl	ld sp,hl
34a8	18 8c 	jr $-$72	jr $-$00
34aa	21 00 00 	ld hl,$0000	ld hl,$0000
34ad	39 	add hl,sp	add hl,sp
34ae	cb 60 	bit 4,b	bit 4,b
34b0	20 f2 	jr nz,$-$0c	jr nz,$-$00
34b2	f5 	push af	push af
34b3	d5 	push de	push de
34b4	59 	ld e,c	ld e,c
34b5	78 	ld a,b	ld a,b
34b6	cd 41 32 	call $3241	call $0000
34b9	d1 	pop de	pop de
34ba	f1 	pop af	pop af
34bb	f9 	ld sp,hl	ld sp,hl
34bc	18 ea 	jr $-$14	jr $-$00
34be	d1 	pop de	pop de
34bf	fd 23 	inc iy	inc iy
34c1	cd 0b 45 	call $450b	call $0000
34c4	fe f8 	cp $f8	cp $00
34c6	20 08 	jr nz,$+$0a	jr nz,$+$00
34c8	08 	ex af,af'	ex af,af'
34c9	3c 	inc a	inc a
34ca	08 	ex af,af'	ex af,af'
34cb	fd 23 	inc iy	inc iy
34cd	cd 0b 45 	call $450b	call $0000
34d0	d5 	push de	push de
34d1	d9 	exx	exx
34d2	c5 	push bc	push bc
34d3	d5 	push de	push de
34d4	e5 	push hl	push hl
34d5	d9 	exx	exx
34d6	cd d6 25 	call $25d6	call $0000
34d9	d9 	exx	exx
34da	e1 	pop hl	pop hl
34db	d1 	pop de	pop de
34dc	c1 	pop bc	pop bc
34dd	d9 	exx	exx
34de	d1 	pop de	pop de
34df	cb 77 	bit 6,a	bit 6,a
34e1	20 12 	jr nz,$+$14	jr nz,$+$00
34e3	b7 	or a	or a
34e4	fa ff 34 	jp m,$34ff	jp m,$0000
34e7	d9 	exx	exx
34e8	e5 	push hl	push hl
34e9	d9 	exx	exx
34ea	47 	ld b,a	ld b,a
34eb	cd 25 19 	call $1925	call $0000
34ee	d9 	exx	exx
34ef	e3 	ex (sp),hl	ex (sp),hl
34f0	d9 	exx	exx
34f1	e5 	push hl	push hl
34f2	c5 	push bc	push bc
34f3	18 30 	jr $+$32	jr $+$00
34f5	dd 4e 00 	ld c,(ix)	ld c,(ix)
34f8	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
34fb	c5 	push bc	push bc
34fc	f5 	push af	push af
34fd	18 26 	jr $+$28	jr $+$00
34ff	f5 	push af	push af
3500	d5 	push de	push de
3501	d9 	exx	exx
3502	e5 	push hl	push hl
3503	d9 	exx	exx
3504	cd 0e 1a 	call $1a0e	call $0000
3507	d9 	exx	exx
3508	e1 	pop hl	pop hl
3509	d9 	exx	exx
350a	4b 	ld c,e	ld c,e
350b	d1 	pop de	pop de
350c	cd 86 32 	call $3286	call $0000
350f	f1 	pop af	pop af
3510	21 00 00 	ld hl,$0000	ld hl,$0000
3513	45 	ld b,l	ld b,l
3514	ed 42 	sbc hl,bc	sbc hl,bc
3516	39 	add hl,sp	add hl,sp
3517	f9 	ld sp,hl	ld sp,hl
3518	47 	ld b,a	ld b,a
3519	c5 	push bc	push bc
351a	28 09 	jr z,$+$0b	jr z,$+$00
351c	d5 	push de	push de
351d	11 00 52 	ld de,$5200	ld de,$0000
3520	eb 	ex de,hl	ex de,hl
3521	45 	ld b,l	ld b,l
3522	ed b0 	ldir	ldir
3524	d1 	pop de	pop de
3525	dd e5 	push ix	push ix
3527	cd 2a 35 	call $352a	call $0000
352a	cd 86 32 	call $3286	call $0000
352d	cd 0b 45 	call $450b	call $0000
3530	fe 2c 	cp $2c	cp $00
3532	28 8b 	jr z,$-$73	jr z,$-$00
3534	eb 	ex de,hl	ex de,hl
3535	e9 	jp (hl)	jp (hl)
3536	cd 0b 45 	call $450b	call $0000
3539	fe 8b 	cp $8b	cp $00
353b	d0 	ret nc	ret nc
353c	fe 3a 	cp $3a	cp $00
353e	d0 	ret nc	ret nc
353f	fe 0d 	cp $0d	cp $00
3541	c9 	ret	ret
3542	cd 36 35 	call $3536	call $0000
3545	c8 	ret z	ret z
3546	fd 23 	inc iy	inc iy
3548	fe 22 	cp $22	cp $00
354a	cc 99 36 	call z,$3699	call z,$0000
354d	18 f3 	jr $-$0b	jr $-$00
354f	cd 0b 45 	call $450b	call $0000
3552	fd 23 	inc iy	inc iy
3554	fe 3d 	cp $3d	cp $00
3556	c8 	ret z	ret z
3557	3e 04 	ld a,$04	ld a,$00
3559	c3 44 3f 	jp $3f44	jp $0000
355c	fe 8a 	cp $8a	cp $00
355e	28 0c 	jr z,$+$0e	jr z,$+$00
3560	fe 89 	cp $89	cp $00
3562	28 38 	jr z,$+$3a	jr z,$+$00
3564	fe 27 	cp $27	cp $00
3566	c0 	ret nz	ret nz
3567	cd fb 40 	call $40fb	call $0000
356a	af 	xor a	xor a
356b	c9 	ret	ret
356c	c5 	push bc	push bc
356d	cd 33 18 	call $1833	call $0000
3570	d9 	exx	exx
3571	c1 	pop bc	pop bc
3572	fd 7e 00 	ld a,(iy)	ld a,(iy)
3575	fe 2c 	cp $2c	cp $00
3577	28 11 	jr z,$+$13	jr z,$+$00
3579	cd ae 20 	call $20ae	call $0000
357c	7d 	ld a,l	ld a,l
357d	21 fb 54 	ld hl,$54fb	ld hl,$0000
3580	be 	cp (hl)	cp (hl)
3581	c8 	ret z	ret z
3582	f5 	push af	push af
3583	dc fb 40 	call c,$40fb	call c,$0000
3586	f1 	pop af	pop af
3587	96 	sub (hl)	sub (hl)
3588	18 19 	jr $+$1b	jr $+$00
358a	fd 23 	inc iy	inc iy
358c	c5 	push bc	push bc
358d	e5 	push hl	push hl
358e	cd 33 18 	call $1833	call $0000
3591	d9 	exx	exx
3592	d1 	pop de	pop de
3593	c1 	pop bc	pop bc
3594	cd ae 20 	call $20ae	call $0000
3597	cd 08 02 	call $0208	call $0000
359a	af 	xor a	xor a
359b	c9 	ret	ret
359c	c5 	push bc	push bc
359d	cd 60 18 	call $1860	call $0000
35a0	d9 	exx	exx
35a1	7d 	ld a,l	ld a,l
35a2	c1 	pop bc	pop bc
35a3	b7 	or a	or a
35a4	c8 	ret z	ret z
35a5	c5 	push bc	push bc
35a6	47 	ld b,a	ld b,a
35a7	3e 20 	ld a,$20	ld a,$00
35a9	cd 02 41 	call $4102	call $0000
35ac	10 f9 	djnz $-$05	djnz $-$00
35ae	c1 	pop bc	pop bc
35af	af 	xor a	xor a
35b0	c9 	ret	ret
35b1	21 00 52 	ld hl,$5200	ld hl,$0000
35b4	1c 	inc e	inc e
35b5	1d 	dec e	dec e
35b6	c8 	ret z	ret z
35b7	7e 	ld a,(hl)	ld a,(hl)
35b8	23 	inc hl	inc hl
35b9	cd 02 41 	call $4102	call $0000
35bc	18 f7 	jr $-$07	jr $-$00
35be	f5 	push af	push af
35bf	c5 	push bc	push bc
35c0	e5 	push hl	push hl
35c1	fd e3 	ex (sp),iy	ex (sp),iy
35c3	cd db 35 	call $35db	call $0000
35c6	cd 0b 45 	call $450b	call $0000
35c9	fd e3 	ex (sp),iy	ex (sp),iy
35cb	e1 	pop hl	pop hl
35cc	c1 	pop bc	pop bc
35cd	f1 	pop af	pop af
35ce	c9 	ret	ret
35cf	11 00 52 	ld de,$5200	ld de,$0000
35d2	7e 	ld a,(hl)	ld a,(hl)
35d3	12 	ld (de),a	ld (de),a
35d4	fe 0d 	cp $0d	cp $00
35d6	c8 	ret z	ret z
35d7	23 	inc hl	inc hl
35d8	1c 	inc e	inc e
35d9	18 f7 	jr $-$07	jr $-$00
35db	cd 0b 45 	call $450b	call $0000
35de	fe 22 	cp $22	cp $00
35e0	fd 23 	inc iy	inc iy
35e2	ca 7a 19 	jp z,$197a	jp z,$0000
35e5	fd 2b 	dec iy	dec iy
35e7	11 00 52 	ld de,$5200	ld de,$0000
35ea	fd 7e 00 	ld a,(iy)	ld a,(iy)
35ed	12 	ld (de),a	ld (de),a
35ee	fe 2c 	cp $2c	cp $00
35f0	c8 	ret z	ret z
35f1	fe 0d 	cp $0d	cp $00
35f3	c8 	ret z	ret z
35f4	fd 23 	inc iy	inc iy
35f6	1c 	inc e	inc e
35f7	18 f1 	jr $-$0d	jr $-$00
35f9	3e dc 	ld a,$dc	ld a,$00
35fb	06 00 	ld b,$00	ld b,$00
35fd	4e 	ld c,(hl)	ld c,(hl)
35fe	0c 	inc c	inc c
35ff	0d 	dec c	dec c
3600	28 0c 	jr z,$+$0e	jr z,$+$00
3602	23 	inc hl	inc hl
3603	23 	inc hl	inc hl
3604	23 	inc hl	inc hl
3605	be 	cp (hl)	cp (hl)
3606	c8 	ret z	ret z
3607	0d 	dec c	dec c
3608	0d 	dec c	dec c
3609	0d 	dec c	dec c
360a	09 	add hl,bc	add hl,bc
360b	c3 fd 35 	jp $35fd	jp $0000
360e	2b 	dec hl	dec hl
360f	37 	scf	scf
3610	c9 	ret	ret
3611	2e 00 	ld l,$00	ld l,$00
3613	fd 7e 00 	ld a,(iy)	ld a,(iy)
3616	b7 	or a	or a
3617	28 34 	jr z,$+$36	jr z,$+$00
3619	fd 7e 03 	ld a,(iy+$03)	ld a,(iy+$00)
361c	b8 	cp b	cp b
361d	28 1d 	jr z,$+$1f	jr z,$+$00
361f	b9 	cp c	cp c
3620	28 1a 	jr z,$+$1c	jr z,$+$00
3622	ba 	cp d	cp d
3623	28 22 	jr z,$+$24	jr z,$+$00
3625	c5 	push bc	push bc
3626	06 00 	ld b,$00	ld b,$00
3628	fd 4e 00 	ld c,(iy)	ld c,(iy)
362b	fd 09 	add iy,bc	add iy,bc
362d	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
3630	bb 	cp e	cp e
3631	79 	ld a,c	ld a,c
3632	c1 	pop bc	pop bc
3633	20 de 	jr nz,$-$20	jr nz,$-$00
3635	fe 05 	cp $05	cp $00
3637	38 da 	jr c,$-$24	jr c,$-$00
3639	2c 	inc l	inc l
363a	18 d7 	jr $-$27	jr $-$00
363c	2c 	inc l	inc l
363d	2d 	dec l	dec l
363e	20 e2 	jr nz,$-$1c	jr nz,$-$00
3640	01 04 00 	ld bc,$0004	ld bc,$0000
3643	fd 09 	add iy,bc	add iy,bc
3645	af 	xor a	xor a
3646	c9 	ret	ret
3647	2d 	dec l	dec l
3648	f2 25 36 	jp p,$3625	jp p,$0000
364b	18 f3 	jr $-$0b	jr $-$00
364d	f6 01 	or $01	or $00
364f	c9 	ret	ret
3650	fd 7e 00 	ld a,(iy)	ld a,(iy)
3653	fd 23 	inc iy	inc iy
3655	fe 22 	cp $22	cp $00
3657	cc 99 36 	call z,$3699	call z,$0000
365a	fe f4 	cp $f4	cp $00
365c	28 22 	jr z,$+$24	jr z,$+$00
365e	fe 10 	cp $10	cp $00
3660	28 30 	jr z,$+$32	jr z,$+$00
3662	b8 	cp b	cp b
3663	28 29 	jr z,$+$2b	jr z,$+$00
3665	b9 	cp c	cp c
3666	28 23 	jr z,$+$25	jr z,$+$00
3668	fe 0d 	cp $0d	cp $00
366a	20 e4 	jr nz,$-$1a	jr nz,$-$00
366c	fd 7e 00 	ld a,(iy)	ld a,(iy)
366f	fd 23 	inc iy	inc iy
3671	b7 	or a	or a
3672	ca d3 24 	jp z,$24d3	jp z,$0000
3675	fd 23 	inc iy	inc iy
3677	fd 23 	inc iy	inc iy
3679	fd 7e 00 	ld a,(iy)	ld a,(iy)
367c	fe dc 	cp $dc	cp $00
367e	20 d0 	jr nz,$-$2e	jr nz,$-$00
3680	fd 7e 00 	ld a,(iy)	ld a,(iy)
3683	fd 23 	inc iy	inc iy
3685	fe 0d 	cp $0d	cp $00
3687	20 f7 	jr nz,$-$07	jr nz,$-$00
3689	18 e1 	jr $-$1d	jr $-$00
368b	14 	inc d	inc d
368c	18 c2 	jr $-$3c	jr $-$00
368e	15 	dec d	dec d
368f	20 bf 	jr nz,$-$3f	jr nz,$-$00
3691	c9 	ret	ret
3692	cd 0b 45 	call $450b	call $0000
3695	fd 23 	inc iy	inc iy
3697	18 b7 	jr $-$47	jr $-$00
3699	fd 7e 00 	ld a,(iy)	ld a,(iy)
369c	fd 23 	inc iy	inc iy
369e	fe 0d 	cp $0d	cp $00
36a0	ca a8 36 	jp z,$36a8	jp z,$0000
36a3	fe 22 	cp $22	cp $00
36a5	20 f2 	jr nz,$-$0c	jr nz,$-$00
36a7	c9 	ret	ret
36a8	3e 09 	ld a,$09	ld a,$00
36aa	c3 44 3f 	jp $3f44	jp $0000
36ad	62 	ld h,d	ld h,d
36ae	6b 	ld l,e	ld l,e
36af	fe 01 	cp $01	cp $00
36b1	c8 	ret z	ret z
36b2	fe 05 	cp $05	cp $00
36b4	29 	add hl,hl	add hl,hl
36b5	d8 	ret c	ret c
36b6	29 	add hl,hl	add hl,hl
36b7	d8 	ret c	ret c
36b8	eb 	ex de,hl	ex de,hl
36b9	c0 	ret nz	ret nz
36ba	19 	add hl,de	add hl,de
36bb	eb 	ex de,hl	ex de,hl
36bc	c9 	ret	ret
36bd	eb 	ex de,hl	ex de,hl
36be	21 00 00 	ld hl,$0000	ld hl,$0000
36c1	3e 10 	ld a,$10	ld a,$00
36c3	29 	add hl,hl	add hl,hl
36c4	d8 	ret c	ret c
36c5	cb 23 	sla e	sla e
36c7	cb 12 	rl d	rl d
36c9	30 02 	jr nc,$+$04	jr nc,$+$00
36cb	09 	add hl,bc	add hl,bc
36cc	d8 	ret c	ret c
36cd	3d 	dec a	dec a
36ce	20 f3 	jr nz,$-$0b	jr nz,$-$00
36d0	c9 	ret	ret
36d1	cd 0b 45 	call $450b	call $0000
36d4	fe 23 	cp $23	cp $00
36d6	3e 2d 	ld a,$2d	ld a,$00
36d8	c2 44 3f 	jp nz,$3f44	jp nz,$0000
36db	fd 23 	inc iy	inc iy
36dd	cd 60 18 	call $1860	call $0000
36e0	d9 	exx	exx
36e1	eb 	ex de,hl	ex de,hl
36e2	c9 	ret	ret
36e3	f5 	push af	push af
36e4	c5 	push bc	push bc
36e5	d5 	push de	push de
36e6	e5 	push hl	push hl
36e7	af 	xor a	xor a
36e8	50 	ld d,b	ld d,b
36e9	59 	ld e,c	ld e,c
36ea	47 	ld b,a	ld b,a
36eb	d5 	push de	push de
36ec	2b 	dec hl	dec hl
36ed	56 	ld d,(hl)	ld d,(hl)
36ee	2b 	dec hl	dec hl
36ef	5e 	ld e,(hl)	ld e,(hl)
36f0	2b 	dec hl	dec hl
36f1	4e 	ld c,(hl)	ld c,(hl)
36f2	2b 	dec hl	dec hl
36f3	e5 	push hl	push hl
36f4	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
36f7	eb 	ex de,hl	ex de,hl
36f8	09 	add hl,bc	add hl,bc
36f9	ed 52 	sbc hl,de	sbc hl,de
36fb	20 07 	jr nz,$+$09	jr nz,$+$00
36fd	19 	add hl,de	add hl,de
36fe	ed 42 	sbc hl,bc	sbc hl,bc
3700	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
3703	b4 	or h	or h
3704	d1 	pop de	pop de
3705	e1 	pop hl	pop hl
3706	0e 04 	ld c,$04	ld c,$00
3708	b7 	or a	or a
3709	ed 42 	sbc hl,bc	sbc hl,bc
370b	eb 	ex de,hl	ex de,hl
370c	20 dd 	jr nz,$-$21	jr nz,$-$00
370e	b7 	or a	or a
370f	e1 	pop hl	pop hl
3710	d1 	pop de	pop de
3711	c1 	pop bc	pop bc
3712	b7 	or a	or a
3713	20 cf 	jr nz,$-$2f	jr nz,$-$00
3715	f1 	pop af	pop af
3716	c9 	ret	ret
3717	c3 41 37 	jp $3741	jp $0000
371a	c3 af 37 	jp $37af	jp $0000
371d	c3 e3 25 	jp $25e3	jp $0000
3720	c3 55 3f 	jp $3f55	jp $0000
3723	c3 fa 44 	jp $44fa	jp $0000
3726	c3 e8 44 	jp $44e8	jp $0000
3729	c3 60 18 	jp $1860	jp $0000
372c	c3 33 18 	jp $1833	jp $0000
372f	c3 3c 18 	jp $183c	jp $0000
3732	c3 97 15 	jp $1597	jp $0000
3735	c3 3f 12 	jp $123f	jp $0000
3738	c3 47 12 	jp $1247	jp $0000
373b	c3 50 12 	jp $1250	jp $0000
373e	c3 37 12 	jp $1237	jp $0000
3741	21 00 54 	ld hl,$5400	ld hl,$0000
3744	f9 	ld sp,hl	ld sp,hl
3745	36 0a 	ld (hl),$0a	ld (hl),$00
3747	2c 	inc l	inc l
3748	36 09 	ld (hl),$09	ld (hl),$00
374a	2c 	inc l	inc l
374b	af 	xor a	xor a
374c	77 	ld (hl),a	ld (hl),a
374d	2c 	inc l	inc l
374e	20 fc 	jr nz,$-$02	jr nz,$-$00
3750	3e 37 	ld a,$37	ld a,$00
3752	32 fe 54 	ld ($54fe),a	ld ($0000),a
3755	21 8e 37 	ld hl,$378e	ld hl,$0000
3758	22 ee 54 	ld ($54ee),hl	ld ($0000),hl
375b	cd 84 11 	call $1184	call $0000
375e	ed 53 e2 54 	ld ($54e2),de	ld ($0000),de
3762	22 dc 54 	ld ($54dc),hl	ld ($0000),hl
3765	cd 3e 40 	call $403e	call $0000
3768	c2 52 24 	jp nz,$2452	jp nz,$0000
376b	cd fa 44 	call $44fa	call $0000
376e	42 	ld b,d	ld b,d
376f	42 	ld b,d	ld b,d
3770	43 	ld b,e	ld b,e
3771	20 42 	jr nz,$+$44	jr nz,$+$00
3773	41 	ld b,c	ld b,c
3774	53 	ld d,e	ld d,e
3775	49 43 	ld.lis b,e	ld.lis b,e
3777	20 28 	jr nz,$+$2a	jr nz,$+$00
3779	5a 	ld e,d	ld e,d
377a	38 30 	jr c,$+$32	jr c,$+$00
377c	29 	add hl,hl	add hl,hl
377d	20 56 	jr nz,$+$58	jr nz,$+$00
377f	65 	ld h,l	ld h,l
3780	72 	ld (hl),d	ld (hl),d
3781	73 	ld (hl),e	ld (hl),e
3782	69 	ld l,c	ld l,c
3783	6f 	ld l,a	ld l,a
3784	6e 	ld l,(hl)	ld l,(hl)
3785	20 35 	jr nz,$+$37	jr nz,$+$00
3787	2e 30 	ld l,$30	ld l,$00
3789	30 20 	jr nc,$+$22	jr nc,$+$00
378b	20 0d 	jr nz,$+$0f	jr nz,$+$00
378d	0a 	ld a,(bc)	ld a,(bc)
378e	28 43 	jr z,$+$45	jr z,$+$00
3790	29 	add hl,hl	add hl,hl
3791	20 43 	jr nz,$+$45	jr nz,$+$00
3793	6f 	ld l,a	ld l,a
3794	70 	ld (hl),b	ld (hl),b
3795	79 	ld a,c	ld a,c
3796	72 	ld (hl),d	ld (hl),d
3797	69 	ld l,c	ld l,c
3798	67 	ld h,a	ld h,a
3799	68 	ld l,b	ld l,b
379a	74 	ld (hl),h	ld (hl),h
379b	20 52 	jr nz,$+$54	jr nz,$+$00
379d	2e 54 	ld l,$54	ld l,$00
379f	2e 52 	ld l,$52	ld l,$00
37a1	75 	ld (hl),l	ld (hl),l
37a2	73 	ld (hl),e	ld (hl),e
37a3	73 	ld (hl),e	ld (hl),e
37a4	65 	ld h,l	ld h,l
37a5	6c 	ld l,h	ld l,h
37a6	6c 	ld l,h	ld l,h
37a7	20 32 	jr nz,$+$34	jr nz,$+$00
37a9	30 32 	jr nc,$+$34	jr nc,$+$00
37ab	34 	inc (hl)	inc (hl)
37ac	0d 	dec c	dec c
37ad	0a 	ld a,(bc)	ld a,(bc)
37ae	00 	nop	nop
37af	f6 37 	or $37	or $00
37b1	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
37b5	cd 93 11 	call $1193	call $0000
37b8	21 fe 54 	ld hl,$54fe	ld hl,$0000
37bb	7e 	ld a,(hl)	ld a,(hl)
37bc	e6 0f 	and $0f	and $00
37be	f6 30 	or $30	or $00
37c0	77 	ld (hl),a	ld (hl),a
37c1	ed 62 	sbc hl,hl	sbc hl,hl
37c3	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
37c6	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
37c9	22 f4 54 	ld ($54f4),hl	ld ($0000),hl
37cc	2a e8 54 	ld hl,($54e8)	ld hl,($0000)
37cf	e5 	push hl	push hl
37d0	7c 	ld a,h	ld a,h
37d1	b5 	or l	or l
37d2	28 17 	jr z,$+$19	jr z,$+$00
37d4	e5 	push hl	push hl
37d5	cd 96 41 	call $4196	call $0000
37d8	e1 	pop hl	pop hl
37d9	ed 4b ff 54 	ld bc,($54ff)	ld bc,($0000)
37dd	06 00 	ld b,$00	ld b,$00
37df	09 	add hl,bc	add hl,bc
37e0	da af 43 	jp c,$43af	jp c,$0000
37e3	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
37e6	3e 20 	ld a,$20	ld a,$00
37e8	cd 02 41 	call $4102	call $0000
37eb	21 00 52 	ld hl,$5200	ld hl,$0000
37ee	cd cb 11 	call $11cb	call $0000
37f1	af 	xor a	xor a
37f2	32 fb 54 	ld ($54fb),a	ld ($0000),a
37f5	fd 21 00 52 	ld iy,$5200	ld iy,$0000
37f9	21 e1 3b 	ld hl,$3be1	ld hl,$0000
37fc	cd a6 3f 	call $3fa6	call $0000
37ff	e1 	pop hl	pop hl
3800	20 19 	jr nz,$+$1b	jr nz,$+$00
3802	87 	add a,a	add a,a
3803	4f 	ld c,a	ld c,a
3804	7c 	ld a,h	ld a,h
3805	b5 	or l	or l
3806	20 0f 	jr nz,$+$11	jr nz,$+$00
3808	47 	ld b,a	ld b,a
3809	21 11 3c 	ld hl,$3c11	ld hl,$0000
380c	09 	add hl,bc	add hl,bc
380d	7e 	ld a,(hl)	ld a,(hl)
380e	23 	inc hl	inc hl
380f	66 	ld h,(hl)	ld h,(hl)
3810	6f 	ld l,a	ld l,a
3811	fd 23 	inc iy	inc iy
3813	cd 0b 45 	call $450b	call $0000
3816	e9 	jp (hl)	jp (hl)
3817	fd 21 00 52 	ld iy,$5200	ld iy,$0000
381b	7c 	ld a,h	ld a,h
381c	b5 	or l	or l
381d	cc 8a 43 	call z,$438a	call z,$0000
3820	cd 0b 45 	call $450b	call $0000
3823	11 00 53 	ld de,$5300	ld de,$0000
3826	0e 01 	ld c,$01	ld c,$00
3828	e5 	push hl	push hl
3829	cd 18 44 	call $4418	call $0000
382c	e1 	pop hl	pop hl
382d	12 	ld (de),a	ld (de),a
382e	af 	xor a	xor a
382f	47 	ld b,a	ld b,a
3830	4b 	ld c,e	ld c,e
3831	13 	inc de	inc de
3832	12 	ld (de),a	ld (de),a
3833	7c 	ld a,h	ld a,h
3834	b5 	or l	or l
3835	fd 21 00 53 	ld iy,$5300	ld iy,$0000
3839	ca 99 24 	jp z,$2499	jp z,$0000
383c	c5 	push bc	push bc
383d	cd 43 41 	call $4143	call $0000
3840	cc e9 3f 	call z,$3fe9	call z,$0000
3843	c1 	pop bc	pop bc
3844	79 	ld a,c	ld a,c
3845	b7 	or a	or a
3846	28 39 	jr z,$+$3b	jr z,$+$00
3848	c6 04 	add a,$04	add a,$00
384a	4f 	ld c,a	ld c,a
384b	d5 	push de	push de
384c	c5 	push bc	push bc
384d	eb 	ex de,hl	ex de,hl
384e	c5 	push bc	push bc
384f	cd 25 40 	call $4025	call $0000
3852	c1 	pop bc	pop bc
3853	e5 	push hl	push hl
3854	09 	add hl,bc	add hl,bc
3855	e5 	push hl	push hl
3856	24 	inc h	inc h
3857	af 	xor a	xor a
3858	ed 72 	sbc hl,sp	sbc hl,sp
385a	e1 	pop hl	pop hl
385b	d2 44 3f 	jp nc,$3f44	jp nc,$0000
385e	e3 	ex (sp),hl	ex (sp),hl
385f	e5 	push hl	push hl
3860	23 	inc hl	inc hl
3861	b7 	or a	or a
3862	ed 52 	sbc hl,de	sbc hl,de
3864	44 	ld b,h	ld b,h
3865	4d 	ld c,l	ld c,l
3866	e1 	pop hl	pop hl
3867	d1 	pop de	pop de
3868	28 02 	jr z,$+$04	jr z,$+$00
386a	ed b8 	lddr	lddr
386c	c1 	pop bc	pop bc
386d	d1 	pop de	pop de
386e	23 	inc hl	inc hl
386f	71 	ld (hl),c	ld (hl),c
3870	23 	inc hl	inc hl
3871	73 	ld (hl),e	ld (hl),e
3872	23 	inc hl	inc hl
3873	72 	ld (hl),d	ld (hl),d
3874	23 	inc hl	inc hl
3875	11 00 53 	ld de,$5300	ld de,$0000
3878	eb 	ex de,hl	ex de,hl
3879	0d 	dec c	dec c
387a	0d 	dec c	dec c
387b	0d 	dec c	dec c
387c	ed b0 	ldir	ldir
387e	cd 1a 40 	call $401a	call $0000
3881	c3 b0 37 	jp $37b0	jp $0000
3884	80 	add a,b	add a,b
3885	41 	ld b,c	ld b,c
3886	4e 	ld c,(hl)	ld c,(hl)
3887	44 	ld b,h	ld b,h
3888	94 	sub h	sub h
3889	41 	ld b,c	ld b,c
388a	42 	ld b,d	ld b,d
388b	53 	ld d,e	ld d,e
388c	95 	sub l	sub l
388d	41 	ld b,c	ld b,c
388e	43 	ld b,e	ld b,e
388f	53 	ld d,e	ld d,e
3890	96 	sub (hl)	sub (hl)
3891	41 	ld b,c	ld b,c
3892	44 	ld b,h	ld b,h
3893	56 	ld d,(hl)	ld d,(hl)
3894	41 	ld b,c	ld b,c
3895	4c 	ld c,h	ld c,h
3896	97 	sub a	sub a
3897	41 	ld b,c	ld b,c
3898	53 	ld d,e	ld d,e
3899	43 	ld b,e	ld b,e
389a	98 	sbc a,b	sbc a,b
389b	41 	ld b,c	ld b,c
389c	53 	ld d,e	ld d,e
389d	4e 	ld c,(hl)	ld c,(hl)
389e	99 	sbc a,c	sbc a,c
389f	41 	ld b,c	ld b,c
38a0	54 	ld d,h	ld d,h
38a1	4e 	ld c,(hl)	ld c,(hl)
38a2	9a 	sbc a,d	sbc a,d
38a3	42 	ld b,d	ld b,d
38a4	47 	ld b,a	ld b,a
38a5	45 	ld b,l	ld b,l
38a6	54 	ld d,h	ld d,h
38a7	20 d5 	jr nz,$-$29	jr nz,$-$00
38a9	42 	ld b,d	ld b,d
38aa	50 	ld d,b	ld d,b
38ab	55 	ld d,l	ld d,l
38ac	54 	ld d,h	ld d,h
38ad	20 0f 	jr nz,$+$11	jr nz,$+$00
38af	42 	ld b,d	ld b,d
38b0	59 	ld e,c	ld e,c
38b1	20 fb 	jr nz,$-$03	jr nz,$-$00
38b3	43 	ld b,e	ld b,e
38b4	4f 	ld c,a	ld c,a
38b5	4c 	ld c,h	ld c,h
38b6	4f 	ld c,a	ld c,a
38b7	55 	ld d,l	ld d,l
38b8	52 fb 	ei.sil	ei.sil
38ba	43 	ld b,e	ld b,e
38bb	4f 	ld c,a	ld c,a
38bc	4c 	ld c,h	ld c,h
38bd	4f 	ld c,a	ld c,a
38be	52 d6 43 	sub.sil $43	sub.sil $00
38c1	41 	ld b,c	ld b,c
38c2	4c 	ld c,h	ld c,h
38c3	4c 	ld c,h	ld c,h
38c4	c8 	ret z	ret z
38c5	43 	ld b,e	ld b,e
38c6	41 	ld b,c	ld b,c
38c7	53 	ld d,e	ld d,e
38c8	45 	ld b,l	ld b,l
38c9	d7 	rst $10	rst $00
38ca	43 	ld b,e	ld b,e
38cb	48 	ld c,b	ld c,b
38cc	41 	ld b,c	ld b,c
38cd	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
38cf	bd 	cp l	cp l
38d0	43 	ld b,e	ld b,e
38d1	48 	ld c,b	ld c,b
38d2	52 24 	inc.sil h	inc.sil h
38d4	d8 	ret c	ret c
38d5	43 	ld b,e	ld b,e
38d6	4c 	ld c,h	ld c,h
38d7	45 	ld b,l	ld b,l
38d8	41 	ld b,c	ld b,c
38d9	52 20 d9 	jr.sil nz,$-$24	jr.sil nz,$-$00
38dc	43 	ld b,e	ld b,e
38dd	4c 	ld c,h	ld c,h
38de	4f 	ld c,a	ld c,a
38df	53 	ld d,e	ld d,e
38e0	45 	ld b,l	ld b,l
38e1	20 da 	jr nz,$-$24	jr nz,$-$00
38e3	43 	ld b,e	ld b,e
38e4	4c 	ld c,h	ld c,h
38e5	47 	ld b,a	ld b,a
38e6	20 db 	jr nz,$-$23	jr nz,$-$00
38e8	43 	ld b,e	ld b,e
38e9	4c 	ld c,h	ld c,h
38ea	53 	ld d,e	ld d,e
38eb	20 9b 	jr nz,$-$63	jr nz,$-$00
38ed	43 	ld b,e	ld b,e
38ee	4f 	ld c,a	ld c,a
38ef	53 	ld d,e	ld d,e
38f0	9c 	sbc a,h	sbc a,h
38f1	43 	ld b,e	ld b,e
38f2	4f 	ld c,a	ld c,a
38f3	55 	ld d,l	ld d,l
38f4	4e 	ld c,(hl)	ld c,(hl)
38f5	54 	ld d,h	ld d,h
38f6	20 01 	jr nz,$+$03	jr nz,$+$00
38f8	43 	ld b,e	ld b,e
38f9	49 	noni.lis	noni.lis
38fa	52 43 	ld.sil b,e	ld.sil b,e
38fc	4c 	ld c,h	ld c,h
38fd	45 	ld b,l	ld b,l
38fe	dc 44 41 	call c,$4144	call c,$0000
3901	54 	ld d,h	ld d,h
3902	41 	ld b,c	ld b,c
3903	9d 	sbc a,l	sbc a,l
3904	44 	ld b,h	ld b,h
3905	45 	ld b,l	ld b,l
3906	47 	ld b,a	ld b,a
3907	dd 44 	ld b,ixh	ld b,ixh
3909	45 	ld b,l	ld b,l
390a	46 	ld b,(hl)	ld b,(hl)
390b	81 	add a,c	add a,c
390c	44 	ld b,h	ld b,h
390d	49 56 	ld.lis d,(hl)	ld.lis d,(hl)
390f	de 44 	sbc a,$44	sbc a,$00
3911	49 4d 	ld.lis c,l	ld.lis c,l
3913	df 	rst $18	rst $00
3914	44 	ld b,h	ld b,h
3915	52 41 	ld.sil b,c	ld.sil b,c
3917	57 	ld d,a	ld d,a
3918	e1 	pop hl	pop hl
3919	45 	ld b,l	ld b,l
391a	4e 	ld c,(hl)	ld c,(hl)
391b	44 	ld b,h	ld b,h
391c	50 	ld d,b	ld d,b
391d	52 4f 	ld.sil c,a	ld.sil c,a
391f	43 	ld b,e	ld b,e
3920	20 ce 	jr nz,$-$30	jr nz,$-$00
3922	45 	ld b,l	ld b,l
3923	4e 	ld c,(hl)	ld c,(hl)
3924	44 	ld b,h	ld b,h
3925	57 	ld d,a	ld d,a
3926	48 	ld c,b	ld c,b
3927	49 4c 	ld.lis c,h	ld.lis c,h
3929	45 	ld b,l	ld b,l
392a	20 cb 	jr nz,$-$33	jr nz,$-$00
392c	45 	ld b,l	ld b,l
392d	4e 	ld c,(hl)	ld c,(hl)
392e	44 	ld b,h	ld b,h
392f	43 	ld b,e	ld b,e
3930	41 	ld b,c	ld b,c
3931	53 	ld d,e	ld d,e
3932	45 	ld b,l	ld b,l
3933	20 cd 	jr nz,$-$31	jr nz,$-$00
3935	45 	ld b,l	ld b,l
3936	4e 	ld c,(hl)	ld c,(hl)
3937	44 	ld b,h	ld b,h
3938	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
393a	20 e0 	jr nz,$-$1e	jr nz,$-$00
393c	45 	ld b,l	ld b,l
393d	4e 	ld c,(hl)	ld c,(hl)
393e	44 	ld b,h	ld b,h
393f	20 e2 	jr nz,$-$1c	jr nz,$-$00
3941	45 	ld b,l	ld b,l
3942	4e 	ld c,(hl)	ld c,(hl)
3943	56 	ld d,(hl)	ld d,(hl)
3944	45 	ld b,l	ld b,l
3945	4c 	ld c,h	ld c,h
3946	4f 	ld c,a	ld c,a
3947	50 	ld d,b	ld d,b
3948	45 	ld b,l	ld b,l
3949	8b 	adc a,e	adc a,e
394a	45 	ld b,l	ld b,l
394b	4c 	ld c,h	ld c,h
394c	53 	ld d,e	ld d,e
394d	45 	ld b,l	ld b,l
394e	a0 	and b	and b
394f	45 	ld b,l	ld b,l
3950	56 	ld d,(hl)	ld d,(hl)
3951	41 	ld b,c	ld b,c
3952	4c 	ld c,h	ld c,h
3953	9e 	sbc a,(hl)	sbc a,(hl)
3954	45 	ld b,l	ld b,l
3955	52 4c 	ld.sil c,h	ld.sil c,h
3957	20 85 	jr nz,$-$79	jr nz,$-$00
3959	45 	ld b,l	ld b,l
395a	52 	noni.sil	noni.sil
395b	52 4f 	ld.sil c,a	ld.sil c,a
395d	52 c5 	push.sil bc	push.sil bc
395f	45 	ld b,l	ld b,l
3960	4f 	ld c,a	ld c,a
3961	46 	ld b,(hl)	ld b,(hl)
3962	20 82 	jr nz,$-$7c	jr nz,$-$00
3964	45 	ld b,l	ld b,l
3965	4f 	ld c,a	ld c,a
3966	52 9f 	sbc.sil a,a	sbc.sil a,a
3968	45 	ld b,l	ld b,l
3969	52 	noni.sil	noni.sil
396a	52 20 10 	jr.sil nz,$+$13	jr.sil nz,$+$00
396d	45 	ld b,l	ld b,l
396e	58 	ld e,b	ld e,b
396f	49 54 	ld.lis d,h	ld.lis d,h
3971	20 a1 	jr nz,$-$5d	jr nz,$-$00
3973	45 	ld b,l	ld b,l
3974	58 	ld e,b	ld e,b
3975	50 	ld d,b	ld d,b
3976	a2 	and d	and d
3977	45 	ld b,l	ld b,l
3978	58 	ld e,b	ld e,b
3979	54 	ld d,h	ld d,h
397a	20 02 	jr nz,$+$04	jr nz,$+$00
397c	45 	ld b,l	ld b,l
397d	4c 	ld c,h	ld c,h
397e	4c 	ld c,h	ld c,h
397f	49 50 	ld.lis d,b	ld.lis d,b
3981	53 	ld d,e	ld d,e
3982	45 	ld b,l	ld b,l
3983	e3 	ex (sp),hl	ex (sp),hl
3984	46 	ld b,(hl)	ld b,(hl)
3985	4f 	ld c,a	ld c,a
3986	52 a3 	and.sil e	and.sil e
3988	46 	ld b,(hl)	ld b,(hl)
3989	41 	ld b,c	ld b,c
398a	4c 	ld c,h	ld c,h
398b	53 	ld d,e	ld d,e
398c	45 	ld b,l	ld b,l
398d	20 03 	jr nz,$+$05	jr nz,$+$00
398f	46 	ld b,(hl)	ld b,(hl)
3990	49 4c 	ld.lis c,h	ld.lis c,h
3992	4c 	ld c,h	ld c,h
3993	a4 	and h	and h
3994	46 	ld b,(hl)	ld b,(hl)
3995	4e 	ld c,(hl)	ld c,(hl)
3996	e5 	push hl	push hl
3997	47 	ld b,a	ld b,a
3998	4f 	ld c,a	ld c,a
3999	54 	ld d,h	ld d,h
399a	4f 	ld c,a	ld c,a
399b	be 	cp (hl)	cp (hl)
399c	47 	ld b,a	ld b,a
399d	45 	ld b,l	ld b,l
399e	54 	ld d,h	ld d,h
399f	24 	inc h	inc h
39a0	a5 	and l	and l
39a1	47 	ld b,a	ld b,a
39a2	45 	ld b,l	ld b,l
39a3	54 	ld d,h	ld d,h
39a4	e4 47 4f 	call po,$4f47	call po,$0000
39a7	53 	ld d,e	ld d,e
39a8	55 	ld d,l	ld d,l
39a9	42 	ld b,d	ld b,d
39aa	e6 47 	and $47	and $00
39ac	43 	ld b,e	ld b,e
39ad	4f 	ld c,a	ld c,a
39ae	4c 	ld c,h	ld c,h
39af	93 	sub e	sub e
39b0	48 	ld c,b	ld c,b
39b1	49 4d 	ld.lis c,l	ld.lis c,l
39b3	45 	ld b,l	ld b,l
39b4	4d 	ld c,l	ld c,l
39b5	20 e8 	jr nz,$-$16	jr nz,$-$00
39b7	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39b9	50 	ld d,b	ld d,b
39ba	55 	ld d,l	ld d,l
39bb	54 	ld d,h	ld d,h
39bc	e7 	rst $20	rst $00
39bd	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
39bf	bf 	cp a	cp a
39c0	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39c2	4b 	ld c,e	ld c,e
39c3	45 	ld b,l	ld b,l
39c4	59 	ld e,c	ld e,c
39c5	24 	inc h	inc h
39c6	a6 	and (hl)	and (hl)
39c7	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39c9	4b 	ld c,e	ld c,e
39ca	45 	ld b,l	ld b,l
39cb	59 	ld e,c	ld e,c
39cc	a8 	xor b	xor b
39cd	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39cf	54 	ld d,h	ld d,h
39d0	a7 	and a	and a
39d1	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39d3	53 	ld d,e	ld d,e
39d4	54 	ld d,h	ld d,h
39d5	52 28 0c 	jr.sil z,$+$0f	jr.sil z,$+$00
39d8	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39da	53 	ld d,e	ld d,e
39db	54 	ld d,h	ld d,h
39dc	41 	ld b,c	ld b,c
39dd	4c 	ld c,h	ld c,h
39de	4c 	ld c,h	ld c,h
39df	86 	add a,(hl)	add a,(hl)
39e0	4c 	ld c,h	ld c,h
39e1	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39e3	45 	ld b,l	ld b,l
39e4	92 	sub d	sub d
39e5	4c 	ld c,h	ld c,h
39e6	4f 	ld c,a	ld c,a
39e7	4d 	ld c,l	ld c,l
39e8	45 	ld b,l	ld b,l
39e9	4d 	ld c,l	ld c,l
39ea	20 ea 	jr nz,$-$14	jr nz,$-$00
39ec	4c 	ld c,h	ld c,h
39ed	4f 	ld c,a	ld c,a
39ee	43 	ld b,e	ld b,e
39ef	41 	ld b,c	ld b,c
39f0	4c 	ld c,h	ld c,h
39f1	c0 	ret nz	ret nz
39f2	4c 	ld c,h	ld c,h
39f3	45 	ld b,l	ld b,l
39f4	46 	ld b,(hl)	ld b,(hl)
39f5	54 	ld d,h	ld d,h
39f6	24 	inc h	inc h
39f7	28 a9 	jr z,$-$55	jr z,$-$00
39f9	4c 	ld c,h	ld c,h
39fa	45 	ld b,l	ld b,l
39fb	4e 	ld c,(hl)	ld c,(hl)
39fc	e9 	jp (hl)	jp (hl)
39fd	4c 	ld c,h	ld c,h
39fe	45 	ld b,l	ld b,l
39ff	54 	ld d,h	ld d,h
3a00	ab 	xor e	xor e
3a01	4c 	ld c,h	ld c,h
3a02	4f 	ld c,a	ld c,a
3a03	47 	ld b,a	ld b,a
3a04	aa 	xor d	xor d
3a05	4c 	ld c,h	ld c,h
3a06	4e 	ld c,(hl)	ld c,(hl)
3a07	c1 	pop bc	pop bc
3a08	4d 	ld c,l	ld c,l
3a09	49 44 	ld.lis b,h	ld.lis b,h
3a0b	24 	inc h	inc h
3a0c	28 eb 	jr z,$-$13	jr z,$-$00
3a0e	4d 	ld c,l	ld c,l
3a0f	4f 	ld c,a	ld c,a
3a10	44 	ld b,h	ld b,h
3a11	45 	ld b,l	ld b,l
3a12	83 	add a,e	add a,e
3a13	4d 	ld c,l	ld c,l
3a14	4f 	ld c,a	ld c,a
3a15	44 	ld b,h	ld b,h
3a16	ec 4d 4f 	call pe,$4f4d	call pe,$0000
3a19	56 	ld d,(hl)	ld d,(hl)
3a1a	45 	ld b,l	ld b,l
3a1b	04 	inc b	inc b
3a1c	4d 	ld c,l	ld c,l
3a1d	4f 	ld c,a	ld c,a
3a1e	55 	ld d,l	ld d,l
3a1f	53 	ld d,e	ld d,e
3a20	45 	ld b,l	ld b,l
3a21	ed 4e 	trap	trap
3a23	45 	ld b,l	ld b,l
3a24	58 	ld e,b	ld e,b
3a25	54 	ld d,h	ld d,h
3a26	ac 	xor h	xor h
3a27	4e 	ld c,(hl)	ld c,(hl)
3a28	4f 	ld c,a	ld c,a
3a29	54 	ld d,h	ld d,h
3a2a	ee 4f 	xor $4f	xor $00
3a2c	4e 	ld c,(hl)	ld c,(hl)
3a2d	87 	add a,a	add a,a
3a2e	4f 	ld c,a	ld c,a
3a2f	46 	ld b,(hl)	ld b,(hl)
3a30	46 	ld b,(hl)	ld b,(hl)
3a31	20 ca 	jr nz,$-$34	jr nz,$-$00
3a33	4f 	ld c,a	ld c,a
3a34	46 	ld b,(hl)	ld b,(hl)
3a35	20 05 	jr nz,$+$07	jr nz,$+$00
3a37	4f 	ld c,a	ld c,a
3a38	52 	noni.sil	noni.sil
3a39	49 47 	ld.lis b,a	ld.lis b,a
3a3b	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a3d	84 	add a,h	add a,h
3a3e	4f 	ld c,a	ld c,a
3a3f	52 8e 	adc.sil a,(hl)	adc.sil a,(hl)
3a41	4f 	ld c,a	ld c,a
3a42	50 	ld d,b	ld d,b
3a43	45 	ld b,l	ld b,l
3a44	4e 	ld c,(hl)	ld c,(hl)
3a45	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a47	ae 	xor (hl)	xor (hl)
3a48	4f 	ld c,a	ld c,a
3a49	50 	ld d,b	ld d,b
3a4a	45 	ld b,l	ld b,l
3a4b	4e 	ld c,(hl)	ld c,(hl)
3a4c	4f 	ld c,a	ld c,a
3a4d	55 	ld d,l	ld d,l
3a4e	54 	ld d,h	ld d,h
3a4f	ad 	xor l	xor l
3a50	4f 	ld c,a	ld c,a
3a51	50 	ld d,b	ld d,b
3a52	45 	ld b,l	ld b,l
3a53	4e 	ld c,(hl)	ld c,(hl)
3a54	55 	ld d,l	ld d,l
3a55	50 	ld d,b	ld d,b
3a56	ff 	rst $38	rst $00
3a57	4f 	ld c,a	ld c,a
3a58	53 	ld d,e	ld d,e
3a59	43 	ld b,e	ld b,e
3a5a	4c 	ld c,h	ld c,h
3a5b	49 cc 4f 54 	call.lis z,$544f	call.lis z,$0000
3a5f	48 	ld c,b	ld c,b
3a60	45 	ld b,l	ld b,l
3a61	52 57 	ld.sil d,a	ld.sil d,a
3a63	49 53 	ld.lis d,e	ld.lis d,e
3a65	45 	ld b,l	ld b,l
3a66	f1 	pop af	pop af
3a67	50 	ld d,b	ld d,b
3a68	52 	noni.sil	noni.sil
3a69	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a6b	54 	ld d,h	ld d,h
3a6c	90 	sub b	sub b
3a6d	50 	ld d,b	ld d,b
3a6e	41 	ld b,c	ld b,c
3a6f	47 	ld b,a	ld b,a
3a70	45 	ld b,l	ld b,l
3a71	20 8f 	jr nz,$-$6f	jr nz,$-$00
3a73	50 	ld d,b	ld d,b
3a74	54 	ld d,h	ld d,h
3a75	52 20 af 	jr.sil nz,$-$4e	jr.sil nz,$-$00
3a78	50 	ld d,b	ld d,b
3a79	49 20 f0 	jr.lis nz,$-$0d	jr.lis nz,$-$00
3a7c	50 	ld d,b	ld d,b
3a7d	4c 	ld c,h	ld c,h
3a7e	4f 	ld c,a	ld c,a
3a7f	54 	ld d,h	ld d,h
3a80	b0 	or b	or b
3a81	50 	ld d,b	ld d,b
3a82	4f 	ld c,a	ld c,a
3a83	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a85	54 	ld d,h	ld d,h
3a86	28 f2 	jr z,$-$0c	jr z,$-$00
3a88	50 	ld d,b	ld d,b
3a89	52 4f 	ld.sil c,a	ld.sil c,a
3a8b	43 	ld b,e	ld b,e
3a8c	b1 	or c	or c
3a8d	50 	ld d,b	ld d,b
3a8e	4f 	ld c,a	ld c,a
3a8f	53 	ld d,e	ld d,e
3a90	20 0e 	jr nz,$+$10	jr nz,$+$00
3a92	50 	ld d,b	ld d,b
3a93	55 	ld d,l	ld d,l
3a94	54 	ld d,h	ld d,h
3a95	06 51 	ld b,$51	ld b,$00
3a97	55 	ld d,l	ld d,l
3a98	49 54 	ld.lis d,h	ld.lis d,h
3a9a	20 f8 	jr nz,$-$06	jr nz,$-$00
3a9c	52 45 	ld.sil b,l	ld.sil b,l
3a9e	54 	ld d,h	ld d,h
3a9f	55 	ld d,l	ld d,l
3aa0	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3aa2	20 f5 	jr nz,$-$09	jr nz,$-$00
3aa4	52 45 	ld.sil b,l	ld.sil b,l
3aa6	50 	ld d,b	ld d,b
3aa7	45 	ld b,l	ld b,l
3aa8	41 	ld b,c	ld b,c
3aa9	54 	ld d,h	ld d,h
3aaa	f6 52 	or $52	or $00
3aac	45 	ld b,l	ld b,l
3aad	50 	ld d,b	ld d,b
3aae	4f 	ld c,a	ld c,a
3aaf	52 54 	ld.sil d,h	ld.sil d,h
3ab1	20 f3 	jr nz,$-$0b	jr nz,$-$00
3ab3	52 45 	ld.sil b,l	ld.sil b,l
3ab5	41 	ld b,c	ld b,c
3ab6	44 	ld b,h	ld b,h
3ab7	f4 52 45 	call p,$4552	call p,$0000
3aba	4d 	ld c,l	ld c,l
3abb	f9 	ld sp,hl	ld sp,hl
3abc	52 55 	ld.sil d,l	ld.sil d,l
3abe	4e 	ld c,(hl)	ld c,(hl)
3abf	20 b2 	jr nz,$-$4c	jr nz,$-$00
3ac1	52 41 	ld.sil b,c	ld.sil b,c
3ac3	44 	ld b,h	ld b,h
3ac4	f7 	rst $30	rst $00
3ac5	52 45 	ld.sil b,l	ld.sil b,l
3ac7	53 	ld d,e	ld d,e
3ac8	54 	ld d,h	ld d,h
3ac9	4f 	ld c,a	ld c,a
3aca	52 45 	ld.sil b,l	ld.sil b,l
3acc	c2 52 49 	jp nz,$4952	jp nz,$0000
3acf	47 	ld b,a	ld b,a
3ad0	48 	ld c,b	ld c,b
3ad1	54 	ld d,h	ld d,h
3ad2	24 	inc h	inc h
3ad3	28 b3 	jr z,$-$4b	jr z,$-$00
3ad5	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3ad7	44 	ld b,h	ld b,h
3ad8	20 07 	jr nz,$+$09	jr nz,$+$00
3ada	52 45 	ld.sil b,l	ld.sil b,l
3adc	43 	ld b,e	ld b,e
3add	54 	ld d,h	ld d,h
3ade	41 	ld b,c	ld b,c
3adf	4e 	ld c,(hl)	ld c,(hl)
3ae0	47 	ld b,a	ld b,a
3ae1	4c 	ld c,h	ld c,h
3ae2	45 	ld b,l	ld b,l
3ae3	88 	adc a,b	adc a,b
3ae4	53 	ld d,e	ld d,e
3ae5	54 	ld d,h	ld d,h
3ae6	45 	ld b,l	ld b,l
3ae7	50 	ld d,b	ld d,b
3ae8	b4 	or h	or h
3ae9	53 	ld d,e	ld d,e
3aea	47 	ld b,a	ld b,a
3aeb	4e 	ld c,(hl)	ld c,(hl)
3aec	b5 	or l	or l
3aed	53 	ld d,e	ld d,e
3aee	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3af0	b6 	or (hl)	or (hl)
3af1	53 	ld d,e	ld d,e
3af2	51 	ld d,c	ld d,c
3af3	52 89 	adc.sil a,c	adc.sil a,c
3af5	53 	ld d,e	ld d,e
3af6	50 	ld d,b	ld d,b
3af7	43 	ld b,e	ld b,e
3af8	c3 53 54 	jp $5453	jp $0000
3afb	52 24 	inc.sil h	inc.sil h
3afd	c4 53 54 	call nz,$5453	call nz,$0000
3b00	52 	noni.sil	noni.sil
3b01	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b03	47 	ld b,a	ld b,a
3b04	24 	inc h	inc h
3b05	28 d4 	jr z,$-$2a	jr z,$-$00
3b07	53 	ld d,e	ld d,e
3b08	4f 	ld c,a	ld c,a
3b09	55 	ld d,l	ld d,l
3b0a	4e 	ld c,(hl)	ld c,(hl)
3b0b	44 	ld b,h	ld b,h
3b0c	fa 53 54 	jp m,$5453	jp m,$0000
3b0f	4f 	ld c,a	ld c,a
3b10	50 	ld d,b	ld d,b
3b11	20 c6 	jr nz,$-$38	jr nz,$-$00
3b13	53 	ld d,e	ld d,e
3b14	55 	ld d,l	ld d,l
3b15	4d 	ld c,l	ld c,l
3b16	08 	ex af,af'	ex af,af'
3b17	53 	ld d,e	ld d,e
3b18	57 	ld d,a	ld d,a
3b19	41 	ld b,c	ld b,c
3b1a	50 	ld d,b	ld d,b
3b1b	09 	add hl,bc	add hl,bc
3b1c	53 	ld d,e	ld d,e
3b1d	59 	ld e,c	ld e,c
3b1e	53 	ld d,e	ld d,e
3b1f	b7 	or a	or a
3b20	54 	ld d,h	ld d,h
3b21	41 	ld b,c	ld b,c
3b22	4e 	ld c,(hl)	ld c,(hl)
3b23	8a 	adc a,d	adc a,d
3b24	54 	ld d,h	ld d,h
3b25	41 	ld b,c	ld b,c
3b26	42 	ld b,d	ld b,d
3b27	28 8c 	jr z,$-$72	jr z,$-$00
3b29	54 	ld d,h	ld d,h
3b2a	48 	ld c,b	ld c,b
3b2b	45 	ld b,l	ld b,l
3b2c	4e 	ld c,(hl)	ld c,(hl)
3b2d	91 	sub c	sub c
3b2e	54 	ld d,h	ld d,h
3b2f	49 4d 	ld.lis c,l	ld.lis c,l
3b31	45 	ld b,l	ld b,l
3b32	20 0a 	jr nz,$+$0c	jr nz,$+$00
3b34	54 	ld d,h	ld d,h
3b35	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b37	54 	ld d,h	ld d,h
3b38	b8 	cp b	cp b
3b39	54 	ld d,h	ld d,h
3b3a	4f 	ld c,a	ld c,a
3b3b	fc 54 52 	call m,$5254	call m,$0000
3b3e	41 	ld b,c	ld b,c
3b3f	43 	ld b,e	ld b,e
3b40	45 	ld b,l	ld b,l
3b41	b9 	cp c	cp c
3b42	54 	ld d,h	ld d,h
3b43	52 55 	ld.sil d,l	ld.sil d,l
3b45	45 	ld b,l	ld b,l
3b46	20 fd 	jr nz,$-$01	jr nz,$-$00
3b48	55 	ld d,l	ld d,l
3b49	4e 	ld c,(hl)	ld c,(hl)
3b4a	54 	ld d,h	ld d,h
3b4b	49 4c 	ld.lis c,h	ld.lis c,h
3b4d	ba 	cp d	cp d
3b4e	55 	ld d,l	ld d,l
3b4f	53 	ld d,e	ld d,e
3b50	52 ef 	rst.sil $28	rst.sil $00
3b52	56 	ld d,(hl)	ld d,(hl)
3b53	44 	ld b,h	ld b,h
3b54	55 	ld d,l	ld d,l
3b55	bb 	cp e	cp e
3b56	56 	ld d,(hl)	ld d,(hl)
3b57	41 	ld b,c	ld b,c
3b58	4c 	ld c,h	ld c,h
3b59	bc 	cp h	cp h
3b5a	56 	ld d,(hl)	ld d,(hl)
3b5b	50 	ld d,b	ld d,b
3b5c	4f 	ld c,a	ld c,a
3b5d	53 	ld d,e	ld d,e
3b5e	20 c7 	jr nz,$-$37	jr nz,$-$00
3b60	57 	ld d,a	ld d,a
3b61	48 	ld c,b	ld c,b
3b62	49 4c 	ld.lis c,h	ld.lis c,h
3b64	45 	ld b,l	ld b,l
3b65	c9 	ret	ret
3b66	57 	ld d,a	ld d,a
3b67	48 	ld c,b	ld c,b
3b68	45 	ld b,l	ld b,l
3b69	4e 	ld c,(hl)	ld c,(hl)
3b6a	0b 	dec bc	dec bc
3b6b	57 	ld d,a	ld d,a
3b6c	41 	ld b,c	ld b,c
3b6d	49 54 	ld.lis d,h	ld.lis d,h
3b6f	20 fe 	jr nz,$	jr nz,$
3b71	57 	ld d,a	ld d,a
3b72	49 44 	ld.lis b,h	ld.lis b,h
3b74	54 	ld d,h	ld d,h
3b75	48 	ld c,b	ld c,b
3b76	cf 	rst $08	rst $00
3b77	50 	ld d,b	ld d,b
3b78	54 	ld d,h	ld d,h
3b79	52 d1 	pop.sil de	pop.sil de
3b7b	54 	ld d,h	ld d,h
3b7c	49 4d 	ld.lis c,l	ld.lis c,l
3b7e	45 	ld b,l	ld b,l
3b7f	d3 48 	out ($48),a	out ($00),a
3b81	49 4d 	ld.lis c,l	ld.lis c,l
3b83	45 	ld b,l	ld b,l
3b84	4d 	ld c,l	ld c,l
3b85	d2 4c 4f 	jp nc,$4f4c	jp nc,$0000
3b88	4d 	ld c,l	ld c,l
3b89	45 	ld b,l	ld b,l
3b8a	4d 	ld c,l	ld c,l
3b8b	d0 	ret nc	ret nc
3b8c	50 	ld d,b	ld d,b
3b8d	41 	ld b,c	ld b,c
3b8e	47 	ld b,a	ld b,a
3b8f	45 	ld b,l	ld b,l
3b90	11 4d 69 	ld de,$694d	ld de,$0000
3b93	73 	ld (hl),e	ld (hl),e
3b94	73 	ld (hl),e	ld (hl),e
3b95	69 	ld l,c	ld l,c
3b96	6e 	ld l,(hl)	ld l,(hl)
3b97	67 	ld h,a	ld h,a
3b98	20 12 	jr nz,$+$14	jr nz,$+$00
3b9a	4e 	ld c,(hl)	ld c,(hl)
3b9b	6f 	ld l,a	ld l,a
3b9c	20 73 	jr nz,$+$75	jr nz,$+$00
3b9e	75 	ld (hl),l	ld (hl),l
3b9f	63 	ld h,e	ld h,e
3ba0	68 	ld l,b	ld l,b
3ba1	20 13 	jr nz,$+$15	jr nz,$+$00
3ba3	42 	ld b,d	ld b,d
3ba4	61 	ld h,c	ld h,c
3ba5	64 	ld h,h	ld h,h
3ba6	20 14 	jr nz,$+$16	jr nz,$+$00
3ba8	20 72 	jr nz,$+$74	jr nz,$+$00
3baa	61 	ld h,c	ld h,c
3bab	6e 	ld l,(hl)	ld l,(hl)
3bac	67 	ld h,a	ld h,a
3bad	65 	ld h,l	ld h,l
3bae	15 	dec d	dec d
3baf	76 	halt	halt
3bb0	61 	ld h,c	ld h,c
3bb1	72 	ld (hl),d	ld (hl),d
3bb2	69 	ld l,c	ld l,c
3bb3	61 	ld h,c	ld h,c
3bb4	62 	ld h,d	ld h,d
3bb5	6c 	ld l,h	ld l,h
3bb6	65 	ld h,l	ld h,l
3bb7	16 4f 	ld d,$4f	ld d,$00
3bb9	75 	ld (hl),l	ld (hl),l
3bba	74 	ld (hl),h	ld (hl),h
3bbb	20 6f 	jr nz,$+$71	jr nz,$+$00
3bbd	66 	ld h,(hl)	ld h,(hl)
3bbe	17 	rla	rla
3bbf	4e 	ld c,(hl)	ld c,(hl)
3bc0	6f 	ld l,a	ld l,a
3bc1	20 18 	jr nz,$+$1a	jr nz,$+$00
3bc3	20 73 	jr nz,$+$75	jr nz,$+$00
3bc5	70 	ld (hl),b	ld (hl),b
3bc6	61 	ld h,c	ld h,c
3bc7	63 	ld h,e	ld h,e
3bc8	65 	ld h,l	ld h,l
3bc9	19 	add hl,de	add hl,de
3bca	4e 	ld c,(hl)	ld c,(hl)
3bcb	6f 	ld l,a	ld l,a
3bcc	74 	ld (hl),h	ld (hl),h
3bcd	20 69 	jr nz,$+$6b	jr nz,$+$00
3bcf	6e 	ld l,(hl)	ld l,(hl)
3bd0	20 61 	jr nz,$+$63	jr nz,$+$00
3bd2	20 1a 	jr nz,$+$1c	jr nz,$+$00
3bd4	20 6c 	jr nz,$+$6e	jr nz,$+$00
3bd6	6f 	ld l,a	ld l,a
3bd7	6f 	ld l,a	ld l,a
3bd8	70 	ld (hl),b	ld (hl),b
3bd9	1b 	dec de	dec de
3bda	20 6e 	jr nz,$+$70	jr nz,$+$00
3bdc	6f 	ld l,a	ld l,a
3bdd	74 	ld (hl),h	ld (hl),h
3bde	20 ff 	jr nz,$+$01	jr nz,$+$00
3be0	ff 	rst $38	rst $00
3be1	80 	add a,b	add a,b
3be2	41 	ld b,c	ld b,c
3be3	55 	ld d,l	ld d,l
3be4	54 	ld d,h	ld d,h
3be5	4f 	ld c,a	ld c,a
3be6	81 	add a,c	add a,c
3be7	44 	ld b,h	ld b,h
3be8	45 	ld b,l	ld b,l
3be9	4c 	ld c,h	ld c,h
3bea	45 	ld b,l	ld b,l
3beb	54 	ld d,h	ld d,h
3bec	45 	ld b,l	ld b,l
3bed	82 	add a,d	add a,d
3bee	4c 	ld c,h	ld c,h
3bef	49 53 	ld.lis d,e	ld.lis d,e
3bf1	54 	ld d,h	ld d,h
3bf2	83 	add a,e	add a,e
3bf3	4c 	ld c,h	ld c,h
3bf4	4f 	ld c,a	ld c,a
3bf5	41 	ld b,c	ld b,c
3bf6	44 	ld b,h	ld b,h
3bf7	84 	add a,h	add a,h
3bf8	4e 	ld c,(hl)	ld c,(hl)
3bf9	45 	ld b,l	ld b,l
3bfa	57 	ld d,a	ld d,a
3bfb	20 85 	jr nz,$-$79	jr nz,$-$00
3bfd	4f 	ld c,a	ld c,a
3bfe	4c 	ld c,h	ld c,h
3bff	44 	ld b,h	ld b,h
3c00	20 86 	jr nz,$-$78	jr nz,$-$00
3c02	52 45 	ld.sil b,l	ld.sil b,l
3c04	4e 	ld c,(hl)	ld c,(hl)
3c05	55 	ld d,l	ld d,l
3c06	4d 	ld c,l	ld c,l
3c07	42 	ld b,d	ld b,d
3c08	45 	ld b,l	ld b,l
3c09	52 87 	add.sil a,a	add.sil a,a
3c0b	53 	ld d,e	ld d,e
3c0c	41 	ld b,c	ld b,c
3c0d	56 	ld d,(hl)	ld d,(hl)
3c0e	45 	ld b,l	ld b,l
3c0f	ff 	rst $38	rst $00
3c10	ff 	rst $38	rst $00
3c11	e3 	ex (sp),hl	ex (sp),hl
3c12	3e 86 	ld a,$86	ld a,$00
3c14	3d 	dec a	dec a
3c15	ae 	xor (hl)	xor (hl)
3c16	3d 	dec a	dec a
3c17	02 	ld (bc),a	ld (bc),a
3c18	3f 	ccf	ccf
3c19	fd 3e 10 	ld (iy+$10),ix	ld (iy+$00),ix
3c1c	3f 	ccf	ccf
3c1d	33 	inc sp	inc sp
3c1e	3e 29 	ld a,$29	ld a,$00
3c20	3f 	ccf	ccf
3c21	17 	rla	rla
3c22	72 	ld (hl),d	ld (hl),d
3c23	6f 	ld l,a	ld l,a
3c24	6f 	ld l,a	ld l,a
3c25	6d 	ld l,l	ld l,l
3c26	00 	nop	nop
3c27	16 14 	ld d,$14	ld d,$00
3c29	00 	nop	nop
3c2a	00 	nop	nop
3c2b	4d 	ld c,l	ld c,l
3c2c	75 	ld (hl),l	ld (hl),l
3c2d	6c 	ld l,h	ld l,h
3c2e	74 	ld (hl),h	ld (hl),h
3c2f	69 	ld l,c	ld l,c
3c30	70 	ld (hl),b	ld (hl),b
3c31	6c 	ld l,h	ld l,h
3c32	65 	ld h,l	ld h,l
3c33	20 6c 	jr nz,$+$6e	jr nz,$+$00
3c35	61 	ld h,c	ld h,c
3c36	62 	ld h,d	ld h,d
3c37	65 	ld h,l	ld h,l
3c38	6c 	ld l,h	ld l,h
3c39	00 	nop	nop
3c3a	4d 	ld c,l	ld c,l
3c3b	69 	ld l,c	ld l,c
3c3c	73 	ld (hl),e	ld (hl),e
3c3d	74 	ld (hl),h	ld (hl),h
3c3e	61 	ld h,c	ld h,c
3c3f	6b 	ld l,e	ld l,e
3c40	65 	ld h,l	ld h,l
3c41	00 	nop	nop
3c42	11 2c 00 	ld de,$002c	ld de,$0000
3c45	54 	ld d,h	ld d,h
3c46	79 	ld a,c	ld a,c
3c47	70 	ld (hl),b	ld (hl),b
3c48	65 	ld h,l	ld h,l
3c49	20 6d 	jr nz,$+$6f	jr nz,$+$00
3c4b	69 	ld l,c	ld l,c
3c4c	73 	ld (hl),e	ld (hl),e
3c4d	6d 	ld l,l	ld l,l
3c4e	61 	ld h,c	ld h,c
3c4f	74 	ld (hl),h	ld (hl),h
3c50	63 	ld h,e	ld h,e
3c51	68 	ld l,b	ld l,b
3c52	00 	nop	nop
3c53	19 	add hl,de	add hl,de
3c54	a4 	and h	and h
3c55	00 	nop	nop
3c56	00 	nop	nop
3c57	11 22 00 	ld de,$0022	ld de,$0000
3c5a	13 	inc de	inc de
3c5b	de 00 	sbc a,$00	sbc a,$00
3c5d	de 18 	sbc a,$18	sbc a,$00
3c5f	00 	nop	nop
3c60	19 	add hl,de	add hl,de
3c61	a4 	and h	and h
3c62	20 6f 	jr nz,$+$71	jr nz,$+$00
3c64	72 	ld (hl),d	ld (hl),d
3c65	20 f2 	jr nz,$-$0c	jr nz,$-$00
3c67	00 	nop	nop
3c68	19 	add hl,de	add hl,de
3c69	f2 00 13 	jp p,$1300	jp p,$0000
3c6c	75 	ld (hl),l	ld (hl),l
3c6d	73 	ld (hl),e	ld (hl),e
3c6e	65 	ld h,l	ld h,l
3c6f	20 6f 	jr nz,$+$71	jr nz,$+$00
3c71	66 	ld h,(hl)	ld h,(hl)
3c72	20 61 	jr nz,$+$63	jr nz,$+$00
3c74	72 	ld (hl),d	ld (hl),d
3c75	72 	ld (hl),d	ld (hl),d
3c76	61 	ld h,c	ld h,c
3c77	79 	ld a,c	ld a,c
3c78	00 	nop	nop
3c79	13 	inc de	inc de
3c7a	73 	ld (hl),e	ld (hl),e
3c7b	75 	ld (hl),l	ld (hl),l
3c7c	62 	ld h,d	ld h,d
3c7d	73 	ld (hl),e	ld (hl),e
3c7e	63 	ld h,e	ld h,e
3c7f	72 	ld (hl),d	ld (hl),d
3c80	69 	ld l,c	ld l,c
3c81	70 	ld (hl),b	ld (hl),b
3c82	74 	ld (hl),h	ld (hl),h
3c83	00 	nop	nop
3c84	53 	ld d,e	ld d,e
3c85	79 	ld a,c	ld a,c
3c86	6e 	ld l,(hl)	ld l,(hl)
3c87	74 	ld (hl),h	ld (hl),h
3c88	61 	ld h,c	ld h,c
3c89	78 	ld a,b	ld a,b
3c8a	20 65 	jr nz,$+$67	jr nz,$+$00
3c8c	72 	ld (hl),d	ld (hl),d
3c8d	72 	ld (hl),d	ld (hl),d
3c8e	6f 	ld l,a	ld l,a
3c8f	72 	ld (hl),d	ld (hl),d
3c90	00 	nop	nop
3c91	45 	ld b,l	ld b,l
3c92	73 	ld (hl),e	ld (hl),e
3c93	63 	ld h,e	ld h,e
3c94	61 	ld h,c	ld h,c
3c95	70 	ld (hl),b	ld (hl),b
3c96	65 	ld h,l	ld h,l
3c97	00 	nop	nop
3c98	44 	ld b,h	ld b,h
3c99	69 	ld l,c	ld l,c
3c9a	76 	halt	halt
3c9b	69 	ld l,c	ld l,c
3c9c	73 	ld (hl),e	ld (hl),e
3c9d	69 	ld l,c	ld l,c
3c9e	6f 	ld l,a	ld l,a
3c9f	6e 	ld l,(hl)	ld l,(hl)
3ca0	20 62 	jr nz,$+$64	jr nz,$+$00
3ca2	79 	ld a,c	ld a,c
3ca3	20 7a 	jr nz,$+$7c	jr nz,$+$00
3ca5	65 	ld h,l	ld h,l
3ca6	72 	ld (hl),d	ld (hl),d
3ca7	6f 	ld l,a	ld l,a
3ca8	00 	nop	nop
3ca9	53 	ld d,e	ld d,e
3caa	74 	ld (hl),h	ld (hl),h
3cab	72 	ld (hl),d	ld (hl),d
3cac	69 	ld l,c	ld l,c
3cad	6e 	ld l,(hl)	ld l,(hl)
3cae	67 	ld h,a	ld h,a
3caf	20 74 	jr nz,$+$76	jr nz,$+$00
3cb1	6f 	ld l,a	ld l,a
3cb2	6f 	ld l,a	ld l,a
3cb3	20 6c 	jr nz,$+$6e	jr nz,$+$00
3cb5	6f 	ld l,a	ld l,a
3cb6	6e 	ld l,(hl)	ld l,(hl)
3cb7	67 	ld h,a	ld h,a
3cb8	00 	nop	nop
3cb9	4e 	ld c,(hl)	ld c,(hl)
3cba	75 	ld (hl),l	ld (hl),l
3cbb	6d 	ld l,l	ld l,l
3cbc	62 	ld h,d	ld h,d
3cbd	65 	ld h,l	ld h,l
3cbe	72 	ld (hl),d	ld (hl),d
3cbf	20 74 	jr nz,$+$76	jr nz,$+$00
3cc1	6f 	ld l,a	ld l,a
3cc2	6f 	ld l,a	ld l,a
3cc3	20 62 	jr nz,$+$64	jr nz,$+$00
3cc5	69 	ld l,c	ld l,c
3cc6	67 	ld h,a	ld h,a
3cc7	00 	nop	nop
3cc8	2d 	dec l	dec l
3cc9	76 	halt	halt
3cca	65 	ld h,l	ld h,l
3ccb	20 72 	jr nz,$+$74	jr nz,$+$00
3ccd	6f 	ld l,a	ld l,a
3cce	6f 	ld l,a	ld l,a
3ccf	74 	ld (hl),h	ld (hl),h
3cd0	00 	nop	nop
3cd1	4c 	ld c,h	ld c,h
3cd2	6f 	ld l,a	ld l,a
3cd3	67 	ld h,a	ld h,a
3cd4	14 	inc d	inc d
3cd5	00 	nop	nop
3cd6	41 	ld b,c	ld b,c
3cd7	63 	ld h,e	ld h,e
3cd8	63 	ld h,e	ld h,e
3cd9	75 	ld (hl),l	ld (hl),l
3cda	72 	ld (hl),d	ld (hl),d
3cdb	61 	ld h,c	ld h,c
3cdc	63 	ld h,e	ld h,e
3cdd	79 	ld a,c	ld a,c
3cde	20 6c 	jr nz,$+$6e	jr nz,$+$00
3ce0	6f 	ld l,a	ld l,a
3ce1	73 	ld (hl),e	ld (hl),e
3ce2	74 	ld (hl),h	ld (hl),h
3ce3	00 	nop	nop
3ce4	45 	ld b,l	ld b,l
3ce5	78 	ld a,b	ld a,b
3ce6	70 	ld (hl),b	ld (hl),b
3ce7	6f 	ld l,a	ld l,a
3ce8	6e 	ld l,(hl)	ld l,(hl)
3ce9	65 	ld h,l	ld h,l
3cea	6e 	ld l,(hl)	ld l,(hl)
3ceb	74 	ld (hl),h	ld (hl),h
3cec	14 	inc d	inc d
3ced	00 	nop	nop
3cee	00 	nop	nop
3cef	12 	ld (de),a	ld (de),a
3cf0	15 	dec d	dec d
3cf1	00 	nop	nop
3cf2	11 29 00 	ld de,$0029	ld de,$0000
3cf5	13 	inc de	inc de
3cf6	68 	ld l,b	ld l,b
3cf7	65 	ld h,l	ld h,l
3cf8	78 	ld a,b	ld a,b
3cf9	20 6f 	jr nz,$+$71	jr nz,$+$00
3cfb	72 	ld (hl),d	ld (hl),d
3cfc	20 62 	jr nz,$+$64	jr nz,$+$00
3cfe	69 	ld l,c	ld l,c
3cff	6e 	ld l,(hl)	ld l,(hl)
3d00	61 	ld h,c	ld h,c
3d01	72 	ld (hl),d	ld (hl),d
3d02	79 	ld a,c	ld a,c
3d03	00 	nop	nop
3d04	12 	ld (de),a	ld (de),a
3d05	a4 	and h	and h
3d06	2f 	cpl	cpl
3d07	f2 00 13 	jp p,$1300	jp p,$0000
3d0a	63 	ld h,e	ld h,e
3d0b	61 	ld h,c	ld h,c
3d0c	6c 	ld l,h	ld l,h
3d0d	6c 	ld l,h	ld l,h
3d0e	00 	nop	nop
3d0f	13 	inc de	inc de
3d10	61 	ld h,c	ld h,c
3d11	72 	ld (hl),d	ld (hl),d
3d12	67 	ld h,a	ld h,a
3d13	75 	ld (hl),l	ld (hl),l
3d14	6d 	ld l,l	ld l,l
3d15	65 	ld h,l	ld h,l
3d16	6e 	ld l,(hl)	ld l,(hl)
3d17	74 	ld (hl),h	ld (hl),h
3d18	73 	ld (hl),e	ld (hl),e
3d19	00 	nop	nop
3d1a	19 	add hl,de	add hl,de
3d1b	e3 	ex (sp),hl	ex (sp),hl
3d1c	1a 	ld a,(de)	ld a,(de)
3d1d	00 	nop	nop
3d1e	43 	ld b,e	ld b,e
3d1f	61 	ld h,c	ld h,c
3d20	6e 	ld l,(hl)	ld l,(hl)
3d21	27 	daa	daa
3d22	74 	ld (hl),h	ld (hl),h
3d23	20 6d 	jr nz,$+$6f	jr nz,$+$00
3d25	61 	ld h,c	ld h,c
3d26	74 	ld (hl),h	ld (hl),h
3d27	63 	ld h,e	ld h,e
3d28	68 	ld l,b	ld l,b
3d29	20 e3 	jr nz,$-$1b	jr nz,$-$00
3d2b	00 	nop	nop
3d2c	13 	inc de	inc de
3d2d	e3 	ex (sp),hl	ex (sp),hl
3d2e	20 15 	jr nz,$+$17	jr nz,$+$00
3d30	00 	nop	nop
3d31	00 	nop	nop
3d32	11 b8 00 	ld de,$00b8	ld de,$0000
3d35	00 	nop	nop
3d36	17 	rla	rla
3d37	e4 00 ee 	call po,$ee00	call po,$0000
3d3a	20 73 	jr nz,$+$75	jr nz,$+$00
3d3c	79 	ld a,c	ld a,c
3d3d	6e 	ld l,(hl)	ld l,(hl)
3d3e	74 	ld (hl),h	ld (hl),h
3d3f	61 	ld h,c	ld h,c
3d40	78 	ld a,b	ld a,b
3d41	00 	nop	nop
3d42	ee 14 	xor $14	xor $00
3d44	00 	nop	nop
3d45	12 	ld (de),a	ld (de),a
3d46	6c 	ld l,h	ld l,h
3d47	69 	ld l,c	ld l,c
3d48	6e 	ld l,(hl)	ld l,(hl)
3d49	65 	ld h,l	ld h,l
3d4a	00 	nop	nop
3d4b	16 20 	ld d,$20	ld d,$00
3d4d	dc 00 19 	call c,$1900	call c,$0000
3d50	f5 	push af	push af
3d51	1a 	ld a,(de)	ld a,(de)
3d52	00 	nop	nop
3d53	13 	inc de	inc de
3d54	10 00 	djnz $+$02	djnz $+$00
3d56	11 23 00 	ld de,$0023	ld de,$0000
3d59	19 	add hl,de	add hl,de
3d5a	c7 	rst $00	rst $00
3d5b	1a 	ld a,(de)	ld a,(de)
3d5c	00 	nop	nop
3d5d	11 cb 00 	ld de,$00cb	ld de,$0000
3d60	ca 1b 6c 	jp z,$6c1b	jp z,$0000
3d63	61 	ld h,c	ld h,c
3d64	73 	ld (hl),e	ld (hl),e
3d65	74 	ld (hl),h	ld (hl),h
3d66	00 	nop	nop
3d67	11 cd 00 	ld de,$00cd	ld de,$0000
3d6a	00 	nop	nop
3d6b	00 	nop	nop
3d6c	00 	nop	nop
3d6d	ee 20 	xor $20	xor $00
3d6f	85 	add a,l	add a,l
3d70	1b 	dec de	dec de
3d71	ea 00 dc 	jp pe,$dc00	jp pe,$0000
3d74	1b 	dec de	dec de
3d75	ea 00 e3 	jp pe,$e300	jp pe,$0000
3d78	f5 	push af	push af
3d79	c7 	rst $00	rst $00
3d7a	c8 	ret z	ret z
3d7b	8b 	adc a,e	adc a,e
3d7c	c9 	ret	ret
3d7d	cc ed fd 	call z,$fded	call z,$0000
3d80	ce cb 	adc a,$cb	adc a,$00
3d82	cd 8b c9 	call $c98b	call $0000
3d85	cc cd d7 	call z,$d7cd	call z,$0000
3d88	43 	ld b,e	ld b,e
3d89	7e 	ld a,(hl)	ld a,(hl)
3d8a	b7 	or a	or a
3d8b	28 79 	jr z,$+$7b	jr z,$+$00
3d8d	23 	inc hl	inc hl
3d8e	5e 	ld e,(hl)	ld e,(hl)
3d8f	23 	inc hl	inc hl
3d90	56 	ld d,(hl)	ld d,(hl)
3d91	2b 	dec hl	dec hl
3d92	2b 	dec hl	dec hl
3d93	eb 	ex de,hl	ex de,hl
3d94	37 	scf	scf
3d95	ed 42 	sbc hl,bc	sbc hl,bc
3d97	eb 	ex de,hl	ex de,hl
3d98	30 6c 	jr nc,$+$6e	jr nc,$+$00
3d9a	c5 	push bc	push bc
3d9b	cd e9 3f 	call $3fe9	call $0000
3d9e	c1 	pop bc	pop bc
3d9f	18 e8 	jr $-$16	jr $-$00
3da1	fd 23 	inc iy	inc iy
3da3	cd 33 18 	call $1833	call $0000
3da6	d9 	exx	exx
3da7	7d 	ld a,l	ld a,l
3da8	32 fe 54 	ld ($54fe),a	ld ($0000),a
3dab	c3 b0 37 	jp $37b0	jp $0000
3dae	fe 4f 	cp $4f	cp $00
3db0	28 ef 	jr z,$-$0f	jr z,$-$00
3db2	0e 01 	ld c,$01	ld c,$00
3db4	11 00 53 	ld de,$5300	ld de,$0000
3db7	cd 18 44 	call $4418	call $0000
3dba	12 	ld (de),a	ld (de),a
3dbb	fd 21 00 53 	ld iy,$5300	ld iy,$0000
3dbf	cd d7 43 	call $43d7	call $0000
3dc2	cd 0b 45 	call $450b	call $0000
3dc5	fe e7 	cp $e7	cp $00
3dc7	3e 00 	ld a,$00	ld a,$00
3dc9	20 15 	jr nz,$+$17	jr nz,$+$00
3dcb	fd 23 	inc iy	inc iy
3dcd	cd 0b 45 	call $450b	call $0000
3dd0	eb 	ex de,hl	ex de,hl
3dd1	fd e5 	push iy	push iy
3dd3	e1 	pop hl	pop hl
3dd4	3e 0d 	ld a,$0d	ld a,$00
3dd6	c5 	push bc	push bc
3dd7	01 00 01 	ld bc,$0100	ld bc,$0000
3dda	ed b1 	cpir	cpir
3ddc	79 	ld a,c	ld a,c
3ddd	2f 	cpl	cpl
3dde	c1 	pop bc	pop bc
3ddf	eb 	ex de,hl	ex de,hl
3de0	5f 	ld e,a	ld e,a
3de1	78 	ld a,b	ld a,b
3de2	b1 	or c	or c
3de3	20 01 	jr nz,$+$03	jr nz,$+$00
3de5	0b 	dec bc	dec bc
3de6	d9 	exx	exx
3de7	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
3deb	1e 00 	ld e,$00	ld e,$00
3ded	d9 	exx	exx
3dee	3e 14 	ld a,$14	ld a,$00
3df0	c5 	push bc	push bc
3df1	d5 	push de	push de
3df2	e5 	push hl	push hl
3df3	08 	ex af,af'	ex af,af'
3df4	7e 	ld a,(hl)	ld a,(hl)
3df5	b7 	or a	or a
3df6	28 0e 	jr z,$+$10	jr z,$+$00
3df8	7b 	ld a,e	ld a,e
3df9	23 	inc hl	inc hl
3dfa	5e 	ld e,(hl)	ld e,(hl)
3dfb	23 	inc hl	inc hl
3dfc	56 	ld d,(hl)	ld d,(hl)
3dfd	2b 	dec hl	dec hl
3dfe	2b 	dec hl	dec hl
3dff	d5 	push de	push de
3e00	eb 	ex de,hl	ex de,hl
3e01	37 	scf	scf
3e02	ed 42 	sbc hl,bc	sbc hl,bc
3e04	eb 	ex de,hl	ex de,hl
3e05	d1 	pop de	pop de
3e06	d2 af 37 	jp nc,$37af	jp nc,$0000
3e09	4e 	ld c,(hl)	ld c,(hl)
3e0a	47 	ld b,a	ld b,a
3e0b	23 	inc hl	inc hl
3e0c	23 	inc hl	inc hl
3e0d	23 	inc hl	inc hl
3e0e	0d 	dec c	dec c
3e0f	0d 	dec c	dec c
3e10	0d 	dec c	dec c
3e11	0d 	dec c	dec c
3e12	d5 	push de	push de
3e13	e5 	push hl	push hl
3e14	af 	xor a	xor a
3e15	b8 	cp b	cp b
3e16	fd e5 	push iy	push iy
3e18	d1 	pop de	pop de
3e19	c4 f2 1d 	call nz,$1df2	call nz,$0000
3e1c	e1 	pop hl	pop hl
3e1d	d1 	pop de	pop de
3e1e	fd e5 	push iy	push iy
3e20	cc 5d 40 	call z,$405d	call z,$0000
3e23	fd e1 	pop iy	pop iy
3e25	08 	ex af,af'	ex af,af'
3e26	3d 	dec a	dec a
3e27	cd 1a 12 	call $121a	call $0000
3e2a	e1 	pop hl	pop hl
3e2b	5e 	ld e,(hl)	ld e,(hl)
3e2c	16 00 	ld d,$00	ld d,$00
3e2e	19 	add hl,de	add hl,de
3e2f	d1 	pop de	pop de
3e30	c1 	pop bc	pop bc
3e31	18 bd 	jr $-$41	jr $-$00
3e33	cd 43 40 	call $4043	call $0000
3e36	cd b4 43 	call $43b4	call $0000
3e39	d9 	exx	exx
3e3a	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3e3d	ed 5b de 54 	ld de,($54de)	ld de,($0000)
3e41	7e 	ld a,(hl)	ld a,(hl)
3e42	b7 	or a	or a
3e43	28 28 	jr z,$+$2a	jr z,$+$00
3e45	23 	inc hl	inc hl
3e46	4e 	ld c,(hl)	ld c,(hl)
3e47	23 	inc hl	inc hl
3e48	46 	ld b,(hl)	ld b,(hl)
3e49	eb 	ex de,hl	ex de,hl
3e4a	71 	ld (hl),c	ld (hl),c
3e4b	23 	inc hl	inc hl
3e4c	70 	ld (hl),b	ld (hl),b
3e4d	23 	inc hl	inc hl
3e4e	d9 	exx	exx
3e4f	e5 	push hl	push hl
3e50	09 	add hl,bc	add hl,bc
3e51	da af 43 	jp c,$43af	jp c,$0000
3e54	d9 	exx	exx
3e55	c1 	pop bc	pop bc
3e56	71 	ld (hl),c	ld (hl),c
3e57	23 	inc hl	inc hl
3e58	70 	ld (hl),b	ld (hl),b
3e59	23 	inc hl	inc hl
3e5a	eb 	ex de,hl	ex de,hl
3e5b	2b 	dec hl	dec hl
3e5c	2b 	dec hl	dec hl
3e5d	af 	xor a	xor a
3e5e	47 	ld b,a	ld b,a
3e5f	4e 	ld c,(hl)	ld c,(hl)
3e60	09 	add hl,bc	add hl,bc
3e61	eb 	ex de,hl	ex de,hl
3e62	e5 	push hl	push hl
3e63	24 	inc h	inc h
3e64	ed 72 	sbc hl,sp	sbc hl,sp
3e66	e1 	pop hl	pop hl
3e67	eb 	ex de,hl	ex de,hl
3e68	38 d7 	jr c,$-$27	jr c,$-$00
3e6a	c3 44 3f 	jp $3f44	jp $0000
3e6d	eb 	ex de,hl	ex de,hl
3e6e	36 ff 	ld (hl),$ff	ld (hl),$00
3e70	23 	inc hl	inc hl
3e71	36 ff 	ld (hl),$ff	ld (hl),$00
3e73	ed 5b de 54 	ld de,($54de)	ld de,($0000)
3e77	d9 	exx	exx
3e78	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3e7b	4e 	ld c,(hl)	ld c,(hl)
3e7c	79 	ld a,c	ld a,c
3e7d	b7 	or a	or a
3e7e	28 86 	jr z,$-$78	jr z,$-$00
3e80	d9 	exx	exx
3e81	eb 	ex de,hl	ex de,hl
3e82	23 	inc hl	inc hl
3e83	23 	inc hl	inc hl
3e84	5e 	ld e,(hl)	ld e,(hl)
3e85	23 	inc hl	inc hl
3e86	56 	ld d,(hl)	ld d,(hl)
3e87	23 	inc hl	inc hl
3e88	d5 	push de	push de
3e89	eb 	ex de,hl	ex de,hl
3e8a	d9 	exx	exx
3e8b	d1 	pop de	pop de
3e8c	23 	inc hl	inc hl
3e8d	73 	ld (hl),e	ld (hl),e
3e8e	23 	inc hl	inc hl
3e8f	72 	ld (hl),d	ld (hl),d
3e90	23 	inc hl	inc hl
3e91	0d 	dec c	dec c
3e92	0d 	dec c	dec c
3e93	0d 	dec c	dec c
3e94	06 00 	ld b,$00	ld b,$00
3e96	3e 8d 	ld a,$8d	ld a,$00
3e98	ed b1 	cpir	cpir
3e9a	20 df 	jr nz,$-$1f	jr nz,$-$00
3e9c	c5 	push bc	push bc
3e9d	e5 	push hl	push hl
3e9e	e5 	push hl	push hl
3e9f	fd e1 	pop iy	pop iy
3ea1	d9 	exx	exx
3ea2	e5 	push hl	push hl
3ea3	cd 60 1f 	call $1f60	call $0000
3ea6	e1 	pop hl	pop hl
3ea7	d9 	exx	exx
3ea8	44 	ld b,h	ld b,h
3ea9	4d 	ld c,l	ld c,l
3eaa	2a de 54 	ld hl,($54de)	ld hl,($0000)
3ead	5e 	ld e,(hl)	ld e,(hl)
3eae	23 	inc hl	inc hl
3eaf	56 	ld d,(hl)	ld d,(hl)
3eb0	23 	inc hl	inc hl
3eb1	eb 	ex de,hl	ex de,hl
3eb2	b7 	or a	or a
3eb3	ed 42 	sbc hl,bc	sbc hl,bc
3eb5	eb 	ex de,hl	ex de,hl
3eb6	5e 	ld e,(hl)	ld e,(hl)
3eb7	23 	inc hl	inc hl
3eb8	56 	ld d,(hl)	ld d,(hl)
3eb9	23 	inc hl	inc hl
3eba	38 f1 	jr c,$-$0d	jr c,$-$00
3ebc	eb 	ex de,hl	ex de,hl
3ebd	28 1a 	jr z,$+$1c	jr z,$+$00
3ebf	cd fa 44 	call $44fa	call $0000
3ec2	46 	ld b,(hl)	ld b,(hl)
3ec3	61 	ld h,c	ld h,c
3ec4	69 	ld l,c	ld l,c
3ec5	6c 	ld l,h	ld l,h
3ec6	65 	ld h,l	ld h,l
3ec7	64 	ld h,h	ld h,h
3ec8	20 61 	jr nz,$+$63	jr nz,$+$00
3eca	74 	ld (hl),h	ld (hl),h
3ecb	20 00 	jr nz,$+$02	jr nz,$+$00
3ecd	d9 	exx	exx
3ece	e5 	push hl	push hl
3ecf	d9 	exx	exx
3ed0	e1 	pop hl	pop hl
3ed1	cd 92 41 	call $4192	call $0000
3ed4	cd fb 40 	call $40fb	call $0000
3ed7	18 06 	jr $+$08	jr $+$00
3ed9	d1 	pop de	pop de
3eda	d5 	push de	push de
3edb	1b 	dec de	dec de
3edc	cd bf 44 	call $44bf	call $0000
3edf	e1 	pop hl	pop hl
3ee0	c1 	pop bc	pop bc
3ee1	18 b3 	jr $-$4b	jr $-$00
3ee3	cd b4 43 	call $43b4	call $0000
3ee6	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
3ee9	79 	ld a,c	ld a,c
3eea	32 ff 54 	ld ($54ff),a	ld ($0000),a
3eed	18 37 	jr $+$39	jr $+$00
3eef	cd fa 44 	call $44fa	call $0000
3ef2	13 	inc de	inc de
3ef3	70 	ld (hl),b	ld (hl),b
3ef4	72 	ld (hl),d	ld (hl),d
3ef5	6f 	ld l,a	ld l,a
3ef6	67 	ld h,a	ld h,a
3ef7	72 	ld (hl),d	ld (hl),d
3ef8	61 	ld h,c	ld h,c
3ef9	6d 	ld l,l	ld l,l
3efa	0d 	dec c	dec c
3efb	0a 	ld a,(bc)	ld a,(bc)
3efc	00 	nop	nop
3efd	cd 3e 40 	call $403e	call $0000
3f00	18 24 	jr $+$26	jr $+$00
3f02	cd 3c 18 	call $183c	call $0000
3f05	3e 0d 	ld a,$0d	ld a,$00
3f07	12 	ld (de),a	ld (de),a
3f08	cd 00 40 	call $4000	call $0000
3f0b	cd 43 40 	call $4043	call $0000
3f0e	18 31 	jr $+$33	jr $+$00
3f10	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3f13	e5 	push hl	push hl
3f14	23 	inc hl	inc hl
3f15	23 	inc hl	inc hl
3f16	23 	inc hl	inc hl
3f17	01 fc 00 	ld bc,$00fc	ld bc,$0000
3f1a	3e 0d 	ld a,$0d	ld a,$00
3f1c	ed b1 	cpir	cpir
3f1e	20 cf 	jr nz,$-$2f	jr nz,$-$00
3f20	7d 	ld a,l	ld a,l
3f21	e1 	pop hl	pop hl
3f22	77 	ld (hl),a	ld (hl),a
3f23	cd 1a 40 	call $401a	call $0000
3f26	c3 b0 37 	jp $37b0	jp $0000
3f29	cd 3c 18 	call $183c	call $0000
3f2c	3e 0d 	ld a,$0d	ld a,$00
3f2e	12 	ld (de),a	ld (de),a
3f2f	ed 5b dc 54 	ld de,($54dc)	ld de,($0000)
3f33	cd 25 40 	call $4025	call $0000
3f36	b7 	or a	or a
3f37	ed 52 	sbc hl,de	sbc hl,de
3f39	44 	ld b,h	ld b,h
3f3a	4d 	ld c,l	ld c,l
3f3b	21 00 52 	ld hl,$5200	ld hl,$0000
3f3e	cd a6 13 	call $13a6	call $0000
3f41	c3 af 37 	jp $37af	jp $0000
3f44	21 21 3c 	ld hl,$3c21	ld hl,$0000
3f47	4f 	ld c,a	ld c,a
3f48	b7 	or a	or a
3f49	28 0c 	jr z,$+$0e	jr z,$+$00
3f4b	47 	ld b,a	ld b,a
3f4c	af 	xor a	xor a
3f4d	be 	cp (hl)	cp (hl)
3f4e	23 	inc hl	inc hl
3f4f	20 fc 	jr nz,$-$02	jr nz,$-$00
3f51	10 fa 	djnz $-$04	djnz $-$00
3f53	18 02 	jr $+$04	jr $+$00
3f55	e1 	pop hl	pop hl
3f56	4f 	ld c,a	ld c,a
3f57	22 ee 54 	ld ($54ee),hl	ld ($0000),hl
3f5a	2a ec 54 	ld hl,($54ec)	ld hl,($0000)
3f5d	7c 	ld a,h	ld a,h
3f5e	b5 	or l	or l
3f5f	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
3f63	28 01 	jr z,$+$03	jr z,$+$00
3f65	f9 	ld sp,hl	ld sp,hl
3f66	79 	ld a,c	ld a,c
3f67	cd 5b 41 	call $415b	call $0000
3f6a	32 fd 54 	ld ($54fd),a	ld ($0000),a
3f6d	22 f2 54 	ld ($54f2),hl	ld ($0000),hl
3f70	b7 	or a	or a
3f71	28 0b 	jr z,$+$0d	jr z,$+$00
3f73	2a ea 54 	ld hl,($54ea)	ld hl,($0000)
3f76	7c 	ld a,h	ld a,h
3f77	b5 	or l	or l
3f78	e5 	push hl	push hl
3f79	fd e1 	pop iy	pop iy
3f7b	c2 99 24 	jp nz,$2499	jp nz,$0000
3f7e	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
3f82	ed 62 	sbc hl,hl	sbc hl,hl
3f84	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
3f87	22 e6 54 	ld ($54e6),hl	ld ($0000),hl
3f8a	cd 27 12 	call $1227	call $0000
3f8d	cd fb 40 	call $40fb	call $0000
3f90	cd e5 44 	call $44e5	call $0000
3f93	2a f2 54 	ld hl,($54f2)	ld hl,($0000)
3f96	cd 82 41 	call $4182	call $0000
3f99	1e 00 	ld e,$00	ld e,$00
3f9b	dc 37 12 	call c,$1237	call c,$0000
3f9e	cd fb 40 	call $40fb	call $0000
3fa1	18 83 	jr $-$7b	jr $-$00
3fa3	21 84 38 	ld hl,$3884	ld hl,$0000
3fa6	fd 7e 00 	ld a,(iy)	ld a,(iy)
3fa9	46 	ld b,(hl)	ld b,(hl)
3faa	23 	inc hl	inc hl
3fab	be 	cp (hl)	cp (hl)
3fac	28 0a 	jr z,$+$0c	jr z,$+$00
3fae	d8 	ret c	ret c
3faf	23 	inc hl	inc hl
3fb0	7e 	ld a,(hl)	ld a,(hl)
3fb1	fe a0 	cp $a0	cp $00
3fb3	ea af 3f 	jp pe,$3faf	jp pe,$0000
3fb6	18 ee 	jr $-$10	jr $-$00
3fb8	fd e5 	push iy	push iy
3fba	23 	inc hl	inc hl
3fbb	7e 	ld a,(hl)	ld a,(hl)
3fbc	fe a0 	cp $a0	cp $00
3fbe	e2 e5 3f 	jp po,$3fe5	jp po,$0000
3fc1	fd 23 	inc iy	inc iy
3fc3	fd 7e 00 	ld a,(iy)	ld a,(iy)
3fc6	be 	cp (hl)	cp (hl)
3fc7	20 05 	jr nz,$+$07	jr nz,$+$00
3fc9	fe a1 	cp $a1	cp $00
3fcb	ea ba 3f 	jp pe,$3fba	jp pe,$0000
3fce	fd 7e 00 	ld a,(iy)	ld a,(iy)
3fd1	fe 2e 	cp $2e	cp $00
3fd3	28 10 	jr z,$+$12	jr z,$+$00
3fd5	cd fc 43 	call $43fc	call $0000
3fd8	38 04 	jr c,$+$06	jr c,$+$00
3fda	fd e1 	pop iy	pop iy
3fdc	18 d1 	jr $-$2d	jr $-$00
3fde	7e 	ld a,(hl)	ld a,(hl)
3fdf	fe 20 	cp $20	cp $00
3fe1	20 f7 	jr nz,$-$07	jr nz,$-$00
3fe3	fd 2b 	dec iy	dec iy
3fe5	f1 	pop af	pop af
3fe6	af 	xor a	xor a
3fe7	78 	ld a,b	ld a,b
3fe8	c9 	ret	ret
3fe9	d5 	push de	push de
3fea	e5 	push hl	push hl
3feb	e5 	push hl	push hl
3fec	06 00 	ld b,$00	ld b,$00
3fee	4e 	ld c,(hl)	ld c,(hl)
3fef	09 	add hl,bc	add hl,bc
3ff0	e5 	push hl	push hl
3ff1	eb 	ex de,hl	ex de,hl
3ff2	cd 25 40 	call $4025	call $0000
3ff5	ed 52 	sbc hl,de	sbc hl,de
3ff7	44 	ld b,h	ld b,h
3ff8	4d 	ld c,l	ld c,l
3ff9	e1 	pop hl	pop hl
3ffa	d1 	pop de	pop de
3ffb	ed b0 	ldir	ldir
3ffd	e1 	pop hl	pop hl
3ffe	d1 	pop de	pop de
3fff	c9 	ret	ret
4000	ed 5b dc 54 	ld de,($54dc)	ld de,($0000)
4004	21 00 ff 	ld hl,$ff00	ld hl,$0000
4007	39 	add hl,sp	add hl,sp
4008	ed 52 	sbc hl,de	sbc hl,de
400a	44 	ld b,h	ld b,h
400b	4d 	ld c,l	ld c,l
400c	21 00 52 	ld hl,$5200	ld hl,$0000
400f	cd b0 12 	call $12b0	call $0000
4012	d4 3e 40 	call nc,$403e	call nc,$0000
4015	3e 00 	ld a,$00	ld a,$00
4017	d2 44 3f 	jp nc,$3f44	jp nc,$0000
401a	cd 25 40 	call $4025	call $0000
401d	2b 	dec hl	dec hl
401e	36 ff 	ld (hl),$ff	ld (hl),$00
4020	2b 	dec hl	dec hl
4021	36 ff 	ld (hl),$ff	ld (hl),$00
4023	18 1e 	jr $+$20	jr $+$00
4025	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4028	06 00 	ld b,$00	ld b,$00
402a	3e 0d 	ld a,$0d	ld a,$00
402c	4e 	ld c,(hl)	ld c,(hl)
402d	0c 	inc c	inc c
402e	0d 	dec c	dec c
402f	28 09 	jr z,$+$0b	jr z,$+$00
4031	09 	add hl,bc	add hl,bc
4032	2b 	dec hl	dec hl
4033	be 	cp (hl)	cp (hl)
4034	23 	inc hl	inc hl
4035	28 f5 	jr z,$-$09	jr z,$-$00
4037	c3 ef 3e 	jp $3eef	jp $0000
403a	23 	inc hl	inc hl
403b	23 	inc hl	inc hl
403c	23 	inc hl	inc hl
403d	c9 	ret	ret
403e	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4041	36 00 	ld (hl),$00	ld (hl),$00
4043	e5 	push hl	push hl
4044	c5 	push bc	push bc
4045	f5 	push af	push af
4046	cd 25 40 	call $4025	call $0000
4049	22 de 54 	ld ($54de),hl	ld ($0000),hl
404c	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
404f	21 6c 54 	ld hl,$546c	ld hl,$0000
4052	06 70 	ld b,$70	ld b,$00
4054	36 00 	ld (hl),$00	ld (hl),$00
4056	23 	inc hl	inc hl
4057	10 fb 	djnz $-$03	djnz $-$00
4059	f1 	pop af	pop af
405a	c1 	pop bc	pop bc
405b	e1 	pop hl	pop hl
405c	c9 	ret	ret
405d	e5 	push hl	push hl
405e	eb 	ex de,hl	ex de,hl
405f	c5 	push bc	push bc
4060	cd 96 41 	call $4196	call $0000
4063	c1 	pop bc	pop bc
4064	e1 	pop hl	pop hl
4065	7e 	ld a,(hl)	ld a,(hl)
4066	d9 	exx	exx
4067	21 7e 3d 	ld hl,$3d7e	ld hl,$0000
406a	01 08 00 	ld bc,$0008	ld bc,$0000
406d	ed b1 	cpir	cpir
406f	cc f5 40 	call z,$40f5	call z,$0000
4072	fe cb 	cp $cb	cp $00
4074	cc f5 40 	call z,$40f5	call z,$0000
4077	3e 20 	ld a,$20	ld a,$00
4079	dd cb 00 46 	bit 0,(ix)	bit 0,(ix)
407d	c4 02 41 	call nz,$4102	call nz,$0000
4080	7b 	ld a,e	ld a,e
4081	87 	add a,a	add a,a
4082	dd cb 00 4e 	bit 1,(ix)	bit 1,(ix)
4086	c4 a3 35 	call nz,$35a3	call nz,$0000
4089	d9 	exx	exx
408a	7e 	ld a,(hl)	ld a,(hl)
408b	1e 00 	ld e,$00	ld e,$00
408d	d9 	exx	exx
408e	01 07 00 	ld bc,$0007	ld bc,$0000
4091	21 77 3d 	ld hl,$3d77	ld hl,$0000
4094	ed b1 	cpir	cpir
4096	cc f9 40 	call z,$40f9	call z,$0000
4099	fe c8 	cp $c8	cp $00
409b	cc f9 40 	call z,$40f9	call z,$0000
409e	d9 	exx	exx
409f	7e 	ld a,(hl)	ld a,(hl)
40a0	23 	inc hl	inc hl
40a1	fe 0d 	cp $0d	cp $00
40a3	28 25 	jr z,$+$27	jr z,$+$00
40a5	57 	ld d,a	ld d,a
40a6	fe 10 	cp $10	cp $00
40a8	20 02 	jr nz,$+$04	jr nz,$+$00
40aa	cb fb 	set 7,e	set 7,e
40ac	fe 22 	cp $22	cp $00
40ae	20 01 	jr nz,$+$03	jr nz,$+$00
40b0	1c 	inc e	inc e
40b1	cd e9 40 	call $40e9	call $0000
40b4	7b 	ld a,e	ld a,e
40b5	e6 81 	and $81	and $00
40b7	20 e6 	jr nz,$-$18	jr nz,$-$00
40b9	7e 	ld a,(hl)	ld a,(hl)
40ba	d9 	exx	exx
40bb	21 7e 3d 	ld hl,$3d7e	ld hl,$0000
40be	01 03 00 	ld bc,$0003	ld bc,$0000
40c1	ed b1 	cpir	cpir
40c3	cc f5 40 	call z,$40f5	call z,$0000
40c6	0e 04 	ld c,$04	ld c,$00
40c8	18 c7 	jr $-$37	jr $-$00
40ca	7a 	ld a,d	ld a,d
40cb	fe 8c 	cp $8c	cp $00
40cd	d9 	exx	exx
40ce	cc f9 40 	call z,$40f9	call z,$0000
40d1	d9 	exx	exx
40d2	18 27 	jr $+$29	jr $+$00
40d4	e5 	push hl	push hl
40d5	fd e1 	pop iy	pop iy
40d7	c5 	push bc	push bc
40d8	cd 60 1f 	call $1f60	call $0000
40db	c1 	pop bc	pop bc
40dc	d9 	exx	exx
40dd	c5 	push bc	push bc
40de	d5 	push de	push de
40df	cd 92 41 	call $4192	call $0000
40e2	d1 	pop de	pop de
40e3	c1 	pop bc	pop bc
40e4	d9 	exx	exx
40e5	fd e5 	push iy	push iy
40e7	e1 	pop hl	pop hl
40e8	c9 	ret	ret
40e9	cb 43 	bit 0,e	bit 0,e
40eb	20 15 	jr nz,$+$17	jr nz,$+$00
40ed	fe 8d 	cp $8d	cp $00
40ef	28 e3 	jr z,$-$1b	jr z,$-$00
40f1	cd 1b 41 	call $411b	call $0000
40f4	c9 	ret	ret
40f5	1d 	dec e	dec e
40f6	f2 fa 40 	jp p,$40fa	jp p,$0000
40f9	1c 	inc e	inc e
40fa	c9 	ret	ret
40fb	3e 0d 	ld a,$0d	ld a,$00
40fd	cd 02 41 	call $4102	call $0000
4100	3e 0a 	ld a,$0a	ld a,$00
4102	cd 95 11 	call $1195	call $0000
4105	d6 0d 	sub $0d	sub $00
4107	28 05 	jr z,$+$07	jr z,$+$00
4109	d8 	ret c	ret c
410a	3a fb 54 	ld a,($54fb)	ld a,($0000)
410d	3c 	inc a	inc a
410e	32 fb 54 	ld ($54fb),a	ld ($0000),a
4111	c8 	ret z	ret z
4112	e5 	push hl	push hl
4113	2a fc 54 	ld hl,($54fc)	ld hl,($0000)
4116	bd 	cp l	cp l
4117	e1 	pop hl	pop hl
4118	c0 	ret nz	ret nz
4119	18 e0 	jr $-$1e	jr $-$00
411b	fe a0 	cp $a0	cp $00
411d	ea 02 41 	jp pe,$4102	jp pe,$0000
4120	c5 	push bc	push bc
4121	e5 	push hl	push hl
4122	21 84 38 	ld hl,$3884	ld hl,$0000
4125	01 5b 03 	ld bc,$035b	ld bc,$0000
4128	ed b1 	cpir	cpir
412a	c4 02 41 	call nz,$4102	call nz,$0000
412d	06 a0 	ld b,$a0	ld b,$00
412f	fe 91 	cp $91	cp $00
4131	ea 35 41 	jp pe,$4135	jp pe,$0000
4134	04 	inc b	inc b
4135	7e 	ld a,(hl)	ld a,(hl)
4136	23 	inc hl	inc hl
4137	b8 	cp b	cp b
4138	f5 	push af	push af
4139	ec 02 41 	call pe,$4102	call pe,$0000
413c	f1 	pop af	pop af
413d	ea 35 41 	jp pe,$4135	jp pe,$0000
4140	e1 	pop hl	pop hl
4141	c1 	pop bc	pop bc
4142	c9 	ret	ret
4143	eb 	ex de,hl	ex de,hl
4144	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4147	af 	xor a	xor a
4148	be 	cp (hl)	cp (hl)
4149	3c 	inc a	inc a
414a	d0 	ret nc	ret nc
414b	af 	xor a	xor a
414c	47 	ld b,a	ld b,a
414d	4e 	ld c,(hl)	ld c,(hl)
414e	e5 	push hl	push hl
414f	23 	inc hl	inc hl
4150	7e 	ld a,(hl)	ld a,(hl)
4151	23 	inc hl	inc hl
4152	66 	ld h,(hl)	ld h,(hl)
4153	6f 	ld l,a	ld l,a
4154	ed 52 	sbc hl,de	sbc hl,de
4156	e1 	pop hl	pop hl
4157	d0 	ret nc	ret nc
4158	09 	add hl,bc	add hl,bc
4159	18 f2 	jr $-$0c	jr $-$00
415b	06 00 	ld b,$00	ld b,$00
415d	ed 5b f4 54 	ld de,($54f4)	ld de,($0000)
4161	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4164	b7 	or a	or a
4165	ed 52 	sbc hl,de	sbc hl,de
4167	19 	add hl,de	add hl,de
4168	30 13 	jr nc,$+$15	jr nc,$+$00
416a	4e 	ld c,(hl)	ld c,(hl)
416b	0c 	inc c	inc c
416c	0d 	dec c	dec c
416d	28 0e 	jr z,$+$10	jr z,$+$00
416f	09 	add hl,bc	add hl,bc
4170	ed 52 	sbc hl,de	sbc hl,de
4172	19 	add hl,de	add hl,de
4173	38 f5 	jr c,$-$09	jr c,$-$00
4175	ed 42 	sbc hl,bc	sbc hl,bc
4177	23 	inc hl	inc hl
4178	5e 	ld e,(hl)	ld e,(hl)
4179	23 	inc hl	inc hl
417a	56 	ld d,(hl)	ld d,(hl)
417b	eb 	ex de,hl	ex de,hl
417c	c9 	ret	ret
417d	21 00 00 	ld hl,$0000	ld hl,$0000
4180	18 fa 	jr $-$04	jr $-$00
4182	7c 	ld a,h	ld a,h
4183	b5 	or l	or l
4184	c8 	ret z	ret z
4185	cd fa 44 	call $44fa	call $0000
4188	20 61 	jr nz,$+$63	jr nz,$+$00
418a	74 	ld (hl),h	ld (hl),h
418b	20 6c 	jr nz,$+$6e	jr nz,$+$00
418d	69 	ld l,c	ld l,c
418e	6e 	ld l,(hl)	ld l,(hl)
418f	65 	ld h,l	ld h,l
4190	20 00 	jr nz,$+$02	jr nz,$+$00
4192	0e 00 	ld c,$00	ld c,$00
4194	18 02 	jr $+$04	jr $+$00
4196	0e 20 	ld c,$20	ld c,$00
4198	06 05 	ld b,$05	ld b,$00
419a	11 10 27 	ld de,$2710	ld de,$0000
419d	af 	xor a	xor a
419e	ed 52 	sbc hl,de	sbc hl,de
41a0	3c 	inc a	inc a
41a1	30 fb 	jr nc,$-$03	jr nc,$-$00
41a3	19 	add hl,de	add hl,de
41a4	3d 	dec a	dec a
41a5	28 04 	jr z,$+$06	jr z,$+$00
41a7	cb e1 	set 4,c	set 4,c
41a9	cb e9 	set 5,c	set 5,c
41ab	b1 	or c	or c
41ac	c4 02 41 	call nz,$4102	call nz,$0000
41af	78 	ld a,b	ld a,b
41b0	fe 05 	cp $05	cp $00
41b2	28 06 	jr z,$+$08	jr z,$+$00
41b4	29 	add hl,hl	add hl,hl
41b5	54 	ld d,h	ld d,h
41b6	5d 	ld e,l	ld e,l
41b7	29 	add hl,hl	add hl,hl
41b8	29 	add hl,hl	add hl,hl
41b9	19 	add hl,de	add hl,de
41ba	11 e8 03 	ld de,$03e8	ld de,$0000
41bd	10 de 	djnz $-$20	djnz $-$00
41bf	37 	scf	scf
41c0	c9 	ret	ret
41c1	fd 23 	inc iy	inc iy
41c3	fd 23 	inc iy	inc iy
41c5	e5 	push hl	push hl
41c6	dd e1 	pop ix	pop ix
41c8	7a 	ld a,d	ld a,d
41c9	f6 40 	or $40	or $00
41cb	bf 	cp a	cp a
41cc	c9 	ret	ret
41cd	cd 3c 43 	call $433c	call $0000
41d0	fd 7e 00 	ld a,(iy)	ld a,(iy)
41d3	fe 28 	cp $28	cp $00
41d5	20 7d 	jr nz,$+$7f	jr nz,$+$00
41d7	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
41da	fe 29 	cp $29	cp $00
41dc	28 e3 	jr z,$-$1b	jr z,$-$00
41de	3e 0e 	ld a,$0e	ld a,$00
41e0	c3 44 3f 	jp $3f44	jp $0000
41e3	fd 7e 00 	ld a,(iy)	ld a,(iy)
41e6	fe 21 	cp $21	cp $00
41e8	28 76 	jr z,$+$78	jr z,$+$00
41ea	fe 3f 	cp $3f	cp $00
41ec	28 76 	jr z,$+$78	jr z,$+$00
41ee	fe 7c 	cp $7c	cp $00
41f0	28 75 	jr z,$+$77	jr z,$+$00
41f2	fe 24 	cp $24	cp $00
41f4	28 75 	jr z,$+$77	jr z,$+$00
41f6	cd b0 42 	call $42b0	call $0000
41f9	c0 	ret nz	ret nz
41fa	fd 7e 00 	ld a,(iy)	ld a,(iy)
41fd	fe 28 	cp $28	cp $00
41ff	20 4b 	jr nz,$+$4d	jr nz,$+$00
4201	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
4204	fe 29 	cp $29	cp $00
4206	28 b9 	jr z,$-$45	jr z,$-$00
4208	d5 	push de	push de
4209	7e 	ld a,(hl)	ld a,(hl)
420a	23 	inc hl	inc hl
420b	66 	ld h,(hl)	ld h,(hl)
420c	6f 	ld l,a	ld l,a
420d	e6 fe 	and $fe	and $00
420f	b4 	or h	or h
4210	28 cc 	jr z,$-$32	jr z,$-$00
4212	7e 	ld a,(hl)	ld a,(hl)
4213	b7 	or a	or a
4214	28 c8 	jr z,$-$36	jr z,$-$00
4216	23 	inc hl	inc hl
4217	11 00 00 	ld de,$0000	ld de,$0000
421a	f5 	push af	push af
421b	fd 23 	inc iy	inc iy
421d	e5 	push hl	push hl
421e	d5 	push de	push de
421f	cd 33 18 	call $1833	call $0000
4222	d9 	exx	exx
4223	d1 	pop de	pop de
4224	e3 	ex (sp),hl	ex (sp),hl
4225	4e 	ld c,(hl)	ld c,(hl)
4226	23 	inc hl	inc hl
4227	46 	ld b,(hl)	ld b,(hl)
4228	23 	inc hl	inc hl
4229	e3 	ex (sp),hl	ex (sp),hl
422a	eb 	ex de,hl	ex de,hl
422b	d5 	push de	push de
422c	cd bd 36 	call $36bd	call $0000
422f	d1 	pop de	pop de
4230	19 	add hl,de	add hl,de
4231	eb 	ex de,hl	ex de,hl
4232	b7 	or a	or a
4233	ed 42 	sbc hl,bc	sbc hl,bc
4235	3e 0f 	ld a,$0f	ld a,$00
4237	30 a7 	jr nc,$-$57	jr nc,$-$00
4239	e1 	pop hl	pop hl
423a	f1 	pop af	pop af
423b	3d 	dec a	dec a
423c	20 1c 	jr nz,$+$1e	jr nz,$+$00
423e	cd ae 20 	call $20ae	call $0000
4241	f1 	pop af	pop af
4242	e5 	push hl	push hl
4243	cd ad 36 	call $36ad	call $0000
4246	e1 	pop hl	pop hl
4247	19 	add hl,de	add hl,de
4248	57 	ld d,a	ld d,a
4249	fd 7e 00 	ld a,(iy)	ld a,(iy)
424c	fe 3f 	cp $3f	cp $00
424e	28 26 	jr z,$+$28	jr z,$+$00
4250	fe 21 	cp $21	cp $00
4252	28 1e 	jr z,$+$20	jr z,$+$00
4254	e5 	push hl	push hl
4255	dd e1 	pop ix	pop ix
4257	7a 	ld a,d	ld a,d
4258	bf 	cp a	cp a
4259	c9 	ret	ret
425a	f5 	push af	push af
425b	cd a2 20 	call $20a2	call $0000
425e	18 bd 	jr $-$41	jr $-$00
4260	3e 04 	ld a,$04	ld a,$00
4262	18 09 	jr $+$0b	jr $+$00
4264	af 	xor a	xor a
4265	18 06 	jr $+$08	jr $+$00
4267	3e 05 	ld a,$05	ld a,$00
4269	18 02 	jr $+$04	jr $+$00
426b	3e 80 	ld a,$80	ld a,$00
426d	ed 62 	sbc hl,hl	sbc hl,hl
426f	f5 	push af	push af
4270	18 15 	jr $+$17	jr $+$00
4272	06 04 	ld b,$04	ld b,$00
4274	18 02 	jr $+$04	jr $+$00
4276	06 00 	ld b,$00	ld b,$00
4278	e5 	push hl	push hl
4279	dd e1 	pop ix	pop ix
427b	7a 	ld a,d	ld a,d
427c	fe 81 	cp $81	cp $00
427e	c8 	ret z	ret z
427f	c5 	push bc	push bc
4280	cd 25 19 	call $1925	call $0000
4283	cd 17 1c 	call $1c17	call $0000
4286	d9 	exx	exx
4287	e5 	push hl	push hl
4288	fd 23 	inc iy	inc iy
428a	cd 60 18 	call $1860	call $0000
428d	d9 	exx	exx
428e	d1 	pop de	pop de
428f	f1 	pop af	pop af
4290	19 	add hl,de	add hl,de
4291	e5 	push hl	push hl
4292	dd e1 	pop ix	pop ix
4294	bf 	cp a	cp a
4295	c9 	ret	ret
4296	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
4299	cd fc 43 	call $43fc	call $0000
429c	d8 	ret c	ret c
429d	fd 7e 00 	ld a,(iy)	ld a,(iy)
42a0	21 d8 54 	ld hl,$54d8	ld hl,$0000
42a3	fe a4 	cp $a4	cp $00
42a5	28 43 	jr z,$+$45	jr z,$+$00
42a7	21 da 54 	ld hl,$54da	ld hl,$0000
42aa	fe f2 	cp $f2	cp $00
42ac	28 3c 	jr z,$+$3e	jr z,$+$00
42ae	37 	scf	scf
42af	c9 	ret	ret
42b0	d6 40 	sub $40	sub $00
42b2	d8 	ret c	ret c
42b3	26 00 	ld h,$00	ld h,$00
42b5	fe 1b 	cp $1b	cp $00
42b7	30 1d 	jr nc,$+$1f	jr nc,$+$00
42b9	87 	add a,a	add a,a
42ba	6f 	ld l,a	ld l,a
42bb	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
42be	fe 25 	cp $25	cp $00
42c0	20 20 	jr nz,$+$22	jr nz,$+$00
42c2	fd 7e 02 	ld a,(iy+$02)	ld a,(iy+$00)
42c5	fe 28 	cp $28	cp $00
42c7	28 19 	jr z,$+$1b	jr z,$+$00
42c9	29 	add hl,hl	add hl,hl
42ca	11 00 54 	ld de,$5400	ld de,$0000
42cd	19 	add hl,de	add hl,de
42ce	fd 23 	inc iy	inc iy
42d0	fd 23 	inc iy	inc iy
42d2	16 04 	ld d,$04	ld d,$00
42d4	af 	xor a	xor a
42d5	c9 	ret	ret
42d6	fe 1f 	cp $1f	cp $00
42d8	d8 	ret c	ret c
42d9	fe 3b 	cp $3b	cp $00
42db	3f 	ccf	ccf
42dc	3d 	dec a	dec a
42dd	d8 	ret c	ret c
42de	d6 03 	sub $03	sub $00
42e0	87 	add a,a	add a,a
42e1	6f 	ld l,a	ld l,a
42e2	11 6c 54 	ld de,$546c	ld de,$0000
42e5	2d 	dec l	dec l
42e6	2d 	dec l	dec l
42e7	37 	scf	scf
42e8	f8 	ret m	ret m
42e9	19 	add hl,de	add hl,de
42ea	5e 	ld e,(hl)	ld e,(hl)
42eb	23 	inc hl	inc hl
42ec	56 	ld d,(hl)	ld d,(hl)
42ed	7a 	ld a,d	ld a,d
42ee	b3 	or e	or e
42ef	28 49 	jr z,$+$4b	jr z,$+$00
42f1	62 	ld h,d	ld h,d
42f2	6b 	ld l,e	ld l,e
42f3	23 	inc hl	inc hl
42f4	23 	inc hl	inc hl
42f5	fd e5 	push iy	push iy
42f7	7e 	ld a,(hl)	ld a,(hl)
42f8	23 	inc hl	inc hl
42f9	fd 23 	inc iy	inc iy
42fb	fd be 00 	cp (iy)	cp (iy)
42fe	28 f7 	jr z,$-$07	jr z,$-$00
4300	b7 	or a	or a
4301	28 05 	jr z,$+$07	jr z,$+$00
4303	fd e1 	pop iy	pop iy
4305	eb 	ex de,hl	ex de,hl
4306	18 e2 	jr $-$1c	jr $-$00
4308	fd 2b 	dec iy	dec iy
430a	fd 7e 00 	ld a,(iy)	ld a,(iy)
430d	fe 28 	cp $28	cp $00
430f	28 13 	jr z,$+$15	jr z,$+$00
4311	fd 23 	inc iy	inc iy
4313	cd ef 43 	call $43ef	call $0000
4316	38 0c 	jr c,$+$0e	jr c,$+$00
4318	fe 28 	cp $28	cp $00
431a	28 e7 	jr z,$-$17	jr z,$-$00
431c	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
431f	cd fc 43 	call $43fc	call $0000
4322	30 df 	jr nc,$-$1f	jr nc,$-$00
4324	d1 	pop de	pop de
4325	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
4328	fe 24 	cp $24	cp $00
432a	16 81 	ld d,$81	ld d,$00
432c	c8 	ret z	ret z
432d	fe 26 	cp $26	cp $00
432f	16 01 	ld d,$01	ld d,$00
4331	c8 	ret z	ret z
4332	fe 25 	cp $25	cp $00
4334	16 04 	ld d,$04	ld d,$00
4336	c8 	ret z	ret z
4337	14 	inc d	inc d
4338	bf 	cp a	cp a
4339	c9 	ret	ret
433a	3c 	inc a	inc a
433b	c9 	ret	ret
433c	af 	xor a	xor a
433d	ed 5b e0 54 	ld de,($54e0)	ld de,($0000)
4341	72 	ld (hl),d	ld (hl),d
4342	2b 	dec hl	dec hl
4343	73 	ld (hl),e	ld (hl),e
4344	eb 	ex de,hl	ex de,hl
4345	77 	ld (hl),a	ld (hl),a
4346	23 	inc hl	inc hl
4347	77 	ld (hl),a	ld (hl),a
4348	23 	inc hl	inc hl
4349	fd 23 	inc iy	inc iy
434b	cd ef 43 	call $43ef	call $0000
434e	38 14 	jr c,$+$16	jr c,$+$00
4350	77 	ld (hl),a	ld (hl),a
4351	23 	inc hl	inc hl
4352	cd fc 43 	call $43fc	call $0000
4355	30 f2 	jr nc,$-$0c	jr nc,$-$00
4357	fe 28 	cp $28	cp $00
4359	28 09 	jr z,$+$0b	jr z,$+$00
435b	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
435e	fe 28 	cp $28	cp $00
4360	28 e7 	jr z,$-$17	jr z,$-$00
4362	fd 23 	inc iy	inc iy
4364	36 00 	ld (hl),$00	ld (hl),$00
4366	23 	inc hl	inc hl
4367	e5 	push hl	push hl
4368	cd 25 43 	call $4325	call $0000
436b	fd 7e 00 	ld a,(iy)	ld a,(iy)
436e	fe 28 	cp $28	cp $00
4370	3e 02 	ld a,$02	ld a,$00
4372	28 07 	jr z,$+$09	jr z,$+$00
4374	7a 	ld a,d	ld a,d
4375	b7 	or a	or a
4376	f2 7b 43 	jp p,$437b	jp p,$0000
4379	3e 04 	ld a,$04	ld a,$00
437b	36 00 	ld (hl),$00	ld (hl),$00
437d	23 	inc hl	inc hl
437e	3d 	dec a	dec a
437f	20 fa 	jr nz,$-$04	jr nz,$-$00
4381	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
4384	cd 86 32 	call $3286	call $0000
4387	e1 	pop hl	pop hl
4388	af 	xor a	xor a
4389	c9 	ret	ret
438a	cd 0b 45 	call $450b	call $0000
438d	21 00 00 	ld hl,$0000	ld hl,$0000
4390	fd 7e 00 	ld a,(iy)	ld a,(iy)
4393	d6 30 	sub $30	sub $00
4395	d8 	ret c	ret c
4396	fe 0a 	cp $0a	cp $00
4398	d0 	ret nc	ret nc
4399	fd 23 	inc iy	inc iy
439b	54 	ld d,h	ld d,h
439c	5d 	ld e,l	ld e,l
439d	29 	add hl,hl	add hl,hl
439e	38 0f 	jr c,$+$11	jr c,$+$00
43a0	29 	add hl,hl	add hl,hl
43a1	38 0c 	jr c,$+$0e	jr c,$+$00
43a3	19 	add hl,de	add hl,de
43a4	38 09 	jr c,$+$0b	jr c,$+$00
43a6	29 	add hl,hl	add hl,hl
43a7	38 06 	jr c,$+$08	jr c,$+$00
43a9	5f 	ld e,a	ld e,a
43aa	16 00 	ld d,$00	ld d,$00
43ac	19 	add hl,de	add hl,de
43ad	30 e1 	jr nc,$-$1d	jr nc,$-$00
43af	3e 14 	ld a,$14	ld a,$00
43b1	c3 44 3f 	jp $3f44	jp $0000
43b4	cd 8a 43 	call $438a	call $0000
43b7	7c 	ld a,h	ld a,h
43b8	b5 	or l	or l
43b9	20 02 	jr nz,$+$04	jr nz,$+$00
43bb	2e 0a 	ld l,$0a	ld l,$00
43bd	cd 36 35 	call $3536	call $0000
43c0	fd 23 	inc iy	inc iy
43c2	e5 	push hl	push hl
43c3	21 0a 00 	ld hl,$000a	ld hl,$0000
43c6	c4 8a 43 	call nz,$438a	call nz,$0000
43c9	e3 	ex (sp),hl	ex (sp),hl
43ca	c1 	pop bc	pop bc
43cb	78 	ld a,b	ld a,b
43cc	b1 	or c	or c
43cd	c0 	ret nz	ret nz
43ce	cd 55 3f 	call $3f55	call $0000
43d1	53 	ld d,e	ld d,e
43d2	69 	ld l,c	ld l,c
43d3	6c 	ld l,h	ld l,h
43d4	6c 	ld l,h	ld l,h
43d5	79 	ld a,c	ld a,c
43d6	00 	nop	nop
43d7	cd 8a 43 	call $438a	call $0000
43da	e5 	push hl	push hl
43db	cd 36 35 	call $3536	call $0000
43de	28 09 	jr z,$+$0b	jr z,$+$00
43e0	fe e7 	cp $e7	cp $00
43e2	28 05 	jr z,$+$07	jr z,$+$00
43e4	fd 23 	inc iy	inc iy
43e6	cd 8a 43 	call $438a	call $0000
43e9	e3 	ex (sp),hl	ex (sp),hl
43ea	cd 43 41 	call $4143	call $0000
43ed	c1 	pop bc	pop bc
43ee	c9 	ret	ret
43ef	fd 7e 00 	ld a,(iy)	ld a,(iy)
43f2	fe 24 	cp $24	cp $00
43f4	d8 	ret c	ret c
43f5	fe 27 	cp $27	cp $00
43f7	3f 	ccf	ccf
43f8	d0 	ret nc	ret nc
43f9	fe 28 	cp $28	cp $00
43fb	c8 	ret z	ret z
43fc	fe 30 	cp $30	cp $00
43fe	d8 	ret c	ret c
43ff	fe 3a 	cp $3a	cp $00
4401	3f 	ccf	ccf
4402	d0 	ret nc	ret nc
4403	fe 40 	cp $40	cp $00
4405	c8 	ret z	ret z
4406	fe 41 	cp $41	cp $00
4408	d8 	ret c	ret c
4409	fe 5b 	cp $5b	cp $00
440b	3f 	ccf	ccf
440c	d0 	ret nc	ret nc
440d	fe 5f 	cp $5f	cp $00
440f	d8 	ret c	ret c
4410	fe 7b 	cp $7b	cp $00
4412	3f 	ccf	ccf
4413	c9 	ret	ret
4414	12 	ld (de),a	ld (de),a
4415	13 	inc de	inc de
4416	fd 23 	inc iy	inc iy
4418	7b 	ld a,e	ld a,e
4419	fe fc 	cp $fc	cp $00
441b	3e 13 	ld a,$13	ld a,$00
441d	d2 44 3f 	jp nc,$3f44	jp nc,$0000
4420	fd 7e 00 	ld a,(iy)	ld a,(iy)
4423	fe 0d 	cp $0d	cp $00
4425	c8 	ret z	ret z
4426	cd fc 43 	call $43fc	call $0000
4429	30 04 	jr nc,$+$06	jr nc,$+$00
442b	cb a9 	res 5,c	res 5,c
442d	cb 99 	res 3,c	res 3,c
442f	fe 20 	cp $20	cp $00
4431	28 e1 	jr z,$-$1d	jr z,$-$00
4433	fe 2c 	cp $2c	cp $00
4435	28 dd 	jr z,$-$21	jr z,$-$00
4437	fe 47 	cp $47	cp $00
4439	38 02 	jr c,$+$04	jr c,$+$00
443b	cb 99 	res 3,c	res 3,c
443d	fe 22 	cp $22	cp $00
443f	20 05 	jr nz,$+$07	jr nz,$+$00
4441	cb 11 	rl c	rl c
4443	3f 	ccf	ccf
4444	cb 19 	rr c	rr c
4446	cb 61 	bit 4,c	bit 4,c
4448	28 10 	jr z,$+$12	jr z,$+$00
444a	cb a1 	res 4,c	res 4,c
444c	c5 	push bc	push bc
444d	d5 	push de	push de
444e	cd 8a 43 	call $438a	call $0000
4451	d1 	pop de	pop de
4452	c1 	pop bc	pop bc
4453	7c 	ld a,h	ld a,h
4454	b5 	or l	or l
4455	c4 bf 44 	call nz,$44bf	call nz,$0000
4458	18 be 	jr $-$40	jr $-$00
445a	0d 	dec c	dec c
445b	28 09 	jr z,$+$0b	jr z,$+$00
445d	0c 	inc c	inc c
445e	20 b4 	jr nz,$-$4a	jr nz,$-$00
4460	b7 	or a	or a
4461	f4 a3 3f 	call p,$3fa3	call p,$0000
4464	18 12 	jr $+$14	jr $+$00
4466	fe 2a 	cp $2a	cp $00
4468	28 16 	jr z,$+$18	jr z,$+$00
446a	b7 	or a	or a
446b	f4 a3 3f 	call p,$3fa3	call p,$0000
446e	fe 8f 	cp $8f	cp $00
4470	38 06 	jr c,$+$08	jr c,$+$00
4472	fe 94 	cp $94	cp $00
4474	30 02 	jr nc,$+$04	jr nc,$+$00
4476	c6 40 	add a,$40	add a,$00
4478	fe f4 	cp $f4	cp $00
447a	28 04 	jr z,$+$06	jr z,$+$00
447c	fe dc 	cp $dc	cp $00
447e	20 02 	jr nz,$+$04	jr nz,$+$00
4480	cb f1 	set 6,c	set 6,c
4482	fe a4 	cp $a4	cp $00
4484	28 09 	jr z,$+$0b	jr z,$+$00
4486	fe f2 	cp $f2	cp $00
4488	28 05 	jr z,$+$07	jr z,$+$00
448a	cd 06 44 	call $4406	call $0000
448d	38 02 	jr c,$+$04	jr c,$+$00
448f	cb e9 	set 5,c	set 5,c
4491	fe 26 	cp $26	cp $00
4493	20 02 	jr nz,$+$04	jr nz,$+$00
4495	cb d9 	set 3,c	set 3,c
4497	21 b6 44 	ld hl,$44b6	ld hl,$0000
449a	c5 	push bc	push bc
449b	01 06 00 	ld bc,$0006	ld bc,$0000
449e	ed b1 	cpir	cpir
44a0	c1 	pop bc	pop bc
44a1	20 02 	jr nz,$+$04	jr nz,$+$00
44a3	cb e1 	set 4,c	set 4,c
44a5	21 ba 44 	ld hl,$44ba	ld hl,$0000
44a8	c5 	push bc	push bc
44a9	01 05 00 	ld bc,$0005	ld bc,$0000
44ac	ed b1 	cpir	cpir
44ae	c1 	pop bc	pop bc
44af	20 02 	jr nz,$+$04	jr nz,$+$00
44b1	cb c1 	set 0,c	set 0,c
44b3	c3 14 44 	jp $4414	jp $0000
44b6	e5 	push hl	push hl
44b7	e4 f7 fc 	call po,$fcf7	call po,$0000
44ba	8c 	adc a,h	adc a,h
44bb	8b 	adc a,e	adc a,e
44bc	f5 	push af	push af
44bd	85 	add a,l	add a,l
44be	3a cb e1 	ld a,($e1cb)	ld a,($0000)
44c1	eb 	ex de,hl	ex de,hl
44c2	36 8d 	ld (hl),$8d	ld (hl),$00
44c4	23 	inc hl	inc hl
44c5	7a 	ld a,d	ld a,d
44c6	e6 c0 	and $c0	and $00
44c8	0f 	rrca	rrca
44c9	0f 	rrca	rrca
44ca	47 	ld b,a	ld b,a
44cb	7b 	ld a,e	ld a,e
44cc	e6 c0 	and $c0	and $00
44ce	b0 	or b	or b
44cf	0f 	rrca	rrca
44d0	0f 	rrca	rrca
44d1	ee 54 	xor $54	xor $00
44d3	77 	ld (hl),a	ld (hl),a
44d4	23 	inc hl	inc hl
44d5	7b 	ld a,e	ld a,e
44d6	e6 3f 	and $3f	and $00
44d8	f6 40 	or $40	or $00
44da	77 	ld (hl),a	ld (hl),a
44db	23 	inc hl	inc hl
44dc	7a 	ld a,d	ld a,d
44dd	e6 3f 	and $3f	and $00
44df	f6 40 	or $40	or $00
44e1	77 	ld (hl),a	ld (hl),a
44e2	23 	inc hl	inc hl
44e3	eb 	ex de,hl	ex de,hl
44e4	c9 	ret	ret
44e5	2a ee 54 	ld hl,($54ee)	ld hl,($0000)
44e8	7e 	ld a,(hl)	ld a,(hl)
44e9	23 	inc hl	inc hl
44ea	b7 	or a	or a
44eb	c8 	ret z	ret z
44ec	fe 0a 	cp $0a	cp $00
44ee	28 05 	jr z,$+$07	jr z,$+$00
44f0	cd 1b 41 	call $411b	call $0000
44f3	18 f3 	jr $-$0b	jr $-$00
44f5	cd 02 41 	call $4102	call $0000
44f8	18 ee 	jr $-$10	jr $-$00
44fa	e3 	ex (sp),hl	ex (sp),hl
44fb	cd e8 44 	call $44e8	call $0000
44fe	e3 	ex (sp),hl	ex (sp),hl
44ff	c9 	ret	ret
4500	cd 0b 45 	call $450b	call $0000
4503	fe 2c 	cp $2c	cp $00
4505	28 0a 	jr z,$+$0c	jr z,$+$00
4507	c1 	pop bc	pop bc
4508	c3 99 24 	jp $2499	jp $0000
450b	fd 7e 00 	ld a,(iy)	ld a,(iy)
450e	fe 20 	cp $20	cp $00
4510	c0 	ret nz	ret nz
4511	fd 23 	inc iy	inc iy
4513	18 f6 	jr $-$08	jr $-$00
4515	fd e5 	push iy	push iy
4517	fd 21 00 00 	ld iy,$0000	ld iy,$0000
451b	fd 39 	add iy,sp	add iy,sp
451d	cd 2c 45 	call $452c	call $0000
4520	bf 	cp a	cp a
4521	fd e1 	pop iy	pop iy
4523	c9 	ret	ret
4524	3e 01 	ld a,$01	ld a,$00
4526	fd f9 	ld sp,iy	ld sp,iy
4528	b7 	or a	or a
4529	37 	scf	scf
452a	18 f5 	jr $-$09	jr $-$00
452c	fe 2e 	cp $2e	cp $00
452e	30 f4 	jr nc,$-$0a	jr nc,$-$00
4530	fe 10 	cp $10	cp $00
4532	30 07 	jr nc,$+$09	jr nc,$+$00
4534	08 	ex af,af'	ex af,af'
4535	78 	ld a,b	ld a,b
4536	b1 	or c	or c
4537	c4 a5 4e 	call nz,$4ea5	call nz,$0000
453a	08 	ex af,af'	ex af,af'
453b	e5 	push hl	push hl
453c	21 4c 45 	ld hl,$454c	ld hl,$0000
453f	c5 	push bc	push bc
4540	87 	add a,a	add a,a
4541	4f 	ld c,a	ld c,a
4542	06 00 	ld b,$00	ld b,$00
4544	09 	add hl,bc	add hl,bc
4545	7e 	ld a,(hl)	ld a,(hl)
4546	23 	inc hl	inc hl
4547	66 	ld h,(hl)	ld h,(hl)
4548	6f 	ld l,a	ld l,a
4549	c1 	pop bc	pop bc
454a	e3 	ex (sp),hl	ex (sp),hl
454b	c9 	ret	ret
454c	cb 45 	bit 0,l	bit 0,l
454e	18 46 	jr $+$48	jr $+$00
4550	dd 45 	ld b,ixl	ld b,ixl
4552	01 46 ef 	ld bc,$ef46	ld bc,$0000
4555	45 	ld b,l	ld b,l
4556	16 48 	ld d,$48	ld d,$00
4558	23 	inc hl	inc hl
4559	48 	ld c,b	ld c,b
455a	0b 	dec bc	dec bc
455b	48 	ld c,b	ld c,b
455c	f4 47 2e 	call p,$2e47	call p,$0000
455f	48 	ld c,b	ld c,b
4560	e2 46 3b 	jp po,$3b46	jp po,$0000
4563	46 	ld b,(hl)	ld b,(hl)
4564	ff 	rst $38	rst $00
4565	47 	ld b,a	ld b,a
4566	25 	dec h	dec h
4567	46 	ld b,(hl)	ld b,(hl)
4568	5d 	ld e,l	ld e,l
4569	47 	ld b,a	ld b,a
456a	9a 	sbc a,d	sbc a,d
456b	46 	ld b,(hl)	ld b,(hl)
456c	7e 	ld a,(hl)	ld a,(hl)
456d	48 	ld c,b	ld c,b
456e	da 4b 36 	jp c,$364b	jp c,$0000
4571	4b 	ld c,e	ld c,e
4572	5b 4b 	ld.lil c,e	ld.lil c,e
4574	74 	ld (hl),h	ld (hl),h
4575	49 a8 	xor.lis b	xor.lis b
4577	48 	ld c,b	ld c,b
4578	19 	add hl,de	add hl,de
4579	4a 	ld c,d	ld c,d
457a	ee 48 	xor $48	xor $00
457c	a4 	and h	and h
457d	4a 	ld c,d	ld c,d
457e	24 	inc h	inc h
457f	4b 	ld c,e	ld c,e
4580	89 	adc a,c	adc a,c
4581	48 	ld c,b	ld c,b
4582	b0 	or b	or b
4583	48 	ld c,b	ld c,b
4584	c6 48 	add a,$48	add a,$00
4586	7f 	ld a,a	ld a,a
4587	49 04 	inc.lis b	inc.lis b
4589	49 57 	ld.lis d,a	ld.lis d,a
458b	49 21 4f f8 	ld.lis hl,$f84f	ld.lis hl,$0000
458f	49 32 48 9c 	ld.lis ($9c48),a	ld.lis ($0000),a
4593	48 	ld c,b	ld c,b
4594	d6 48 	sub $48	sub $00
4596	e2 4b f7 	jp po,$f74b	jp po,$0000
4599	4d 	ld c,l	ld c,l
459a	b2 	or d	or d
459b	4e 	ld c,(hl)	ld c,(hl)
459c	f7 	rst $30	rst $00
459d	4e 	ld c,(hl)	ld c,(hl)
459e	08 	ex af,af'	ex af,af'
459f	4f 	ld c,a	ld c,a
45a0	3d 	dec a	dec a
45a1	48 	ld c,b	ld c,b
45a2	3d 	dec a	dec a
45a3	48 	ld c,b	ld c,b
45a4	4a 	ld c,d	ld c,d
45a5	48 	ld c,b	ld c,b
45a6	5c 	ld e,h	ld e,h
45a7	48 	ld c,b	ld c,b
45a8	c8 	ret z	ret z
45a9	45 	ld b,l	ld b,l
45aa	15 	dec d	dec d
45ab	46 	ld b,(hl)	ld b,(hl)
45ac	da 45 fe 	jp c,$fe45	jp c,$0000
45af	45 	ld b,l	ld b,l
45b0	ec 45 11 	call pe,$1145	call pe,$0000
45b3	48 	ld c,b	ld c,b
45b4	1e 48 	ld e,$48	ld e,$00
45b6	06 48 	ld b,$48	ld b,$00
45b8	ef 	rst $28	rst $00
45b9	47 	ld b,a	ld b,a
45ba	29 	add hl,hl	add hl,hl
45bb	48 	ld c,b	ld c,b
45bc	0d 	dec c	dec c
45bd	47 	ld b,a	ld b,a
45be	45 	ld b,l	ld b,l
45bf	46 	ld b,(hl)	ld b,(hl)
45c0	fa 47 2f 	jp m,$2f47	jp m,$0000
45c3	46 	ld b,(hl)	ld b,(hl)
45c4	c5 	push bc	push bc
45c5	47 	ld b,a	ld b,a
45c6	9d 	sbc a,l	sbc a,l
45c7	46 	ld b,(hl)	ld b,(hl)
45c8	cd ee 4d 	call $4dee	call $0000
45cb	7c 	ld a,h	ld a,h
45cc	a2 	and d	and d
45cd	67 	ld h,a	ld h,a
45ce	7d 	ld a,l	ld a,l
45cf	a3 	and e	and e
45d0	6f 	ld l,a	ld l,a
45d1	d9 	exx	exx
45d2	7c 	ld a,h	ld a,h
45d3	a2 	and d	and d
45d4	67 	ld h,a	ld h,a
45d5	7d 	ld a,l	ld a,l
45d6	a3 	and e	and e
45d7	6f 	ld l,a	ld l,a
45d8	d9 	exx	exx
45d9	c9 	ret	ret
45da	cd ee 4d 	call $4dee	call $0000
45dd	7c 	ld a,h	ld a,h
45de	aa 	xor d	xor d
45df	67 	ld h,a	ld h,a
45e0	7d 	ld a,l	ld a,l
45e1	ab 	xor e	xor e
45e2	6f 	ld l,a	ld l,a
45e3	d9 	exx	exx
45e4	7c 	ld a,h	ld a,h
45e5	aa 	xor d	xor d
45e6	67 	ld h,a	ld h,a
45e7	7d 	ld a,l	ld a,l
45e8	ab 	xor e	xor e
45e9	6f 	ld l,a	ld l,a
45ea	d9 	exx	exx
45eb	c9 	ret	ret
45ec	cd ee 4d 	call $4dee	call $0000
45ef	7c 	ld a,h	ld a,h
45f0	b2 	or d	or d
45f1	67 	ld h,a	ld h,a
45f2	7d 	ld a,l	ld a,l
45f3	b3 	or e	or e
45f4	6f 	ld l,a	ld l,a
45f5	d9 	exx	exx
45f6	7c 	ld a,h	ld a,h
45f7	b2 	or d	or d
45f8	67 	ld h,a	ld h,a
45f9	7d 	ld a,l	ld a,l
45fa	b3 	or e	or e
45fb	6f 	ld l,a	ld l,a
45fc	d9 	exx	exx
45fd	c9 	ret	ret
45fe	cd ee 4d 	call $4dee	call $0000
4601	7c 	ld a,h	ld a,h
4602	aa 	xor d	xor d
4603	cb 7c 	bit 7,h	bit 7,h
4605	cd f5 50 	call $50f5	call $0000
4608	3e df 	ld a,$df	ld a,$00
460a	cd 31 50 	call $5031	call $0000
460d	d9 	exx	exx
460e	0e 00 	ld c,$00	ld c,$00
4610	08 	ex af,af'	ex af,af'
4611	c8 	ret z	ret z
4612	c3 06 4e 	jp $4e06	jp $0000
4615	cd ee 4d 	call $4dee	call $0000
4618	cd 01 46 	call $4601	call $0000
461b	b7 	or a	or a
461c	cd dc 4e 	call $4edc	call $0000
461f	0e 00 	ld c,$00	ld c,$00
4621	f0 	ret p	ret p
4622	c3 06 4e 	jp $4e06	jp $0000
4625	cd 64 4f 	call $4f64	call $0000
4628	e0 	ret po	ret po
4629	cd 5e 4f 	call $4f5e	call $0000
462c	cd a9 4e 	call $4ea9	call $0000
462f	7a 	ld a,d	ld a,d
4630	ee 80 	xor $80	xor $00
4632	57 	ld d,a	ld d,a
4633	18 10 	jr $+$12	jr $+$00
4635	7c 	ld a,h	ld a,h
4636	ee 80 	xor $80	xor $00
4638	67 	ld h,a	ld h,a
4639	18 0a 	jr $+$0c	jr $+$00
463b	cd 5e 4f 	call $4f5e	call $0000
463e	e0 	ret po	ret po
463f	cd 64 4f 	call $4f64	call $0000
4642	cd a9 4e 	call $4ea9	call $0000
4645	05 	dec b	dec b
4646	04 	inc b	inc b
4647	c8 	ret z	ret z
4648	0d 	dec c	dec c
4649	0c 	inc c	inc c
464a	ca dc 4e 	jp z,$4edc	jp z,$0000
464d	d9 	exx	exx
464e	01 00 00 	ld bc,$0000	ld bc,$0000
4651	d9 	exx	exx
4652	7c 	ld a,h	ld a,h
4653	aa 	xor d	xor d
4654	f5 	push af	push af
4655	78 	ld a,b	ld a,b
4656	b9 	cp c	cp c
4657	dc dc 4e 	call c,$4edc	call c,$0000
465a	78 	ld a,b	ld a,b
465b	cb fc 	set 7,h	set 7,h
465d	c4 de 4d 	call nz,$4dde	call nz,$0000
4660	f1 	pop af	pop af
4661	7a 	ld a,d	ld a,d
4662	cb fa 	set 7,d	set 7,d
4664	fa 71 46 	jp m,$4671	jp m,$0000
4667	cd 5e 4f 	call $4f5e	call $0000
466a	dc e4 4e 	call c,$4ee4	call c,$0000
466d	cb fc 	set 7,h	set 7,h
466f	18 0a 	jr $+$0c	jr $+$00
4671	cd 64 4f 	call $4f64	call $0000
4674	dc 1a 4e 	call c,$4e1a	call c,$0000
4677	cd 86 4e 	call $4e86	call $0000
467a	2f 	cpl	cpl
467b	d9 	exx	exx
467c	eb 	ex de,hl	ex de,hl
467d	21 00 80 	ld hl,$8000	ld hl,$0000
4680	b7 	or a	or a
4681	ed 42 	sbc hl,bc	sbc hl,bc
4683	eb 	ex de,hl	ex de,hl
4684	d9 	exx	exx
4685	cc d6 4e 	call z,$4ed6	call z,$0000
4688	dc c8 4e 	call c,$4ec8	call c,$0000
468b	dc f0 4e 	call c,$4ef0	call c,$0000
468e	cb bc 	res 7,h	res 7,h
4690	0d 	dec c	dec c
4691	0c 	inc c	inc c
4692	ca 21 4f 	jp z,$4f21	jp z,$0000
4695	b7 	or a	or a
4696	f0 	ret p	ret p
4697	cb fc 	set 7,h	set 7,h
4699	c9 	ret	ret
469a	cd a9 4e 	call $4ea9	call $0000
469d	05 	dec b	dec b
469e	04 	inc b	inc b
469f	3e 12 	ld a,$12	ld a,$00
46a1	ca 26 45 	jp z,$4526	jp z,$0000
46a4	0d 	dec c	dec c
46a5	0c 	inc c	inc c
46a6	c8 	ret z	ret z
46a7	7c 	ld a,h	ld a,h
46a8	aa 	xor d	xor d
46a9	08 	ex af,af'	ex af,af'
46aa	cb fa 	set 7,d	set 7,d
46ac	cb fc 	set 7,h	set 7,h
46ae	c5 	push bc	push bc
46af	42 	ld b,d	ld b,d
46b0	4b 	ld c,e	ld c,e
46b1	11 00 00 	ld de,$0000	ld de,$0000
46b4	d9 	exx	exx
46b5	42 	ld b,d	ld b,d
46b6	4b 	ld c,e	ld c,e
46b7	11 00 00 	ld de,$0000	ld de,$0000
46ba	3e e0 	ld a,$e0	ld a,$00
46bc	cd 31 50 	call $5031	call $0000
46bf	d9 	exx	exx
46c0	cb 7a 	bit 7,d	bit 7,d
46c2	d9 	exx	exx
46c3	cc 4c 50 	call z,$504c	call z,$0000
46c6	eb 	ex de,hl	ex de,hl
46c7	d9 	exx	exx
46c8	cb 38 	srl b	srl b
46ca	cb 19 	rr c	rr c
46cc	b7 	or a	or a
46cd	ed 42 	sbc hl,bc	sbc hl,bc
46cf	3f 	ccf	ccf
46d0	eb 	ex de,hl	ex de,hl
46d1	cc d6 4e 	call z,$4ed6	call z,$0000
46d4	dc c8 4e 	call c,$4ec8	call c,$0000
46d7	c1 	pop bc	pop bc
46d8	dc f0 4e 	call c,$4ef0	call c,$0000
46db	1f 	rra	rra
46dc	79 	ld a,c	ld a,c
46dd	98 	sbc a,b	sbc a,b
46de	3f 	ccf	ccf
46df	c3 46 47 	jp $4746	jp $0000
46e2	7c 	ld a,h	ld a,h
46e3	aa 	xor d	xor d
46e4	cd f5 50 	call $50f5	call $0000
46e7	3e df 	ld a,$df	ld a,$00
46e9	cd 5f 50 	call $505f	call $0000
46ec	d9 	exx	exx
46ed	0e bf 	ld c,$bf	ld c,$00
46ef	cd 01 4f 	call $4f01	call $0000
46f2	20 0d 	jr nz,$+$0f	jr nz,$+$00
46f4	cb 7a 	bit 7,d	bit 7,d
46f6	20 09 	jr nz,$+$0b	jr nz,$+$00
46f8	cd dc 4e 	call $4edc	call $0000
46fb	4a 	ld c,d	ld c,d
46fc	08 	ex af,af'	ex af,af'
46fd	f0 	ret p	ret p
46fe	c3 06 4e 	jp $4e06	jp $0000
4701	0d 	dec c	dec c
4702	cd c8 50 	call $50c8	call $0000
4705	f2 01 47 	jp p,$4701	jp p,$0000
4708	08 	ex af,af'	ex af,af'
4709	f8 	ret m	ret m
470a	cb bc 	res 7,h	res 7,h
470c	c9 	ret	ret
470d	05 	dec b	dec b
470e	04 	inc b	inc b
470f	ca 21 4f 	jp z,$4f21	jp z,$0000
4712	0d 	dec c	dec c
4713	0c 	inc c	inc c
4714	c8 	ret z	ret z
4715	7c 	ld a,h	ld a,h
4716	aa 	xor d	xor d
4717	08 	ex af,af'	ex af,af'
4718	cb fa 	set 7,d	set 7,d
471a	cb fc 	set 7,h	set 7,h
471c	c5 	push bc	push bc
471d	44 	ld b,h	ld b,h
471e	4d 	ld c,l	ld c,l
471f	21 00 00 	ld hl,$0000	ld hl,$0000
4722	d9 	exx	exx
4723	44 	ld b,h	ld b,h
4724	4d 	ld c,l	ld c,l
4725	21 00 00 	ld hl,$0000	ld hl,$0000
4728	3e e0 	ld a,$e0	ld a,$00
472a	cd 5f 50 	call $505f	call $0000
472d	dc 73 50 	call c,$5073	call c,$0000
4730	d9 	exx	exx
4731	e5 	push hl	push hl
4732	21 00 80 	ld hl,$8000	ld hl,$0000
4735	b7 	or a	or a
4736	ed 52 	sbc hl,de	sbc hl,de
4738	e1 	pop hl	pop hl
4739	cc d6 4e 	call z,$4ed6	call z,$0000
473c	dc c8 4e 	call c,$4ec8	call c,$0000
473f	c1 	pop bc	pop bc
4740	dc f0 4e 	call c,$4ef0	call c,$0000
4743	1f 	rra	rra
4744	79 	ld a,c	ld a,c
4745	88 	adc a,b	adc a,b
4746	38 05 	jr c,$+$07	jr c,$+$00
4748	f2 21 4f 	jp p,$4f21	jp p,$0000
474b	18 03 	jr $+$05	jr $+$00
474d	fa f2 4e 	jp m,$4ef2	jp m,$0000
4750	c6 80 	add a,$80	add a,$00
4752	4f 	ld c,a	ld c,a
4753	ca 21 4f 	jp z,$4f21	jp z,$0000
4756	08 	ex af,af'	ex af,af'
4757	cb bc 	res 7,h	res 7,h
4759	f0 	ret p	ret p
475a	cb fc 	set 7,h	set 7,h
475c	c9 	ret	ret
475d	cd dc 4e 	call $4edc	call $0000
4760	cb 7c 	bit 7,h	bit 7,h
4762	f5 	push af	push af
4763	c4 06 4e 	call nz,$4e06	call nz,$0000
4766	48 	ld c,b	ld c,b
4767	06 20 	ld b,$20	ld b,$00
4769	cd 7b 4f 	call $4f7b	call $0000
476c	38 08 	jr c,$+$0a	jr c,$+$00
476e	10 f9 	djnz $-$05	djnz $-$00
4770	f1 	pop af	pop af
4771	d9 	exx	exx
4772	2c 	inc l	inc l
4773	d9 	exx	exx
4774	4c 	ld c,h	ld c,h
4775	c9 	ret	ret
4776	f1 	pop af	pop af
4777	c5 	push bc	push bc
4778	eb 	ex de,hl	ex de,hl
4779	e5 	push hl	push hl
477a	d9 	exx	exx
477b	eb 	ex de,hl	ex de,hl
477c	e5 	push hl	push hl
477d	d9 	exx	exx
477e	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4782	dd 39 	add ix,sp	add ix,sp
4784	28 34 	jr z,$+$36	jr z,$+$00
4786	c5 	push bc	push bc
4787	d9 	exx	exx
4788	d5 	push de	push de
4789	d9 	exx	exx
478a	d5 	push de	push de
478b	cd b2 4e 	call $4eb2	call $0000
478e	cd 90 4a 	call $4a90	call $0000
4791	cd 06 32 	call $3206	call $0000
4794	18 1d 	jr $+$1f	jr $+$00
4796	c5 	push bc	push bc
4797	d9 	exx	exx
4798	cb 23 	sla e	sla e
479a	cb 12 	rl d	rl d
479c	d5 	push de	push de
479d	d9 	exx	exx
479e	cb 13 	rl e	rl e
47a0	cb 12 	rl d	rl d
47a2	d5 	push de	push de
47a3	3e 0a 	ld a,$0a	ld a,$00
47a5	f5 	push af	push af
47a6	cd 8d 4f 	call $4f8d	call $0000
47a9	cd 2c 45 	call $452c	call $0000
47ac	f1 	pop af	pop af
47ad	cd f1 19 	call $19f1	call $0000
47b0	dc 2c 45 	call c,$452c	call c,$0000
47b3	d1 	pop de	pop de
47b4	d9 	exx	exx
47b5	d1 	pop de	pop de
47b6	d9 	exx	exx
47b7	79 	ld a,c	ld a,c
47b8	c1 	pop bc	pop bc
47b9	4f 	ld c,a	ld c,a
47ba	10 da 	djnz $-$24	djnz $-$00
47bc	f1 	pop af	pop af
47bd	f1 	pop af	pop af
47be	f1 	pop af	pop af
47bf	c9 	ret	ret
47c0	f1 	pop af	pop af
47c1	f1 	pop af	pop af
47c2	f1 	pop af	pop af
47c3	18 a1 	jr $-$5d	jr $-$00
47c5	cb 7a 	bit 7,d	bit 7,d
47c7	f5 	push af	push af
47c8	cd dc 4e 	call $4edc	call $0000
47cb	cd 9b 4f 	call $4f9b	call $0000
47ce	0d 	dec c	dec c
47cf	0c 	inc c	inc c
47d0	28 ee 	jr z,$-$10	jr z,$-$00
47d2	3e 9e 	ld a,$9e	ld a,$00
47d4	b9 	cp c	cp c
47d5	38 08 	jr c,$+$0a	jr c,$+$00
47d7	3c 	inc a	inc a
47d8	cd de 4d 	call $4dde	call $0000
47db	08 	ex af,af'	ex af,af'
47dc	f2 c0 47 	jp p,$47c0	jp p,$0000
47df	cd dc 4e 	call $4edc	call $0000
47e2	cd a7 4a 	call $4aa7	call $0000
47e5	cd a4 4f 	call $4fa4	call $0000
47e8	f1 	pop af	pop af
47e9	cd 0d 47 	call $470d	call $0000
47ec	c3 1c 4a 	jp $4a1c	jp $0000
47ef	cd 2b 4f 	call $4f2b	call $0000
47f2	18 03 	jr $+$05	jr $+$00
47f4	cd 1e 4f 	call $4f1e	call $0000
47f7	d0 	ret nc	ret nc
47f8	18 38 	jr $+$3a	jr $+$00
47fa	cd 2b 4f 	call $4f2b	call $0000
47fd	18 03 	jr $+$05	jr $+$00
47ff	cd 1e 4f 	call $4f1e	call $0000
4802	c8 	ret z	ret z
4803	d8 	ret c	ret c
4804	18 2c 	jr $+$2e	jr $+$00
4806	cd 2b 4f 	call $4f2b	call $0000
4809	18 03 	jr $+$05	jr $+$00
480b	cd 1e 4f 	call $4f1e	call $0000
480e	d8 	ret c	ret c
480f	18 21 	jr $+$23	jr $+$00
4811	cd 2b 4f 	call $4f2b	call $0000
4814	18 03 	jr $+$05	jr $+$00
4816	cd 1e 4f 	call $4f1e	call $0000
4819	28 17 	jr z,$+$19	jr z,$+$00
481b	d0 	ret nc	ret nc
481c	18 14 	jr $+$16	jr $+$00
481e	cd 2b 4f 	call $4f2b	call $0000
4821	18 03 	jr $+$05	jr $+$00
4823	cd 1e 4f 	call $4f1e	call $0000
4826	c8 	ret z	ret z
4827	18 09 	jr $+$0b	jr $+$00
4829	cd 2b 4f 	call $4f2b	call $0000
482c	18 03 	jr $+$05	jr $+$00
482e	cd 1e 4f 	call $4f1e	call $0000
4831	c0 	ret nz	ret nz
4832	21 ff ff 	ld hl,$ffff	ld hl,$0000
4835	d9 	exx	exx
4836	21 ff ff 	ld hl,$ffff	ld hl,$0000
4839	d9 	exx	exx
483a	af 	xor a	xor a
483b	4f 	ld c,a	ld c,a
483c	c9 	ret	ret
483d	cd 6e 48 	call $486e	call $0000
4840	28 07 	jr z,$+$09	jr z,$+$00
4842	d9 	exx	exx
4843	29 	add hl,hl	add hl,hl
4844	d9 	exx	exx
4845	ed 6a 	adc hl,hl	adc hl,hl
4847	10 f9 	djnz $-$05	djnz $-$00
4849	c9 	ret	ret
484a	cd 6e 48 	call $486e	call $0000
484d	28 fa 	jr z,$-$04	jr z,$-$00
484f	cb 2c 	sra h	sra h
4851	cb 1d 	rr l	rr l
4853	d9 	exx	exx
4854	cb 1c 	rr h	rr h
4856	cb 1d 	rr l	rr l
4858	d9 	exx	exx
4859	10 f4 	djnz $-$0a	djnz $-$00
485b	c9 	ret	ret
485c	cd 6e 48 	call $486e	call $0000
485f	28 e8 	jr z,$-$16	jr z,$-$00
4861	cb 3c 	srl h	srl h
4863	cb 1d 	rr l	rr l
4865	d9 	exx	exx
4866	cb 1c 	rr h	rr h
4868	cb 1d 	rr l	rr l
486a	d9 	exx	exx
486b	10 f4 	djnz $-$0a	djnz $-$00
486d	c9 	ret	ret
486e	cd ee 4d 	call $4dee	call $0000
4871	7a 	ld a,d	ld a,d
4872	b3 	or e	or e
4873	d9 	exx	exx
4874	b2 	or d	or d
4875	7b 	ld a,e	ld a,e
4876	d9 	exx	exx
4877	06 20 	ld b,$20	ld b,$00
4879	20 02 	jr nz,$+$04	jr nz,$+$00
487b	47 	ld b,a	ld b,a
487c	b7 	or a	or a
487d	c9 	ret	ret
487e	cb 7c 	bit 7,h	bit 7,h
4880	c8 	ret z	ret z
4881	0d 	dec c	dec c
4882	0c 	inc c	inc c
4883	ca 06 4e 	jp z,$4e06	jp z,$0000
4886	cb bc 	res 7,h	res 7,h
4888	c9 	ret	ret
4889	cd f7 4d 	call $4df7	call $0000
488c	7c 	ld a,h	ld a,h
488d	2f 	cpl	cpl
488e	67 	ld h,a	ld h,a
488f	7d 	ld a,l	ld a,l
4890	2f 	cpl	cpl
4891	6f 	ld l,a	ld l,a
4892	d9 	exx	exx
4893	7c 	ld a,h	ld a,h
4894	2f 	cpl	cpl
4895	67 	ld h,a	ld h,a
4896	7d 	ld a,l	ld a,l
4897	2f 	cpl	cpl
4898	6f 	ld l,a	ld l,a
4899	d9 	exx	exx
489a	af 	xor a	xor a
489b	c9 	ret	ret
489c	21 0f 49 	ld hl,$490f	ld hl,$0000
489f	d9 	exx	exx
48a0	21 a2 da 	ld hl,$daa2	ld hl,$0000
48a3	d9 	exx	exx
48a4	0e 81 	ld c,$81	ld c,$00
48a6	af 	xor a	xor a
48a7	c9 	ret	ret
48a8	cd b8 48 	call $48b8	call $0000
48ab	cd 0d 47 	call $470d	call $0000
48ae	af 	xor a	xor a
48af	c9 	ret	ret
48b0	cd b8 48 	call $48b8	call $0000
48b3	cd 9d 46 	call $469d	call $0000
48b6	af 	xor a	xor a
48b7	c9 	ret	ret
48b8	cd b2 4e 	call $4eb2	call $0000
48bb	11 2e 65 	ld de,$652e	ld de,$0000
48be	d9 	exx	exx
48bf	11 d3 e0 	ld de,$e0d3	ld de,$0000
48c2	d9 	exx	exx
48c3	06 85 	ld b,$85	ld b,$00
48c5	c9 	ret	ret
48c6	cd 01 4f 	call $4f01	call $0000
48c9	b1 	or c	or c
48ca	c8 	ret z	ret z
48cb	cb 7c 	bit 7,h	bit 7,h
48cd	c2 32 48 	jp nz,$4832	jp nz,$0000
48d0	cd 21 4f 	call $4f21	call $0000
48d3	c3 c8 4e 	jp $4ec8	jp $0000
48d6	cd e3 50 	call $50e3	call $0000
48d9	f5 	push af	push af
48da	cd 34 4d 	call $4d34	call $0000
48dd	f1 	pop af	pop af
48de	fe 2d 	cp $2d	cp $00
48e0	3e 00 	ld a,$00	ld a,$00
48e2	c0 	ret nz	ret nz
48e3	0d 	dec c	dec c
48e4	0c 	inc c	inc c
48e5	ca 06 4e 	jp z,$4e06	jp z,$0000
48e8	7c 	ld a,h	ld a,h
48e9	ee 80 	xor $80	xor $00
48eb	67 	ld h,a	ld h,a
48ec	af 	xor a	xor a
48ed	c9 	ret	ret
48ee	0d 	dec c	dec c
48ef	0c 	inc c	inc c
48f0	c8 	ret z	ret z
48f1	3e 9f 	ld a,$9f	ld a,$00
48f3	44 	ld b,h	ld b,h
48f4	cd de 4d 	call $4dde	call $0000
48f7	08 	ex af,af'	ex af,af'
48f8	a0 	and b	and b
48f9	fc c8 4e 	call m,$4ec8	call m,$0000
48fc	78 	ld a,b	ld a,b
48fd	b7 	or a	or a
48fe	fc 06 4e 	call m,$4e06	call m,$0000
4901	af 	xor a	xor a
4902	4f 	ld c,a	ld c,a
4903	c9 	ret	ret
4904	cd b2 4e 	call $4eb2	call $0000
4907	cb 7c 	bit 7,h	bit 7,h
4909	3e 15 	ld a,$15	ld a,$00
490b	c2 26 45 	jp nz,$4526	jp nz,$0000
490e	0d 	dec c	dec c
490f	0c 	inc c	inc c
4910	c8 	ret z	ret z
4911	cb fc 	set 7,h	set 7,h
4913	cb 41 	bit 0,c	bit 0,c
4915	cc e4 4e 	call z,$4ee4	call z,$0000
4918	79 	ld a,c	ld a,c
4919	d6 80 	sub $80	sub $00
491b	cb 2f 	sra a	sra a
491d	c6 80 	add a,$80	add a,$00
491f	4f 	ld c,a	ld c,a
4920	c5 	push bc	push bc
4921	eb 	ex de,hl	ex de,hl
4922	21 00 00 	ld hl,$0000	ld hl,$0000
4925	44 	ld b,h	ld b,h
4926	4d 	ld c,l	ld c,l
4927	d9 	exx	exx
4928	eb 	ex de,hl	ex de,hl
4929	21 00 00 	ld hl,$0000	ld hl,$0000
492c	44 	ld b,h	ld b,h
492d	4d 	ld c,l	ld c,l
492e	3e e1 	ld a,$e1	ld a,$00
4930	cd 92 50 	call $5092	call $0000
4933	d9 	exx	exx
4934	cb 78 	bit 7,b	bit 7,b
4936	d9 	exx	exx
4937	cc 92 50 	call z,$5092	call z,$0000
493a	cd b1 50 	call $50b1	call $0000
493d	b7 	or a	or a
493e	cd 4c 50 	call $504c	call $0000
4941	cb 1b 	rr e	rr e
4943	60 	ld h,b	ld h,b
4944	69 	ld l,c	ld l,c
4945	d9 	exx	exx
4946	60 	ld h,b	ld h,b
4947	69 	ld l,c	ld l,c
4948	dc c8 4e 	call c,$4ec8	call c,$0000
494b	c1 	pop bc	pop bc
494c	dc f0 4e 	call c,$4ef0	call c,$0000
494f	1f 	rra	rra
4950	9f 	sbc a,a	sbc a,a
4951	81 	add a,c	add a,c
4952	4f 	ld c,a	ld c,a
4953	cb bc 	res 7,h	res 7,h
4955	af 	xor a	xor a
4956	c9 	ret	ret
4957	cd b2 4e 	call $4eb2	call $0000
495a	cd 9b 4f 	call $4f9b	call $0000
495d	cd 77 49 	call $4977	call $0000
4960	cd a4 4f 	call $4fa4	call $0000
4963	cd 9b 4f 	call $4f9b	call $0000
4966	cd dc 4e 	call $4edc	call $0000
4969	cd 82 49 	call $4982	call $0000
496c	cd a4 4f 	call $4fa4	call $0000
496f	cd 9d 46 	call $469d	call $0000
4972	af 	xor a	xor a
4973	c9 	ret	ret
4974	cd b2 4e 	call $4eb2	call $0000
4977	cd 27 4e 	call $4e27	call $0000
497a	1c 	inc e	inc e
497b	1c 	inc e	inc e
497c	7b 	ld a,e	ld a,e
497d	18 0e 	jr $+$10	jr $+$00
497f	cd b2 4e 	call $4eb2	call $0000
4982	e5 	push hl	push hl
4983	cd 27 4e 	call $4e27	call $0000
4986	f1 	pop af	pop af
4987	07 	rlca	rlca
4988	07 	rlca	rlca
4989	07 	rlca	rlca
498a	e6 04 	and $04	and $00
498c	ab 	xor e	xor e
498d	f5 	push af	push af
498e	cb bc 	res 7,h	res 7,h
4990	1f 	rra	rra
4991	cd 0e 4a 	call $4a0e	call $0000
4994	dc 35 46 	call c,$4635	call c,$0000
4997	f1 	pop af	pop af
4998	f5 	push af	push af
4999	e6 03 	and $03	and $00
499b	e2 cc 49 	jp po,$49cc	jp po,$0000
499e	cd 9b 4f 	call $4f9b	call $0000
49a1	cd 95 4f 	call $4f95	call $0000
49a4	cd ce 4f 	call $4fce	call $0000
49a7	b7 	or a	or a
49a8	a8 	xor b	xor b
49a9	11 36 6d 	ld de,$6d36	ld de,$0000
49ac	26 de 	ld h,$de	ld h,$00
49ae	05 	dec b	dec b
49af	d0 	ret nc	ret nc
49b0	73 	ld (hl),e	ld (hl),e
49b1	c0 	ret nz	ret nz
49b2	80 	add a,b	add a,b
49b3	88 	adc a,b	adc a,b
49b4	08 	ex af,af'	ex af,af'
49b5	79 	ld a,c	ld a,c
49b6	9d 	sbc a,l	sbc a,l
49b7	aa 	xor d	xor d
49b8	aa 	xor d	xor d
49b9	aa 	xor d	xor d
49ba	7d 	ld a,l	ld a,l
49bb	00 	nop	nop
49bc	00 	nop	nop
49bd	00 	nop	nop
49be	00 	nop	nop
49bf	80 	add a,b	add a,b
49c0	cd a4 4f 	call $4fa4	call $0000
49c3	cd a4 4f 	call $4fa4	call $0000
49c6	cd 0d 47 	call $470d	call $0000
49c9	c3 ee 49 	jp $49ee	jp $0000
49cc	cd 95 4f 	call $4f95	call $0000
49cf	cd ce 4f 	call $4fce	call $0000
49d2	71 	ld (hl),c	ld (hl),c
49d3	d5 	push de	push de
49d4	78 	ld a,b	ld a,b
49d5	4c 	ld c,h	ld c,h
49d6	70 	ld (hl),b	ld (hl),b
49d7	af 	xor a	xor a
49d8	94 	sub h	sub h
49d9	03 	inc bc	inc bc
49da	b6 	or (hl)	or (hl)
49db	76 	halt	halt
49dc	c8 	ret z	ret z
49dd	9c 	sbc a,h	sbc a,h
49de	aa 	xor d	xor d
49df	2a 7b dd 	ld hl,($dd7b)	ld hl,($0000)
49e2	ff 	rst $38	rst $00
49e3	ff 	rst $38	rst $00
49e4	ff 	rst $38	rst $00
49e5	7e 	ld a,(hl)	ld a,(hl)
49e6	00 	nop	nop
49e7	00 	nop	nop
49e8	00 	nop	nop
49e9	00 	nop	nop
49ea	80 	add a,b	add a,b
49eb	cd a4 4f 	call $4fa4	call $0000
49ee	f1 	pop af	pop af
49ef	e6 04 	and $04	and $00
49f1	c8 	ret z	ret z
49f2	0d 	dec c	dec c
49f3	0c 	inc c	inc c
49f4	c8 	ret z	ret z
49f5	cb fc 	set 7,h	set 7,h
49f7	c9 	ret	ret
49f8	21 00 00 	ld hl,$0000	ld hl,$0000
49fb	d9 	exx	exx
49fc	21 00 00 	ld hl,$0000	ld hl,$0000
49ff	d9 	exx	exx
4a00	0e 80 	ld c,$80	ld c,$00
4a02	c9 	ret	ret
4a03	11 00 00 	ld de,$0000	ld de,$0000
4a06	d9 	exx	exx
4a07	11 00 00 	ld de,$0000	ld de,$0000
4a0a	d9 	exx	exx
4a0b	06 80 	ld b,$80	ld b,$00
4a0d	c9 	ret	ret
4a0e	11 0f 49 	ld de,$490f	ld de,$0000
4a11	d9 	exx	exx
4a12	11 a2 da 	ld de,$daa2	ld de,$0000
4a15	d9 	exx	exx
4a16	06 7f 	ld b,$7f	ld b,$00
4a18	c9 	ret	ret
4a19	cd b2 4e 	call $4eb2	call $0000
4a1c	cd 99 4a 	call $4a99	call $0000
4a1f	d9 	exx	exx
4a20	1d 	dec e	dec e
4a21	01 cf d1 	ld bc,$d1cf	ld bc,$0000
4a24	d9 	exx	exx
4a25	e5 	push hl	push hl
4a26	cd 37 4e 	call $4e37	call $0000
4a29	f1 	pop af	pop af
4a2a	cb 7b 	bit 7,e	bit 7,e
4a2c	28 09 	jr z,$+$0b	jr z,$+$00
4a2e	17 	rla	rla
4a2f	da 21 4f 	jp c,$4f21	jp c,$0000
4a32	3e 18 	ld a,$18	ld a,$00
4a34	c3 26 45 	jp $4526	jp $0000
4a37	e6 80 	and $80	and $00
4a39	b3 	or e	or e
4a3a	f5 	push af	push af
4a3b	cb bc 	res 7,h	res 7,h
4a3d	cd 9b 4f 	call $4f9b	call $0000
4a40	cd ce 4f 	call $4fce	call $0000
4a43	72 	ld (hl),d	ld (hl),d
4a44	40 2e 94 	ld.sis l,$94	ld.sis l,$00
4a47	73 	ld (hl),e	ld (hl),e
4a48	65 	ld h,l	ld h,l
4a49	6f 	ld l,a	ld l,a
4a4a	4f 	ld c,a	ld c,a
4a4b	2e 76 	ld l,$76	ld l,$00
4a4d	37 	scf	scf
4a4e	6d 	ld l,l	ld l,l
4a4f	02 	ld (bc),a	ld (bc),a
4a50	88 	adc a,b	adc a,b
4a51	79 	ld a,c	ld a,c
4a52	12 	ld (de),a	ld (de),a
4a53	e5 	push hl	push hl
4a54	a0 	and b	and b
4a55	2a 7b 14 	ld hl,($147b)	ld hl,($0000)
4a58	4f 	ld c,a	ld c,a
4a59	aa 	xor d	xor d
4a5a	aa 	xor d	xor d
4a5b	7d 	ld a,l	ld a,l
4a5c	56 	ld d,(hl)	ld d,(hl)
4a5d	fd ff 	trap	trap
4a5f	7f 	ld a,a	ld a,a
4a60	7e 	ld a,(hl)	ld a,(hl)
4a61	fe ff 	cp $ff	cp $00
4a63	ff 	rst $38	rst $00
4a64	ff 	rst $38	rst $00
4a65	7f 	ld a,a	ld a,a
4a66	00 	nop	nop
4a67	00 	nop	nop
4a68	00 	nop	nop
4a69	00 	nop	nop
4a6a	80 	add a,b	add a,b
4a6b	cd a4 4f 	call $4fa4	call $0000
4a6e	f1 	pop af	pop af
4a6f	f5 	push af	push af
4a70	f4 90 4a 	call p,$4a90	call p,$0000
4a73	f1 	pop af	pop af
4a74	f2 7b 4a 	jp p,$4a7b	jp p,$0000
4a77	e6 7f 	and $7f	and $00
4a79	ed 44 	neg	neg
4a7b	c6 80 	add a,$80	add a,$00
4a7d	81 	add a,c	add a,c
4a7e	38 05 	jr c,$+$07	jr c,$+$00
4a80	f2 21 4f 	jp p,$4f21	jp p,$0000
4a83	18 03 	jr $+$05	jr $+$00
4a85	fa f2 4e 	jp m,$4ef2	jp m,$0000
4a88	c6 80 	add a,$80	add a,$00
4a8a	ca 21 4f 	jp z,$4f21	jp z,$0000
4a8d	4f 	ld c,a	ld c,a
4a8e	af 	xor a	xor a
4a8f	c9 	ret	ret
4a90	cd 03 4a 	call $4a03	call $0000
4a93	cd dc 4e 	call $4edc	call $0000
4a96	c3 9d 46 	jp $469d	jp $0000
4a99	11 72 31 	ld de,$3172	ld de,$0000
4a9c	d9 	exx	exx
4a9d	11 f8 17 	ld de,$17f8	ld de,$0000
4aa0	d9 	exx	exx
4aa1	06 7f 	ld b,$7f	ld b,$00
4aa3	c9 	ret	ret
4aa4	cd b2 4e 	call $4eb2	call $0000
4aa7	3e 16 	ld a,$16	ld a,$00
4aa9	cb 7c 	bit 7,h	bit 7,h
4aab	c2 26 45 	jp nz,$4526	jp nz,$0000
4aae	0c 	inc c	inc c
4aaf	0d 	dec c	dec c
4ab0	ca 26 45 	jp z,$4526	jp z,$0000
4ab3	11 04 35 	ld de,$3504	ld de,$0000
4ab6	d9 	exx	exx
4ab7	11 33 f3 	ld de,$f333	ld de,$0000
4aba	d9 	exx	exx
4abb	cd 33 4f 	call $4f33	call $0000
4abe	79 	ld a,c	ld a,c
4abf	0e 80 	ld c,$80	ld c,$00
4ac1	38 02 	jr c,$+$04	jr c,$+$00
4ac3	0d 	dec c	dec c
4ac4	3c 	inc a	inc a
4ac5	f5 	push af	push af
4ac6	cd b0 4f 	call $4fb0	call $0000
4ac9	cd 9b 4f 	call $4f9b	call $0000
4acc	cd 95 4f 	call $4f95	call $0000
4acf	cd ce 4f 	call $4fce	call $0000
4ad2	48 	ld c,b	ld c,b
4ad3	cc fb 74 	call z,$74fb	call z,$0000
4ad6	7d 	ld a,l	ld a,l
4ad7	af 	xor a	xor a
4ad8	ae 	xor (hl)	xor (hl)
4ad9	ff 	rst $38	rst $00
4ada	11 7e 8c 	ld de,$8c7e	ld de,$0000
4add	d9 	exx	exx
4ade	cd 4c 7e 	call $7e4c	call $0000
4ae1	e3 	ex (sp),hl	ex (sp),hl
4ae2	a9 	xor c	xor c
4ae3	aa 	xor d	xor d
4ae4	2a 7f 00 	ld hl,($007f)	ld hl,($0000)
4ae7	00 	nop	nop
4ae8	00 	nop	nop
4ae9	00 	nop	nop
4aea	81 	add a,c	add a,c
4aeb	cd a4 4f 	call $4fa4	call $0000
4aee	cd a4 4f 	call $4fa4	call $0000
4af1	cd 0d 47 	call $470d	call $0000
4af4	f1 	pop af	pop af
4af5	cd 9b 4f 	call $4f9b	call $0000
4af8	08 	ex af,af'	ex af,af'
4af9	cd 21 4f 	call $4f21	call $0000
4afc	08 	ex af,af'	ex af,af'
4afd	d6 80 	sub $80	sub $00
4aff	28 1b 	jr z,$+$1d	jr z,$+$00
4b01	30 02 	jr nc,$+$04	jr nc,$+$00
4b03	2f 	cpl	cpl
4b04	3c 	inc a	inc a
4b05	67 	ld h,a	ld h,a
4b06	0e 87 	ld c,$87	ld c,$00
4b08	f5 	push af	push af
4b09	cd 98 4e 	call $4e98	call $0000
4b0c	cb bc 	res 7,h	res 7,h
4b0e	cd 99 4a 	call $4a99	call $0000
4b11	cd 0d 47 	call $470d	call $0000
4b14	f1 	pop af	pop af
4b15	30 05 	jr nc,$+$07	jr nc,$+$00
4b17	fa 1c 4b 	jp m,$4b1c	jp m,$0000
4b1a	cb fc 	set 7,h	set 7,h
4b1c	cd a4 4f 	call $4fa4	call $0000
4b1f	cd 45 46 	call $4645	call $0000
4b22	af 	xor a	xor a
4b23	c9 	ret	ret
4b24	cd a4 4a 	call $4aa4	call $0000
4b27	11 5b 5e 	ld de,$5e5b	ld de,$0000
4b2a	d9 	exx	exx
4b2b	11 a9 d8 	ld de,$d8a9	ld de,$0000
4b2e	d9 	exx	exx
4b2f	06 7e 	ld b,$7e	ld b,$00
4b31	cd 0d 47 	call $470d	call $0000
4b34	af 	xor a	xor a
4b35	c9 	ret	ret
4b36	cd b2 4e 	call $4eb2	call $0000
4b39	cd 9b 4f 	call $4f9b	call $0000
4b3c	cd 8d 4f 	call $4f8d	call $0000
4b3f	cd 0d 47 	call $470d	call $0000
4b42	cd 03 4a 	call $4a03	call $0000
4b45	cd 35 46 	call $4635	call $0000
4b48	cd 07 49 	call $4907	call $0000
4b4b	cd a4 4f 	call $4fa4	call $0000
4b4e	0c 	inc c	inc c
4b4f	0d 	dec c	dec c
4b50	3e 02 	ld a,$02	ld a,$00
4b52	d5 	push de	push de
4b53	28 70 	jr z,$+$72	jr z,$+$00
4b55	d1 	pop de	pop de
4b56	cd 93 4a 	call $4a93	call $0000
4b59	18 03 	jr $+$05	jr $+$00
4b5b	cd b2 4e 	call $4eb2	call $0000
4b5e	e5 	push hl	push hl
4b5f	cb bc 	res 7,h	res 7,h
4b61	11 13 54 	ld de,$5413	ld de,$0000
4b64	d9 	exx	exx
4b65	11 d0 cc 	ld de,$ccd0	ld de,$0000
4b68	d9 	exx	exx
4b69	06 7e 	ld b,$7e	ld b,$00
4b6b	cd 30 4f 	call $4f30	call $0000
4b6e	06 00 	ld b,$00	ld b,$00
4b70	38 1c 	jr c,$+$1e	jr c,$+$00
4b72	11 82 1a 	ld de,$1a82	ld de,$0000
4b75	d9 	exx	exx
4b76	11 9a 79 	ld de,$799a	ld de,$0000
4b79	d9 	exx	exx
4b7a	06 81 	ld b,$81	ld b,$00
4b7c	cd 30 4f 	call $4f30	call $0000
4b7f	38 08 	jr c,$+$0a	jr c,$+$00
4b81	cd 90 4a 	call $4a90	call $0000
4b84	06 02 	ld b,$02	ld b,$00
4b86	c3 8e 4b 	jp $4b8e	jp $0000
4b89	cd b0 4f 	call $4fb0	call $0000
4b8c	06 01 	ld b,$01	ld b,$00
4b8e	c5 	push bc	push bc
4b8f	cd 9b 4f 	call $4f9b	call $0000
4b92	cd 95 4f 	call $4f95	call $0000
4b95	cd ce 4f 	call $4fce	call $0000
4b98	35 	dec (hl)	dec (hl)
4b99	f3 	di	di
4b9a	d8 	ret c	ret c
4b9b	37 	scf	scf
4b9c	7b 	ld a,e	ld a,e
4b9d	91 	sub c	sub c
4b9e	6b 	ld l,e	ld l,e
4b9f	b9 	cp c	cp c
4ba0	aa 	xor d	xor d
4ba1	7c 	ld a,h	ld a,h
4ba2	de 41 	sbc a,$41	sbc a,$00
4ba4	97 	sub a	sub a
4ba5	61 	ld h,c	ld h,c
4ba6	7c 	ld a,h	ld a,h
4ba7	7b 	ld a,e	ld a,e
4ba8	9d 	sbc a,l	sbc a,l
4ba9	37 	scf	scf
4baa	92 	sub d	sub d
4bab	7d 	ld a,l	ld a,l
4bac	5a 	ld e,d	ld e,d
4bad	2a cc 4c 	ld hl,($4ccc)	ld hl,($0000)
4bb0	7d 	ld a,l	ld a,l
4bb1	5c 	ld e,h	ld e,h
4bb2	a9 	xor c	xor c
4bb3	aa 	xor d	xor d
4bb4	aa 	xor d	xor d
4bb5	7e 	ld a,(hl)	ld a,(hl)
4bb6	00 	nop	nop
4bb7	00 	nop	nop
4bb8	00 	nop	nop
4bb9	00 	nop	nop
4bba	80 	add a,b	add a,b
4bbb	cd a4 4f 	call $4fa4	call $0000
4bbe	cd a4 4f 	call $4fa4	call $0000
4bc1	cd 0d 47 	call $470d	call $0000
4bc4	f1 	pop af	pop af
4bc5	cd 0e 4a 	call $4a0e	call $0000
4bc8	1f 	rra	rra
4bc9	f5 	push af	push af
4bca	dc 45 46 	call c,$4645	call c,$0000
4bcd	f1 	pop af	pop af
4bce	04 	inc b	inc b
4bcf	1f 	rra	rra
4bd0	dc 35 46 	call c,$4635	call c,$0000
4bd3	f1 	pop af	pop af
4bd4	b7 	or a	or a
4bd5	f0 	ret p	ret p
4bd6	cb fc 	set 7,h	set 7,h
4bd8	af 	xor a	xor a
4bd9	c9 	ret	ret
4bda	cd 36 4b 	call $4b36	call $0000
4bdd	3e 02 	ld a,$02	ld a,$00
4bdf	f5 	push af	push af
4be0	18 e3 	jr $-$1b	jr $-$00
4be2	cd b2 4e 	call $4eb2	call $0000
4be5	06 00 	ld b,$00	ld b,$00
4be7	cb 7c 	bit 7,h	bit 7,h
4be9	28 06 	jr z,$+$08	jr z,$+$00
4beb	cb bc 	res 7,h	res 7,h
4bed	3e 2d 	ld a,$2d	ld a,$00
4bef	12 	ld (de),a	ld (de),a
4bf0	13 	inc de	inc de
4bf1	af 	xor a	xor a
4bf2	b9 	cp c	cp c
4bf3	28 47 	jr z,$+$49	jr z,$+$00
4bf5	d5 	push de	push de
4bf6	78 	ld a,b	ld a,b
4bf7	f5 	push af	push af
4bf8	79 	ld a,c	ld a,c
4bf9	fe a1 	cp $a1	cp $00
4bfb	30 1a 	jr nc,$+$1c	jr nc,$+$00
4bfd	fe 9b 	cp $9b	cp $00
4bff	30 25 	jr nc,$+$27	jr nc,$+$00
4c01	2f 	cpl	cpl
4c02	fe e1 	cp $e1	cp $00
4c04	38 02 	jr c,$+$04	jr c,$+$00
4c06	3e f8 	ld a,$f8	ld a,$00
4c08	c6 1c 	add a,$1c	add a,$00
4c0a	cd f5 4f 	call $4ff5	call $0000
4c0d	f5 	push af	push af
4c0e	cd 0d 47 	call $470d	call $0000
4c11	f1 	pop af	pop af
4c12	47 	ld b,a	ld b,a
4c13	f1 	pop af	pop af
4c14	90 	sub b	sub b
4c15	18 e0 	jr $-$1e	jr $-$00
4c17	d6 20 	sub $20	sub $00
4c19	cd f5 4f 	call $4ff5	call $0000
4c1c	f5 	push af	push af
4c1d	cd 9d 46 	call $469d	call $0000
4c20	f1 	pop af	pop af
4c21	47 	ld b,a	ld b,a
4c22	f1 	pop af	pop af
4c23	80 	add a,b	add a,b
4c24	18 d1 	jr $-$2d	jr $-$00
4c26	3e 09 	ld a,$09	ld a,$00
4c28	cd f5 4f 	call $4ff5	call $0000
4c2b	cd 30 4f 	call $4f30	call $0000
4c2e	79 	ld a,c	ld a,c
4c2f	c1 	pop bc	pop bc
4c30	4f 	ld c,a	ld c,a
4c31	cb fc 	set 7,h	set 7,h
4c33	dc 52 4f 	call c,$4f52	call c,$0000
4c36	d1 	pop de	pop de
4c37	cb b9 	res 7,c	res 7,c
4c39	3e 00 	ld a,$00	ld a,$00
4c3b	17 	rla	rla
4c3c	0c 	inc c	inc c
4c3d	08 	ex af,af'	ex af,af'
4c3e	78 	ld a,b	ld a,b
4c3f	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4c43	20 08 	jr nz,$+$0a	jr nz,$+$00
4c45	af 	xor a	xor a
4c46	dd be 01 	cp (ix+$01)	cp (ix+$00)
4c49	28 0a 	jr z,$+$0c	jr z,$+$00
4c4b	3e f6 	ld a,$f6	ld a,$00
4c4d	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4c50	b7 	or a	or a
4c51	fa 55 4c 	jp m,$4c55	jp m,$0000
4c54	af 	xor a	xor a
4c55	f5 	push af	push af
4c56	08 	ex af,af'	ex af,af'
4c57	cd 7b 4f 	call $4f7b	call $0000
4c5a	8f 	adc a,a	adc a,a
4c5b	fe 0a 	cp $0a	cp $00
4c5d	38 05 	jr c,$+$07	jr c,$+$00
4c5f	d6 0a 	sub $0a	sub $00
4c61	d9 	exx	exx
4c62	2c 	inc l	inc l
4c63	d9 	exx	exx
4c64	0d 	dec c	dec c
4c65	20 f0 	jr nz,$-$0e	jr nz,$-$00
4c67	4f 	ld c,a	ld c,a
4c68	7c 	ld a,h	ld a,h
4c69	e6 3f 	and $3f	and $00
4c6b	67 	ld h,a	ld h,a
4c6c	f1 	pop af	pop af
4c6d	f2 7a 4c 	jp p,$4c7a	jp p,$0000
4c70	3c 	inc a	inc a
4c71	20 1c 	jr nz,$+$1e	jr nz,$+$00
4c73	3e 04 	ld a,$04	ld a,$00
4c75	b9 	cp c	cp c
4c76	3e 00 	ld a,$00	ld a,$00
4c78	18 15 	jr $+$17	jr $+$00
4c7a	f5 	push af	push af
4c7b	79 	ld a,c	ld a,c
4c7c	ce 30 	adc a,$30	adc a,$00
4c7e	fe 30 	cp $30	cp $00
4c80	28 05 	jr z,$+$07	jr z,$+$00
4c82	fe 3a 	cp $3a	cp $00
4c84	3f 	ccf	ccf
4c85	30 08 	jr nc,$+$0a	jr nc,$+$00
4c87	e3 	ex (sp),hl	ex (sp),hl
4c88	cb 75 	bit 6,l	bit 6,l
4c8a	e3 	ex (sp),hl	ex (sp),hl
4c8b	20 05 	jr nz,$+$07	jr nz,$+$00
4c8d	3e 30 	ld a,$30	ld a,$00
4c8f	3c 	inc a	inc a
4c90	3d 	dec a	dec a
4c91	f5 	push af	push af
4c92	04 	inc b	inc b
4c93	cd 01 4f 	call $4f01	call $0000
4c96	0e 20 	ld c,$20	ld c,$00
4c98	3e 00 	ld a,$00	ld a,$00
4c9a	20 bb 	jr nz,$-$43	jr nz,$-$00
4c9c	f1 	pop af	pop af
4c9d	f5 	push af	push af
4c9e	3e 00 	ld a,$00	ld a,$00
4ca0	38 b5 	jr c,$-$49	jr c,$-$00
4ca2	eb 	ex de,hl	ex de,hl
4ca3	0e ff 	ld c,$ff	ld c,$00
4ca5	16 01 	ld d,$01	ld d,$00
4ca7	dd 5e 01 	ld e,(ix+$01)	ld e,(ix+$00)
4caa	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
4cae	20 32 	jr nz,$+$34	jr nz,$+$00
4cb0	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4cb4	28 11 	jr z,$+$13	jr z,$+$00
4cb6	78 	ld a,b	ld a,b
4cb7	b7 	or a	or a
4cb8	28 04 	jr z,$+$06	jr z,$+$00
4cba	fa be 4c 	jp m,$4cbe	jp m,$0000
4cbd	50 	ld d,b	ld d,b
4cbe	7a 	ld a,d	ld a,d
4cbf	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4cc2	5f 	ld e,a	ld e,a
4cc3	fe 0b 	cp $0b	cp $00
4cc5	38 17 	jr c,$+$19	jr c,$+$00
4cc7	78 	ld a,b	ld a,b
4cc8	11 01 01 	ld de,$0101	ld de,$0000
4ccb	b7 	or a	or a
4ccc	fa e2 4c 	jp m,$4ce2	jp m,$0000
4ccf	28 0d 	jr z,$+$0f	jr z,$+$00
4cd1	dd 7e 01 	ld a,(ix+$01)	ld a,(ix+$00)
4cd4	b7 	or a	or a
4cd5	20 02 	jr nz,$+$04	jr nz,$+$00
4cd7	3e 0a 	ld a,$0a	ld a,$00
4cd9	b8 	cp b	cp b
4cda	38 06 	jr c,$+$08	jr c,$+$00
4cdc	50 	ld d,b	ld d,b
4cdd	58 	ld e,b	ld e,b
4cde	78 	ld a,b	ld a,b
4cdf	c6 81 	add a,$81	add a,$00
4ce1	4f 	ld c,a	ld c,a
4ce2	cb fa 	set 7,d	set 7,d
4ce4	1d 	dec e	dec e
4ce5	7a 	ld a,d	ld a,d
4ce6	b9 	cp c	cp c
4ce7	30 0c 	jr nc,$+$0e	jr nc,$+$00
4ce9	f1 	pop af	pop af
4cea	28 03 	jr z,$+$05	jr z,$+$00
4cec	f2 f7 4c 	jp p,$4cf7	jp p,$0000
4cef	f5 	push af	push af
4cf0	1c 	inc e	inc e
4cf1	1d 	dec e	dec e
4cf2	fa 06 4d 	jp m,$4d06	jp m,$0000
4cf5	3e 30 	ld a,$30	ld a,$00
4cf7	15 	dec d	dec d
4cf8	e2 fe 4c 	jp po,$4cfe	jp po,$0000
4cfb	36 2e 	ld (hl),$2e	ld (hl),$00
4cfd	23 	inc hl	inc hl
4cfe	77 	ld (hl),a	ld (hl),a
4cff	23 	inc hl	inc hl
4d00	1d 	dec e	dec e
4d01	f2 e5 4c 	jp p,$4ce5	jp p,$0000
4d04	18 e3 	jr $-$1b	jr $-$00
4d06	f1 	pop af	pop af
4d07	0c 	inc c	inc c
4d08	4d 	ld c,l	ld c,l
4d09	20 27 	jr nz,$+$29	jr nz,$+$00
4d0b	36 45 	ld (hl),$45	ld (hl),$00
4d0d	23 	inc hl	inc hl
4d0e	78 	ld a,b	ld a,b
4d0f	3d 	dec a	dec a
4d10	f2 18 4d 	jp p,$4d18	jp p,$0000
4d13	36 2d 	ld (hl),$2d	ld (hl),$00
4d15	23 	inc hl	inc hl
4d16	ed 44 	neg	neg
4d18	36 30 	ld (hl),$30	ld (hl),$00
4d1a	28 15 	jr z,$+$17	jr z,$+$00
4d1c	fe 0a 	cp $0a	cp $00
4d1e	47 	ld b,a	ld b,a
4d1f	3e 3a 	ld a,$3a	ld a,$00
4d21	38 03 	jr c,$+$05	jr c,$+$00
4d23	23 	inc hl	inc hl
4d24	36 30 	ld (hl),$30	ld (hl),$00
4d26	34 	inc (hl)	inc (hl)
4d27	be 	cp (hl)	cp (hl)
4d28	20 05 	jr nz,$+$07	jr nz,$+$00
4d2a	36 30 	ld (hl),$30	ld (hl),$00
4d2c	2b 	dec hl	dec hl
4d2d	34 	inc (hl)	inc (hl)
4d2e	23 	inc hl	inc hl
4d2f	10 f5 	djnz $-$09	djnz $-$00
4d31	23 	inc hl	inc hl
4d32	eb 	ex de,hl	ex de,hl
4d33	c9 	ret	ret
4d34	cd 21 4f 	call $4f21	call $0000
4d37	0e 00 	ld c,$00	ld c,$00
4d39	cd b9 4d 	call $4db9	call $0000
4d3c	fe 2e 	cp $2e	cp $00
4d3e	06 00 	ld b,$00	ld b,$00
4d40	cc b7 4d 	call z,$4db7	call z,$0000
4d43	fe 45 	cp $45	cp $00
4d45	3e 00 	ld a,$00	ld a,$00
4d47	cc 88 4d 	call z,$4d88	call z,$0000
4d4a	cb 7c 	bit 7,h	bit 7,h
4d4c	20 08 	jr nz,$+$0a	jr nz,$+$00
4d4e	b7 	or a	or a
4d4f	20 05 	jr nz,$+$07	jr nz,$+$00
4d51	b8 	cp b	cp b
4d52	20 02 	jr nz,$+$04	jr nz,$+$00
4d54	b9 	cp c	cp c
4d55	c8 	ret z	ret z
4d56	90 	sub b	sub b
4d57	81 	add a,c	add a,c
4d58	0e 9f 	ld c,$9f	ld c,$00
4d5a	cd 98 4e 	call $4e98	call $0000
4d5d	cb bc 	res 7,h	res 7,h
4d5f	b7 	or a	or a
4d60	c8 	ret z	ret z
4d61	fa 6c 4d 	jp m,$4d6c	jp m,$0000
4d64	cd f5 4f 	call $4ff5	call $0000
4d67	cd 0d 47 	call $470d	call $0000
4d6a	af 	xor a	xor a
4d6b	c9 	ret	ret
4d6c	fe da 	cp $da	cp $00
4d6e	38 0a 	jr c,$+$0c	jr c,$+$00
4d70	ed 44 	neg	neg
4d72	cd f5 4f 	call $4ff5	call $0000
4d75	cd 9d 46 	call $469d	call $0000
4d78	af 	xor a	xor a
4d79	c9 	ret	ret
4d7a	f5 	push af	push af
4d7b	3e 26 	ld a,$26	ld a,$00
4d7d	cd f5 4f 	call $4ff5	call $0000
4d80	cd 9d 46 	call $469d	call $0000
4d83	f1 	pop af	pop af
4d84	c6 26 	add a,$26	add a,$00
4d86	18 e4 	jr $-$1a	jr $-$00
4d88	c5 	push bc	push bc
4d89	47 	ld b,a	ld b,a
4d8a	0e 02 	ld c,$02	ld c,$00
4d8c	dd 23 	inc ix	inc ix
4d8e	cd e3 50 	call $50e3	call $0000
4d91	08 	ex af,af'	ex af,af'
4d92	cd d9 50 	call $50d9	call $0000
4d95	38 17 	jr c,$+$19	jr c,$+$00
4d97	78 	ld a,b	ld a,b
4d98	87 	add a,a	add a,a
4d99	87 	add a,a	add a,a
4d9a	80 	add a,b	add a,b
4d9b	87 	add a,a	add a,a
4d9c	47 	ld b,a	ld b,a
4d9d	dd 7e 00 	ld a,(ix)	ld a,(ix)
4da0	dd 23 	inc ix	inc ix
4da2	e6 0f 	and $0f	and $00
4da4	80 	add a,b	add a,b
4da5	47 	ld b,a	ld b,a
4da6	0d 	dec c	dec c
4da7	f2 92 4d 	jp p,$4d92	jp p,$0000
4daa	06 64 	ld b,$64	ld b,$00
4dac	18 e4 	jr $-$1a	jr $-$00
4dae	08 	ex af,af'	ex af,af'
4daf	fe 2d 	cp $2d	cp $00
4db1	78 	ld a,b	ld a,b
4db2	c1 	pop bc	pop bc
4db3	c0 	ret nz	ret nz
4db4	ed 44 	neg	neg
4db6	c9 	ret	ret
4db7	dd 23 	inc ix	inc ix
4db9	cd d9 50 	call $50d9	call $0000
4dbc	d8 	ret c	ret c
4dbd	04 	inc b	inc b
4dbe	dd 23 	inc ix	inc ix
4dc0	cd 6c 4f 	call $4f6c	call $0000
4dc3	38 13 	jr c,$+$15	jr c,$+$00
4dc5	0d 	dec c	dec c
4dc6	0c 	inc c	inc c
4dc7	20 0f 	jr nz,$+$11	jr nz,$+$00
4dc9	e6 0f 	and $0f	and $00
4dcb	d9 	exx	exx
4dcc	06 00 	ld b,$00	ld b,$00
4dce	4f 	ld c,a	ld c,a
4dcf	09 	add hl,bc	add hl,bc
4dd0	d9 	exx	exx
4dd1	30 e6 	jr nc,$-$18	jr nc,$-$00
4dd3	23 	inc hl	inc hl
4dd4	7c 	ld a,h	ld a,h
4dd5	b5 	or l	or l
4dd6	20 e1 	jr nz,$-$1d	jr nz,$-$00
4dd8	0c 	inc c	inc c
4dd9	cd df 4e 	call $4edf	call $0000
4ddc	18 db 	jr $-$23	jr $-$00
4dde	08 	ex af,af'	ex af,af'
4ddf	af 	xor a	xor a
4de0	08 	ex af,af'	ex af,af'
4de1	cb fc 	set 7,h	set 7,h
4de3	cd e4 4e 	call $4ee4	call $0000
4de6	b9 	cp c	cp c
4de7	c8 	ret z	ret z
4de8	d2 e3 4d 	jp nc,$4de3	jp nc,$0000
4deb	c3 f2 4e 	jp $4ef2	jp $0000
4dee	cd dc 4e 	call $4edc	call $0000
4df1	cd f7 4d 	call $4df7	call $0000
4df4	cd dc 4e 	call $4edc	call $0000
4df7	0d 	dec c	dec c
4df8	0c 	inc c	inc c
4df9	c8 	ret z	ret z
4dfa	cb 7c 	bit 7,h	bit 7,h
4dfc	f5 	push af	push af
4dfd	3e 9f 	ld a,$9f	ld a,$00
4dff	cd de 4d 	call $4dde	call $0000
4e02	f1 	pop af	pop af
4e03	0e 00 	ld c,$00	ld c,$00
4e05	c8 	ret z	ret z
4e06	b7 	or a	or a
4e07	d9 	exx	exx
4e08	d5 	push de	push de
4e09	eb 	ex de,hl	ex de,hl
4e0a	21 00 00 	ld hl,$0000	ld hl,$0000
4e0d	ed 52 	sbc hl,de	sbc hl,de
4e0f	d1 	pop de	pop de
4e10	d9 	exx	exx
4e11	d5 	push de	push de
4e12	eb 	ex de,hl	ex de,hl
4e13	21 00 00 	ld hl,$0000	ld hl,$0000
4e16	ed 52 	sbc hl,de	sbc hl,de
4e18	d1 	pop de	pop de
4e19	c9 	ret	ret
4e1a	d9 	exx	exx
4e1b	2f 	cpl	cpl
4e1c	e5 	push hl	push hl
4e1d	b7 	or a	or a
4e1e	ed 62 	sbc hl,hl	sbc hl,hl
4e20	ed 42 	sbc hl,bc	sbc hl,bc
4e22	44 	ld b,h	ld b,h
4e23	4d 	ld c,l	ld c,l
4e24	e1 	pop hl	pop hl
4e25	18 e1 	jr $-$1d	jr $-$00
4e27	3e 96 	ld a,$96	ld a,$00
4e29	b9 	cp c	cp c
4e2a	3e 17 	ld a,$17	ld a,$00
4e2c	da 26 45 	jp c,$4526	jp c,$0000
4e2f	cd 0e 4a 	call $4a0e	call $0000
4e32	d9 	exx	exx
4e33	01 69 21 	ld bc,$2169	ld bc,$0000
4e36	d9 	exx	exx
4e37	cb fa 	set 7,d	set 7,d
4e39	cb fc 	set 7,h	set 7,h
4e3b	79 	ld a,c	ld a,c
4e3c	0e 00 	ld c,$00	ld c,$00
4e3e	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4e42	dd e5 	push ix	push ix
4e44	b8 	cp b	cp b
4e45	38 3a 	jr c,$+$3c	jr c,$+$00
4e47	d9 	exx	exx
4e48	e3 	ex (sp),hl	ex (sp),hl
4e49	ed 42 	sbc hl,bc	sbc hl,bc
4e4b	e3 	ex (sp),hl	ex (sp),hl
4e4c	ed 52 	sbc hl,de	sbc hl,de
4e4e	d9 	exx	exx
4e4f	ed 52 	sbc hl,de	sbc hl,de
4e51	30 09 	jr nc,$+$0b	jr nc,$+$00
4e53	d9 	exx	exx
4e54	e3 	ex (sp),hl	ex (sp),hl
4e55	09 	add hl,bc	add hl,bc
4e56	e3 	ex (sp),hl	ex (sp),hl
4e57	ed 5a 	adc hl,de	adc hl,de
4e59	d9 	exx	exx
4e5a	ed 5a 	adc hl,de	adc hl,de
4e5c	3f 	ccf	ccf
4e5d	cb 11 	rl c	rl c
4e5f	30 02 	jr nc,$+$04	jr nc,$+$00
4e61	cb f9 	set 7,c	set 7,c
4e63	3d 	dec a	dec a
4e64	b8 	cp b	cp b
4e65	38 19 	jr c,$+$1b	jr c,$+$00
4e67	e3 	ex (sp),hl	ex (sp),hl
4e68	29 	add hl,hl	add hl,hl
4e69	e3 	ex (sp),hl	ex (sp),hl
4e6a	d9 	exx	exx
4e6b	ed 6a 	adc hl,hl	adc hl,hl
4e6d	d9 	exx	exx
4e6e	ed 6a 	adc hl,hl	adc hl,hl
4e70	30 d5 	jr nc,$-$29	jr nc,$-$00
4e72	b7 	or a	or a
4e73	d9 	exx	exx
4e74	e3 	ex (sp),hl	ex (sp),hl
4e75	ed 42 	sbc hl,bc	sbc hl,bc
4e77	e3 	ex (sp),hl	ex (sp),hl
4e78	ed 52 	sbc hl,de	sbc hl,de
4e7a	d9 	exx	exx
4e7b	ed 52 	sbc hl,de	sbc hl,de
4e7d	b7 	or a	or a
4e7e	18 dc 	jr $-$22	jr $-$00
4e80	3c 	inc a	inc a
4e81	59 	ld e,c	ld e,c
4e82	4f 	ld c,a	ld c,a
4e83	d9 	exx	exx
4e84	c1 	pop bc	pop bc
4e85	d9 	exx	exx
4e86	cb 7c 	bit 7,h	bit 7,h
4e88	c0 	ret nz	ret nz
4e89	d9 	exx	exx
4e8a	cb 21 	sla c	sla c
4e8c	cb 10 	rl b	rl b
4e8e	ed 6a 	adc hl,hl	adc hl,hl
4e90	d9 	exx	exx
4e91	ed 6a 	adc hl,hl	adc hl,hl
4e93	0d 	dec c	dec c
4e94	c2 86 4e 	jp nz,$4e86	jp nz,$0000
4e97	c9 	ret	ret
4e98	cb 7c 	bit 7,h	bit 7,h
4e9a	c0 	ret nz	ret nz
4e9b	d9 	exx	exx
4e9c	29 	add hl,hl	add hl,hl
4e9d	d9 	exx	exx
4e9e	ed 6a 	adc hl,hl	adc hl,hl
4ea0	0d 	dec c	dec c
4ea1	c2 98 4e 	jp nz,$4e98	jp nz,$0000
4ea4	c9 	ret	ret
4ea5	08 	ex af,af'	ex af,af'
4ea6	c6 2e 	add a,$2e	add a,$00
4ea8	08 	ex af,af'	ex af,af'
4ea9	cd dc 4e 	call $4edc	call $0000
4eac	cd b2 4e 	call $4eb2	call $0000
4eaf	cd dc 4e 	call $4edc	call $0000
4eb2	0d 	dec c	dec c
4eb3	0c 	inc c	inc c
4eb4	c0 	ret nz	ret nz
4eb5	cd 01 4f 	call $4f01	call $0000
4eb8	c8 	ret z	ret z
4eb9	7c 	ld a,h	ld a,h
4eba	b7 	or a	or a
4ebb	fc 06 4e 	call m,$4e06	call m,$0000
4ebe	0e 9f 	ld c,$9f	ld c,$00
4ec0	cd 98 4e 	call $4e98	call $0000
4ec3	b7 	or a	or a
4ec4	f8 	ret m	ret m
4ec5	cb bc 	res 7,h	res 7,h
4ec7	c9 	ret	ret
4ec8	d9 	exx	exx
4ec9	01 01 00 	ld bc,$0001	ld bc,$0000
4ecc	09 	add hl,bc	add hl,bc
4ecd	d9 	exx	exx
4ece	d0 	ret nc	ret nc
4ecf	c5 	push bc	push bc
4ed0	01 01 00 	ld bc,$0001	ld bc,$0000
4ed3	09 	add hl,bc	add hl,bc
4ed4	c1 	pop bc	pop bc
4ed5	c9 	ret	ret
4ed6	b7 	or a	or a
4ed7	d9 	exx	exx
4ed8	cb c5 	set 0,l	set 0,l
4eda	d9 	exx	exx
4edb	c9 	ret	ret
4edc	79 	ld a,c	ld a,c
4edd	48 	ld c,b	ld c,b
4ede	47 	ld b,a	ld b,a
4edf	eb 	ex de,hl	ex de,hl
4ee0	d9 	exx	exx
4ee1	eb 	ex de,hl	ex de,hl
4ee2	d9 	exx	exx
4ee3	c9 	ret	ret
4ee4	cd 82 4f 	call $4f82	call $0000
4ee7	d9 	exx	exx
4ee8	cb 18 	rr b	rr b
4eea	cb 19 	rr c	rr c
4eec	08 	ex af,af'	ex af,af'
4eed	b0 	or b	or b
4eee	08 	ex af,af'	ex af,af'
4eef	d9 	exx	exx
4ef0	0c 	inc c	inc c
4ef1	c0 	ret nz	ret nz
4ef2	3e 14 	ld a,$14	ld a,$00
4ef4	c3 26 45 	jp $4526	jp $0000
4ef7	cd 01 4f 	call $4f01	call $0000
4efa	c8 	ret z	ret z
4efb	7c 	ld a,h	ld a,h
4efc	e6 80 	and $80	and $00
4efe	f6 40 	or $40	or $00
4f00	c9 	ret	ret
4f01	7c 	ld a,h	ld a,h
4f02	b5 	or l	or l
4f03	d9 	exx	exx
4f04	b4 	or h	or h
4f05	b5 	or l	or l
4f06	d9 	exx	exx
4f07	c9 	ret	ret
4f08	78 	ld a,b	ld a,b
4f09	b1 	or c	or c
4f0a	20 0a 	jr nz,$+$0c	jr nz,$+$00
4f0c	cd 1e 4f 	call $4f1e	call $0000
4f0f	3e 00 	ld a,$00	ld a,$00
4f11	c8 	ret z	ret z
4f12	3e 80 	ld a,$80	ld a,$00
4f14	1f 	rra	rra
4f15	c9 	ret	ret
4f16	cd a9 4e 	call $4ea9	call $0000
4f19	cd 2b 4f 	call $4f2b	call $0000
4f1c	18 f1 	jr $-$0d	jr $-$00
4f1e	cd 4a 4f 	call $4f4a	call $0000
4f21	3e 00 	ld a,$00	ld a,$00
4f23	d9 	exx	exx
4f24	67 	ld h,a	ld h,a
4f25	6f 	ld l,a	ld l,a
4f26	d9 	exx	exx
4f27	67 	ld h,a	ld h,a
4f28	6f 	ld l,a	ld l,a
4f29	4f 	ld c,a	ld c,a
4f2a	c9 	ret	ret
4f2b	cd 3d 4f 	call $4f3d	call $0000
4f2e	18 f1 	jr $-$0d	jr $-$00
4f30	79 	ld a,c	ld a,c
4f31	b8 	cp b	cp b
4f32	c0 	ret nz	ret nz
4f33	ed 52 	sbc hl,de	sbc hl,de
4f35	19 	add hl,de	add hl,de
4f36	c0 	ret nz	ret nz
4f37	d9 	exx	exx
4f38	ed 52 	sbc hl,de	sbc hl,de
4f3a	19 	add hl,de	add hl,de
4f3b	d9 	exx	exx
4f3c	c9 	ret	ret
4f3d	7c 	ld a,h	ld a,h
4f3e	aa 	xor d	xor d
4f3f	7c 	ld a,h	ld a,h
4f40	17 	rla	rla
4f41	f8 	ret m	ret m
4f42	30 ec 	jr nc,$-$12	jr nc,$-$00
4f44	cd 30 4f 	call $4f30	call $0000
4f47	c8 	ret z	ret z
4f48	3f 	ccf	ccf
4f49	c9 	ret	ret
4f4a	7c 	ld a,h	ld a,h
4f4b	aa 	xor d	xor d
4f4c	f2 33 4f 	jp p,$4f33	jp p,$0000
4f4f	7c 	ld a,h	ld a,h
4f50	17 	rla	rla
4f51	c9 	ret	ret
4f52	05 	dec b	dec b
4f53	0c 	inc c	inc c
4f54	cd 8e 4f 	call $4f8e	call $0000
4f57	cd 81 4f 	call $4f81	call $0000
4f5a	cd 81 4f 	call $4f81	call $0000
4f5d	08 	ex af,af'	ex af,af'
4f5e	d9 	exx	exx
4f5f	19 	add hl,de	add hl,de
4f60	d9 	exx	exx
4f61	ed 5a 	adc hl,de	adc hl,de
4f63	c9 	ret	ret
4f64	d9 	exx	exx
4f65	b7 	or a	or a
4f66	ed 52 	sbc hl,de	sbc hl,de
4f68	d9 	exx	exx
4f69	ed 52 	sbc hl,de	sbc hl,de
4f6b	c9 	ret	ret
4f6c	cd 8e 4f 	call $4f8e	call $0000
4f6f	cd 7b 4f 	call $4f7b	call $0000
4f72	d8 	ret c	ret c
4f73	cd 7b 4f 	call $4f7b	call $0000
4f76	d8 	ret c	ret c
4f77	cd 5e 4f 	call $4f5e	call $0000
4f7a	d8 	ret c	ret c
4f7b	d9 	exx	exx
4f7c	29 	add hl,hl	add hl,hl
4f7d	d9 	exx	exx
4f7e	ed 6a 	adc hl,hl	adc hl,hl
4f80	c9 	ret	ret
4f81	0c 	inc c	inc c
4f82	cb 3c 	srl h	srl h
4f84	cb 1d 	rr l	rr l
4f86	d9 	exx	exx
4f87	cb 1c 	rr h	rr h
4f89	cb 1d 	rr l	rr l
4f8b	d9 	exx	exx
4f8c	c9 	ret	ret
4f8d	41 	ld b,c	ld b,c
4f8e	54 	ld d,h	ld d,h
4f8f	5d 	ld e,l	ld e,l
4f90	d9 	exx	exx
4f91	54 	ld d,h	ld d,h
4f92	5d 	ld e,l	ld e,l
4f93	d9 	exx	exx
4f94	c9 	ret	ret
4f95	cd 8d 4f 	call $4f8d	call $0000
4f98	cd 0d 47 	call $470d	call $0000
4f9b	dd e1 	pop ix	pop ix
4f9d	c5 	push bc	push bc
4f9e	e5 	push hl	push hl
4f9f	d9 	exx	exx
4fa0	e5 	push hl	push hl
4fa1	d9 	exx	exx
4fa2	dd e9 	jp (ix)	jp (ix)
4fa4	dd e1 	pop ix	pop ix
4fa6	d9 	exx	exx
4fa7	d1 	pop de	pop de
4fa8	d9 	exx	exx
4fa9	d1 	pop de	pop de
4faa	79 	ld a,c	ld a,c
4fab	c1 	pop bc	pop bc
4fac	41 	ld b,c	ld b,c
4fad	4f 	ld c,a	ld c,a
4fae	dd e9 	jp (ix)	jp (ix)
4fb0	cd 9b 4f 	call $4f9b	call $0000
4fb3	cd 03 4a 	call $4a03	call $0000
4fb6	cd 45 46 	call $4645	call $0000
4fb9	cd a4 4f 	call $4fa4	call $0000
4fbc	cd 9b 4f 	call $4f9b	call $0000
4fbf	cd dc 4e 	call $4edc	call $0000
4fc2	cd 03 4a 	call $4a03	call $0000
4fc5	cd 2f 46 	call $462f	call $0000
4fc8	cd a4 4f 	call $4fa4	call $0000
4fcb	c3 9d 46 	jp $469d	jp $0000
4fce	dd 21 02 00 	ld ix,$0002	ld ix,$0000
4fd2	dd 39 	add ix,sp	add ix,sp
4fd4	dd e3 	ex (sp),ix	ex (sp),ix
4fd6	cd f1 19 	call $19f1	call $0000
4fd9	cd 0d 47 	call $470d	call $0000
4fdc	11 05 00 	ld de,$0005	ld de,$0000
4fdf	dd 19 	add ix,de	add ix,de
4fe1	cd f1 19 	call $19f1	call $0000
4fe4	dd e3 	ex (sp),ix	ex (sp),ix
4fe6	04 	inc b	inc b
4fe7	05 	dec b	dec b
4fe8	fa 45 46 	jp m,$4645	jp m,$0000
4feb	cd 45 46 	call $4645	call $0000
4fee	cd f1 19 	call $19f1	call $0000
4ff1	dd e3 	ex (sp),ix	ex (sp),ix
4ff3	18 e4 	jr $-$1a	jr $-$00
4ff5	3c 	inc a	inc a
4ff6	08 	ex af,af'	ex af,af'
4ff7	e5 	push hl	push hl
4ff8	d9 	exx	exx
4ff9	e5 	push hl	push hl
4ffa	d9 	exx	exx
4ffb	cd 03 4a 	call $4a03	call $0000
4ffe	cd dc 4e 	call $4edc	call $0000
5001	af 	xor a	xor a
5002	08 	ex af,af'	ex af,af'
5003	3d 	dec a	dec a
5004	28 20 	jr z,$+$22	jr z,$+$00
5006	f2 0d 50 	jp p,$500d	jp p,$0000
5009	b9 	cp c	cp c
500a	38 1a 	jr c,$+$1c	jr c,$+$00
500c	3c 	inc a	inc a
500d	08 	ex af,af'	ex af,af'
500e	3c 	inc a	inc a
500f	cb fc 	set 7,h	set 7,h
5011	cd 54 4f 	call $4f54	call $0000
5014	30 05 	jr nc,$+$07	jr nc,$+$00
5016	08 	ex af,af'	ex af,af'
5017	cd 81 4f 	call $4f81	call $0000
501a	08 	ex af,af'	ex af,af'
501b	08 	ex af,af'	ex af,af'
501c	dc c8 4e 	call c,$4ec8	call c,$0000
501f	0c 	inc c	inc c
5020	fa 02 50 	jp m,$5002	jp m,$0000
5023	c3 f2 4e 	jp $4ef2	jp $0000
5026	cd dc 4e 	call $4edc	call $0000
5029	cb ba 	res 7,d	res 7,d
502b	d9 	exx	exx
502c	e1 	pop hl	pop hl
502d	d9 	exx	exx
502e	e1 	pop hl	pop hl
502f	08 	ex af,af'	ex af,af'
5030	c9 	ret	ret
5031	b7 	or a	or a
5032	ed 42 	sbc hl,bc	sbc hl,bc
5034	d9 	exx	exx
5035	ed 42 	sbc hl,bc	sbc hl,bc
5037	d9 	exx	exx
5038	30 05 	jr nc,$+$07	jr nc,$+$00
503a	09 	add hl,bc	add hl,bc
503b	d9 	exx	exx
503c	ed 4a 	adc hl,bc	adc hl,bc
503e	d9 	exx	exx
503f	3f 	ccf	ccf
5040	cb 13 	rl e	rl e
5042	cb 12 	rl d	rl d
5044	d9 	exx	exx
5045	cb 13 	rl e	rl e
5047	cb 12 	rl d	rl d
5049	d9 	exx	exx
504a	3c 	inc a	inc a
504b	f0 	ret p	ret p
504c	ed 6a 	adc hl,hl	adc hl,hl
504e	d9 	exx	exx
504f	ed 6a 	adc hl,hl	adc hl,hl
5051	d9 	exx	exx
5052	30 de 	jr nc,$-$20	jr nc,$-$00
5054	b7 	or a	or a
5055	ed 42 	sbc hl,bc	sbc hl,bc
5057	d9 	exx	exx
5058	ed 42 	sbc hl,bc	sbc hl,bc
505a	d9 	exx	exx
505b	37 	scf	scf
505c	c3 40 50 	jp $5040	jp $0000
505f	b7 	or a	or a
5060	d9 	exx	exx
5061	cb 1a 	rr d	rr d
5063	cb 1b 	rr e	rr e
5065	d9 	exx	exx
5066	cb 1a 	rr d	rr d
5068	cb 1b 	rr e	rr e
506a	30 05 	jr nc,$+$07	jr nc,$+$00
506c	09 	add hl,bc	add hl,bc
506d	d9 	exx	exx
506e	ed 4a 	adc hl,bc	adc hl,bc
5070	d9 	exx	exx
5071	3c 	inc a	inc a
5072	f0 	ret p	ret p
5073	d9 	exx	exx
5074	cb 1c 	rr h	rr h
5076	cb 1d 	rr l	rr l
5078	d9 	exx	exx
5079	cb 1c 	rr h	rr h
507b	cb 1d 	rr l	rr l
507d	c3 60 50 	jp $5060	jp $0000
5080	ed 42 	sbc hl,bc	sbc hl,bc
5082	d9 	exx	exx
5083	ed 42 	sbc hl,bc	sbc hl,bc
5085	d9 	exx	exx
5086	0c 	inc c	inc c
5087	30 07 	jr nc,$+$09	jr nc,$+$00
5089	0d 	dec c	dec c
508a	09 	add hl,bc	add hl,bc
508b	d9 	exx	exx
508c	ed 4a 	adc hl,bc	adc hl,bc
508e	d9 	exx	exx
508f	0d 	dec c	dec c
5090	3c 	inc a	inc a
5091	f0 	ret p	ret p
5092	cb 21 	sla c	sla c
5094	cb 10 	rl b	rl b
5096	0c 	inc c	inc c
5097	d9 	exx	exx
5098	cb 11 	rl c	rl c
509a	cb 10 	rl b	rl b
509c	cd c8 50 	call $50c8	call $0000
509f	cd c8 50 	call $50c8	call $0000
50a2	d9 	exx	exx
50a3	d2 80 50 	jp nc,$5080	jp nc,$0000
50a6	b7 	or a	or a
50a7	ed 42 	sbc hl,bc	sbc hl,bc
50a9	d9 	exx	exx
50aa	ed 42 	sbc hl,bc	sbc hl,bc
50ac	d9 	exx	exx
50ad	0c 	inc c	inc c
50ae	c3 90 50 	jp $5090	jp $0000
50b1	29 	add hl,hl	add hl,hl
50b2	d9 	exx	exx
50b3	ed 6a 	adc hl,hl	adc hl,hl
50b5	d9 	exx	exx
50b6	38 ee 	jr c,$-$10	jr c,$-$00
50b8	3c 	inc a	inc a
50b9	0c 	inc c	inc c
50ba	ed 42 	sbc hl,bc	sbc hl,bc
50bc	d9 	exx	exx
50bd	ed 42 	sbc hl,bc	sbc hl,bc
50bf	d9 	exx	exx
50c0	d0 	ret nc	ret nc
50c1	09 	add hl,bc	add hl,bc
50c2	d9 	exx	exx
50c3	ed 4a 	adc hl,bc	adc hl,bc
50c5	d9 	exx	exx
50c6	0d 	dec c	dec c
50c7	c9 	ret	ret
50c8	d9 	exx	exx
50c9	cb 23 	sla e	sla e
50cb	cb 12 	rl d	rl d
50cd	d9 	exx	exx
50ce	cb 13 	rl e	rl e
50d0	cb 12 	rl d	rl d
50d2	d9 	exx	exx
50d3	ed 6a 	adc hl,hl	adc hl,hl
50d5	d9 	exx	exx
50d6	ed 6a 	adc hl,hl	adc hl,hl
50d8	c9 	ret	ret
50d9	dd 7e 00 	ld a,(ix)	ld a,(ix)
50dc	fe 3a 	cp $3a	cp $00
50de	3f 	ccf	ccf
50df	d8 	ret c	ret c
50e0	fe 30 	cp $30	cp $00
50e2	c9 	ret	ret
50e3	dd 7e 00 	ld a,(ix)	ld a,(ix)
50e6	dd 23 	inc ix	inc ix
50e8	fe 20 	cp $20	cp $00
50ea	28 f7 	jr z,$-$07	jr z,$-$00
50ec	fe 2b 	cp $2b	cp $00
50ee	c8 	ret z	ret z
50ef	fe 2d 	cp $2d	cp $00
50f1	c8 	ret z	ret z
50f2	dd 2b 	dec ix	dec ix
50f4	c9 	ret	ret
50f5	08 	ex af,af'	ex af,af'
50f6	cb 7c 	bit 7,h	bit 7,h
50f8	c4 06 4e 	call nz,$4e06	call nz,$0000
50fb	cd dc 4e 	call $4edc	call $0000
50fe	cb 7c 	bit 7,h	bit 7,h
5100	c4 06 4e 	call nz,$4e06	call nz,$0000
5103	44 	ld b,h	ld b,h
5104	4d 	ld c,l	ld c,l
5105	21 00 00 	ld hl,$0000	ld hl,$0000
5108	d9 	exx	exx
5109	44 	ld b,h	ld b,h
510a	4d 	ld c,l	ld c,l
510b	21 00 00 	ld hl,$0000	ld hl,$0000
510e	c9 	ret	ret
510f	ff 	rst $38	rst $00
5110	ff 	rst $38	rst $00
5111	ff 	rst $38	rst $00
5112	ff 	rst $38	rst $00
5113	ff 	rst $38	rst $00
5114	ff 	rst $38	rst $00
5115	ff 	rst $38	rst $00
5116	ff 	rst $38	rst $00
5117	ff 	rst $38	rst $00
5118	ff 	rst $38	rst $00
5119	ff 	rst $38	rst $00
511a	ff 	rst $38	rst $00
511b	ff 	rst $38	rst $00
511c	ff 	rst $38	rst $00
511d	ff 	rst $38	rst $00
511e	ff 	rst $38	rst $00
511f	ff 	rst $38	rst $00
5120	ff 	rst $38	rst $00
5121	ff 	rst $38	rst $00
5122	ff 	rst $38	rst $00
5123	ff 	rst $38	rst $00
5124	ff 	rst $38	rst $00
5125	ff 	rst $38	rst $00
5126	ff 	rst $38	rst $00
5127	ff 	rst $38	rst $00
5128	ff 	rst $38	rst $00
5129	ff 	rst $38	rst $00
512a	ff 	rst $38	rst $00
512b	ff 	rst $38	rst $00
512c	ff 	rst $38	rst $00
512d	ff 	rst $38	rst $00
512e	ff 	rst $38	rst $00
512f	ff 	rst $38	rst $00
5130	ff 	rst $38	rst $00
5131	ff 	rst $38	rst $00
5132	ff 	rst $38	rst $00
5133	ff 	rst $38	rst $00
5134	ff 	rst $38	rst $00
5135	ff 	rst $38	rst $00
5136
