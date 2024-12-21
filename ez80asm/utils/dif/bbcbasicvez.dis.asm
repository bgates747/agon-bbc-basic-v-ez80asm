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
00a6	cd dc 44 	call $44dc	call $0000
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
00de	c3 f9 36 	jp $36f9	jp $0000
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
0195	dd e5 	push ix	push ix
0197	3e 08 	ld a,$08	ld a,$00
0199	49 cf 	rst.lis $08	rst.lis $00
019b	5b dd cb 04 a6 	res.lil 4,(ix+$04)	res.lil 4,(ix+$00)
01a0	cd 15 18 	call $1815	call $0000
01a3	d9 	exx	exx
01a4	3e 16 	ld a,$16	ld a,$00
01a6	cd 93 05 	call $0593	call $0000
01a9	7d 	ld a,l	ld a,l
01aa	cd 93 05 	call $0593	call $0000
01ad	3e 08 	ld a,$08	ld a,$00
01af	49 cf 	rst.lis $08	rst.lis $00
01b1	5b dd cb 04 66 	bit.lil 4,(ix+$04)	bit.lil 4,(ix+$00)
01b6	28 f9 	jr z,$-$05	jr z,$-$00
01b8	dd e1 	pop ix	pop ix
01ba	c3 7b 24 	jp $247b	jp $0000
01bd	dd e5 	push ix	push ix
01bf	3e 08 	ld a,$08	ld a,$00
01c1	49 cf 	rst.lis $08	rst.lis $00
01c3	5b dd cb 04 8e 	res.lil 1,(ix+$04)	res.lil 1,(ix+$00)
01c8	3e 17 	ld a,$17	ld a,$00
01ca	cd 93 05 	call $0593	call $0000
01cd	3e 00 	ld a,$00	ld a,$00
01cf	cd 93 05 	call $0593	call $0000
01d2	3e 83 	ld a,$83	ld a,$00
01d4	cd 93 05 	call $0593	call $0000
01d7	7b 	ld a,e	ld a,e
01d8	cd 93 05 	call $0593	call $0000
01db	7a 	ld a,d	ld a,d
01dc	cd 93 05 	call $0593	call $0000
01df	7d 	ld a,l	ld a,l
01e0	cd 93 05 	call $0593	call $0000
01e3	7c 	ld a,h	ld a,h
01e4	cd 93 05 	call $0593	call $0000
01e7	5b dd cb 04 4e 	bit.lil 1,(ix+$04)	bit.lil 1,(ix+$00)
01ec	28 f9 	jr z,$-$05	jr z,$-$00
01ee	5b dd 7e 09 	ld.lil a,(ix+$09)	ld.lil a,(ix+$00)
01f2	b7 	or a	or a
01f3	37 	scf	scf
01f4	20 01 	jr nz,$+$03	jr nz,$+$00
01f6	af 	xor a	xor a
01f7	dd e1 	pop ix	pop ix
01f9	c9 	ret	ret
01fa	dd e5 	push ix	push ix
01fc	3e 08 	ld a,$08	ld a,$00
01fe	49 cf 	rst.lis $08	rst.lis $00
0200	5b dd cb 04 96 	res.lil 2,(ix+$04)	res.lil 2,(ix+$00)
0205	3e 17 	ld a,$17	ld a,$00
0207	cd 93 05 	call $0593	call $0000
020a	3e 00 	ld a,$00	ld a,$00
020c	cd 93 05 	call $0593	call $0000
020f	3e 84 	ld a,$84	ld a,$00
0211	cd 93 05 	call $0593	call $0000
0214	7b 	ld a,e	ld a,e
0215	cd 93 05 	call $0593	call $0000
0218	7a 	ld a,d	ld a,d
0219	cd 93 05 	call $0593	call $0000
021c	7d 	ld a,l	ld a,l
021d	cd 93 05 	call $0593	call $0000
0220	7c 	ld a,h	ld a,h
0221	cd 93 05 	call $0593	call $0000
0224	5b dd cb 04 56 	bit.lil 2,(ix+$04)	bit.lil 2,(ix+$00)
0229	28 f9 	jr z,$-$05	jr z,$-$00
022b	5b dd 7e 16 	ld.lil a,(ix+$16)	ld.lil a,(ix+$00)
022f	dd e1 	pop ix	pop ix
0231	c9 	ret	ret
0232	cd 15 18 	call $1815	call $0000
0235	d9 	exx	exx
0236	7d 	ld a,l	ld a,l
0237	32 00 52 	ld ($5200),a	ld ($0000),a
023a	cd ed 44 	call $44ed	call $0000
023d	fe 2c 	cp $2c	cp $00
023f	28 0e 	jr z,$+$10	jr z,$+$00
0241	3e 11 	ld a,$11	ld a,$00
0243	cd 93 05 	call $0593	call $0000
0246	3a 00 52 	ld a,($5200)	ld a,($0000)
0249	cd 93 05 	call $0593	call $0000
024c	c3 7b 24 	jp $247b	jp $0000
024f	cd 84 20 	call $2084	call $0000
0252	cd 15 18 	call $1815	call $0000
0255	d9 	exx	exx
0256	7d 	ld a,l	ld a,l
0257	32 01 52 	ld ($5201),a	ld ($0000),a
025a	cd ed 44 	call $44ed	call $0000
025d	fe 2c 	cp $2c	cp $00
025f	28 23 	jr z,$+$25	jr z,$+$00
0261	3e 13 	ld a,$13	ld a,$00
0263	cd 93 05 	call $0593	call $0000
0266	3a 00 52 	ld a,($5200)	ld a,($0000)
0269	cd 93 05 	call $0593	call $0000
026c	3a 01 52 	ld a,($5201)	ld a,($0000)
026f	cd 93 05 	call $0593	call $0000
0272	3e 00 	ld a,$00	ld a,$00
0274	cd 93 05 	call $0593	call $0000
0277	3e 00 	ld a,$00	ld a,$00
0279	cd 93 05 	call $0593	call $0000
027c	3e 00 	ld a,$00	ld a,$00
027e	cd 93 05 	call $0593	call $0000
0281	c3 7b 24 	jp $247b	jp $0000
0284	cd 84 20 	call $2084	call $0000
0287	cd 15 18 	call $1815	call $0000
028a	d9 	exx	exx
028b	7d 	ld a,l	ld a,l
028c	32 02 52 	ld ($5202),a	ld ($0000),a
028f	cd 84 20 	call $2084	call $0000
0292	cd 15 18 	call $1815	call $0000
0295	d9 	exx	exx
0296	7d 	ld a,l	ld a,l
0297	32 03 52 	ld ($5203),a	ld ($0000),a
029a	3e 13 	ld a,$13	ld a,$00
029c	cd 93 05 	call $0593	call $0000
029f	3a 00 52 	ld a,($5200)	ld a,($0000)
02a2	cd 93 05 	call $0593	call $0000
02a5	3e ff 	ld a,$ff	ld a,$00
02a7	cd 93 05 	call $0593	call $0000
02aa	3a 01 52 	ld a,($5201)	ld a,($0000)
02ad	cd 93 05 	call $0593	call $0000
02b0	3a 02 52 	ld a,($5202)	ld a,($0000)
02b3	cd 93 05 	call $0593	call $0000
02b6	3a 03 52 	ld a,($5203)	ld a,($0000)
02b9	cd 93 05 	call $0593	call $0000
02bc	c3 7b 24 	jp $247b	jp $0000
02bf	cd 18 05 	call $0518	call $0000
02c2	d6 02 	sub $02	sub $00
02c4	fb 	ei	ei
02c5	02 	ld (bc),a	ld (bc),a
02c6	1b 	dec de	dec de
02c7	03 	inc bc	inc bc
02c8	3b 	dec sp	dec sp
02c9	03 	inc bc	inc bc
02ca	56 	ld d,(hl)	ld d,(hl)
02cb	03 	inc bc	inc bc
02cc	82 	add a,d	add a,d
02cd	03 	inc bc	inc bc
02ce	9d 	sbc a,l	sbc a,l
02cf	03 	inc bc	inc bc
02d0	c4 03 e6 	call nz,$e603	call nz,$0000
02d3	03 	inc bc	inc bc
02d4	08 	ex af,af'	ex af,af'
02d5	04 	inc b	inc b
02d6	c5 	push bc	push bc
02d7	78 	ld a,b	ld a,b
02d8	2f 	cpl	cpl
02d9	4f 	ld c,a	ld c,a
02da	ed 38 9b 	in0 a,($9b)	in0 a,($00)
02dd	a1 	and c	and c
02de	ed 39 9b 	out0 ($9b),a	out0 ($00),a
02e1	c1 	pop bc	pop bc
02e2	c5 	push bc	push bc
02e3	78 	ld a,b	ld a,b
02e4	2f 	cpl	cpl
02e5	4f 	ld c,a	ld c,a
02e6	ed 38 9c 	in0 a,($9c)	in0 a,($00)
02e9	a1 	and c	and c
02ea	ed 39 9c 	out0 ($9c),a	out0 ($00),a
02ed	c1 	pop bc	pop bc
02ee	c5 	push bc	push bc
02ef	78 	ld a,b	ld a,b
02f0	2f 	cpl	cpl
02f1	4f 	ld c,a	ld c,a
02f2	ed 38 9d 	in0 a,($9d)	in0 a,($00)
02f5	a1 	and c	and c
02f6	ed 39 9d 	out0 ($9d),a	out0 ($00),a
02f9	c1 	pop bc	pop bc
02fa	c9 	ret	ret
02fb	ed 38 9b 	in0 a,($9b)	in0 a,($00)
02fe	b0 	or b	or b
02ff	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0302	c5 	push bc	push bc
0303	78 	ld a,b	ld a,b
0304	2f 	cpl	cpl
0305	4f 	ld c,a	ld c,a
0306	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0309	a1 	and c	and c
030a	ed 39 9c 	out0 ($9c),a	out0 ($00),a
030d	c1 	pop bc	pop bc
030e	c5 	push bc	push bc
030f	78 	ld a,b	ld a,b
0310	2f 	cpl	cpl
0311	4f 	ld c,a	ld c,a
0312	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0315	a1 	and c	and c
0316	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0319	c1 	pop bc	pop bc
031a	c9 	ret	ret
031b	c5 	push bc	push bc
031c	78 	ld a,b	ld a,b
031d	2f 	cpl	cpl
031e	4f 	ld c,a	ld c,a
031f	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0322	a1 	and c	and c
0323	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0326	c1 	pop bc	pop bc
0327	ed 38 9c 	in0 a,($9c)	in0 a,($00)
032a	b0 	or b	or b
032b	ed 39 9c 	out0 ($9c),a	out0 ($00),a
032e	c5 	push bc	push bc
032f	78 	ld a,b	ld a,b
0330	2f 	cpl	cpl
0331	4f 	ld c,a	ld c,a
0332	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0335	a1 	and c	and c
0336	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0339	c1 	pop bc	pop bc
033a	c9 	ret	ret
033b	ed 38 9b 	in0 a,($9b)	in0 a,($00)
033e	b0 	or b	or b
033f	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0342	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0345	b0 	or b	or b
0346	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0349	c5 	push bc	push bc
034a	78 	ld a,b	ld a,b
034b	2f 	cpl	cpl
034c	4f 	ld c,a	ld c,a
034d	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0350	a1 	and c	and c
0351	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0354	c1 	pop bc	pop bc
0355	c9 	ret	ret
0356	ed 38 9a 	in0 a,($9a)	in0 a,($00)
0359	b0 	or b	or b
035a	ed 39 9a 	out0 ($9a),a	out0 ($00),a
035d	c5 	push bc	push bc
035e	78 	ld a,b	ld a,b
035f	2f 	cpl	cpl
0360	4f 	ld c,a	ld c,a
0361	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0364	a1 	and c	and c
0365	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0368	c1 	pop bc	pop bc
0369	c5 	push bc	push bc
036a	78 	ld a,b	ld a,b
036b	2f 	cpl	cpl
036c	4f 	ld c,a	ld c,a
036d	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0370	a1 	and c	and c
0371	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0374	c1 	pop bc	pop bc
0375	c5 	push bc	push bc
0376	78 	ld a,b	ld a,b
0377	2f 	cpl	cpl
0378	4f 	ld c,a	ld c,a
0379	ed 38 9d 	in0 a,($9d)	in0 a,($00)
037c	a1 	and c	and c
037d	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0380	c1 	pop bc	pop bc
0381	c9 	ret	ret
0382	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0385	b0 	or b	or b
0386	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0389	c5 	push bc	push bc
038a	78 	ld a,b	ld a,b
038b	2f 	cpl	cpl
038c	4f 	ld c,a	ld c,a
038d	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0390	a1 	and c	and c
0391	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0394	c1 	pop bc	pop bc
0395	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0398	b0 	or b	or b
0399	ed 39 9d 	out0 ($9d),a	out0 ($00),a
039c	c9 	ret	ret
039d	c5 	push bc	push bc
039e	78 	ld a,b	ld a,b
039f	2f 	cpl	cpl
03a0	4f 	ld c,a	ld c,a
03a1	ed 38 9a 	in0 a,($9a)	in0 a,($00)
03a4	a1 	and c	and c
03a5	ed 39 9a 	out0 ($9a),a	out0 ($00),a
03a8	c1 	pop bc	pop bc
03a9	c5 	push bc	push bc
03aa	78 	ld a,b	ld a,b
03ab	2f 	cpl	cpl
03ac	4f 	ld c,a	ld c,a
03ad	ed 38 9b 	in0 a,($9b)	in0 a,($00)
03b0	a1 	and c	and c
03b1	ed 39 9b 	out0 ($9b),a	out0 ($00),a
03b4	c1 	pop bc	pop bc
03b5	ed 38 9c 	in0 a,($9c)	in0 a,($00)
03b8	b0 	or b	or b
03b9	ed 39 9c 	out0 ($9c),a	out0 ($00),a
03bc	ed 38 9d 	in0 a,($9d)	in0 a,($00)
03bf	b0 	or b	or b
03c0	ed 39 9d 	out0 ($9d),a	out0 ($00),a
03c3	c9 	ret	ret
03c4	ed 38 9a 	in0 a,($9a)	in0 a,($00)
03c7	b0 	or b	or b
03c8	ed 39 9a 	out0 ($9a),a	out0 ($00),a
03cb	c5 	push bc	push bc
03cc	78 	ld a,b	ld a,b
03cd	2f 	cpl	cpl
03ce	4f 	ld c,a	ld c,a
03cf	ed 38 9b 	in0 a,($9b)	in0 a,($00)
03d2	a1 	and c	and c
03d3	ed 39 9b 	out0 ($9b),a	out0 ($00),a
03d6	c1 	pop bc	pop bc
03d7	ed 38 9c 	in0 a,($9c)	in0 a,($00)
03da	b0 	or b	or b
03db	ed 39 9c 	out0 ($9c),a	out0 ($00),a
03de	ed 38 9d 	in0 a,($9d)	in0 a,($00)
03e1	b0 	or b	or b
03e2	ed 39 9d 	out0 ($9d),a	out0 ($00),a
03e5	c9 	ret	ret
03e6	c5 	push bc	push bc
03e7	78 	ld a,b	ld a,b
03e8	2f 	cpl	cpl
03e9	4f 	ld c,a	ld c,a
03ea	ed 38 9a 	in0 a,($9a)	in0 a,($00)
03ed	a1 	and c	and c
03ee	ed 39 9a 	out0 ($9a),a	out0 ($00),a
03f1	c1 	pop bc	pop bc
03f2	ed 38 9b 	in0 a,($9b)	in0 a,($00)
03f5	b0 	or b	or b
03f6	ed 39 9b 	out0 ($9b),a	out0 ($00),a
03f9	ed 38 9c 	in0 a,($9c)	in0 a,($00)
03fc	b0 	or b	or b
03fd	ed 39 9c 	out0 ($9c),a	out0 ($00),a
0400	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0403	b0 	or b	or b
0404	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0407	c9 	ret	ret
0408	ed 38 9a 	in0 a,($9a)	in0 a,($00)
040b	b0 	or b	or b
040c	ed 39 9a 	out0 ($9a),a	out0 ($00),a
040f	ed 38 9b 	in0 a,($9b)	in0 a,($00)
0412	b0 	or b	or b
0413	ed 39 9b 	out0 ($9b),a	out0 ($00),a
0416	ed 38 9c 	in0 a,($9c)	in0 a,($00)
0419	b0 	or b	or b
041a	ed 39 9c 	out0 ($9c),a	out0 ($00),a
041d	ed 38 9d 	in0 a,($9d)	in0 a,($00)
0420	b0 	or b	or b
0421	ed 39 9d 	out0 ($9d),a	out0 ($00),a
0424	c9 	ret	ret
0425	f3 	di	di
0426	ed 6e 	ld a,mb	ld a,mb
0428	21 a3 04 	ld hl,$04a3	ld hl,$0000
042b	cd 65 04 	call $0465	call $0000
042e	1e 32 	ld e,$32	ld e,$00
0430	3e 14 	ld a,$14	ld a,$00
0432	49 cf 	rst.lis $08	rst.lis $00
0434	5b e5 	push.lil hl	push.lil hl
0436	5b d1 	pop.lil de	pop.lil de
0438	21 bb 04 	ld hl,$04bb	ld hl,$0000
043b	ed 6e 	ld a,mb	ld a,mb
043d	32 ac 04 	ld ($04ac),a	ld ($0000),a
0440	cd 65 04 	call $0465	call $0000
0443	5b ed 1f 	ld.lil (hl),de	ld.lil (hl),de
0446	fb 	ei	ei
0447	c9 	ret	ret
0448	f3 	di	di
0449	21 bb 04 	ld hl,$04bb	ld hl,$0000
044c	3a ac 04 	ld a,($04ac)	ld a,($0000)
044f	f5 	push af	push af
0450	cd 65 04 	call $0465	call $0000
0453	5b ed 17 	ld.lil de,(hl)	ld.lil de,(hl)
0456	5b d5 	push.lil de	push.lil de
0458	5b e1 	pop.lil hl	pop.lil hl
045a	1e 32 	ld e,$32	ld e,$00
045c	3e 14 	ld a,$14	ld a,$00
045e	49 cf 	rst.lis $08	rst.lis $00
0460	f1 	pop af	pop af
0461	ed 6d 	ld mb,a	ld mb,a
0463	fb 	ei	ei
0464	c9 	ret	ret
0465	5b e5 	push.lil hl	push.lil hl
0467	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
046c	5b 39 	add.lil hl,sp	add.lil hl,sp
046e	5b 77 	ld.lil (hl),a	ld.lil (hl),a
0470	5b e1 	pop.lil hl	pop.lil hl
0472	c9 	ret	ret
0473	3e 08 	ld a,$08	ld a,$00
0475	49 cf 	rst.lis $08	rst.lis $00
0477	21 f8 50 	ld hl,$50f8	ld hl,$0000
047a	5b dd 7e 19 	ld.lil a,(ix+$19)	ld.lil a,(ix+$00)
047e	be 	cp (hl)	cp (hl)
047f	20 09 	jr nz,$+$0b	jr nz,$+$00
0481	af 	xor a	xor a
0482	32 f7 50 	ld ($50f7),a	ld ($0000),a
0485	32 f6 50 	ld ($50f6),a	ld ($0000),a
0488	5b c9 	ret.lil	ret.lil
048a	77 	ld (hl),a	ld (hl),a
048b	5b dd 7e 18 	ld.lil a,(ix+$18)	ld.lil a,(ix+$00)
048f	b7 	or a	or a
0490	28 ef 	jr z,$-$0f	jr z,$-$00
0492	32 f6 50 	ld ($50f6),a	ld ($0000),a
0495	5b dd 7e 05 	ld.lil a,(ix+$05)	ld.lil a,(ix+$00)
0499	32 f7 50 	ld ($50f7),a	ld ($0000),a
049c	fe 1b 	cp $1b	cp $00
049e	cc f8 05 	call z,$05f8	call z,$0000
04a1	49 c9 	ret.lis	ret.lis
04a3	f3 	di	di
04a4	f5 	push af	push af
04a5	e5 	push hl	push hl
04a6	dd e5 	push ix	push ix
04a8	ed 6e 	ld a,mb	ld a,mb
04aa	f5 	push af	push af
04ab	3e 00 	ld a,$00	ld a,$00
04ad	ed 6d 	ld mb,a	ld mb,a
04af	49 cd 73 04 	call.lis $0473	call.lis $0000
04b3	f1 	pop af	pop af
04b4	ed 6d 	ld mb,a	ld mb,a
04b6	dd e1 	pop ix	pop ix
04b8	e1 	pop hl	pop hl
04b9	f1 	pop af	pop af
04ba	c3 00 00 	jp $0000	jp $0000
04bd	00 	nop	nop
04be	c5 	push bc	push bc
04bf	11 00 00 	ld de,$0000	ld de,$0000
04c2	cd 02 05 	call $0502	call $0000
04c5	7e 	ld a,(hl)	ld a,(hl)
04c6	fe 26 	cp $26	cp $00
04c8	20 1e 	jr nz,$+$20	jr nz,$+$00
04ca	23 	inc hl	inc hl
04cb	7e 	ld a,(hl)	ld a,(hl)
04cc	cd 10 05 	call $0510	call $0000
04cf	d6 30 	sub $30	sub $00
04d1	38 2e 	jr c,$+$30	jr c,$+$00
04d3	fe 0a 	cp $0a	cp $00
04d5	38 06 	jr c,$+$08	jr c,$+$00
04d7	d6 07 	sub $07	sub $00
04d9	fe 10 	cp $10	cp $00
04db	30 24 	jr nc,$+$26	jr nc,$+$00
04dd	eb 	ex de,hl	ex de,hl
04de	29 	add hl,hl	add hl,hl
04df	29 	add hl,hl	add hl,hl
04e0	29 	add hl,hl	add hl,hl
04e1	29 	add hl,hl	add hl,hl
04e2	eb 	ex de,hl	ex de,hl
04e3	b3 	or e	or e
04e4	5f 	ld e,a	ld e,a
04e5	23 	inc hl	inc hl
04e6	18 e3 	jr $-$1b	jr $-$00
04e8	7e 	ld a,(hl)	ld a,(hl)
04e9	d6 30 	sub $30	sub $00
04eb	38 14 	jr c,$+$16	jr c,$+$00
04ed	fe 0a 	cp $0a	cp $00
04ef	30 10 	jr nc,$+$12	jr nc,$+$00
04f1	eb 	ex de,hl	ex de,hl
04f2	44 	ld b,h	ld b,h
04f3	4d 	ld c,l	ld c,l
04f4	29 	add hl,hl	add hl,hl
04f5	29 	add hl,hl	add hl,hl
04f6	09 	add hl,bc	add hl,bc
04f7	29 	add hl,hl	add hl,hl
04f8	eb 	ex de,hl	ex de,hl
04f9	83 	add a,e	add a,e
04fa	5f 	ld e,a	ld e,a
04fb	8a 	adc a,d	adc a,d
04fc	93 	sub e	sub e
04fd	57 	ld d,a	ld d,a
04fe	23 	inc hl	inc hl
04ff	18 e7 	jr $-$17	jr $-$00
0501	c1 	pop bc	pop bc
0502	7e 	ld a,(hl)	ld a,(hl)
0503	fe 20 	cp $20	cp $00
0505	c0 	ret nz	ret nz
0506	23 	inc hl	inc hl
0507	18 f9 	jr $-$05	jr $-$00
0509	7e 	ld a,(hl)	ld a,(hl)
050a	fe 20 	cp $20	cp $00
050c	c8 	ret z	ret z
050d	23 	inc hl	inc hl
050e	18 f9 	jr $-$05	jr $-$00
0510	e6 7f 	and $7f	and $00
0512	fe 60 	cp $60	cp $00
0514	d8 	ret c	ret c
0515	e6 5f 	and $5f	and $00
0517	c9 	ret	ret
0518	e3 	ex (sp),hl	ex (sp),hl
0519	87 	add a,a	add a,a
051a	85 	add a,l	add a,l
051b	6f 	ld l,a	ld l,a
051c	8c 	adc a,h	adc a,h
051d	95 	sub l	sub l
051e	67 	ld h,a	ld h,a
051f	7e 	ld a,(hl)	ld a,(hl)
0520	23 	inc hl	inc hl
0521	66 	ld h,(hl)	ld h,(hl)
0522	6f 	ld l,a	ld l,a
0523	e3 	ex (sp),hl	ex (sp),hl
0524	c9 	ret	ret
0525	c5 	push bc	push bc
0526	06 00 	ld b,$00	ld b,$00
0528	0e 0d 	ld c,$0d	ld c,$00
052a	18 05 	jr $+$07	jr $+$00
052c	c5 	push bc	push bc
052d	06 0d 	ld b,$0d	ld b,$00
052f	0e 00 	ld c,$00	ld c,$00
0531	e5 	push hl	push hl
0532	7e 	ld a,(hl)	ld a,(hl)
0533	b8 	cp b	cp b
0534	28 03 	jr z,$+$05	jr z,$+$00
0536	23 	inc hl	inc hl
0537	18 f9 	jr $-$05	jr $-$00
0539	71 	ld (hl),c	ld (hl),c
053a	e1 	pop hl	pop hl
053b	c1 	pop bc	pop bc
053c	c9 	ret	ret
053d	7e 	ld a,(hl)	ld a,(hl)
053e	fe 20 	cp $20	cp $00
0540	28 09 	jr z,$+$0b	jr z,$+$00
0542	fe 0d 	cp $0d	cp $00
0544	28 05 	jr z,$+$07	jr z,$+$00
0546	12 	ld (de),a	ld (de),a
0547	23 	inc hl	inc hl
0548	13 	inc de	inc de
0549	18 f2 	jr $-$0c	jr $-$00
054b	af 	xor a	xor a
054c	12 	ld (de),a	ld (de),a
054d	13 	inc de	inc de
054e	c9 	ret	ret
054f	7e 	ld a,(hl)	ld a,(hl)
0550	fe 0d 	cp $0d	cp $00
0552	28 05 	jr z,$+$07	jr z,$+$00
0554	12 	ld (de),a	ld (de),a
0555	23 	inc hl	inc hl
0556	13 	inc de	inc de
0557	18 f6 	jr $-$08	jr $-$00
0559	af 	xor a	xor a
055a	12 	ld (de),a	ld (de),a
055b	13 	inc de	inc de
055c	c9 	ret	ret
055d	7e 	ld a,(hl)	ld a,(hl)
055e	b9 	cp c	cp c
055f	c8 	ret z	ret z
0560	b7 	or a	or a
0561	c8 	ret z	ret z
0562	23 	inc hl	inc hl
0563	18 f8 	jr $-$06	jr $-$00
0565	7e 	ld a,(hl)	ld a,(hl)
0566	cd 10 05 	call $0510	call $0000
0569	4f 	ld c,a	ld c,a
056a	1a 	ld a,(de)	ld a,(de)
056b	b9 	cp c	cp c
056c	c0 	ret nz	ret nz
056d	b1 	or c	or c
056e	c8 	ret z	ret z
056f	23 	inc hl	inc hl
0570	13 	inc de	inc de
0571	18 f2 	jr $-$0c	jr $-$00
0573	7e 	ld a,(hl)	ld a,(hl)
0574	b7 	or a	or a
0575	28 03 	jr z,$+$05	jr z,$+$00
0577	23 	inc hl	inc hl
0578	18 f9 	jr $-$05	jr $-$00
057a	1a 	ld a,(de)	ld a,(de)
057b	77 	ld (hl),a	ld (hl),a
057c	b7 	or a	or a
057d	c8 	ret z	ret z
057e	23 	inc hl	inc hl
057f	13 	inc de	inc de
0580	18 f8 	jr $-$06	jr $-$00
0582	cd 25 04 	call $0425	call $0000
0585	af 	xor a	xor a
0586	32 f1 50 	ld ($50f1),a	ld ($0000),a
0589	21 00 55 	ld hl,$5500	ld hl,$0000
058c	11 00 ff 	ld de,$ff00	ld de,$0000
058f	5f 	ld e,a	ld e,a
0590	c9 	ret	ret
0591	3e 3e 	ld a,$3e	ld a,$00
0593	e5 	push hl	push hl
0594	21 fe 54 	ld hl,$54fe	ld hl,$0000
0597	cb 5e 	bit 3,(hl)	bit 3,(hl)
0599	20 0a 	jr nz,$+$0c	jr nz,$+$00
059b	2a f4 50 	ld hl,($50f4)	ld hl,($0000)
059e	2d 	dec l	dec l
059f	28 17 	jr z,$+$19	jr z,$+$00
05a1	e1 	pop hl	pop hl
05a2	49 d7 	rst.lis $10	rst.lis $00
05a4	c9 	ret	ret
05a5	2a f2 50 	ld hl,($50f2)	ld hl,($0000)
05a8	fe 0a 	cp $0a	cp $00
05aa	28 0a 	jr z,$+$0c	jr z,$+$00
05ac	fe 0d 	cp $0d	cp $00
05ae	20 01 	jr nz,$+$03	jr nz,$+$00
05b0	af 	xor a	xor a
05b1	77 	ld (hl),a	ld (hl),a
05b2	23 	inc hl	inc hl
05b3	22 f2 50 	ld ($50f2),hl	ld ($0000),hl
05b6	e1 	pop hl	pop hl
05b7	c9 	ret	ret
05b8	d5 	push de	push de
05b9	5c 	ld e,h	ld e,h
05ba	cd 45 06 	call $0645	call $0000
05bd	d1 	pop de	pop de
05be	e1 	pop hl	pop hl
05bf	c9 	ret	ret
05c0	3e 00 	ld a,$00	ld a,$00
05c2	49 cf 	rst.lis $08	rst.lis $00
05c4	fe 1b 	cp $1b	cp $00
05c6	28 55 	jr z,$+$57	jr z,$+$00
05c8	c9 	ret	ret
05c9	1e 01 	ld e,$01	ld e,$00
05cb	fd e5 	push iy	push iy
05cd	e5 	push hl	push hl
05ce	01 00 01 	ld bc,$0100	ld bc,$0000
05d1	3e 09 	ld a,$09	ld a,$00
05d3	49 cf 	rst.lis $08	rst.lis $00
05d5	e1 	pop hl	pop hl
05d6	fd e1 	pop iy	pop iy
05d8	f5 	push af	push af
05d9	cd 25 05 	call $0525	call $0000
05dc	cd dd 40 	call $40dd	call $0000
05df	f1 	pop af	pop af
05e0	fe 1b 	cp $1b	cp $00
05e2	ca 1d 06 	jp z,$061d	jp z,$0000
05e5	3a f1 50 	ld a,($50f1)	ld a,($0000)
05e8	cb bf 	res 7,a	res 7,a
05ea	32 f1 50 	ld ($50f1),a	ld ($0000),a
05ed	cd 6d 0a 	call $0a6d	call $0000
05f0	af 	xor a	xor a
05f1	32 f6 50 	ld ($50f6),a	ld ($0000),a
05f4	32 f7 50 	ld ($50f7),a	ld ($0000),a
05f7	c9 	ret	ret
05f8	e5 	push hl	push hl
05f9	21 f1 50 	ld hl,$50f1	ld hl,$0000
05fc	cb 76 	bit 6,(hl)	bit 6,(hl)
05fe	20 02 	jr nz,$+$04	jr nz,$+$00
0600	cb fe 	set 7,(hl)	set 7,(hl)
0602	e1 	pop hl	pop hl
0603	c9 	ret	ret
0604	cd 0d 06 	call $060d	call $0000
0607	c0 	ret nz	ret nz
0608	fe 1b 	cp $1b	cp $00
060a	28 ec 	jr z,$-$12	jr z,$-$00
060c	c9 	ret	ret
060d	3a f6 50 	ld a,($50f6)	ld a,($0000)
0610	3d 	dec a	dec a
0611	3a f7 50 	ld a,($50f7)	ld a,($0000)
0614	c9 	ret	ret
0615	cd 04 06 	call $0604	call $0000
0618	3a f1 50 	ld a,($50f1)	ld a,($0000)
061b	b7 	or a	or a
061c	f0 	ret p	ret p
061d	21 f1 50 	ld hl,$50f1	ld hl,$0000
0620	cb be 	res 7,(hl)	res 7,(hl)
0622	c3 c5 25 	jp $25c5	jp $0000
0625	c9 	ret	ret
0626	0e 01 	ld c,$01	ld c,$00
0628	28 06 	jr z,$+$08	jr z,$+$00
062a	0e 32 	ld c,$32	ld c,$00
062c	38 02 	jr c,$+$04	jr c,$+$00
062e	0e 0a 	ld c,$0a	ld c,$00
0630	3e 0a 	ld a,$0a	ld a,$00
0632	49 cf 	rst.lis $08	rst.lis $00
0634	c9 	ret	ret
0635	c5 	push bc	push bc
0636	4b 	ld c,e	ld c,e
0637	3e 0b 	ld a,$0b	ld a,$00
0639	49 cf 	rst.lis $08	rst.lis $00
063b	c1 	pop bc	pop bc
063c	c9 	ret	ret
063d	c5 	push bc	push bc
063e	4b 	ld c,e	ld c,e
063f	3e 0c 	ld a,$0c	ld a,$00
0641	49 cf 	rst.lis $08	rst.lis $00
0643	c1 	pop bc	pop bc
0644	c9 	ret	ret
0645	c5 	push bc	push bc
0646	4b 	ld c,e	ld c,e
0647	47 	ld b,a	ld b,a
0648	3e 0d 	ld a,$0d	ld a,$00
064a	49 cf 	rst.lis $08	rst.lis $00
064c	c1 	pop bc	pop bc
064d	c9 	ret	ret
064e	c5 	push bc	push bc
064f	4b 	ld c,e	ld c,e
0650	3e 0e 	ld a,$0e	ld a,$00
0652	49 cf 	rst.lis $08	rst.lis $00
0654	c1 	pop bc	pop bc
0655	fe 01 	cp $01	cp $00
0657	c9 	ret	ret
0658	fd e5 	push iy	push iy
065a	4b 	ld c,e	ld c,e
065b	3e 19 	ld a,$19	ld a,$00
065d	49 cf 	rst.lis $08	rst.lis $00
065f	5b e5 	push.lil hl	push.lil hl
0661	5b fd e1 	pop.lil iy	pop.lil iy
0664	5b fd 6e 11 	ld.lil l,(iy+$11)	ld.lil l,(iy+$00)
0668	5b fd 66 12 	ld.lil h,(iy+$12)	ld.lil h,(iy+$00)
066c	5b fd 5e 13 	ld.lil e,(iy+$13)	ld.lil e,(iy+$00)
0670	5b fd 56 14 	ld.lil d,(iy+$14)	ld.lil d,(iy+$00)
0674	fd e1 	pop iy	pop iy
0676	c9 	ret	ret
0677	fd e5 	push iy	push iy
0679	4f 	ld c,a	ld c,a
067a	5b e5 	push.lil hl	push.lil hl
067c	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
0681	5b 39 	add.lil hl,sp	add.lil hl,sp
0683	5b 73 	ld.lil (hl),e	ld.lil (hl),e
0685	5b e1 	pop.lil hl	pop.lil hl
0687	5a 	ld e,d	ld e,d
0688	3e 1c 	ld a,$1c	ld a,$00
068a	49 cf 	rst.lis $08	rst.lis $00
068c	fd e1 	pop iy	pop iy
068e	c9 	ret	ret
068f	fd e5 	push iy	push iy
0691	4b 	ld c,e	ld c,e
0692	3e 19 	ld a,$19	ld a,$00
0694	49 cf 	rst.lis $08	rst.lis $00
0696	5b e5 	push.lil hl	push.lil hl
0698	5b fd e1 	pop.lil iy	pop.lil iy
069b	5b fd 6e 24 	ld.lil l,(iy+$24)	ld.lil l,(iy+$00)
069f	5b fd 66 25 	ld.lil h,(iy+$25)	ld.lil h,(iy+$00)
06a3	5b fd 5e 26 	ld.lil e,(iy+$26)	ld.lil e,(iy+$00)
06a7	5b fd 56 27 	ld.lil d,(iy+$27)	ld.lil d,(iy+$00)
06ab	fd e1 	pop iy	pop iy
06ad	c9 	ret	ret
06ae	c5 	push bc	push bc
06af	d5 	push de	push de
06b0	11 00 52 	ld de,$5200	ld de,$0000
06b3	cd 3d 05 	call $053d	call $0000
06b6	21 00 52 	ld hl,$5200	ld hl,$0000
06b9	cd f7 07 	call $07f7	call $0000
06bc	cd 08 08 	call $0808	call $0000
06bf	d1 	pop de	pop de
06c0	c1 	pop bc	pop bc
06c1	b7 	or a	or a
06c2	ca 89 07 	jp z,$0789	jp z,$0000
06c5	af 	xor a	xor a
06c6	cd 26 06 	call $0626	call $0000
06c9	5f 	ld e,a	ld e,a
06ca	b7 	or a	or a
06cb	3e 04 	ld a,$04	ld a,$00
06cd	ca 91 07 	jp z,$0791	jp z,$0000
06d0	cd 20 40 	call $4020	call $0000
06d3	21 00 52 	ld hl,$5200	ld hl,$0000
06d6	cd 3d 06 	call $063d	call $0000
06d9	38 1c 	jr c,$+$1e	jr c,$+$00
06db	fe 0a 	cp $0a	cp $00
06dd	28 18 	jr z,$+$1a	jr z,$+$00
06df	fe 21 	cp $21	cp $00
06e1	38 f3 	jr c,$-$0b	jr c,$-$00
06e3	77 	ld (hl),a	ld (hl),a
06e4	2c 	inc l	inc l
06e5	cd 3d 06 	call $063d	call $0000
06e8	38 26 	jr c,$+$28	jr c,$+$00
06ea	fe 20 	cp $20	cp $00
06ec	38 05 	jr c,$+$07	jr c,$+$00
06ee	77 	ld (hl),a	ld (hl),a
06ef	2c 	inc l	inc l
06f0	ca d1 3e 	jp z,$3ed1	jp z,$0000
06f3	fe 0a 	cp $0a	cp $00
06f5	20 ee 	jr nz,$-$10	jr nz,$-$00
06f7	36 0d 	ld (hl),$0d	ld (hl),$00
06f9	7d 	ld a,l	ld a,l
06fa	fe 02 	cp $02	cp $00
06fc	38 08 	jr c,$+$0a	jr c,$+$00
06fe	d5 	push de	push de
06ff	cd 1b 07 	call $071b	call $0000
0702	dc fc 3f 	call c,$3ffc	call c,$0000
0705	d1 	pop de	pop de
0706	cd 4e 06 	call $064e	call $0000
0709	20 c8 	jr nz,$-$36	jr nz,$-$00
070b	cd 35 06 	call $0635	call $0000
070e	37 	scf	scf
070f	c9 	ret	ret
0710	fe 20 	cp $20	cp $00
0712	38 05 	jr c,$+$07	jr c,$+$00
0714	77 	ld (hl),a	ld (hl),a
0715	2c 	inc l	inc l
0716	ca d1 3e 	jp z,$3ed1	jp z,$0000
0719	18 dc 	jr $-$22	jr $-$00
071b	af 	xor a	xor a
071c	32 fb 54 	ld ($54fb),a	ld ($0000),a
071f	fd 21 00 52 	ld iy,$5200	ld iy,$0000
0723	cd 6c 43 	call $436c	call $0000
0726	cd ed 44 	call $44ed	call $0000
0729	7c 	ld a,h	ld a,h
072a	b5 	or l	or l
072b	28 00 	jr z,$+$02	jr z,$+$00
072d	11 00 53 	ld de,$5300	ld de,$0000
0730	0e 01 	ld c,$01	ld c,$00
0732	e5 	push hl	push hl
0733	cd fa 43 	call $43fa	call $0000
0736	e1 	pop hl	pop hl
0737	12 	ld (de),a	ld (de),a
0738	af 	xor a	xor a
0739	47 	ld b,a	ld b,a
073a	4b 	ld c,e	ld c,e
073b	13 	inc de	inc de
073c	12 	ld (de),a	ld (de),a
073d	7c 	ld a,h	ld a,h
073e	b5 	or l	or l
073f	fd 21 00 53 	ld iy,$5300	ld iy,$0000
0743	ca 7b 24 	jp z,$247b	jp z,$0000
0746	c5 	push bc	push bc
0747	cd 25 41 	call $4125	call $0000
074a	cc cb 3f 	call z,$3fcb	call z,$0000
074d	c1 	pop bc	pop bc
074e	79 	ld a,c	ld a,c
074f	b7 	or a	or a
0750	c8 	ret z	ret z
0751	c6 04 	add a,$04	add a,$00
0753	4f 	ld c,a	ld c,a
0754	d5 	push de	push de
0755	c5 	push bc	push bc
0756	eb 	ex de,hl	ex de,hl
0757	c5 	push bc	push bc
0758	cd 07 40 	call $4007	call $0000
075b	c1 	pop bc	pop bc
075c	e5 	push hl	push hl
075d	09 	add hl,bc	add hl,bc
075e	e5 	push hl	push hl
075f	24 	inc h	inc h
0760	af 	xor a	xor a
0761	ed 72 	sbc hl,sp	sbc hl,sp
0763	e1 	pop hl	pop hl
0764	d2 26 3f 	jp nc,$3f26	jp nc,$0000
0767	e3 	ex (sp),hl	ex (sp),hl
0768	e5 	push hl	push hl
0769	23 	inc hl	inc hl
076a	b7 	or a	or a
076b	ed 52 	sbc hl,de	sbc hl,de
076d	44 	ld b,h	ld b,h
076e	4d 	ld c,l	ld c,l
076f	e1 	pop hl	pop hl
0770	d1 	pop de	pop de
0771	28 02 	jr z,$+$04	jr z,$+$00
0773	ed b8 	lddr	lddr
0775	c1 	pop bc	pop bc
0776	d1 	pop de	pop de
0777	23 	inc hl	inc hl
0778	71 	ld (hl),c	ld (hl),c
0779	23 	inc hl	inc hl
077a	73 	ld (hl),e	ld (hl),e
077b	23 	inc hl	inc hl
077c	72 	ld (hl),d	ld (hl),d
077d	23 	inc hl	inc hl
077e	11 00 53 	ld de,$5300	ld de,$0000
0781	eb 	ex de,hl	ex de,hl
0782	0d 	dec c	dec c
0783	0d 	dec c	dec c
0784	0d 	dec c	dec c
0785	ed b0 	ldir	ldir
0787	37 	scf	scf
0788	c9 	ret	ret
0789	3e 01 	ld a,$01	ld a,$00
078b	49 cf 	rst.lis $08	rst.lis $00
078d	d0 	ret nc	ret nc
078e	b7 	or a	or a
078f	37 	scf	scf
0790	c8 	ret z	ret z
0791	f5 	push af	push af
0792	21 00 52 	ld hl,$5200	ld hl,$0000
0795	01 00 01 	ld bc,$0100	ld bc,$0000
0798	5f 	ld e,a	ld e,a
0799	3e 0f 	ld a,$0f	ld a,$00
079b	49 cf 	rst.lis $08	rst.lis $00
079d	f1 	pop af	pop af
079e	e5 	push hl	push hl
079f	c6 7f 	add a,$7f	add a,$00
07a1	c3 37 3f 	jp $3f37	jp $0000
07a4	c5 	push bc	push bc
07a5	d5 	push de	push de
07a6	11 00 52 	ld de,$5200	ld de,$0000
07a9	cd 3d 05 	call $053d	call $0000
07ac	21 00 52 	ld hl,$5200	ld hl,$0000
07af	cd f7 07 	call $07f7	call $0000
07b2	cd 08 08 	call $0808	call $0000
07b5	d1 	pop de	pop de
07b6	c1 	pop bc	pop bc
07b7	b7 	or a	or a
07b8	28 35 	jr z,$+$37	jr z,$+$00
07ba	3a f4 50 	ld a,($50f4)	ld a,($0000)
07bd	f5 	push af	push af
07be	af 	xor a	xor a
07bf	3c 	inc a	inc a
07c0	32 f4 50 	ld ($50f4),a	ld ($0000),a
07c3	cd 26 06 	call $0626	call $0000
07c6	32 f5 50 	ld ($50f5),a	ld ($0000),a
07c9	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
07cd	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
07d0	d9 	exx	exx
07d1	01 00 00 	ld bc,$0000	ld bc,$0000
07d4	d9 	exx	exx
07d5	7e 	ld a,(hl)	ld a,(hl)
07d6	b7 	or a	or a
07d7	28 0a 	jr z,$+$0c	jr z,$+$00
07d9	23 	inc hl	inc hl
07da	5e 	ld e,(hl)	ld e,(hl)
07db	23 	inc hl	inc hl
07dc	56 	ld d,(hl)	ld d,(hl)
07dd	23 	inc hl	inc hl
07de	cd 3f 40 	call $403f	call $0000
07e1	18 f2 	jr $-$0c	jr $-$00
07e3	3a f5 50 	ld a,($50f5)	ld a,($0000)
07e6	5f 	ld e,a	ld e,a
07e7	cd 35 06 	call $0635	call $0000
07ea	f1 	pop af	pop af
07eb	32 f4 50 	ld ($50f4),a	ld ($0000),a
07ee	c9 	ret	ret
07ef	3e 02 	ld a,$02	ld a,$00
07f1	49 cf 	rst.lis $08	rst.lis $00
07f3	b7 	or a	or a
07f4	c8 	ret z	ret z
07f5	18 9a 	jr $-$64	jr $-$00
07f7	e5 	push hl	push hl
07f8	0e 2e 	ld c,$2e	ld c,$00
07fa	cd 5d 05 	call $055d	call $0000
07fd	b7 	or a	or a
07fe	20 06 	jr nz,$+$08	jr nz,$+$00
0800	11 34 08 	ld de,$0834	ld de,$0000
0803	cd 73 05 	call $0573	call $0000
0806	e1 	pop hl	pop hl
0807	c9 	ret	ret
0808	e5 	push hl	push hl
0809	0e 2e 	ld c,$2e	ld c,$00
080b	cd 5d 05 	call $055d	call $0000
080e	11 34 08 	ld de,$0834	ld de,$0000
0811	e5 	push hl	push hl
0812	cd 65 05 	call $0565	call $0000
0815	e1 	pop hl	pop hl
0816	28 18 	jr z,$+$1a	jr z,$+$00
0818	1a 	ld a,(de)	ld a,(de)
0819	13 	inc de	inc de
081a	b7 	or a	or a
081b	20 fb 	jr nz,$-$03	jr nz,$-$00
081d	13 	inc de	inc de
081e	1a 	ld a,(de)	ld a,(de)
081f	b7 	or a	or a
0820	20 ef 	jr nz,$-$0f	jr nz,$-$00
0822	3e cc 	ld a,$cc	ld a,$00
0824	cd 37 3f 	call $3f37	call $0000
0827	42 	ld b,d	ld b,d
0828	61 	ld h,c	ld h,c
0829	64 	ld h,h	ld h,h
082a	20 6e 	jr nz,$+$70	jr nz,$+$00
082c	61 	ld h,c	ld h,c
082d	6d 	ld l,l	ld l,l
082e	65 	ld h,l	ld h,l
082f	00 	nop	nop
0830	13 	inc de	inc de
0831	1a 	ld a,(de)	ld a,(de)
0832	e1 	pop hl	pop hl
0833	c9 	ret	ret
0834	2e 42 	ld l,$42	ld l,$00
0836	42 	ld b,d	ld b,d
0837	43 	ld b,e	ld b,e
0838	00 	nop	nop
0839	00 	nop	nop
083a	2e 54 	ld l,$54	ld l,$00
083c	58 	ld e,b	ld e,b
083d	54 	ld d,h	ld d,h
083e	00 	nop	nop
083f	01 2e 41 	ld bc,$412e	ld bc,$0000
0842	53 	ld d,e	ld d,e
0843	43 	ld b,e	ld b,e
0844	00 	nop	nop
0845	01 2e 42 	ld bc,$422e	ld bc,$0000
0848	41 	ld b,c	ld b,c
0849	53 	ld d,e	ld d,e
084a	00 	nop	nop
084b	01 00 fe 	ld bc,$fe00	ld bc,$0000
084e	07 	rlca	rlca
084f	ca 80 0a 	jp z,$0a80	jp z,$0000
0852	fe 08 	cp $08	cp $00
0854	28 14 	jr z,$+$16	jr z,$+$00
0856	fe 09 	cp $09	cp $00
0858	28 03 	jr z,$+$05	jr z,$+$00
085a	c3 8f 08 	jp $088f	jp $0000
085d	ed 5b f9 50 	ld de,($50f9)	ld de,($0000)
0861	2a fb 50 	ld hl,($50fb)	ld hl,($0000)
0864	cd fa 01 	call $01fa	call $0000
0867	32 fd 50 	ld ($50fd),a	ld ($0000),a
086a	c9 	ret	ret
086b	fe 0b 	cp $0b	cp $00
086d	28 31 	jr z,$+$33	jr z,$+$00
086f	fe 0c 	cp $0c	cp $00
0871	28 54 	jr z,$+$56	jr z,$+$00
0873	fe 13 	cp $13	cp $00
0875	28 77 	jr z,$+$79	jr z,$+$00
0877	fe 76 	cp $76	cp $00
0879	28 7b 	jr z,$+$7d	jr z,$+$00
087b	fe 81 	cp $81	cp $00
087d	ca 1e 09 	jp z,$091e	jp z,$0000
0880	fe 86 	cp $86	cp $00
0882	ca 38 09 	jp z,$0938	jp z,$0000
0885	fe 87 	cp $87	cp $00
0887	ca 67 09 	jp z,$0967	jp z,$0000
088a	fe a0 	cp $a0	cp $00
088c	ca 7d 09 	jp z,$097d	jp z,$0000
088f	3e fe 	ld a,$fe	ld a,$00
0891	cd 37 3f 	call $3f37	call $0000
0894	42 	ld b,d	ld b,d
0895	61 	ld h,c	ld h,c
0896	64 	ld h,h	ld h,h
0897	20 63 	jr nz,$+$65	jr nz,$+$00
0899	6f 	ld l,a	ld l,a
089a	6d 	ld l,l	ld l,l
089b	6d 	ld l,l	ld l,l
089c	61 	ld h,c	ld h,c
089d	6e 	ld l,(hl)	ld l,(hl)
089e	64 	ld h,h	ld h,h
089f	00 	nop	nop
08a0	3e 17 	ld a,$17	ld a,$00
08a2	cd 93 05 	call $0593	call $0000
08a5	3e 00 	ld a,$00	ld a,$00
08a7	cd 93 05 	call $0593	call $0000
08aa	3e 88 	ld a,$88	ld a,$00
08ac	cd 93 05 	call $0593	call $0000
08af	7d 	ld a,l	ld a,l
08b0	cd 93 05 	call $0593	call $0000
08b3	7c 	ld a,h	ld a,h
08b4	cd 93 05 	call $0593	call $0000
08b7	3e 00 	ld a,$00	ld a,$00
08b9	cd 93 05 	call $0593	call $0000
08bc	3e 00 	ld a,$00	ld a,$00
08be	cd 93 05 	call $0593	call $0000
08c1	3e ff 	ld a,$ff	ld a,$00
08c3	cd 93 05 	call $0593	call $0000
08c6	c9 	ret	ret
08c7	3e 17 	ld a,$17	ld a,$00
08c9	cd 93 05 	call $0593	call $0000
08cc	3e 00 	ld a,$00	ld a,$00
08ce	cd 93 05 	call $0593	call $0000
08d1	3e 88 	ld a,$88	ld a,$00
08d3	cd 93 05 	call $0593	call $0000
08d6	3e 00 	ld a,$00	ld a,$00
08d8	cd 93 05 	call $0593	call $0000
08db	3e 00 	ld a,$00	ld a,$00
08dd	cd 93 05 	call $0593	call $0000
08e0	7d 	ld a,l	ld a,l
08e1	cd 93 05 	call $0593	call $0000
08e4	7c 	ld a,h	ld a,h
08e5	cd 93 05 	call $0593	call $0000
08e8	3e ff 	ld a,$ff	ld a,$00
08ea	cd 93 05 	call $0593	call $0000
08ed	c9 	ret	ret
08ee	cd 6d 0a 	call $0a6d	call $0000
08f1	2e 00 	ld l,$00	ld l,$00
08f3	c3 30 1b 	jp $1b30	jp $0000
08f6	3e 17 	ld a,$17	ld a,$00
08f8	cd 93 05 	call $0593	call $0000
08fb	3e 00 	ld a,$00	ld a,$00
08fd	cd 93 05 	call $0593	call $0000
0900	3e 88 	ld a,$88	ld a,$00
0902	cd 93 05 	call $0593	call $0000
0905	3e 00 	ld a,$00	ld a,$00
0907	cd 93 05 	call $0593	call $0000
090a	3e 00 	ld a,$00	ld a,$00
090c	cd 93 05 	call $0593	call $0000
090f	3e 00 	ld a,$00	ld a,$00
0911	cd 93 05 	call $0593	call $0000
0914	3e 00 	ld a,$00	ld a,$00
0916	cd 93 05 	call $0593	call $0000
0919	7d 	ld a,l	ld a,l
091a	cd 93 05 	call $0593	call $0000
091d	c9 	ret	ret
091e	cd 0d 06 	call $060d	call $0000
0921	28 09 	jr z,$+$0b	jr z,$+$00
0923	7c 	ld a,h	ld a,h
0924	b5 	or l	or l
0925	c8 	ret z	ret z
0926	cd 6d 0a 	call $0a6d	call $0000
0929	2b 	dec hl	dec hl
092a	18 f2 	jr $-$0c	jr $-$00
092c	21 f6 50 	ld hl,$50f6	ld hl,$0000
092f	36 00 	ld (hl),$00	ld (hl),$00
0931	fe 1b 	cp $1b	cp $00
0933	37 	scf	scf
0934	c0 	ret nz	ret nz
0935	c3 f8 05 	jp $05f8	jp $0000
0938	dd e5 	push ix	push ix
093a	3e 08 	ld a,$08	ld a,$00
093c	49 cf 	rst.lis $08	rst.lis $00
093e	5b dd cb 04 86 	res.lil 0,(ix+$04)	res.lil 0,(ix+$00)
0943	3e 17 	ld a,$17	ld a,$00
0945	cd 93 05 	call $0593	call $0000
0948	3e 00 	ld a,$00	ld a,$00
094a	cd 93 05 	call $0593	call $0000
094d	3e 82 	ld a,$82	ld a,$00
094f	cd 93 05 	call $0593	call $0000
0952	5b dd cb 04 46 	bit.lil 0,(ix+$04)	bit.lil 0,(ix+$00)
0957	28 f9 	jr z,$-$05	jr z,$-$00
0959	16 00 	ld d,$00	ld d,$00
095b	62 	ld h,d	ld h,d
095c	5b dd 5e 07 	ld.lil e,(ix+$07)	ld.lil e,(ix+$00)
0960	5b dd 6e 08 	ld.lil l,(ix+$08)	ld.lil l,(ix+$00)
0964	dd e1 	pop ix	pop ix
0966	c9 	ret	ret
0967	dd e5 	push ix	push ix
0969	cd 8b 0d 	call $0d8b	call $0000
096c	cd bd 01 	call $01bd	call $0000
096f	6f 	ld l,a	ld l,a
0970	3e 08 	ld a,$08	ld a,$00
0972	49 cf 	rst.lis $08	rst.lis $00
0974	5b dd 66 27 	ld.lil h,(ix+$27)	ld.lil h,(ix+$00)
0978	dd e1 	pop ix	pop ix
097a	c3 32 1b 	jp $1b32	jp $0000
097d	dd e5 	push ix	push ix
097f	3e 08 	ld a,$08	ld a,$00
0981	49 cf 	rst.lis $08	rst.lis $00
0983	5b 01 00 00 00 	ld.lil bc,$000000	ld.lil bc,$000000
0988	4d 	ld c,l	ld c,l
0989	5b dd 09 	add.lil ix,bc	add.lil ix,bc
098c	5b dd 6e 00 	ld.lil l,(ix)	ld.lil l,(ix)
0990	dd e1 	pop ix	pop ix
0992	c3 30 1b 	jp $1b30	jp $0000
0995	cd ef 09 	call $09ef	call $0000
0998	fe 0d 	cp $0d	cp $00
099a	c8 	ret z	ret z
099b	fe 7c 	cp $7c	cp $00
099d	c8 	ret z	ret z
099e	eb 	ex de,hl	ex de,hl
099f	21 fe 09 	ld hl,$09fe	ld hl,$0000
09a2	1a 	ld a,(de)	ld a,(de)
09a3	cd f6 09 	call $09f6	call $0000
09a6	be 	cp (hl)	cp (hl)
09a7	28 0b 	jr z,$+$0d	jr z,$+$00
09a9	38 2e 	jr c,$+$30	jr c,$+$00
09ab	cb 7e 	bit 7,(hl)	bit 7,(hl)
09ad	23 	inc hl	inc hl
09ae	28 fb 	jr z,$-$03	jr z,$-$00
09b0	23 	inc hl	inc hl
09b1	23 	inc hl	inc hl
09b2	18 ee 	jr $-$10	jr $-$00
09b4	d5 	push de	push de
09b5	13 	inc de	inc de
09b6	23 	inc hl	inc hl
09b7	1a 	ld a,(de)	ld a,(de)
09b8	cd f6 09 	call $09f6	call $0000
09bb	fe 2e 	cp $2e	cp $00
09bd	28 0a 	jr z,$+$0c	jr z,$+$00
09bf	ae 	xor (hl)	xor (hl)
09c0	28 f3 	jr z,$-$0b	jr z,$-$00
09c2	fe 80 	cp $80	cp $00
09c4	28 03 	jr z,$+$05	jr z,$+$00
09c6	d1 	pop de	pop de
09c7	18 e2 	jr $-$1c	jr $-$00
09c9	f1 	pop af	pop af
09ca	13 	inc de	inc de
09cb	cb 7e 	bit 7,(hl)	bit 7,(hl)
09cd	23 	inc hl	inc hl
09ce	28 fb 	jr z,$-$03	jr z,$-$00
09d0	7e 	ld a,(hl)	ld a,(hl)
09d1	23 	inc hl	inc hl
09d2	66 	ld h,(hl)	ld h,(hl)
09d3	6f 	ld l,a	ld l,a
09d4	e5 	push hl	push hl
09d5	eb 	ex de,hl	ex de,hl
09d6	c3 ef 09 	jp $09ef	jp $0000
09d9	eb 	ex de,hl	ex de,hl
09da	11 00 52 	ld de,$5200	ld de,$0000
09dd	d5 	push de	push de
09de	cd 4f 05 	call $054f	call $0000
09e1	e1 	pop hl	pop hl
09e2	fd e5 	push iy	push iy
09e4	3e 10 	ld a,$10	ld a,$00
09e6	49 cf 	rst.lis $08	rst.lis $00
09e8	fd e1 	pop iy	pop iy
09ea	b7 	or a	or a
09eb	c8 	ret z	ret z
09ec	c3 91 07 	jp $0791	jp $0000
09ef	7e 	ld a,(hl)	ld a,(hl)
09f0	fe 20 	cp $20	cp $00
09f2	c0 	ret nz	ret nz
09f3	23 	inc hl	inc hl
09f4	18 f9 	jr $-$05	jr $-$00
09f6	e6 7f 	and $7f	and $00
09f8	fe 60 	cp $60	cp $00
09fa	d8 	ret c	ret c
09fb	e6 5f 	and $5f	and $00
09fd	c9 	ret	ret
09fe	42 	ld b,d	ld b,d
09ff	59 	ld e,c	ld e,c
0a00	45 	ld b,l	ld b,l
0a01	0e 0a 	ld c,$0a	ld c,$00
0a03	45 	ld b,l	ld b,l
0a04	44 	ld b,h	ld b,h
0a05	49 54 	ld.lis d,h	ld.lis d,h
0a07	19 	add hl,de	add hl,de
0a08	0a 	ld a,(bc)	ld a,(bc)
0a09	46 	ld b,(hl)	ld b,(hl)
0a0a	58 	ld e,b	ld e,b
0a0b	55 	ld d,l	ld d,l
0a0c	0a 	ld a,(bc)	ld a,(bc)
0a0d	ff 	rst $38	rst $00
0a0e	cd 48 04 	call $0448	call $0000
0a11	5b dd e1 	pop.lil ix	pop.lil ix
0a14	21 00 00 	ld hl,$0000	ld hl,$0000
0a17	dd e9 	jp (ix)	jp (ix)
0a19	cd be 04 	call $04be	call $0000
0a1c	eb 	ex de,hl	ex de,hl
0a1d	cd 25 41 	call $4125	call $0000
0a20	3e 29 	ld a,$29	ld a,$00
0a22	c2 26 3f 	jp nz,$3f26	jp nz,$0000
0a25	23 	inc hl	inc hl
0a26	5e 	ld e,(hl)	ld e,(hl)
0a27	23 	inc hl	inc hl
0a28	56 	ld d,(hl)	ld d,(hl)
0a29	23 	inc hl	inc hl
0a2a	dd 21 00 52 	ld ix,$5200	ld ix,$0000
0a2e	dd 22 f2 50 	ld ($50f2),ix	ld ($0000),ix
0a32	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
0a36	dd 7e 00 	ld a,(ix)	ld a,(ix)
0a39	f5 	push af	push af
0a3a	dd 36 00 09 	ld (ix),$09	ld (ix),$00
0a3e	cd 3f 40 	call $403f	call $0000
0a41	f1 	pop af	pop af
0a42	dd 77 00 	ld (ix),a	ld (ix),a
0a45	21 00 52 	ld hl,$5200	ld hl,$0000
0a48	5d 	ld e,l	ld e,l
0a49	cd cb 05 	call $05cb	call $0000
0a4c	cd 1b 07 	call $071b	call $0000
0a4f	dc fc 3f 	call c,$3ffc	call c,$0000
0a52	c3 92 37 	jp $3792	jp $0000
0a55	cd be 04 	call $04be	call $0000
0a58	4b 	ld c,e	ld c,e
0a59	cd be 04 	call $04be	call $0000
0a5c	7a 	ld a,d	ld a,d
0a5d	b7 	or a	or a
0a5e	28 03 	jr z,$+$05	jr z,$+$00
0a60	eb 	ex de,hl	ex de,hl
0a61	18 06 	jr $+$08	jr $+$00
0a63	43 	ld b,e	ld b,e
0a64	cd be 04 	call $04be	call $0000
0a67	68 	ld l,b	ld l,b
0a68	63 	ld h,e	ld h,e
0a69	79 	ld a,c	ld a,c
0a6a	c3 6b 08 	jp $086b	jp $0000
0a6d	dd e5 	push ix	push ix
0a6f	3e 08 	ld a,$08	ld a,$00
0a71	49 cf 	rst.lis $08	rst.lis $00
0a73	5b dd 7e 00 	ld.lil a,(ix)	ld.lil a,(ix)
0a77	5b dd be 00 	cp.lil (ix)	cp.lil (ix)
0a7b	28 fa 	jr z,$-$04	jr z,$-$00
0a7d	dd e1 	pop ix	pop ix
0a7f	c9 	ret	ret
0a80	7e 	ld a,(hl)	ld a,(hl)
0a81	32 00 52 	ld ($5200),a	ld ($0000),a
0a84	af 	xor a	xor a
0a85	32 01 52 	ld ($5201),a	ld ($0000),a
0a88	23 	inc hl	inc hl
0a89	23 	inc hl	inc hl
0a8a	4e 	ld c,(hl)	ld c,(hl)
0a8b	06 06 	ld b,$06	ld b,$00
0a8d	ed 4c 	mlt bc	mlt bc
0a8f	79 	ld a,c	ld a,c
0a90	32 02 52 	ld ($5202),a	ld ($0000),a
0a93	23 	inc hl	inc hl
0a94	23 	inc hl	inc hl
0a95	e5 	push hl	push hl
0a96	6e 	ld l,(hl)	ld l,(hl)
0a97	26 00 	ld h,$00	ld h,$00
0a99	11 0b 0b 	ld de,$0b0b	ld de,$0000
0a9c	29 	add hl,hl	add hl,hl
0a9d	19 	add hl,de	add hl,de
0a9e	7e 	ld a,(hl)	ld a,(hl)
0a9f	32 03 52 	ld ($5203),a	ld ($0000),a
0aa2	23 	inc hl	inc hl
0aa3	7e 	ld a,(hl)	ld a,(hl)
0aa4	32 04 52 	ld ($5204),a	ld ($0000),a
0aa7	e1 	pop hl	pop hl
0aa8	23 	inc hl	inc hl
0aa9	23 	inc hl	inc hl
0aaa	4e 	ld c,(hl)	ld c,(hl)
0aab	06 32 	ld b,$32	ld b,$00
0aad	ed 4c 	mlt bc	mlt bc
0aaf	ed 43 05 52 	ld ($5205),bc	ld ($0000),bc
0ab3	dd e5 	push ix	push ix
0ab5	3e 08 	ld a,$08	ld a,$00
0ab7	49 cf 	rst.lis $08	rst.lis $00
0ab9	5b dd cb 04 9e 	res.lil 3,(ix+$04)	res.lil 3,(ix+$00)
0abe	3e 17 	ld a,$17	ld a,$00
0ac0	cd 93 05 	call $0593	call $0000
0ac3	3e 00 	ld a,$00	ld a,$00
0ac5	cd 93 05 	call $0593	call $0000
0ac8	3e 85 	ld a,$85	ld a,$00
0aca	cd 93 05 	call $0593	call $0000
0acd	3a 00 52 	ld a,($5200)	ld a,($0000)
0ad0	cd 93 05 	call $0593	call $0000
0ad3	3a 01 52 	ld a,($5201)	ld a,($0000)
0ad6	cd 93 05 	call $0593	call $0000
0ad9	3a 02 52 	ld a,($5202)	ld a,($0000)
0adc	cd 93 05 	call $0593	call $0000
0adf	3a 03 52 	ld a,($5203)	ld a,($0000)
0ae2	cd 93 05 	call $0593	call $0000
0ae5	3a 04 52 	ld a,($5204)	ld a,($0000)
0ae8	cd 93 05 	call $0593	call $0000
0aeb	3a 05 52 	ld a,($5205)	ld a,($0000)
0aee	cd 93 05 	call $0593	call $0000
0af1	3a 06 52 	ld a,($5206)	ld a,($0000)
0af4	cd 93 05 	call $0593	call $0000
0af7	5b dd cb 04 5e 	bit.lil 3,(ix+$04)	bit.lil 3,(ix+$00)
0afc	28 f9 	jr z,$-$05	jr z,$-$00
0afe	cd 18 06 	call $0618	call $0000
0b01	5b dd 7e 0e 	ld.lil a,(ix+$0e)	ld.lil a,(ix+$00)
0b05	a7 	and a	and a
0b06	28 b1 	jr z,$-$4d	jr z,$-$00
0b08	dd e1 	pop ix	pop ix
0b0a	c9 	ret	ret
0b0b	75 	ld (hl),l	ld (hl),l
0b0c	00 	nop	nop
0b0d	76 	halt	halt
0b0e	00 	nop	nop
0b0f	78 	ld a,b	ld a,b
0b10	00 	nop	nop
0b11	7a 	ld a,d	ld a,d
0b12	00 	nop	nop
0b13	7b 	ld a,e	ld a,e
0b14	00 	nop	nop
0b15	83 	add a,e	add a,e
0b16	00 	nop	nop
0b17	85 	add a,l	add a,l
0b18	00 	nop	nop
0b19	87 	add a,a	add a,a
0b1a	00 	nop	nop
0b1b	89 	adc a,c	adc a,c
0b1c	00 	nop	nop
0b1d	8b 	adc a,e	adc a,e
0b1e	00 	nop	nop
0b1f	8d 	adc a,l	adc a,l
0b20	00 	nop	nop
0b21	8f 	adc a,a	adc a,a
0b22	00 	nop	nop
0b23	91 	sub c	sub c
0b24	00 	nop	nop
0b25	93 	sub e	sub e
0b26	00 	nop	nop
0b27	95 	sub l	sub l
0b28	00 	nop	nop
0b29	97 	sub a	sub a
0b2a	00 	nop	nop
0b2b	99 	sbc a,c	sbc a,c
0b2c	00 	nop	nop
0b2d	9c 	sbc a,h	sbc a,h
0b2e	00 	nop	nop
0b2f	9e 	sbc a,(hl)	sbc a,(hl)
0b30	00 	nop	nop
0b31	a0 	and b	and b
0b32	00 	nop	nop
0b33	a2 	and d	and d
0b34	00 	nop	nop
0b35	a5 	and l	and l
0b36	00 	nop	nop
0b37	a7 	and a	and a
0b38	00 	nop	nop
0b39	aa 	xor d	xor d
0b3a	00 	nop	nop
0b3b	ac 	xor h	xor h
0b3c	00 	nop	nop
0b3d	af 	xor a	xor a
0b3e	00 	nop	nop
0b3f	b1 	or c	or c
0b40	00 	nop	nop
0b41	b4 	or h	or h
0b42	00 	nop	nop
0b43	b6 	or (hl)	or (hl)
0b44	00 	nop	nop
0b45	b9 	cp c	cp c
0b46	00 	nop	nop
0b47	bc 	cp h	cp h
0b48	00 	nop	nop
0b49	be 	cp (hl)	cp (hl)
0b4a	00 	nop	nop
0b4b	c1 	pop bc	pop bc
0b4c	00 	nop	nop
0b4d	c4 00 c7 	call nz,$c700	call nz,$0000
0b50	00 	nop	nop
0b51	ca 00 cd 	jp z,$cd00	jp z,$0000
0b54	00 	nop	nop
0b55	d0 	ret nc	ret nc
0b56	00 	nop	nop
0b57	d3 00 	out ($00),a	out ($00),a
0b59	d6 00 	sub $00	sub $00
0b5b	d9 	exx	exx
0b5c	00 	nop	nop
0b5d	dc 00 df 	call c,$df00	call c,$0000
0b60	00 	nop	nop
0b61	e2 00 e6 	jp po,$e600	jp po,$0000
0b64	00 	nop	nop
0b65	e9 	jp (hl)	jp (hl)
0b66	00 	nop	nop
0b67	ec 00 f0 	call pe,$f000	call pe,$0000
0b6a	00 	nop	nop
0b6b	f3 	di	di
0b6c	00 	nop	nop
0b6d	f7 	rst $30	rst $00
0b6e	00 	nop	nop
0b6f	fb 	ei	ei
0b70	00 	nop	nop
0b71	fe 00 	cp $00	cp $00
0b73	02 	ld (bc),a	ld (bc),a
0b74	01 06 01 	ld bc,$0106	ld bc,$0000
0b77	09 	add hl,bc	add hl,bc
0b78	01 0d 01 	ld bc,$010d	ld bc,$0000
0b7b	11 01 15 	ld de,$1501	ld de,$0000
0b7e	01 19 01 	ld bc,$0119	ld bc,$0000
0b81	1d 	dec e	dec e
0b82	01 21 01 	ld bc,$0121	ld bc,$0000
0b85	26 01 	ld h,$01	ld h,$00
0b87	2a 01 2e 	ld hl,($2e01)	ld hl,($0000)
0b8a	01 33 01 	ld bc,$0133	ld bc,$0000
0b8d	37 	scf	scf
0b8e	01 3c 01 	ld bc,$013c	ld bc,$0000
0b91	40 01 45 01 	ld.sis bc,$0145	ld.sis bc,$0000
0b95	4a 	ld c,d	ld c,d
0b96	01 4e 01 	ld bc,$014e	ld bc,$0000
0b99	53 	ld d,e	ld d,e
0b9a	01 58 01 	ld bc,$0158	ld bc,$0000
0b9d	5d 	ld e,l	ld e,l
0b9e	01 62 01 	ld bc,$0162	ld bc,$0000
0ba1	67 	ld h,a	ld h,a
0ba2	01 6d 01 	ld bc,$016d	ld bc,$0000
0ba5	72 	ld (hl),d	ld (hl),d
0ba6	01 77 01 	ld bc,$0177	ld bc,$0000
0ba9	7d 	ld a,l	ld a,l
0baa	01 82 01 	ld bc,$0182	ld bc,$0000
0bad	88 	adc a,b	adc a,b
0bae	01 8e 01 	ld bc,$018e	ld bc,$0000
0bb1	93 	sub e	sub e
0bb2	01 99 01 	ld bc,$0199	ld bc,$0000
0bb5	9f 	sbc a,a	sbc a,a
0bb6	01 a5 01 	ld bc,$01a5	ld bc,$0000
0bb9	ab 	xor e	xor e
0bba	01 b2 01 	ld bc,$01b2	ld bc,$0000
0bbd	b8 	cp b	cp b
0bbe	01 be 01 	ld bc,$01be	ld bc,$0000
0bc1	c5 	push bc	push bc
0bc2	01 cb 01 	ld bc,$01cb	ld bc,$0000
0bc5	d2 01 d9 	jp nc,$d901	jp nc,$0000
0bc8	01 e0 01 	ld bc,$01e0	ld bc,$0000
0bcb	e7 	rst $20	rst $00
0bcc	01 ee 01 	ld bc,$01ee	ld bc,$0000
0bcf	f5 	push af	push af
0bd0	01 fc 01 	ld bc,$01fc	ld bc,$0000
0bd3	04 	inc b	inc b
0bd4	02 	ld (bc),a	ld (bc),a
0bd5	0b 	dec bc	dec bc
0bd6	02 	ld (bc),a	ld (bc),a
0bd7	13 	inc de	inc de
0bd8	02 	ld (bc),a	ld (bc),a
0bd9	1b 	dec de	dec de
0bda	02 	ld (bc),a	ld (bc),a
0bdb	22 02 2a 	ld ($2a02),hl	ld ($0000),hl
0bde	02 	ld (bc),a	ld (bc),a
0bdf	32 02 3b 	ld ($3b02),a	ld ($0000),a
0be2	02 	ld (bc),a	ld (bc),a
0be3	43 	ld b,e	ld b,e
0be4	02 	ld (bc),a	ld (bc),a
0be5	4b 	ld c,e	ld c,e
0be6	02 	ld (bc),a	ld (bc),a
0be7	54 	ld d,h	ld d,h
0be8	02 	ld (bc),a	ld (bc),a
0be9	5d 	ld e,l	ld e,l
0bea	02 	ld (bc),a	ld (bc),a
0beb	65 	ld h,l	ld h,l
0bec	02 	ld (bc),a	ld (bc),a
0bed	6e 	ld l,(hl)	ld l,(hl)
0bee	02 	ld (bc),a	ld (bc),a
0bef	77 	ld (hl),a	ld (hl),a
0bf0	02 	ld (bc),a	ld (bc),a
0bf1	81 	add a,c	add a,c
0bf2	02 	ld (bc),a	ld (bc),a
0bf3	8a 	adc a,d	adc a,d
0bf4	02 	ld (bc),a	ld (bc),a
0bf5	93 	sub e	sub e
0bf6	02 	ld (bc),a	ld (bc),a
0bf7	9d 	sbc a,l	sbc a,l
0bf8	02 	ld (bc),a	ld (bc),a
0bf9	a7 	and a	and a
0bfa	02 	ld (bc),a	ld (bc),a
0bfb	b1 	or c	or c
0bfc	02 	ld (bc),a	ld (bc),a
0bfd	bb 	cp e	cp e
0bfe	02 	ld (bc),a	ld (bc),a
0bff	c5 	push bc	push bc
0c00	02 	ld (bc),a	ld (bc),a
0c01	cf 	rst $08	rst $00
0c02	02 	ld (bc),a	ld (bc),a
0c03	d9 	exx	exx
0c04	02 	ld (bc),a	ld (bc),a
0c05	e4 02 ef 	call po,$ef02	call po,$0000
0c08	02 	ld (bc),a	ld (bc),a
0c09	fa 02 05 	jp m,$0502	jp m,$0000
0c0c	03 	inc bc	inc bc
0c0d	10 03 	djnz $+$05	djnz $+$00
0c0f	1b 	dec de	dec de
0c10	03 	inc bc	inc bc
0c11	27 	daa	daa
0c12	03 	inc bc	inc bc
0c13	33 	inc sp	inc sp
0c14	03 	inc bc	inc bc
0c15	3f 	ccf	ccf
0c16	03 	inc bc	inc bc
0c17	4b 	ld c,e	ld c,e
0c18	03 	inc bc	inc bc
0c19	57 	ld d,a	ld d,a
0c1a	03 	inc bc	inc bc
0c1b	63 	ld h,e	ld h,e
0c1c	03 	inc bc	inc bc
0c1d	70 	ld (hl),b	ld (hl),b
0c1e	03 	inc bc	inc bc
0c1f	7d 	ld a,l	ld a,l
0c20	03 	inc bc	inc bc
0c21	8a 	adc a,d	adc a,d
0c22	03 	inc bc	inc bc
0c23	97 	sub a	sub a
0c24	03 	inc bc	inc bc
0c25	a4 	and h	and h
0c26	03 	inc bc	inc bc
0c27	b2 	or d	or d
0c28	03 	inc bc	inc bc
0c29	c0 	ret nz	ret nz
0c2a	03 	inc bc	inc bc
0c2b	ce 03 	adc a,$03	adc a,$00
0c2d	dc 03 ea 	call c,$ea03	call c,$0000
0c30	03 	inc bc	inc bc
0c31	f9 	ld sp,hl	ld sp,hl
0c32	03 	inc bc	inc bc
0c33	08 	ex af,af'	ex af,af'
0c34	04 	inc b	inc b
0c35	17 	rla	rla
0c36	04 	inc b	inc b
0c37	26 04 	ld h,$04	ld h,$00
0c39	36 04 	ld (hl),$04	ld (hl),$00
0c3b	45 	ld b,l	ld b,l
0c3c	04 	inc b	inc b
0c3d	55 	ld d,l	ld d,l
0c3e	04 	inc b	inc b
0c3f	65 	ld h,l	ld h,l
0c40	04 	inc b	inc b
0c41	76 	halt	halt
0c42	04 	inc b	inc b
0c43	86 	add a,(hl)	add a,(hl)
0c44	04 	inc b	inc b
0c45	97 	sub a	sub a
0c46	04 	inc b	inc b
0c47	a8 	xor b	xor b
0c48	04 	inc b	inc b
0c49	ba 	cp d	cp d
0c4a	04 	inc b	inc b
0c4b	cb 04 	rlc h	rlc h
0c4d	dd 04 	trap	trap
0c4f	ef 	rst $28	rst $00
0c50	04 	inc b	inc b
0c51	02 	ld (bc),a	ld (bc),a
0c52	05 	dec b	dec b
0c53	14 	inc d	inc d
0c54	05 	dec b	dec b
0c55	27 	daa	daa
0c56	05 	dec b	dec b
0c57	3a 05 4e 	ld a,($4e05)	ld a,($0000)
0c5a	05 	dec b	dec b
0c5b	62 	ld h,d	ld h,d
0c5c	05 	dec b	dec b
0c5d	76 	halt	halt
0c5e	05 	dec b	dec b
0c5f	8a 	adc a,d	adc a,d
0c60	05 	dec b	dec b
0c61	9f 	sbc a,a	sbc a,a
0c62	05 	dec b	dec b
0c63	b3 	or e	or e
0c64	05 	dec b	dec b
0c65	c9 	ret	ret
0c66	05 	dec b	dec b
0c67	de 05 	sbc a,$05	sbc a,$00
0c69	f4 05 0a 	call p,$0a05	call p,$0000
0c6c	06 21 	ld b,$21	ld b,$00
0c6e	06 38 	ld b,$38	ld b,$00
0c70	06 4f 	ld b,$4f	ld b,$00
0c72	06 66 	ld b,$66	ld b,$00
0c74	06 7e 	ld b,$7e	ld b,$00
0c76	06 96 	ld b,$96	ld b,$00
0c78	06 af 	ld b,$af	ld b,$00
0c7a	06 c8 	ld b,$c8	ld b,$00
0c7c	06 e1 	ld b,$e1	ld b,$00
0c7e	06 fa 	ld b,$fa	ld b,$00
0c80	06 14 	ld b,$14	ld b,$00
0c82	07 	rlca	rlca
0c83	2f 	cpl	cpl
0c84	07 	rlca	rlca
0c85	4a 	ld c,d	ld c,d
0c86	07 	rlca	rlca
0c87	65 	ld h,l	ld h,l
0c88	07 	rlca	rlca
0c89	80 	add a,b	add a,b
0c8a	07 	rlca	rlca
0c8b	9c 	sbc a,h	sbc a,h
0c8c	07 	rlca	rlca
0c8d	b8 	cp b	cp b
0c8e	07 	rlca	rlca
0c8f	d5 	push de	push de
0c90	07 	rlca	rlca
0c91	f2 07 10 	jp p,$1007	jp p,$0000
0c94	08 	ex af,af'	ex af,af'
0c95	2d 	dec l	dec l
0c96	08 	ex af,af'	ex af,af'
0c97	4b 	ld c,e	ld c,e
0c98	08 	ex af,af'	ex af,af'
0c99	6a 	ld l,d	ld l,d
0c9a	08 	ex af,af'	ex af,af'
0c9b	8a 	adc a,d	adc a,d
0c9c	08 	ex af,af'	ex af,af'
0c9d	a9 	xor c	xor c
0c9e	08 	ex af,af'	ex af,af'
0c9f	ca 08 ea 	jp z,$ea08	jp z,$0000
0ca2	08 	ex af,af'	ex af,af'
0ca3	0c 	inc c	inc c
0ca4	09 	add hl,bc	add hl,bc
0ca5	2d 	dec l	dec l
0ca6	09 	add hl,bc	add hl,bc
0ca7	4f 	ld c,a	ld c,a
0ca8	09 	add hl,bc	add hl,bc
0ca9	72 	ld (hl),d	ld (hl),d
0caa	09 	add hl,bc	add hl,bc
0cab	95 	sub l	sub l
0cac	09 	add hl,bc	add hl,bc
0cad	b9 	cp c	cp c
0cae	09 	add hl,bc	add hl,bc
0caf	dd 09 	add ix,bc	add ix,bc
0cb1	02 	ld (bc),a	ld (bc),a
0cb2	0a 	ld a,(bc)	ld a,(bc)
0cb3	27 	daa	daa
0cb4	0a 	ld a,(bc)	ld a,(bc)
0cb5	4d 	ld c,l	ld c,l
0cb6	0a 	ld a,(bc)	ld a,(bc)
0cb7	73 	ld (hl),e	ld (hl),e
0cb8	0a 	ld a,(bc)	ld a,(bc)
0cb9	9a 	sbc a,d	sbc a,d
0cba	0a 	ld a,(bc)	ld a,(bc)
0cbb	c2 0a ea 	jp nz,$ea0a	jp nz,$0000
0cbe	0a 	ld a,(bc)	ld a,(bc)
0cbf	12 	ld (de),a	ld (de),a
0cc0	0b 	dec bc	dec bc
0cc1	3c 	inc a	inc a
0cc2	0b 	dec bc	dec bc
0cc3	66 	ld h,(hl)	ld h,(hl)
0cc4	0b 	dec bc	dec bc
0cc5	90 	sub b	sub b
0cc6	0b 	dec bc	dec bc
0cc7	bb 	cp e	cp e
0cc8	0b 	dec bc	dec bc
0cc9	e7 	rst $20	rst $00
0cca	0b 	dec bc	dec bc
0ccb	13 	inc de	inc de
0ccc	0c 	inc c	inc c
0ccd	40 0c 	inc.sis c	inc.sis c
0ccf	6e 	ld l,(hl)	ld l,(hl)
0cd0	0c 	inc c	inc c
0cd1	9c 	sbc a,h	sbc a,h
0cd2	0c 	inc c	inc c
0cd3	cb 0c 	rrc h	rrc h
0cd5	fa 0c 2b 	jp m,$2b0c	jp m,$0000
0cd8	0d 	dec c	dec c
0cd9	5c 	ld e,h	ld e,h
0cda	0d 	dec c	dec c
0cdb	8e 	adc a,(hl)	adc a,(hl)
0cdc	0d 	dec c	dec c
0cdd	c0 	ret nz	ret nz
0cde	0d 	dec c	dec c
0cdf	f3 	di	di
0ce0	0d 	dec c	dec c
0ce1	27 	daa	daa
0ce2	0e 5c 	ld c,$5c	ld c,$00
0ce4	0e 91 	ld c,$91	ld c,$00
0ce6	0e c8 	ld c,$c8	ld c,$00
0ce8	0e ff 	ld c,$ff	ld c,$00
0cea	0e 36 	ld c,$36	ld c,$00
0cec	0f 	rrca	rrca
0ced	6f 	ld l,a	ld l,a
0cee	0f 	rrca	rrca
0cef	a9 	xor c	xor c
0cf0	0f 	rrca	rrca
0cf1	e3 	ex (sp),hl	ex (sp),hl
0cf2	0f 	rrca	rrca
0cf3	1e 10 	ld e,$10	ld e,$00
0cf5	5a 	ld e,d	ld e,d
0cf6	10 97 	djnz $-$67	djnz $-$00
0cf8	10 d5 	djnz $-$29	djnz $-$00
0cfa	10 13 	djnz $+$15	djnz $+$00
0cfc	11 53 11 	ld de,$1153	ld de,$0000
0cff	93 	sub e	sub e
0d00	11 d5 11 	ld de,$11d5	ld de,$0000
0d03	17 	rla	rla
0d04	12 	ld (de),a	ld (de),a
0d05	5b 12 	ld.lil (de),a	ld.lil (de),a
0d07	9f 	sbc a,a	sbc a,a
0d08	12 	ld (de),a	ld (de),a
0d09	e4 12 3e 	call po,$3e12	call po,$0000
0d0c	01 21 f9 	ld bc,$f921	ld bc,$0000
0d0f	50 	ld d,b	ld d,b
0d10	cd 4d 08 	call $084d	call $0000
0d13	21 f9 50 	ld hl,$50f9	ld hl,$0000
0d16	5e 	ld e,(hl)	ld e,(hl)
0d17	23 	inc hl	inc hl
0d18	56 	ld d,(hl)	ld d,(hl)
0d19	23 	inc hl	inc hl
0d1a	7e 	ld a,(hl)	ld a,(hl)
0d1b	23 	inc hl	inc hl
0d1c	66 	ld h,(hl)	ld h,(hl)
0d1d	6f 	ld l,a	ld l,a
0d1e	eb 	ex de,hl	ex de,hl
0d1f	c9 	ret	ret
0d20	3e 0e 	ld a,$0e	ld a,$00
0d22	21 f9 50 	ld hl,$50f9	ld hl,$0000
0d25	36 00 	ld (hl),$00	ld (hl),$00
0d27	cd 4d 08 	call $084d	call $0000
0d2a	21 f9 50 	ld hl,$50f9	ld hl,$0000
0d2d	11 00 52 	ld de,$5200	ld de,$0000
0d30	7e 	ld a,(hl)	ld a,(hl)
0d31	bb 	cp e	cp e
0d32	c8 	ret z	ret z
0d33	01 19 00 	ld bc,$0019	ld bc,$0000
0d36	ed b0 	ldir	ldir
0d38	c9 	ret	ret
0d39	dd e5 	push ix	push ix
0d3b	dd 21 f9 50 	ld ix,$50f9	ld ix,$0000
0d3f	dd 75 00 	ld (ix),l	ld (ix),l
0d42	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
0d45	dd 73 02 	ld (ix+$02),e	ld (ix+$00),e
0d48	dd 72 03 	ld (ix+$03),d	ld (ix+$00),d
0d4b	3e 02 	ld a,$02	ld a,$00
0d4d	21 f9 50 	ld hl,$50f9	ld hl,$0000
0d50	cd 4d 08 	call $084d	call $0000
0d53	dd e1 	pop ix	pop ix
0d55	c9 	ret	ret
0d56	7b 	ld a,e	ld a,e
0d57	fe 1a 	cp $1a	cp $00
0d59	d0 	ret nc	ret nc
0d5a	06 00 	ld b,$00	ld b,$00
0d5c	4f 	ld c,a	ld c,a
0d5d	11 fa 50 	ld de,$50fa	ld de,$0000
0d60	21 00 52 	ld hl,$5200	ld hl,$0000
0d63	ed b0 	ldir	ldir
0d65	21 f9 50 	ld hl,$50f9	ld hl,$0000
0d68	77 	ld (hl),a	ld (hl),a
0d69	3e 0f 	ld a,$0f	ld a,$00
0d6b	c3 4d 08 	jp $084d	jp $0000
0d6e	3e 0c 	ld a,$0c	ld a,$00
0d70	c3 93 05 	jp $0593	jp $0000
0d73	3e 81 	ld a,$81	ld a,$00
0d75	cd 6b 08 	call $086b	call $0000
0d78	7c 	ld a,h	ld a,h
0d79	b7 	or a	or a
0d7a	c0 	ret nz	ret nz
0d7b	7d 	ld a,l	ld a,l
0d7c	37 	scf	scf
0d7d	c9 	ret	ret
0d7e	3e 1f 	ld a,$1f	ld a,$00
0d80	cd 93 05 	call $0593	call $0000
0d83	7b 	ld a,e	ld a,e
0d84	cd 93 05 	call $0593	call $0000
0d87	7d 	ld a,l	ld a,l
0d88	c3 93 05 	jp $0593	jp $0000
0d8b	3e 86 	ld a,$86	ld a,$00
0d8d	cd 6b 08 	call $086b	call $0000
0d90	5d 	ld e,l	ld e,l
0d91	6c 	ld l,h	ld l,h
0d92	16 00 	ld d,$00	ld d,$00
0d94	62 	ld h,d	ld h,d
0d95	c9 	ret	ret
0d96	cd 15 18 	call $1815	call $0000
0d99	d9 	exx	exx
0d9a	e5 	push hl	push hl
0d9b	cd d3 10 	call $10d3	call $0000
0d9e	d9 	exx	exx
0d9f	d1 	pop de	pop de
0da0	cd 90 20 	call $2090	call $0000
0da3	dd 21 f9 50 	ld ix,$50f9	ld ix,$0000
0da7	dd 73 00 	ld (ix),e	ld (ix),e
0daa	dd 72 01 	ld (ix+$01),d	ld (ix+$00),d
0dad	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
0db0	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
0db3	21 f9 50 	ld hl,$50f9	ld hl,$0000
0db6	3e 09 	ld a,$09	ld a,$00
0db8	cd 4d 08 	call $084d	call $0000
0dbb	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
0dbe	6f 	ld l,a	ld l,a
0dbf	c6 01 	add a,$01	add a,$00
0dc1	9f 	sbc a,a	sbc a,a
0dc2	67 	ld h,a	ld h,a
0dc3	d9 	exx	exx
0dc4	67 	ld h,a	ld h,a
0dc5	6f 	ld l,a	ld l,a
0dc6	af 	xor a	xor a
0dc7	4f 	ld c,a	ld c,a
0dc8	c9 	ret	ret
0dc9	cd 42 18 	call $1842	call $0000
0dcc	d9 	exx	exx
0dcd	3e 80 	ld a,$80	ld a,$00
0dcf	cd 6b 08 	call $086b	call $0000
0dd2	af 	xor a	xor a
0dd3	18 ee 	jr $-$10	jr $-$00
0dd5	3e 87 	ld a,$87	ld a,$00
0dd7	cd 6b 08 	call $086b	call $0000
0dda	6c 	ld l,h	ld l,h
0ddb	af 	xor a	xor a
0ddc	67 	ld h,a	ld h,a
0ddd	18 e4 	jr $-$1a	jr $-$00
0ddf	3a fc 54 	ld a,($54fc)	ld a,($0000)
0de2	6f 	ld l,a	ld l,a
0de3	18 f6 	jr $-$08	jr $-$00
0de5	06 00 	ld b,$00	ld b,$00
0de7	dd 21 f9 50 	ld ix,$50f9	ld ix,$0000
0deb	c5 	push bc	push bc
0dec	dd e5 	push ix	push ix
0dee	cd 15 18 	call $1815	call $0000
0df1	d9 	exx	exx
0df2	dd e1 	pop ix	pop ix
0df4	c1 	pop bc	pop bc
0df5	dd 75 00 	ld (ix),l	ld (ix),l
0df8	78 	ld a,b	ld a,b
0df9	fe 0d 	cp $0d	cp $00
0dfb	28 0b 	jr z,$+$0d	jr z,$+$00
0dfd	04 	inc b	inc b
0dfe	dd 23 	inc ix	inc ix
0e00	c5 	push bc	push bc
0e01	dd e5 	push ix	push ix
0e03	cd 84 20 	call $2084	call $0000
0e06	18 e6 	jr $-$18	jr $-$00
0e08	21 f9 50 	ld hl,$50f9	ld hl,$0000
0e0b	3e 08 	ld a,$08	ld a,$00
0e0d	cd 4d 08 	call $084d	call $0000
0e10	c3 7b 24 	jp $247b	jp $0000
0e13	06 00 	ld b,$00	ld b,$00
0e15	dd 21 f9 50 	ld ix,$50f9	ld ix,$0000
0e19	c5 	push bc	push bc
0e1a	dd e5 	push ix	push ix
0e1c	cd 15 18 	call $1815	call $0000
0e1f	d9 	exx	exx
0e20	dd e1 	pop ix	pop ix
0e22	c1 	pop bc	pop bc
0e23	dd 75 00 	ld (ix),l	ld (ix),l
0e26	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
0e29	dd 23 	inc ix	inc ix
0e2b	dd 23 	inc ix	inc ix
0e2d	04 	inc b	inc b
0e2e	04 	inc b	inc b
0e2f	78 	ld a,b	ld a,b
0e30	fe 08 	cp $08	cp $00
0e32	28 08 	jr z,$+$0a	jr z,$+$00
0e34	c5 	push bc	push bc
0e35	dd e5 	push ix	push ix
0e37	cd 84 20 	call $2084	call $0000
0e3a	18 e0 	jr $-$1e	jr $-$00
0e3c	21 f9 50 	ld hl,$50f9	ld hl,$0000
0e3f	3e 07 	ld a,$07	ld a,$00
0e41	cd 4d 08 	call $084d	call $0000
0e44	c3 7b 24 	jp $247b	jp $0000
0e47	cd 15 18 	call $1815	call $0000
0e4a	af 	xor a	xor a
0e4b	32 fb 54 	ld ($54fb),a	ld ($0000),a
0e4e	d9 	exx	exx
0e4f	65 	ld h,l	ld h,l
0e50	2e 16 	ld l,$16	ld l,$00
0e52	cd ba 10 	call $10ba	call $0000
0e55	18 72 	jr $+$74	jr $+$00
0e57	3e 10 	ld a,$10	ld a,$00
0e59	cd 93 05 	call $0593	call $0000
0e5c	18 6b 	jr $+$6d	jr $+$00
0e5e	cd 15 18 	call $1815	call $0000
0e61	d9 	exx	exx
0e62	e5 	push hl	push hl
0e63	cd d3 10 	call $10d3	call $0000
0e66	d9 	exx	exx
0e67	d1 	pop de	pop de
0e68	0e 1d 	ld c,$1d	ld c,$00
0e6a	cd ae 10 	call $10ae	call $0000
0e6d	18 5a 	jr $+$5c	jr $+$00
0e6f	cd 15 18 	call $1815	call $0000
0e72	d9 	exx	exx
0e73	fd 7e 00 	ld a,(iy)	ld a,(iy)
0e76	fe 2c 	cp $2c	cp $00
0e78	28 08 	jr z,$+$0a	jr z,$+$00
0e7a	65 	ld h,l	ld h,l
0e7b	2e 11 	ld l,$11	ld l,$00
0e7d	cd ba 10 	call $10ba	call $0000
0e80	18 47 	jr $+$49	jr $+$00
0e82	e5 	push hl	push hl
0e83	cd d3 10 	call $10d3	call $0000
0e86	d9 	exx	exx
0e87	eb 	ex de,hl	ex de,hl
0e88	21 00 00 	ld hl,$0000	ld hl,$0000
0e8b	fd 7e 00 	ld a,(iy)	ld a,(iy)
0e8e	fe 2c 	cp $2c	cp $00
0e90	20 15 	jr nz,$+$17	jr nz,$+$00
0e92	d5 	push de	push de
0e93	cd d3 10 	call $10d3	call $0000
0e96	d9 	exx	exx
0e97	e5 	push hl	push hl
0e98	cd d3 10 	call $10d3	call $0000
0e9b	d9 	exx	exx
0e9c	d1 	pop de	pop de
0e9d	c1 	pop bc	pop bc
0e9e	7d 	ld a,l	ld a,l
0e9f	e1 	pop hl	pop hl
0ea0	51 	ld d,c	ld d,c
0ea1	4d 	ld c,l	ld c,l
0ea2	6b 	ld l,e	ld l,e
0ea3	67 	ld h,a	ld h,a
0ea4	1e 10 	ld e,$10	ld e,$00
0ea6	c5 	push bc	push bc
0ea7	c1 	pop bc	pop bc
0ea8	06 13 	ld b,$13	ld b,$00
0eaa	cd aa 10 	call $10aa	call $0000
0ead	18 1a 	jr $+$1c	jr $+$00
0eaf	cd 15 18 	call $1815	call $0000
0eb2	d9 	exx	exx
0eb3	1e 00 	ld e,$00	ld e,$00
0eb5	fd 7e 00 	ld a,(iy)	ld a,(iy)
0eb8	fe 2c 	cp $2c	cp $00
0eba	20 06 	jr nz,$+$08	jr nz,$+$00
0ebc	e5 	push hl	push hl
0ebd	cd d3 10 	call $10d3	call $0000
0ec0	d9 	exx	exx
0ec1	d1 	pop de	pop de
0ec2	65 	ld h,l	ld h,l
0ec3	6b 	ld l,e	ld l,e
0ec4	16 12 	ld d,$12	ld d,$00
0ec6	cd b6 10 	call $10b6	call $0000
0ec9	c3 7b 24 	jp $247b	jp $0000
0ecc	0e 01 	ld c,$01	ld c,$00
0ece	18 02 	jr $+$04	jr $+$00
0ed0	0e 00 	ld c,$00	ld c,$00
0ed2	3e 17 	ld a,$17	ld a,$00
0ed4	cd 93 05 	call $0593	call $0000
0ed7	3e 01 	ld a,$01	ld a,$00
0ed9	cd 93 05 	call $0593	call $0000
0edc	79 	ld a,c	ld a,c
0edd	06 08 	ld b,$08	ld b,$00
0edf	cd 93 05 	call $0593	call $0000
0ee2	af 	xor a	xor a
0ee3	10 fa 	djnz $-$04	djnz $-$00
0ee5	18 e2 	jr $-$1c	jr $-$00
0ee7	cd 15 18 	call $1815	call $0000
0eea	d9 	exx	exx
0eeb	e5 	push hl	push hl
0eec	cd c2 10 	call $10c2	call $0000
0eef	e3 	ex (sp),hl	ex (sp),hl
0ef0	c5 	push bc	push bc
0ef1	eb 	ex de,hl	ex de,hl
0ef2	0e 04 	ld c,$04	ld c,$00
0ef4	cd a8 10 	call $10a8	call $0000
0ef7	d1 	pop de	pop de
0ef8	e1 	pop hl	pop hl
0ef9	0e 05 	ld c,$05	ld c,$00
0efb	18 2a 	jr $+$2c	jr $+$00
0efd	fe 03 	cp $03	cp $00
0eff	f5 	push af	push af
0f00	20 02 	jr nz,$+$04	jr nz,$+$00
0f02	fd 23 	inc iy	inc iy
0f04	cd 15 18 	call $1815	call $0000
0f07	d9 	exx	exx
0f08	e5 	push hl	push hl
0f09	cd d3 10 	call $10d3	call $0000
0f0c	d9 	exx	exx
0f0d	e5 	push hl	push hl
0f0e	cd d3 10 	call $10d3	call $0000
0f11	d9 	exx	exx
0f12	c1 	pop bc	pop bc
0f13	d1 	pop de	pop de
0f14	e5 	push hl	push hl
0f15	69 	ld l,c	ld l,c
0f16	60 	ld h,b	ld h,b
0f17	0e 04 	ld c,$04	ld c,$00
0f19	cd a8 10 	call $10a8	call $0000
0f1c	d1 	pop de	pop de
0f1d	21 00 00 	ld hl,$0000	ld hl,$0000
0f20	f1 	pop af	pop af
0f21	0e 91 	ld c,$91	ld c,$00
0f23	20 02 	jr nz,$+$04	jr nz,$+$00
0f25	0e 99 	ld c,$99	ld c,$00
0f27	18 6c 	jr $+$6e	jr $+$00
0f29	fe 03 	cp $03	cp $00
0f2b	f5 	push af	push af
0f2c	20 02 	jr nz,$+$04	jr nz,$+$00
0f2e	fd 23 	inc iy	inc iy
0f30	cd 15 18 	call $1815	call $0000
0f33	d9 	exx	exx
0f34	e5 	push hl	push hl
0f35	cd c2 10 	call $10c2	call $0000
0f38	e3 	ex (sp),hl	ex (sp),hl
0f39	c5 	push bc	push bc
0f3a	eb 	ex de,hl	ex de,hl
0f3b	0e 04 	ld c,$04	ld c,$00
0f3d	cd a8 10 	call $10a8	call $0000
0f40	d1 	pop de	pop de
0f41	d5 	push de	push de
0f42	21 00 00 	ld hl,$0000	ld hl,$0000
0f45	4d 	ld c,l	ld c,l
0f46	cd a8 10 	call $10a8	call $0000
0f49	d1 	pop de	pop de
0f4a	af 	xor a	xor a
0f4b	6f 	ld l,a	ld l,a
0f4c	67 	ld h,a	ld h,a
0f4d	ed 52 	sbc hl,de	sbc hl,de
0f4f	eb 	ex de,hl	ex de,hl
0f50	e1 	pop hl	pop hl
0f51	f1 	pop af	pop af
0f52	0e c1 	ld c,$c1	ld c,$00
0f54	20 3f 	jr nz,$+$41	jr nz,$+$00
0f56	0e c9 	ld c,$c9	ld c,$00
0f58	18 3b 	jr $+$3d	jr $+$00
0f5a	0e 04 	ld c,$04	ld c,$00
0f5c	18 23 	jr $+$25	jr $+$00
0f5e	0e 05 	ld c,$05	ld c,$00
0f60	18 1f 	jr $+$21	jr $+$00
0f62	0e 85 	ld c,$85	ld c,$00
0f64	18 1b 	jr $+$1d	jr $+$00
0f66	0e 45 	ld c,$45	ld c,$00
0f68	fe 0f 	cp $0f	cp $00
0f6a	28 15 	jr z,$+$17	jr z,$+$00
0f6c	cd 15 18 	call $1815	call $0000
0f6f	d9 	exx	exx
0f70	e5 	push hl	push hl
0f71	cd d3 10 	call $10d3	call $0000
0f74	d9 	exx	exx
0f75	fd 7e 00 	ld a,(iy)	ld a,(iy)
0f78	fe 2c 	cp $2c	cp $00
0f7a	28 12 	jr z,$+$14	jr z,$+$00
0f7c	d1 	pop de	pop de
0f7d	0e 45 	ld c,$45	ld c,$00
0f7f	18 14 	jr $+$16	jr $+$00
0f81	fe 0f 	cp $0f	cp $00
0f83	20 04 	jr nz,$+$06	jr nz,$+$00
0f85	fd 23 	inc iy	inc iy
0f87	cb 91 	res 2,c	res 2,c
0f89	c5 	push bc	push bc
0f8a	cd 15 18 	call $1815	call $0000
0f8d	d9 	exx	exx
0f8e	e5 	push hl	push hl
0f8f	cd d3 10 	call $10d3	call $0000
0f92	d9 	exx	exx
0f93	d1 	pop de	pop de
0f94	c1 	pop bc	pop bc
0f95	cd a8 10 	call $10a8	call $0000
0f98	c3 7b 24 	jp $247b	jp $0000
0f9b	fe 03 	cp $03	cp $00
0f9d	f5 	push af	push af
0f9e	20 02 	jr nz,$+$04	jr nz,$+$00
0fa0	fd 23 	inc iy	inc iy
0fa2	cd 15 18 	call $1815	call $0000
0fa5	d9 	exx	exx
0fa6	e5 	push hl	push hl
0fa7	cd d3 10 	call $10d3	call $0000
0faa	d9 	exx	exx
0fab	e5 	push hl	push hl
0fac	cd d3 10 	call $10d3	call $0000
0faf	d9 	exx	exx
0fb0	e5 	push hl	push hl
0fb1	fd 7e 00 	ld a,(iy)	ld a,(iy)
0fb4	fe 2c 	cp $2c	cp $00
0fb6	20 04 	jr nz,$+$06	jr nz,$+$00
0fb8	cd d3 10 	call $10d3	call $0000
0fbb	d9 	exx	exx
0fbc	c1 	pop bc	pop bc
0fbd	d1 	pop de	pop de
0fbe	e3 	ex (sp),hl	ex (sp),hl
0fbf	c5 	push bc	push bc
0fc0	eb 	ex de,hl	ex de,hl
0fc1	0e 04 	ld c,$04	ld c,$00
0fc3	cd a8 10 	call $10a8	call $0000
0fc6	fd 7e 00 	ld a,(iy)	ld a,(iy)
0fc9	fe b8 	cp $b8	cp $00
0fcb	28 09 	jr z,$+$0b	jr z,$+$00
0fcd	d1 	pop de	pop de
0fce	e1 	pop hl	pop hl
0fcf	f1 	pop af	pop af
0fd0	20 22 	jr nz,$+$24	jr nz,$+$00
0fd2	0e 61 	ld c,$61	ld c,$00
0fd4	18 bf 	jr $-$3f	jr $-$00
0fd6	fd 23 	inc iy	inc iy
0fd8	cd 15 18 	call $1815	call $0000
0fdb	d9 	exx	exx
0fdc	e5 	push hl	push hl
0fdd	cd d3 10 	call $10d3	call $0000
0fe0	d9 	exx	exx
0fe1	c1 	pop bc	pop bc
0fe2	d1 	pop de	pop de
0fe3	e3 	ex (sp),hl	ex (sp),hl
0fe4	c5 	push bc	push bc
0fe5	0e 00 	ld c,$00	ld c,$00
0fe7	cd a8 10 	call $10a8	call $0000
0fea	d1 	pop de	pop de
0feb	e1 	pop hl	pop hl
0fec	f1 	pop af	pop af
0fed	0e be 	ld c,$be	ld c,$00
0fef	20 01 	jr nz,$+$03	jr nz,$+$00
0ff1	0d 	dec c	dec c
0ff2	18 a1 	jr $-$5d	jr $-$00
0ff4	0e 09 	ld c,$09	ld c,$00
0ff6	e5 	push hl	push hl
0ff7	21 00 00 	ld hl,$0000	ld hl,$0000
0ffa	cd a8 10 	call $10a8	call $0000
0ffd	e1 	pop hl	pop hl
0ffe	d5 	push de	push de
0fff	11 00 00 	ld de,$0000	ld de,$0000
1002	cd a8 10 	call $10a8	call $0000
1005	d1 	pop de	pop de
1006	e5 	push hl	push hl
1007	af 	xor a	xor a
1008	6f 	ld l,a	ld l,a
1009	67 	ld h,a	ld h,a
100a	ed 52 	sbc hl,de	sbc hl,de
100c	eb 	ex de,hl	ex de,hl
100d	6f 	ld l,a	ld l,a
100e	67 	ld h,a	ld h,a
100f	cd a8 10 	call $10a8	call $0000
1012	d1 	pop de	pop de
1013	af 	xor a	xor a
1014	6f 	ld l,a	ld l,a
1015	67 	ld h,a	ld h,a
1016	ed 52 	sbc hl,de	sbc hl,de
1018	5f 	ld e,a	ld e,a
1019	57 	ld d,a	ld d,a
101a	18 d6 	jr $-$28	jr $-$00
101c	3e 80 	ld a,$80	ld a,$00
101e	21 09 00 	ld hl,$0009	ld hl,$0000
1021	cd 6b 08 	call $086b	call $0000
1024	e5 	push hl	push hl
1025	3e 80 	ld a,$80	ld a,$00
1027	21 08 00 	ld hl,$0008	ld hl,$0000
102a	cd 6b 08 	call $086b	call $0000
102d	e5 	push hl	push hl
102e	3e 80 	ld a,$80	ld a,$00
1030	21 07 00 	ld hl,$0007	ld hl,$0000
1033	cd 6b 08 	call $086b	call $0000
1036	e5 	push hl	push hl
1037	cd b8 25 	call $25b8	call $0000
103a	e1 	pop hl	pop hl
103b	cd d9 10 	call $10d9	call $0000
103e	cd 84 20 	call $2084	call $0000
1041	cd ed 44 	call $44ed	call $0000
1044	cd b8 25 	call $25b8	call $0000
1047	e1 	pop hl	pop hl
1048	cd d9 10 	call $10d9	call $0000
104b	cd 84 20 	call $2084	call $0000
104e	cd ed 44 	call $44ed	call $0000
1051	cd b8 25 	call $25b8	call $0000
1054	e1 	pop hl	pop hl
1055	cd d9 10 	call $10d9	call $0000
1058	c3 7b 24 	jp $247b	jp $0000
105b	cd 18 35 	call $3518	call $0000
105e	28 f8 	jr z,$-$06	jr z,$-$00
1060	cd 15 18 	call $1815	call $0000
1063	d9 	exx	exx
1064	44 	ld b,h	ld b,h
1065	4d 	ld c,l	ld c,l
1066	cd 0b 0d 	call $0d0b	call $0000
1069	09 	add hl,bc	add hl,bc
106a	01 00 00 	ld bc,$0000	ld bc,$0000
106d	eb 	ex de,hl	ex de,hl
106e	ed 4a 	adc hl,bc	adc hl,bc
1070	eb 	ex de,hl	ex de,hl
1071	cd 15 06 	call $0615	call $0000
1074	d5 	push de	push de
1075	e5 	push hl	push hl
1076	cd 0b 0d 	call $0d0b	call $0000
1079	c1 	pop bc	pop bc
107a	b7 	or a	or a
107b	ed 42 	sbc hl,bc	sbc hl,bc
107d	60 	ld h,b	ld h,b
107e	69 	ld l,c	ld l,c
107f	eb 	ex de,hl	ex de,hl
1080	c1 	pop bc	pop bc
1081	ed 42 	sbc hl,bc	sbc hl,bc
1083	30 d3 	jr nc,$-$2b	jr nc,$-$00
1085	eb 	ex de,hl	ex de,hl
1086	50 	ld d,b	ld d,b
1087	59 	ld e,c	ld e,c
1088	18 e7 	jr $-$17	jr $-$00
108a	e1 	pop hl	pop hl
108b	21 9d 10 	ld hl,$109d	ld hl,$0000
108e	e5 	push hl	push hl
108f	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
1092	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
1095	dd 66 64 	ld h,(ix+$64)	ld h,(ix+$00)
1098	dd 6e 60 	ld l,(ix+$60)	ld l,(ix+$00)
109b	fd e9 	jp (iy)	jp (iy)
109d	f5 	push af	push af
109e	7d 	ld a,l	ld a,l
109f	6c 	ld l,h	ld l,h
10a0	d9 	exx	exx
10a1	c1 	pop bc	pop bc
10a2	67 	ld h,a	ld h,a
10a3	68 	ld l,b	ld l,b
10a4	79 	ld a,c	ld a,c
10a5	d9 	exx	exx
10a6	67 	ld h,a	ld h,a
10a7	c9 	ret	ret
10a8	06 19 	ld b,$19	ld b,$00
10aa	78 	ld a,b	ld a,b
10ab	cd 93 05 	call $0593	call $0000
10ae	79 	ld a,c	ld a,c
10af	cd 93 05 	call $0593	call $0000
10b2	7b 	ld a,e	ld a,e
10b3	cd 93 05 	call $0593	call $0000
10b6	7a 	ld a,d	ld a,d
10b7	cd 93 05 	call $0593	call $0000
10ba	7d 	ld a,l	ld a,l
10bb	cd 93 05 	call $0593	call $0000
10be	7c 	ld a,h	ld a,h
10bf	c3 93 05 	jp $0593	jp $0000
10c2	cd d3 10 	call $10d3	call $0000
10c5	d9 	exx	exx
10c6	e5 	push hl	push hl
10c7	cd d3 10 	call $10d3	call $0000
10ca	d9 	exx	exx
10cb	e5 	push hl	push hl
10cc	cd d3 10 	call $10d3	call $0000
10cf	d9 	exx	exx
10d0	c1 	pop bc	pop bc
10d1	d1 	pop de	pop de
10d2	c9 	ret	ret
10d3	cd 84 20 	call $2084	call $0000
10d6	c3 15 18 	jp $1815	jp $0000
10d9	cb 7f 	bit 7,a	bit 7,a
10db	20 0c 	jr nz,$+$0e	jr nz,$+$00
10dd	cb 77 	bit 6,a	bit 6,a
10df	20 08 	jr nz,$+$0a	jr nz,$+$00
10e1	d9 	exx	exx
10e2	21 00 00 	ld hl,$0000	ld hl,$0000
10e5	4d 	ld c,l	ld c,l
10e6	c3 d2 31 	jp $31d2	jp $0000
10e9	3e 32 	ld a,$32	ld a,$00
10eb	cd 37 3f 	call $3f37	call $0000
10ee	13 	inc de	inc de
10ef	04 	inc b	inc b
10f0	20 15 	jr nz,$+$17	jr nz,$+$00
10f2	00 	nop	nop
10f3	af 	xor a	xor a
10f4	cd 37 3f 	call $3f37	call $0000
10f7	53 	ld d,e	ld d,e
10f8	6f 	ld l,a	ld l,a
10f9	72 	ld (hl),d	ld (hl),d
10fa	72 	ld (hl),d	ld (hl),d
10fb	79 	ld a,c	ld a,c
10fc	00 	nop	nop
10fd	cd 85 14 	call $1485	call $0000
1100	fd 23 	inc iy	inc iy
1102	fe 3a 	cp $3a	cp $00
1104	28 f7 	jr z,$-$07	jr z,$-$00
1106	fe 5d 	cp $5d	cp $00
1108	c8 	ret z	ret z
1109	fe 0d 	cp $0d	cp $00
110b	c8 	ret z	ret z
110c	fd 2b 	dec iy	dec iy
110e	dd 2a 40 54 	ld ix,($5440)	ld ix,($0000)
1112	21 fe 54 	ld hl,$54fe	ld hl,$0000
1115	cb 76 	bit 6,(hl)	bit 6,(hl)
1117	28 04 	jr z,$+$06	jr z,$+$00
1119	dd 2a 3c 54 	ld ix,($543c)	ld ix,($0000)
111d	dd e5 	push ix	push ix
111f	fd e5 	push iy	push iy
1121	cd b1 11 	call $11b1	call $0000
1124	c1 	pop bc	pop bc
1125	d1 	pop de	pop de
1126	d8 	ret c	ret c
1127	cd 85 14 	call $1485	call $0000
112a	37 	scf	scf
112b	c0 	ret nz	ret nz
112c	fd 2b 	dec iy	dec iy
112e	fd 23 	inc iy	inc iy
1130	fd 7e 00 	ld a,(iy)	ld a,(iy)
1133	cd a9 14 	call $14a9	call $0000
1136	20 f6 	jr nz,$-$08	jr nz,$-$00
1138	3a fe 54 	ld a,($54fe)	ld a,($0000)
113b	dd e5 	push ix	push ix
113d	e1 	pop hl	pop hl
113e	b7 	or a	or a
113f	ed 52 	sbc hl,de	sbc hl,de
1141	eb 	ex de,hl	ex de,hl
1142	e5 	push hl	push hl
1143	2a 40 54 	ld hl,($5440)	ld hl,($0000)
1146	e5 	push hl	push hl
1147	19 	add hl,de	add hl,de
1148	22 40 54 	ld ($5440),hl	ld ($0000),hl
114b	cb 77 	bit 6,a	bit 6,a
114d	28 07 	jr z,$+$09	jr z,$+$00
114f	2a 3c 54 	ld hl,($543c)	ld hl,($0000)
1152	19 	add hl,de	add hl,de
1153	22 3c 54 	ld ($543c),hl	ld ($0000),hl
1156	e1 	pop hl	pop hl
1157	dd e1 	pop ix	pop ix
1159	cb 67 	bit 4,a	bit 4,a
115b	28 a0 	jr z,$-$5e	jr z,$-$00
115d	7c 	ld a,h	ld a,h
115e	cd 9d 11 	call $119d	call $0000
1161	7d 	ld a,l	ld a,l
1162	cd 96 11 	call $1196	call $0000
1165	af 	xor a	xor a
1166	bb 	cp e	cp e
1167	28 15 	jr z,$+$17	jr z,$+$00
1169	3a fb 54 	ld a,($54fb)	ld a,($0000)
116c	fe 11 	cp $11	cp $00
116e	3e 05 	ld a,$05	ld a,$00
1170	d4 5f 35 	call nc,$355f	call nc,$0000
1173	dd 7e 00 	ld a,(ix)	ld a,(ix)
1176	cd 96 11 	call $1196	call $0000
1179	dd 23 	inc ix	inc ix
117b	1d 	dec e	dec e
117c	20 eb 	jr nz,$-$13	jr nz,$-$00
117e	3e 12 	ld a,$12	ld a,$00
1180	cd 5f 35 	call $355f	call $0000
1183	fd e5 	push iy	push iy
1185	e1 	pop hl	pop hl
1186	ed 42 	sbc hl,bc	sbc hl,bc
1188	0a 	ld a,(bc)	ld a,(bc)
1189	cd fd 40 	call $40fd	call $0000
118c	03 	inc bc	inc bc
118d	2d 	dec l	dec l
118e	20 f8 	jr nz,$-$06	jr nz,$-$00
1190	cd dd 40 	call $40dd	call $0000
1193	c3 fd 10 	jp $10fd	jp $0000
1196	cd 9d 11 	call $119d	call $0000
1199	3e 20 	ld a,$20	ld a,$00
119b	18 11 	jr $+$13	jr $+$00
119d	f5 	push af	push af
119e	0f 	rrca	rrca
119f	0f 	rrca	rrca
11a0	0f 	rrca	rrca
11a1	0f 	rrca	rrca
11a2	cd a6 11 	call $11a6	call $0000
11a5	f1 	pop af	pop af
11a6	e6 0f 	and $0f	and $00
11a8	c6 90 	add a,$90	add a,$00
11aa	27 	daa	daa
11ab	ce 40 	adc a,$40	adc a,$00
11ad	27 	daa	daa
11ae	c3 fd 40 	jp $40fd	jp $0000
11b1	fe 2e 	cp $2e	cp $00
11b3	20 28 	jr nz,$+$2a	jr nz,$+$00
11b5	fd 23 	inc iy	inc iy
11b7	dd e5 	push ix	push ix
11b9	cd b8 25 	call $25b8	call $0000
11bc	f5 	push af	push af
11bd	cd da 1f 	call $1fda	call $0000
11c0	d9 	exx	exx
11c1	2a 40 54 	ld hl,($5440)	ld hl,($0000)
11c4	d9 	exx	exx
11c5	3a fe 54 	ld a,($54fe)	ld a,($0000)
11c8	e6 20 	and $20	and $00
11ca	20 0b 	jr nz,$+$0d	jr nz,$+$00
11cc	dd 7e 00 	ld a,(ix)	ld a,(ix)
11cf	dd b6 01 	or (ix+$01)	or (ix+$00)
11d2	3e 03 	ld a,$03	ld a,$00
11d4	c2 26 3f 	jp nz,$3f26	jp nz,$0000
11d7	f1 	pop af	pop af
11d8	cd d2 31 	call $31d2	call $0000
11db	dd e1 	pop ix	pop ix
11dd	cd 85 14 	call $1485	call $0000
11e0	c8 	ret z	ret z
11e1	fe d6 	cp $d6	cp $00
11e3	0e c4 	ld c,$c4	ld c,$00
11e5	fd 23 	inc iy	inc iy
11e7	ca d4 12 	jp z,$12d4	jp z,$0000
11ea	fd 2b 	dec iy	dec iy
11ec	21 af 14 	ld hl,$14af	ld hl,$0000
11ef	cd 3c 14 	call $143c	call $0000
11f2	d8 	ret c	ret c
11f3	48 	ld c,b	ld c,b
11f4	16 00 	ld d,$00	ld d,$00
11f6	d6 27 	sub $27	sub $00
11f8	30 07 	jr nc,$+$09	jr nc,$+$00
11fa	fe e8 	cp $e8	cp $00
11fc	d4 a2 13 	call nc,$13a2	call nc,$0000
11ff	18 68 	jr $+$6a	jr $+$00
1201	d6 0a 	sub $0a	sub $00
1203	30 0f 	jr nc,$+$11	jr nc,$+$00
1205	fe f9 	cp $f9	cp $00
1207	dc 2c 14 	call c,$142c	call c,$0000
120a	d8 	ret c	ret c
120b	cd 01 14 	call $1401	call $0000
120e	d8 	ret c	ret c
120f	cd a6 13 	call $13a6	call $0000
1212	18 55 	jr $+$57	jr $+$00
1214	d6 03 	sub $03	sub $00
1216	30 06 	jr nc,$+$08	jr nc,$+$00
1218	cd 20 14 	call $1420	call $0000
121b	d8 	ret c	ret c
121c	18 4b 	jr $+$4d	jr $+$00
121e	d6 0a 	sub $0a	sub $00
1220	30 32 	jr nc,$+$34	jr nc,$+$00
1222	fe fd 	cp $fd	cp $00
1224	06 07 	ld b,$07	ld b,$00
1226	d4 b4 13 	call nc,$13b4	call nc,$0000
1229	78 	ld a,b	ld a,b
122a	fe 07 	cp $07	cp $00
122c	20 10 	jr nz,$+$12	jr nz,$+$00
122e	cd 01 14 	call $1401	call $0000
1231	79 	ld a,c	ld a,c
1232	30 28 	jr nc,$+$2a	jr nc,$+$00
1234	ee 46 	xor $46	xor $00
1236	cd a8 13 	call $13a8	call $0000
1239	cd e4 13 	call $13e4	call $0000
123c	18 78 	jr $+$7a	jr $+$00
123e	e6 3f 	and $3f	and $00
1240	fe 0c 	cp $0c	cp $00
1242	37 	scf	scf
1243	c0 	ret nz	ret nz
1244	79 	ld a,c	ld a,c
1245	fe 80 	cp $80	cp $00
1247	0e 09 	ld c,$09	ld c,$00
1249	28 cd 	jr z,$-$31	jr z,$-$00
124b	ee 1c 	xor $1c	xor $00
124d	0f 	rrca	rrca
124e	4f 	ld c,a	ld c,a
124f	cd a2 13 	call $13a2	call $0000
1252	18 c4 	jr $-$3a	jr $-$00
1254	d6 02 	sub $02	sub $00
1256	30 14 	jr nc,$+$16	jr nc,$+$00
1258	cd 07 14 	call $1407	call $0000
125b	79 	ld a,c	ld a,c
125c	d2 a8 13 	jp nc,$13a8	jp nc,$0000
125f	ee 64 	xor $64	xor $00
1261	07 	rlca	rlca
1262	07 	rlca	rlca
1263	07 	rlca	rlca
1264	4f 	ld c,a	ld c,a
1265	cd 24 14 	call $1424	call $0000
1268	d8 	ret c	ret c
1269	79 	ld a,c	ld a,c
126a	18 7f 	jr $+$81	jr $+$00
126c	d6 02 	sub $02	sub $00
126e	30 21 	jr nc,$+$23	jr nc,$+$00
1270	fe ff 	cp $ff	cp $00
1272	cc 97 13 	call z,$1397	call z,$0000
1275	08 	ex af,af'	ex af,af'
1276	cd 07 14 	call $1407	call $0000
1279	d8 	ret c	ret c
127a	08 	ex af,af'	ex af,af'
127b	dc 97 13 	call c,$1397	call c,$0000
127e	24 	inc h	inc h
127f	28 e8 	jr z,$-$16	jr z,$-$00
1281	78 	ld a,b	ld a,b
1282	fe 07 	cp $07	cp $00
1284	37 	scf	scf
1285	c0 	ret nz	ret nz
1286	79 	ld a,c	ld a,c
1287	ee 03 	xor $03	xor $00
1289	07 	rlca	rlca
128a	07 	rlca	rlca
128b	07 	rlca	rlca
128c	cd d4 13 	call $13d4	call $0000
128f	18 25 	jr $+$27	jr $+$00
1291	d6 02 	sub $02	sub $00
1293	30 24 	jr nc,$+$26	jr nc,$+$00
1295	fe ff 	cp $ff	cp $00
1297	c4 0d 14 	call nz,$140d	call nz,$0000
129a	79 	ld a,c	ld a,c
129b	30 02 	jr nc,$+$04	jr nc,$+$00
129d	3e 18 	ld a,$18	ld a,$00
129f	cd d4 13 	call $13d4	call $0000
12a2	cd e4 13 	call $13e4	call $0000
12a5	ed 5b 40 54 	ld de,($5440)	ld de,($0000)
12a9	13 	inc de	inc de
12aa	37 	scf	scf
12ab	ed 52 	sbc hl,de	sbc hl,de
12ad	7d 	ld a,l	ld a,l
12ae	17 	rla	rla
12af	9f 	sbc a,a	sbc a,a
12b0	bc 	cp h	cp h
12b1	3e 01 	ld a,$01	ld a,$00
12b3	c2 26 3f 	jp nz,$3f26	jp nz,$0000
12b6	7d 	ld a,l	ld a,l
12b7	18 32 	jr $+$34	jr $+$00
12b9	47 	ld b,a	ld b,a
12ba	20 16 	jr nz,$+$18	jr nz,$+$00
12bc	cd 0d 14 	call $140d	call $0000
12bf	79 	ld a,c	ld a,c
12c0	30 0b 	jr nc,$+$0d	jr nc,$+$00
12c2	78 	ld a,b	ld a,b
12c3	e6 3f 	and $3f	and $00
12c5	fe 06 	cp $06	cp $00
12c7	3e e9 	ld a,$e9	ld a,$00
12c9	28 20 	jr z,$+$22	jr z,$+$00
12cb	3e c3 	ld a,$c3	ld a,$00
12cd	cd d4 13 	call $13d4	call $0000
12d0	18 05 	jr $+$07	jr $+$00
12d2	10 0c 	djnz $+$0e	djnz $+$00
12d4	cd ef 12 	call $12ef	call $0000
12d7	cd e4 13 	call $13e4	call $0000
12da	cd b6 12 	call $12b6	call $0000
12dd	7c 	ld a,h	ld a,h
12de	18 0b 	jr $+$0d	jr $+$00
12e0	10 0b 	djnz $+$0d	djnz $+$00
12e2	cd e4 13 	call $13e4	call $0000
12e5	a1 	and c	and c
12e6	b4 	or h	or h
12e7	20 c8 	jr nz,$-$36	jr nz,$-$00
12e9	7d 	ld a,l	ld a,l
12ea	b1 	or c	or c
12eb	18 78 	jr $+$7a	jr $+$00
12ed	10 0a 	djnz $+$0c	djnz $+$00
12ef	cd 0d 14 	call $140d	call $0000
12f2	79 	ld a,c	ld a,c
12f3	30 70 	jr nc,$+$72	jr nc,$+$00
12f5	f6 09 	or $09	or $00
12f7	18 6c 	jr $+$6e	jr $+$00
12f9	10 6c 	djnz $+$6e	djnz $+$00
12fb	cd 39 14 	call $1439	call $0000
12fe	30 5f 	jr nc,$+$61	jr nc,$+$00
1300	cd 07 14 	call $1407	call $0000
1303	08 	ex af,af'	ex af,af'
1304	cd 85 14 	call $1485	call $0000
1307	fe 28 	cp $28	cp $00
1309	28 1d 	jr z,$+$1f	jr z,$+$00
130b	08 	ex af,af'	ex af,af'
130c	d2 2e 12 	jp nc,$122e	jp nc,$0000
130f	0e 01 	ld c,$01	ld c,$00
1311	cd 24 14 	call $1424	call $0000
1314	d8 	ret c	ret c
1315	3e 0e 	ld a,$0e	ld a,$00
1317	b8 	cp b	cp b
1318	47 	ld b,a	ld b,a
1319	cc 20 14 	call z,$1420	call z,$0000
131c	78 	ld a,b	ld a,b
131d	e6 3f 	and $3f	and $00
131f	fe 0c 	cp $0c	cp $00
1321	79 	ld a,c	ld a,c
1322	20 a9 	jr nz,$-$55	jr nz,$-$00
1324	3e f9 	ld a,$f9	ld a,$00
1326	18 3d 	jr $+$3f	jr $+$00
1328	08 	ex af,af'	ex af,af'
1329	c5 	push bc	push bc
132a	d4 01 14 	call nc,$1401	call nc,$0000
132d	79 	ld a,c	ld a,c
132e	c1 	pop bc	pop bc
132f	30 77 	jr nc,$+$79	jr nc,$+$00
1331	0e 0a 	ld c,$0a	ld c,$00
1333	cd 24 14 	call $1424	call $0000
1336	cd 7e 13 	call $137e	call $0000
1339	30 92 	jr nc,$-$6c	jr nc,$-$00
133b	cd e4 13 	call $13e4	call $0000
133e	0e 02 	ld c,$02	ld c,$00
1340	cd 20 14 	call $1420	call $0000
1343	cd 7e 13 	call $137e	call $0000
1346	d8 	ret c	ret c
1347	cd d4 13 	call $13d4	call $0000
134a	18 8e 	jr $-$70	jr $-$00
134c	05 	dec b	dec b
134d	ca 39 12 	jp z,$1239	jp z,$0000
1350	10 85 	djnz $-$79	djnz $-$00
1352	cd e4 13 	call $13e4	call $0000
1355	21 fe 54 	ld hl,$54fe	ld hl,$0000
1358	4f 	ld c,a	ld c,a
1359	ed 6f 	rld	rld
135b	79 	ld a,c	ld a,c
135c	ed 67 	rrd	rrd
135e	c9 	ret	ret
135f	fe 04 	cp $04	cp $00
1361	dc a2 13 	call c,$13a2	call c,$0000
1364	78 	ld a,b	ld a,b
1365	18 6d 	jr $+$6f	jr $+$00
1367	10 e3 	djnz $-$1b	djnz $-$00
1369	dd e5 	push ix	push ix
136b	cd 1e 18 	call $181e	call $0000
136e	dd e1 	pop ix	pop ix
1370	21 00 52 	ld hl,$5200	ld hl,$0000
1373	af 	xor a	xor a
1374	bb 	cp e	cp e
1375	c8 	ret z	ret z
1376	7e 	ld a,(hl)	ld a,(hl)
1377	23 	inc hl	inc hl
1378	cd d4 13 	call $13d4	call $0000
137b	1d 	dec e	dec e
137c	18 f5 	jr $-$09	jr $-$00
137e	78 	ld a,b	ld a,b
137f	38 0e 	jr c,$+$10	jr c,$+$00
1381	78 	ld a,b	ld a,b
1382	e6 3f 	and $3f	and $00
1384	fe 0c 	cp $0c	cp $00
1386	79 	ld a,c	ld a,c
1387	c8 	ret z	ret z
1388	cd a2 13 	call $13a2	call $0000
138b	79 	ld a,c	ld a,c
138c	f6 43 	or $43	or $00
138e	c9 	ret	ret
138f	fe 07 	cp $07	cp $00
1391	37 	scf	scf
1392	c0 	ret nz	ret nz
1393	79 	ld a,c	ld a,c
1394	f6 30 	or $30	or $00
1396	c9 	ret	ret
1397	c5 	push bc	push bc
1398	cd b4 13 	call $13b4	call $0000
139b	cb 68 	bit 5,b	bit 5,b
139d	c1 	pop bc	pop bc
139e	28 44 	jr z,$+$46	jr z,$+$00
13a0	26 ff 	ld h,$ff	ld h,$00
13a2	3e ed 	ld a,$ed	ld a,$00
13a4	18 2e 	jr $+$30	jr $+$00
13a6	3e cb 	ld a,$cb	ld a,$00
13a8	fe 76 	cp $76	cp $00
13aa	37 	scf	scf
13ab	c8 	ret z	ret z
13ac	cd d4 13 	call $13d4	call $0000
13af	14 	inc d	inc d
13b0	f0 	ret p	ret p
13b1	7b 	ld a,e	ld a,e
13b2	18 20 	jr $+$22	jr $+$00
13b4	e5 	push hl	push hl
13b5	21 f6 15 	ld hl,$15f6	ld hl,$0000
13b8	cd 3c 14 	call $143c	call $0000
13bb	e1 	pop hl	pop hl
13bc	d8 	ret c	ret c
13bd	cb 78 	bit 7,b	bit 7,b
13bf	c8 	ret z	ret z
13c0	cb 58 	bit 3,b	bit 3,b
13c2	e5 	push hl	push hl
13c3	cc db 13 	call z,$13db	call z,$0000
13c6	5d 	ld e,l	ld e,l
13c7	e1 	pop hl	pop hl
13c8	3e dd 	ld a,$dd	ld a,$00
13ca	cb 70 	bit 6,b	bit 6,b
13cc	28 02 	jr z,$+$04	jr z,$+$00
13ce	3e fd 	ld a,$fd	ld a,$00
13d0	b7 	or a	or a
13d1	14 	inc d	inc d
13d2	57 	ld d,a	ld d,a
13d3	f8 	ret m	ret m
13d4	dd 77 00 	ld (ix),a	ld (ix),a
13d7	dd 23 	inc ix	inc ix
13d9	b7 	or a	or a
13da	c9 	ret	ret
13db	fd 7e 00 	ld a,(iy)	ld a,(iy)
13de	fe 29 	cp $29	cp $00
13e0	21 00 00 	ld hl,$0000	ld hl,$0000
13e3	c8 	ret z	ret z
13e4	cd 85 14 	call $1485	call $0000
13e7	c5 	push bc	push bc
13e8	d5 	push de	push de
13e9	dd e5 	push ix	push ix
13eb	cd 15 18 	call $1815	call $0000
13ee	dd e1 	pop ix	pop ix
13f0	d9 	exx	exx
13f1	d1 	pop de	pop de
13f2	c1 	pop bc	pop bc
13f3	7d 	ld a,l	ld a,l
13f4	b7 	or a	or a
13f5	c9 	ret	ret
13f6	cd b4 13 	call $13b4	call $0000
13f9	d8 	ret c	ret c
13fa	78 	ld a,b	ld a,b
13fb	e6 3f 	and $3f	and $00
13fd	fe 08 	cp $08	cp $00
13ff	3f 	ccf	ccf
1400	c9 	ret	ret
1401	cd f6 13 	call $13f6	call $0000
1404	d8 	ret c	ret c
1405	18 2f 	jr $+$31	jr $+$00
1407	cd f6 13 	call $13f6	call $0000
140a	d8 	ret c	ret c
140b	18 26 	jr $+$28	jr $+$00
140d	cd b4 13 	call $13b4	call $0000
1410	d8 	ret c	ret c
1411	78 	ld a,b	ld a,b
1412	e6 1f 	and $1f	and $00
1414	d6 10 	sub $10	sub $00
1416	30 1b 	jr nc,$+$1d	jr nc,$+$00
1418	fe f1 	cp $f1	cp $00
141a	37 	scf	scf
141b	c0 	ret nz	ret nz
141c	3e 03 	ld a,$03	ld a,$00
141e	18 13 	jr $+$15	jr $+$00
1420	cd b4 13 	call $13b4	call $0000
1423	d8 	ret c	ret c
1424	78 	ld a,b	ld a,b
1425	e6 0f 	and $0f	and $00
1427	d6 08 	sub $08	sub $00
1429	d8 	ret c	ret c
142a	18 07 	jr $+$09	jr $+$00
142c	cd e4 13 	call $13e4	call $0000
142f	fe 08 	cp $08	cp $00
1431	3f 	ccf	ccf
1432	d8 	ret c	ret c
1433	07 	rlca	rlca
1434	07 	rlca	rlca
1435	07 	rlca	rlca
1436	b1 	or c	or c
1437	4f 	ld c,a	ld c,a
1438	c9 	ret	ret
1439	21 3b 16 	ld hl,$163b	ld hl,$0000
143c	cd 85 14 	call $1485	call $0000
143f	06 00 	ld b,$00	ld b,$00
1441	37 	scf	scf
1442	c8 	ret z	ret z
1443	fe dd 	cp $dd	cp $00
1445	28 04 	jr z,$+$06	jr z,$+$00
1447	fe 85 	cp $85	cp $00
1449	3f 	ccf	ccf
144a	d8 	ret c	ret c
144b	7e 	ld a,(hl)	ld a,(hl)
144c	b7 	or a	or a
144d	28 f0 	jr z,$-$0e	jr z,$-$00
144f	fd ae 00 	xor (iy)	xor (iy)
1452	e6 5f 	and $5f	and $00
1454	28 09 	jr z,$+$0b	jr z,$+$00
1456	cb 7e 	bit 7,(hl)	bit 7,(hl)
1458	23 	inc hl	inc hl
1459	28 fb 	jr z,$-$03	jr z,$-$00
145b	23 	inc hl	inc hl
145c	04 	inc b	inc b
145d	18 ec 	jr $-$12	jr $-$00
145f	fd e5 	push iy	push iy
1461	cb 7e 	bit 7,(hl)	bit 7,(hl)
1463	fd 23 	inc iy	inc iy
1465	23 	inc hl	inc hl
1466	20 10 	jr nz,$+$12	jr nz,$+$00
1468	be 	cp (hl)	cp (hl)
1469	cc 84 14 	call z,$1484	call z,$0000
146c	7e 	ld a,(hl)	ld a,(hl)
146d	fd ae 00 	xor (iy)	xor (iy)
1470	e6 5f 	and $5f	and $00
1472	28 ed 	jr z,$-$11	jr z,$-$00
1474	fd e1 	pop iy	pop iy
1476	18 de 	jr $-$20	jr $-$00
1478	cd 97 14 	call $1497	call $0000
147b	c4 91 14 	call nz,$1491	call nz,$0000
147e	20 f4 	jr nz,$-$0a	jr nz,$-$00
1480	78 	ld a,b	ld a,b
1481	46 	ld b,(hl)	ld b,(hl)
1482	e1 	pop hl	pop hl
1483	c9 	ret	ret
1484	23 	inc hl	inc hl
1485	cd 97 14 	call $1497	call $0000
1488	c0 	ret nz	ret nz
1489	cd a3 14 	call $14a3	call $0000
148c	c8 	ret z	ret z
148d	fd 23 	inc iy	inc iy
148f	18 f4 	jr $-$0a	jr $-$00
1491	fe 2b 	cp $2b	cp $00
1493	c8 	ret z	ret z
1494	fe 2d 	cp $2d	cp $00
1496	c9 	ret	ret
1497	fd 7e 00 	ld a,(iy)	ld a,(iy)
149a	fe 20 	cp $20	cp $00
149c	c8 	ret z	ret z
149d	fe 2c 	cp $2c	cp $00
149f	c8 	ret z	ret z
14a0	fe 29 	cp $29	cp $00
14a2	c8 	ret z	ret z
14a3	fe 3b 	cp $3b	cp $00
14a5	c8 	ret z	ret z
14a6	fe 5c 	cp $5c	cp $00
14a8	c8 	ret z	ret z
14a9	fe 3a 	cp $3a	cp $00
14ab	d0 	ret nc	ret nc
14ac	fe 0d 	cp $0d	cp $00
14ae	c9 	ret	ret
14af	4e 	ld c,(hl)	ld c,(hl)
14b0	4f 	ld c,a	ld c,a
14b1	d0 	ret nc	ret nc
14b2	00 	nop	nop
14b3	52 4c 	ld.sil c,h	ld.sil c,h
14b5	43 	ld b,e	ld b,e
14b6	c1 	pop bc	pop bc
14b7	07 	rlca	rlca
14b8	45 	ld b,l	ld b,l
14b9	58 	ld e,b	ld e,b
14ba	00 	nop	nop
14bb	41 	ld b,c	ld b,c
14bc	46 	ld b,(hl)	ld b,(hl)
14bd	00 	nop	nop
14be	41 	ld b,c	ld b,c
14bf	46 	ld b,(hl)	ld b,(hl)
14c0	27 	daa	daa
14c1	08 	ex af,af'	ex af,af'
14c2	52 	noni.sil	noni.sil
14c3	52 43 	ld.sil b,e	ld.sil b,e
14c5	c1 	pop bc	pop bc
14c6	0f 	rrca	rrca
14c7	52 4c 	ld.sil c,h	ld.sil c,h
14c9	c1 	pop bc	pop bc
14ca	17 	rla	rla
14cb	52 	noni.sil	noni.sil
14cc	52 c1 	pop.sil bc	pop.sil bc
14ce	1f 	rra	rra
14cf	44 	ld b,h	ld b,h
14d0	41 	ld b,c	ld b,c
14d1	c1 	pop bc	pop bc
14d2	27 	daa	daa
14d3	43 	ld b,e	ld b,e
14d4	50 	ld d,b	ld d,b
14d5	cc 2f 53 	call z,$532f	call z,$0000
14d8	43 	ld b,e	ld b,e
14d9	c6 37 	add a,$37	add a,$00
14db	43 	ld b,e	ld b,e
14dc	43 	ld b,e	ld b,e
14dd	c6 3f 	add a,$3f	add a,$00
14df	48 	ld c,b	ld c,b
14e0	41 	ld b,c	ld b,c
14e1	4c 	ld c,h	ld c,h
14e2	d4 76 45 	call nc,$4576	call nc,$0000
14e5	58 	ld e,b	ld e,b
14e6	d8 	ret c	ret c
14e7	d9 	exx	exx
14e8	45 	ld b,l	ld b,l
14e9	58 	ld e,b	ld e,b
14ea	00 	nop	nop
14eb	44 	ld b,h	ld b,h
14ec	45 	ld b,l	ld b,l
14ed	00 	nop	nop
14ee	48 	ld c,b	ld c,b
14ef	cc eb 44 	call z,$44eb	call z,$0000
14f2	c9 	ret	ret
14f3	f3 	di	di
14f4	45 	ld b,l	ld b,l
14f5	c9 	ret	ret
14f6	fb 	ei	ei
14f7	4e 	ld c,(hl)	ld c,(hl)
14f8	45 	ld b,l	ld b,l
14f9	c7 	rst $00	rst $00
14fa	44 	ld b,h	ld b,h
14fb	49 4d 	ld.lis c,l	ld.lis c,l
14fd	00 	nop	nop
14fe	b0 	or b	or b
14ff	46 	ld b,(hl)	ld b,(hl)
1500	52 45 	ld.sil b,l	ld.sil b,l
1502	54 	ld d,h	ld d,h
1503	ce 45 	adc a,$45	adc a,$00
1505	52 45 	ld.sil b,l	ld.sil b,l
1507	54 	ld d,h	ld d,h
1508	c9 	ret	ret
1509	4d 	ld c,l	ld c,l
150a	49 4d 	ld.lis c,l	ld.lis c,l
150c	00 	nop	nop
150d	b1 	or c	or c
150e	56 	ld d,(hl)	ld d,(hl)
150f	49 4d 	ld.lis c,l	ld.lis c,l
1511	00 	nop	nop
1512	b2 	or d	or d
1513	5e 	ld e,(hl)	ld e,(hl)
1514	52 	noni.sil	noni.sil
1515	52 c4 67 52 4c 	call.sil nz,$4c5267	call.sil nz,$000000
151a	c4 6f 4c 	call nz,$4c6f	call nz,$0000
151d	44 	ld b,h	ld b,h
151e	c9 	ret	ret
151f	a0 	and b	and b
1520	43 	ld b,e	ld b,e
1521	50 	ld d,b	ld d,b
1522	c9 	ret	ret
1523	a1 	and c	and c
1524	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
1526	c9 	ret	ret
1527	a2 	and d	and d
1528	4f 	ld c,a	ld c,a
1529	55 	ld d,l	ld d,l
152a	54 	ld d,h	ld d,h
152b	c9 	ret	ret
152c	a3 	and e	and e
152d	4c 	ld c,h	ld c,h
152e	44 	ld b,h	ld b,h
152f	c4 a8 43 	call nz,$43a8	call nz,$0000
1532	50 	ld d,b	ld d,b
1533	c4 a9 49 	call nz,$49a9	call nz,$0000
1536	4e 	ld c,(hl)	ld c,(hl)
1537	c4 aa 4f 	call nz,$4faa	call nz,$0000
153a	55 	ld d,l	ld d,l
153b	54 	ld d,h	ld d,h
153c	c4 ab 4c 	call nz,$4cab	call nz,$0000
153f	44 	ld b,h	ld b,h
1540	49 d2 b0 43 	jp.lis nc,$43b0	jp.lis nc,$0000
1544	50 	ld d,b	ld d,b
1545	49 d2 b1 49 	jp.lis nc,$49b1	jp.lis nc,$0000
1549	4e 	ld c,(hl)	ld c,(hl)
154a	49 d2 b2 4f 	jp.lis nc,$4fb2	jp.lis nc,$0000
154e	54 	ld d,h	ld d,h
154f	49 d2 b3 4c 	jp.lis nc,$4cb3	jp.lis nc,$0000
1553	44 	ld b,h	ld b,h
1554	44 	ld b,h	ld b,h
1555	d2 b8 43 	jp nc,$43b8	jp nc,$0000
1558	50 	ld d,b	ld d,b
1559	44 	ld b,h	ld b,h
155a	d2 b9 49 	jp nc,$49b9	jp nc,$0000
155d	4e 	ld c,(hl)	ld c,(hl)
155e	44 	ld b,h	ld b,h
155f	d2 ba 4f 	jp nc,$4fba	jp nc,$0000
1562	54 	ld d,h	ld d,h
1563	44 	ld b,h	ld b,h
1564	d2 bb 42 	jp nc,$42bb	jp nc,$0000
1567	49 d4 40 52 	call.lis nc,$5240	call.lis nc,$0000
156b	45 	ld b,l	ld b,l
156c	d3 80 	out ($80),a	out ($00),a
156e	53 	ld d,e	ld d,e
156f	45 	ld b,l	ld b,l
1570	d4 c0 52 	call nc,$52c0	call nc,$0000
1573	4c 	ld c,h	ld c,h
1574	c3 00 52 	jp $5200	jp $0000
1577	52 c3 08 52 cc 	jp.sil $cc5208	jp.sil $000000
157c	10 52 	djnz $+$54	djnz $+$00
157e	d2 18 53 	jp nc,$5318	jp nc,$0000
1581	4c 	ld c,h	ld c,h
1582	c1 	pop bc	pop bc
1583	20 53 	jr nz,$+$55	jr nz,$+$00
1585	52 c1 	pop.sil bc	pop.sil bc
1587	28 53 	jr z,$+$55	jr z,$+$00
1589	52 cc 38 50 4f 	call.sil z,$4f5038	call.sil z,$000000
158e	d0 	ret nc	ret nc
158f	c1 	pop bc	pop bc
1590	50 	ld d,b	ld d,b
1591	55 	ld d,l	ld d,l
1592	53 	ld d,e	ld d,e
1593	c8 	ret z	ret z
1594	c5 	push bc	push bc
1595	45 	ld b,l	ld b,l
1596	58 	ld e,b	ld e,b
1597	00 	nop	nop
1598	28 53 	jr z,$+$55	jr z,$+$00
159a	d0 	ret nc	ret nc
159b	e3 	ex (sp),hl	ex (sp),hl
159c	53 	ld d,e	ld d,e
159d	55 	ld d,l	ld d,l
159e	c2 90 41 	jp nz,$4190	jp nz,$0000
15a1	4e 	ld c,(hl)	ld c,(hl)
15a2	c4 a0 58 	call nz,$58a0	call nz,$0000
15a5	4f 	ld c,a	ld c,a
15a6	d2 a8 4f 	jp nc,$4fa8	jp nc,$0000
15a9	d2 b0 43 	jp nc,$43b0	jp nc,$0000
15ac	d0 	ret nc	ret nc
15ad	b8 	cp b	cp b
15ae	80 	add a,b	add a,b
15af	a0 	and b	and b
15b0	84 	add a,h	add a,h
15b1	b0 	or b	or b
15b2	41 	ld b,c	ld b,c
15b3	44 	ld b,h	ld b,h
15b4	c4 80 41 	call nz,$4180	call nz,$0000
15b7	44 	ld b,h	ld b,h
15b8	c3 88 53 	jp $5388	jp $0000
15bb	42 	ld b,d	ld b,d
15bc	c3 98 49 	jp $4998	jp $0000
15bf	4e 	ld c,(hl)	ld c,(hl)
15c0	c3 04 44 	jp $4404	jp $0000
15c3	45 	ld b,l	ld b,l
15c4	c3 05 49 	jp $4905	jp $0000
15c7	ce 40 	adc a,$40	adc a,$00
15c9	4f 	ld c,a	ld c,a
15ca	55 	ld d,l	ld d,l
15cb	d4 41 4a 	call nc,$4a41	call nc,$0000
15ce	d2 20 44 	jp nc,$4420	jp nc,$0000
15d1	4a 	ld c,d	ld c,d
15d2	4e 	ld c,(hl)	ld c,(hl)
15d3	da 10 4a 	jp c,$4a10	jp c,$0000
15d6	d0 	ret nc	ret nc
15d7	c2 43 41 	jp nz,$4143	jp nz,$0000
15da	4c 	ld c,h	ld c,h
15db	cc c4 52 	call z,$52c4	call z,$0000
15de	53 	ld d,e	ld d,e
15df	d4 c7 52 	call nc,$52c7	call nc,$0000
15e2	45 	ld b,l	ld b,l
15e3	d4 c0 4c 	call nc,$4cc0	call nc,$0000
15e6	c4 40 5d 	call nz,$5d40	call nz,$0000
15e9	cd 00 5d 	call $5d00	call $0000
15ec	c2 00 4f 	jp nz,$4f00	jp nz,$0000
15ef	50 	ld d,b	ld d,b
15f0	d4 00 5d 	call nc,$5d00	call nc,$0000
15f3	d7 	rst $10	rst $00
15f4	00 	nop	nop
15f5	00 	nop	nop
15f6	c2 00 c3 	jp nz,$c300	jp nz,$0000
15f9	01 c4 02 	ld bc,$02c4	ld bc,$0000
15fc	c5 	push bc	push bc
15fd	03 	inc bc	inc bc
15fe	c8 	ret z	ret z
15ff	04 	inc b	inc b
1600	cc 05 28 	call z,$2805	call z,$0000
1603	48 	ld c,b	ld c,b
1604	cc 06 c1 	call z,$c106	call z,$0000
1607	07 	rlca	rlca
1608	28 49 	jr z,$+$4b	jr z,$+$00
160a	d8 	ret c	ret c
160b	86 	add a,(hl)	add a,(hl)
160c	28 49 	jr z,$+$4b	jr z,$+$00
160e	d9 	exx	exx
160f	c6 42 	add a,$42	add a,$00
1611	c3 08 44 	jp $4408	jp $0000
1614	c5 	push bc	push bc
1615	0a 	ld a,(bc)	ld a,(bc)
1616	48 	ld c,b	ld c,b
1617	cc 0c 49 	call z,$490c	call z,$0000
161a	d8 	ret c	ret c
161b	8c 	adc a,h	adc a,h
161c	49 d9 	exx.lis	exx.lis
161e	cc 41 c6 	call z,$c641	call z,$0000
1621	0e 53 	ld c,$53	ld c,$00
1623	d0 	ret nc	ret nc
1624	0e 4e 	ld c,$4e	ld c,$00
1626	da 10 da 	jp c,$da10	jp c,$0000
1629	11 4e c3 	ld de,$c34e	ld de,$0000
162c	12 	ld (de),a	ld (de),a
162d	50 	ld d,b	ld d,b
162e	cf 	rst $08	rst $00
162f	14 	inc d	inc d
1630	50 	ld d,b	ld d,b
1631	c5 	push bc	push bc
1632	15 	dec d	dec d
1633	d0 	ret nc	ret nc
1634	16 cd 	ld d,$cd	ld d,$00
1636	17 	rla	rla
1637	28 c3 	jr z,$-$3b	jr z,$-$00
1639	20 00 	jr nz,$+$02	jr nz,$+$00
163b	49 00 	nop.lis	nop.lis
163d	c1 	pop bc	pop bc
163e	47 	ld b,a	ld b,a
163f	52 00 	nop.sil	nop.sil
1641	c1 	pop bc	pop bc
1642	4f 	ld c,a	ld c,a
1643	41 	ld b,c	ld b,c
1644	00 	nop	nop
1645	c9 	ret	ret
1646	57 	ld d,a	ld d,a
1647	41 	ld b,c	ld b,c
1648	00 	nop	nop
1649	d2 5f 28 	jp nc,$285f	jp nc,$0000
164c	42 	ld b,d	ld b,d
164d	43 	ld b,e	ld b,e
164e	00 	nop	nop
164f	c1 	pop bc	pop bc
1650	02 	ld (bc),a	ld (bc),a
1651	28 44 	jr z,$+$46	jr z,$+$00
1653	45 	ld b,l	ld b,l
1654	00 	nop	nop
1655	c1 	pop bc	pop bc
1656	12 	ld (de),a	ld (de),a
1657	41 	ld b,c	ld b,c
1658	00 	nop	nop
1659	28 42 	jr z,$+$44	jr z,$+$00
165b	c3 0a 41 	jp $410a	jp $0000
165e	00 	nop	nop
165f	28 44 	jr z,$+$46	jr z,$+$00
1661	c5 	push bc	push bc
1662	1a 	ld a,(de)	ld a,(de)
1663	00 	nop	nop
1664	42 	ld b,d	ld b,d
1665	1f 	rra	rra
1666	3d 	dec a	dec a
1667	1b 	dec de	dec de
1668	5a 	ld e,d	ld e,d
1669	1b 	dec de	dec de
166a	0f 	rrca	rrca
166b	1b 	dec de	dec de
166c	62 	ld h,d	ld h,d
166d	1b 	dec de	dec de
166e	05 	dec b	dec b
166f	1b 	dec de	dec de
1670	0a 	ld a,(bc)	ld a,(bc)
1671	1b 	dec de	dec de
1672	ae 	xor (hl)	xor (hl)
1673	1b 	dec de	dec de
1674	ea 1b c9 	jp pe,$c91b	jp pe,$0000
1677	0d 	dec c	dec c
1678	f2 1a e2 	jp p,$e21a	jp p,$0000
167b	1b 	dec de	dec de
167c	e6 1b 	and $1b	and $00
167e	ce 1a 	adc a,$1a	adc a,$00
1680	ce 1b 	adc a,$1b	adc a,$00
1682	2d 	dec l	dec l
1683	1b 	dec de	dec de
1684	b6 	or (hl)	or (hl)
1685	1b 	dec de	dec de
1686	23 	inc hl	inc hl
1687	1b 	dec de	dec de
1688	28 1b 	jr z,$+$1d	jr z,$+$00
168a	0e 1c 	ld c,$1c	ld c,$00
168c	d6 1b 	sub $1b	sub $00
168e	52 1b 	dec.sil de	dec.sil de
1690	da 1f c5 	jp c,$c51f	jp c,$0000
1693	29 	add hl,hl	add hl,hl
1694	dc 1a d7 	call c,$d71a	call c,$0000
1697	1a 	ld a,(de)	ld a,(de)
1698	87 	add a,a	add a,a
1699	1d 	dec e	dec e
169a	c2 1b ff 	jp nz,$ff1b	jp nz,$0000
169d	1a 	ld a,(de)	ld a,(de)
169e	da 1b de 	jp c,$de1b	jp c,$0000
16a1	1b 	dec de	dec de
16a2	b2 	or d	or d
16a3	1b 	dec de	dec de
16a4	3a 1b 38 	ld a,($381b)	ld a,($0000)
16a7	1b 	dec de	dec de
16a8	aa 	xor d	xor d
16a9	1b 	dec de	dec de
16aa	96 	sub (hl)	sub (hl)
16ab	0d 	dec c	dec c
16ac	b7 	or a	or a
16ad	1a 	ld a,(de)	ld a,(de)
16ae	ba 	cp d	cp d
16af	1b 	dec de	dec de
16b0	3b 	dec sp	dec sp
16b1	1c 	inc e	inc e
16b2	be 	cp (hl)	cp (hl)
16b3	1b 	dec de	dec de
16b4	d2 1b c6 	jp nc,$c61b	jp nc,$0000
16b7	1b 	dec de	dec de
16b8	ca 1b 14 	jp z,$141b	jp z,$0000
16bb	1b 	dec de	dec de
16bc	9f 	sbc a,a	sbc a,a
16bd	1b 	dec de	dec de
16be	21 30 01 	ld hl,$0130	ld hl,$0000
16c1	1c 	inc e	inc e
16c2	bd 	cp l	cp l
16c3	1a 	ld a,(de)	ld a,(de)
16c4	08 	ex af,af'	ex af,af'
16c5	1e 0f 	ld e,$0f	ld e,$00
16c7	1e 70 	ld e,$70	ld e,$00
16c9	1e b0 	ld e,$b0	ld e,$00
16cb	1e 80 	ld e,$80	ld e,$00
16cd	1e de 	ld e,$de	ld e,$00
16cf	1e 9a 	ld e,$9a	ld e,$00
16d1	1f 	rra	rra
16d2	08 	ex af,af'	ex af,af'
16d3	1f 	rra	rra
16d4	c2 1a cb 	jp nz,$cb1a	jp nz,$0000
16d7	1c 	inc e	inc e
16d8	8d 	adc a,l	adc a,l
16d9	1b 	dec de	dec de
16da	95 	sub l	sub l
16db	1b 	dec de	dec de
16dc	87 	add a,a	add a,a
16dd	1b 	dec de	dec de
16de	7a 	ld a,d	ld a,d
16df	1b 	dec de	dec de
16e0	9b 	sbc a,e	sbc a,e
16e1	1b 	dec de	dec de
16e2	80 	add a,b	add a,b
16e3	1b 	dec de	dec de
16e4	cd f9 16 	call $16f9	call $0000
16e7	fe 82 	cp $82	cp $00
16e9	28 03 	jr z,$+$05	jr z,$+$00
16eb	fe 84 	cp $84	cp $00
16ed	c0 	ret nz	ret nz
16ee	cd 55 20 	call $2055	call $0000
16f1	cd f9 16 	call $16f9	call $0000
16f4	cd 65 20 	call $2065	call $0000
16f7	18 ee 	jr $-$10	jr $-$00
16f9	cd 0a 17 	call $170a	call $0000
16fc	fe 80 	cp $80	cp $00
16fe	c0 	ret nz	ret nz
16ff	cd 55 20 	call $2055	call $0000
1702	cd 0a 17 	call $170a	call $0000
1705	cd 65 20 	call $2065	call $0000
1708	18 f2 	jr $-$0c	jr $-$00
170a	cd 82 17 	call $1782	call $0000
170d	cd 4c 20 	call $204c	call $0000
1710	c0 	ret nz	ret nz
1711	47 	ld b,a	ld b,a
1712	fd 23 	inc iy	inc iy
1714	cd ed 44 	call $44ed	call $0000
1717	cd 4c 20 	call $204c	call $0000
171a	20 07 	jr nz,$+$09	jr nz,$+$00
171c	fd 23 	inc iy	inc iy
171e	b8 	cp b	cp b
171f	28 1c 	jr z,$+$1e	jr z,$+$00
1721	80 	add a,b	add a,b
1722	47 	ld b,a	ld b,a
1723	78 	ld a,b	ld a,b
1724	08 	ex af,af'	ex af,af'
1725	fa 55 17 	jp m,$1755	jp m,$0000
1728	08 	ex af,af'	ex af,af'
1729	d6 04 	sub $04	sub $00
172b	fe 3a 	cp $3a	cp $00
172d	20 02 	jr nz,$+$04	jr nz,$+$00
172f	c6 02 	add a,$02	add a,$00
1731	e6 0f 	and $0f	and $00
1733	cd 59 20 	call $2059	call $0000
1736	cd 82 17 	call $1782	call $0000
1739	cd 65 20 	call $2065	call $0000
173c	c9 	ret	ret
173d	fe 3d 	cp $3d	cp $00
173f	28 e2 	jr z,$-$1c	jr z,$-$00
1741	cd ed 44 	call $44ed	call $0000
1744	cd 4c 20 	call $204c	call $0000
1747	20 07 	jr nz,$+$09	jr nz,$+$00
1749	b8 	cp b	cp b
174a	c2 c2 25 	jp nz,$25c2	jp nz,$0000
174d	fd 23 	inc iy	inc iy
174f	04 	inc b	inc b
1750	78 	ld a,b	ld a,b
1751	d6 12 	sub $12	sub $00
1753	18 de 	jr $-$20	jr $-$00
1755	08 	ex af,af'	ex af,af'
1756	3d 	dec a	dec a
1757	e6 07 	and $07	and $00
1759	cd fb 1f 	call $1ffb	call $0000
175c	f5 	push af	push af
175d	cd 82 17 	call $1782	call $0000
1760	08 	ex af,af'	ex af,af'
1761	f2 50 18 	jp p,$1850	jp p,$0000
1764	f1 	pop af	pop af
1765	4b 	ld c,e	ld c,e
1766	d1 	pop de	pop de
1767	21 00 00 	ld hl,$0000	ld hl,$0000
176a	39 	add hl,sp	add hl,sp
176b	43 	ld b,e	ld b,e
176c	d5 	push de	push de
176d	11 00 52 	ld de,$5200	ld de,$0000
1770	eb 	ex de,hl	ex de,hl
1771	cd 9d 20 	call $209d	call $0000
1774	d1 	pop de	pop de
1775	eb 	ex de,hl	ex de,hl
1776	26 00 	ld h,$00	ld h,$00
1778	39 	add hl,sp	add hl,sp
1779	f9 	ld sp,hl	ld sp,hl
177a	eb 	ex de,hl	ex de,hl
177b	af 	xor a	xor a
177c	4f 	ld c,a	ld c,a
177d	08 	ex af,af'	ex af,af'
177e	fd 7e 00 	ld a,(iy)	ld a,(iy)
1781	c9 	ret	ret
1782	cd d0 17 	call $17d0	call $0000
1785	fe 2d 	cp $2d	cp $00
1787	28 08 	jr z,$+$0a	jr z,$+$00
1789	fe 2b 	cp $2b	cp $00
178b	c0 	ret nz	ret nz
178c	08 	ex af,af'	ex af,af'
178d	fa 9c 17 	jp m,$179c	jp m,$0000
1790	08 	ex af,af'	ex af,af'
1791	cd 55 20 	call $2055	call $0000
1794	cd d0 17 	call $17d0	call $0000
1797	cd 65 20 	call $2065	call $0000
179a	18 e9 	jr $-$15	jr $-$00
179c	08 	ex af,af'	ex af,af'
179d	fd 23 	inc iy	inc iy
179f	cd fb 1f 	call $1ffb	call $0000
17a2	cd d0 17 	call $17d0	call $0000
17a5	08 	ex af,af'	ex af,af'
17a6	f2 50 18 	jp p,$1850	jp p,$0000
17a9	4b 	ld c,e	ld c,e
17aa	d1 	pop de	pop de
17ab	d5 	push de	push de
17ac	21 00 52 	ld hl,$5200	ld hl,$0000
17af	54 	ld d,h	ld d,h
17b0	79 	ld a,c	ld a,c
17b1	b7 	or a	or a
17b2	28 0e 	jr z,$+$10	jr z,$+$00
17b4	45 	ld b,l	ld b,l
17b5	6f 	ld l,a	ld l,a
17b6	83 	add a,e	add a,e
17b7	5f 	ld e,a	ld e,a
17b8	3e 13 	ld a,$13	ld a,$00
17ba	38 6b 	jr c,$+$6d	jr c,$+$00
17bc	d5 	push de	push de
17bd	1d 	dec e	dec e
17be	2d 	dec l	dec l
17bf	ed b8 	lddr	lddr
17c1	d1 	pop de	pop de
17c2	d9 	exx	exx
17c3	c1 	pop bc	pop bc
17c4	cd 19 20 	call $2019	call $0000
17c7	d9 	exx	exx
17c8	f6 80 	or $80	or $00
17ca	08 	ex af,af'	ex af,af'
17cb	fd 7e 00 	ld a,(iy)	ld a,(iy)
17ce	18 b5 	jr $-$49	jr $-$00
17d0	cd f6 17 	call $17f6	call $0000
17d3	fe 2a 	cp $2a	cp $00
17d5	28 0b 	jr z,$+$0d	jr z,$+$00
17d7	fe 2f 	cp $2f	cp $00
17d9	28 07 	jr z,$+$09	jr z,$+$00
17db	fe 83 	cp $83	cp $00
17dd	28 03 	jr z,$+$05	jr z,$+$00
17df	fe 81 	cp $81	cp $00
17e1	c0 	ret nz	ret nz
17e2	cd 55 20 	call $2055	call $0000
17e5	cd f6 17 	call $17f6	call $0000
17e8	cd 65 20 	call $2065	call $0000
17eb	18 e6 	jr $-$18	jr $-$00
17ed	7b 	ld a,e	ld a,e
17ee	fe 2b 	cp $2b	cp $00
17f0	28 de 	jr z,$-$20	jr z,$-$00
17f2	fe 2d 	cp $2d	cp $00
17f4	28 da 	jr z,$-$24	jr z,$-$00
17f6	cd b2 18 	call $18b2	call $0000
17f9	b7 	or a	or a
17fa	08 	ex af,af'	ex af,af'
17fb	cd ed 44 	call $44ed	call $0000
17fe	fe 5e 	cp $5e	cp $00
1800	c0 	ret nz	ret nz
1801	cd 55 20 	call $2055	call $0000
1804	cd b2 18 	call $18b2	call $0000
1807	b7 	or a	or a
1808	08 	ex af,af'	ex af,af'
1809	cd 65 20 	call $2065	call $0000
180c	18 ed 	jr $-$11	jr $-$00
180e	cd e4 16 	call $16e4	call $0000
1811	08 	ex af,af'	ex af,af'
1812	f0 	ret p	ret p
1813	18 3b 	jr $+$3d	jr $+$00
1815	cd e4 16 	call $16e4	call $0000
1818	08 	ex af,af'	ex af,af'
1819	f2 f9 1b 	jp p,$1bf9	jp p,$0000
181c	18 32 	jr $+$34	jr $+$00
181e	cd e4 16 	call $16e4	call $0000
1821	08 	ex af,af'	ex af,af'
1822	f8 	ret m	ret m
1823	18 2b 	jr $+$2d	jr $+$00
1825	3e 1c 	ld a,$1c	ld a,$00
1827	c3 26 3f 	jp $3f26	jp $0000
182a	d9 	exx	exx
182b	7c 	ld a,h	ld a,h
182c	2f 	cpl	cpl
182d	67 	ld h,a	ld h,a
182e	7d 	ld a,l	ld a,l
182f	2f 	cpl	cpl
1830	6f 	ld l,a	ld l,a
1831	d9 	exx	exx
1832	7c 	ld a,h	ld a,h
1833	2f 	cpl	cpl
1834	67 	ld h,a	ld h,a
1835	7d 	ld a,l	ld a,l
1836	2f 	cpl	cpl
1837	6f 	ld l,a	ld l,a
1838	d9 	exx	exx
1839	23 	inc hl	inc hl
183a	7c 	ld a,h	ld a,h
183b	b5 	or l	or l
183c	d9 	exx	exx
183d	3e 00 	ld a,$00	ld a,$00
183f	c0 	ret nz	ret nz
1840	23 	inc hl	inc hl
1841	c9 	ret	ret
1842	cd b2 18 	call $18b2	call $0000
1845	b7 	or a	or a
1846	f2 f9 1b 	jp p,$1bf9	jp p,$0000
1849	18 05 	jr $+$07	jr $+$00
184b	cd b2 18 	call $18b2	call $0000
184e	b7 	or a	or a
184f	f8 	ret m	ret m
1850	3e 06 	ld a,$06	ld a,$00
1852	18 d3 	jr $-$2b	jr $-$00
1854	cd e4 16 	call $16e4	call $0000
1857	cd 90 20 	call $2090	call $0000
185a	08 	ex af,af'	ex af,af'
185b	c9 	ret	ret
185c	cd b2 18 	call $18b2	call $0000
185f	b7 	or a	or a
1860	f0 	ret p	ret p
1861	18 ed 	jr $-$11	jr $-$00
1863	cd da 1f 	call $1fda	call $0000
1866	cd 39 20 	call $2039	call $0000
1869	38 ba 	jr c,$-$44	jr c,$-$00
186b	fd 23 	inc iy	inc iy
186d	e6 0f 	and $0f	and $00
186f	06 04 	ld b,$04	ld b,$00
1871	d9 	exx	exx
1872	29 	add hl,hl	add hl,hl
1873	d9 	exx	exx
1874	ed 6a 	adc hl,hl	adc hl,hl
1876	10 f9 	djnz $-$05	djnz $-$00
1878	d9 	exx	exx
1879	b5 	or l	or l
187a	6f 	ld l,a	ld l,a
187b	d9 	exx	exx
187c	cd 39 20 	call $2039	call $0000
187f	30 ea 	jr nc,$-$14	jr nc,$-$00
1881	af 	xor a	xor a
1882	c9 	ret	ret
1883	cd da 1f 	call $1fda	call $0000
1886	cd 2c 20 	call $202c	call $0000
1889	38 9a 	jr c,$-$64	jr c,$-$00
188b	fd 23 	inc iy	inc iy
188d	cb 1f 	rr a	rr a
188f	d9 	exx	exx
1890	ed 6a 	adc hl,hl	adc hl,hl
1892	d9 	exx	exx
1893	ed 6a 	adc hl,hl	adc hl,hl
1895	cd 2c 20 	call $202c	call $0000
1898	30 f1 	jr nc,$-$0d	jr nc,$-$00
189a	af 	xor a	xor a
189b	c9 	ret	ret
189c	cd 5c 18 	call $185c	call $0000
189f	0d 	dec c	dec c
18a0	0c 	inc c	inc c
18a1	28 87 	jr z,$-$77	jr z,$-$00
18a3	7c 	ld a,h	ld a,h
18a4	ee 80 	xor $80	xor $00
18a6	67 	ld h,a	ld h,a
18a7	af 	xor a	xor a
18a8	c9 	ret	ret
18a9	cd b8 25 	call $25b8	call $0000
18ac	e5 	push hl	push hl
18ad	d9 	exx	exx
18ae	e1 	pop hl	pop hl
18af	c3 32 1b 	jp $1b32	jp $0000
18b2	cd 68 32 	call $3268	call $0000
18b5	cd ed 44 	call $44ed	call $0000
18b8	fd 23 	inc iy	inc iy
18ba	fe 8d 	cp $8d	cp $00
18bc	38 08 	jr c,$+$0a	jr c,$+$00
18be	fe c7 	cp $c7	cp $00
18c0	da a3 20 	jp c,$20a3	jp c,$0000
18c3	c3 12 1a 	jp $1a12	jp $0000
18c6	fe 3a 	cp $3a	cp $00
18c8	30 25 	jr nc,$+$27	jr nc,$+$00
18ca	fe 30 	cp $30	cp $00
18cc	30 7b 	jr nc,$+$7d	jr nc,$+$00
18ce	fe 28 	cp $28	cp $00
18d0	28 82 	jr z,$-$7c	jr z,$-$00
18d2	fe 2d 	cp $2d	cp $00
18d4	28 c6 	jr z,$-$38	jr z,$-$00
18d6	fe 2b 	cp $2b	cp $00
18d8	28 82 	jr z,$-$7c	jr z,$-$00
18da	fe 2e 	cp $2e	cp $00
18dc	28 6b 	jr z,$+$6d	jr z,$+$00
18de	fe 26 	cp $26	cp $00
18e0	28 81 	jr z,$-$7d	jr z,$-$00
18e2	fe 25 	cp $25	cp $00
18e4	28 9d 	jr z,$-$61	jr z,$-$00
18e6	fe 22 	cp $22	cp $00
18e8	28 72 	jr z,$+$74	jr z,$+$00
18ea	fe 0a 	cp $0a	cp $00
18ec	ca b2 1a 	jp z,$1ab2	jp z,$0000
18ef	fe 83 	cp $83	cp $00
18f1	ca 2f 1d 	jp z,$1d2f	jp z,$0000
18f4	fe 5e 	cp $5e	cp $00
18f6	28 b1 	jr z,$-$4d	jr z,$-$00
18f8	fd 2b 	dec iy	dec iy
18fa	cd c5 41 	call $41c5	call $0000
18fd	20 2f 	jr nz,$+$31	jr nz,$+$00
18ff	cb 77 	bit 6,a	bit 6,a
1901	20 7e 	jr nz,$+$80	jr nz,$+$00
1903	b7 	or a	or a
1904	fa f0 19 	jp m,$19f0	jp m,$0000
1907	cb 57 	bit 2,a	bit 2,a
1909	0e 00 	ld c,$00	ld c,$00
190b	28 16 	jr z,$+$18	jr z,$+$00
190d	cb 47 	bit 0,a	bit 0,a
190f	28 03 	jr z,$+$05	jr z,$+$00
1911	dd 4e 04 	ld c,(ix+$04)	ld c,(ix+$00)
1914	d9 	exx	exx
1915	dd 6e 00 	ld l,(ix)	ld l,(ix)
1918	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
191b	d9 	exx	exx
191c	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
191f	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
1922	c9 	ret	ret
1923	21 00 00 	ld hl,$0000	ld hl,$0000
1926	d9 	exx	exx
1927	26 00 	ld h,$00	ld h,$00
1929	dd 6e 00 	ld l,(ix)	ld l,(ix)
192c	d9 	exx	exx
192d	c9 	ret	ret
192e	da c2 25 	jp c,$25c2	jp c,$0000
1931	3a fe 54 	ld a,($54fe)	ld a,($0000)
1934	cb 6f 	bit 5,a	bit 5,a
1936	3e 1a 	ld a,$1a	ld a,$00
1938	20 36 	jr nz,$+$38	jr nz,$+$00
193a	fd 23 	inc iy	inc iy
193c	cd d1 43 	call $43d1	call $0000
193f	30 f9 	jr nc,$-$05	jr nc,$-$00
1941	dd 21 40 54 	ld ix,$5440	ld ix,$0000
1945	af 	xor a	xor a
1946	4f 	ld c,a	ld c,a
1947	18 cb 	jr $-$33	jr $-$00
1949	fd 2b 	dec iy	dec iy
194b	fd e5 	push iy	push iy
194d	dd e1 	pop ix	pop ix
194f	3e 24 	ld a,$24	ld a,$00
1951	cd f7 44 	call $44f7	call $0000
1954	38 1a 	jr c,$+$1c	jr c,$+$00
1956	dd e5 	push ix	push ix
1958	fd e1 	pop iy	pop iy
195a	af 	xor a	xor a
195b	c9 	ret	ret
195c	11 00 52 	ld de,$5200	ld de,$0000
195f	fd 7e 00 	ld a,(iy)	ld a,(iy)
1962	fd 23 	inc iy	inc iy
1964	fe 22 	cp $22	cp $00
1966	28 0b 	jr z,$+$0d	jr z,$+$00
1968	12 	ld (de),a	ld (de),a
1969	1c 	inc e	inc e
196a	fe 0d 	cp $0d	cp $00
196c	20 f1 	jr nz,$-$0d	jr nz,$-$00
196e	3e 09 	ld a,$09	ld a,$00
1970	c3 26 3f 	jp $3f26	jp $0000
1973	fd 7e 00 	ld a,(iy)	ld a,(iy)
1976	fe 22 	cp $22	cp $00
1978	fd 23 	inc iy	inc iy
197a	28 ec 	jr z,$-$12	jr z,$-$00
197c	fd 2b 	dec iy	dec iy
197e	3e 80 	ld a,$80	ld a,$00
1980	c9 	ret	ret
1981	3e 0e 	ld a,$0e	ld a,$00
1983	c3 26 3f 	jp $3f26	jp $0000
1986	7e 	ld a,(hl)	ld a,(hl)
1987	23 	inc hl	inc hl
1988	b7 	or a	or a
1989	28 f6 	jr z,$-$08	jr z,$-$00
198b	11 01 00 	ld de,$0001	ld de,$0000
198e	4e 	ld c,(hl)	ld c,(hl)
198f	23 	inc hl	inc hl
1990	46 	ld b,(hl)	ld b,(hl)
1991	23 	inc hl	inc hl
1992	eb 	ex de,hl	ex de,hl
1993	f5 	push af	push af
1994	d5 	push de	push de
1995	cd 9f 36 	call $369f	call $0000
1998	d1 	pop de	pop de
1999	f1 	pop af	pop af
199a	eb 	ex de,hl	ex de,hl
199b	3d 	dec a	dec a
199c	20 f0 	jr nz,$-$0e	jr nz,$-$00
199e	c9 	ret	ret
199f	cd ed 44 	call $44ed	call $0000
19a2	cd c5 41 	call $41c5	call $0000
19a5	20 87 	jr nz,$-$77	jr nz,$-$00
19a7	cb 77 	bit 6,a	bit 6,a
19a9	37 	scf	scf
19aa	28 82 	jr z,$-$7c	jr z,$-$00
19ac	e6 8f 	and $8f	and $00
19ae	47 	ld b,a	ld b,a
19af	7e 	ld a,(hl)	ld a,(hl)
19b0	23 	inc hl	inc hl
19b1	66 	ld h,(hl)	ld h,(hl)
19b2	6f 	ld l,a	ld l,a
19b3	e6 fe 	and $fe	and $00
19b5	b4 	or h	or h
19b6	28 c9 	jr z,$-$35	jr z,$-$00
19b8	c9 	ret	ret
19b9	cd ed 44 	call $44ed	call $0000
19bc	fe 28 	cp $28	cp $00
19be	20 df 	jr nz,$-$1f	jr nz,$-$00
19c0	fd 23 	inc iy	inc iy
19c2	cd 9f 19 	call $199f	call $0000
19c5	cd 90 20 	call $2090	call $0000
19c8	c9 	ret	ret
19c9	cb 57 	bit 2,a	bit 2,a
19cb	06 00 	ld b,$00	ld b,$00
19cd	28 16 	jr z,$+$18	jr z,$+$00
19cf	cb 47 	bit 0,a	bit 0,a
19d1	28 03 	jr z,$+$05	jr z,$+$00
19d3	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
19d6	d9 	exx	exx
19d7	dd 5e 00 	ld e,(ix)	ld e,(ix)
19da	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
19dd	d9 	exx	exx
19de	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
19e1	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
19e4	c9 	ret	ret
19e5	11 00 00 	ld de,$0000	ld de,$0000
19e8	d9 	exx	exx
19e9	16 00 	ld d,$00	ld d,$00
19eb	dd 5e 00 	ld e,(ix)	ld e,(ix)
19ee	d9 	exx	exx
19ef	c9 	ret	ret
19f0	11 00 52 	ld de,$5200	ld de,$0000
19f3	1f 	rra	rra
19f4	30 10 	jr nc,$+$12	jr nc,$+$00
19f6	cd 14 19 	call $1914	call $0000
19f9	d9 	exx	exx
19fa	7d 	ld a,l	ld a,l
19fb	d9 	exx	exx
19fc	b7 	or a	or a
19fd	4f 	ld c,a	ld c,a
19fe	3e 80 	ld a,$80	ld a,$00
1a00	c8 	ret z	ret z
1a01	06 00 	ld b,$00	ld b,$00
1a03	ed b0 	ldir	ldir
1a05	c9 	ret	ret
1a06	7e 	ld a,(hl)	ld a,(hl)
1a07	12 	ld (de),a	ld (de),a
1a08	23 	inc hl	inc hl
1a09	fe 0d 	cp $0d	cp $00
1a0b	3e 80 	ld a,$80	ld a,$00
1a0d	c8 	ret z	ret z
1a0e	1c 	inc e	inc e
1a0f	20 f5 	jr nz,$-$09	jr nz,$-$00
1a11	c9 	ret	ret
1a12	fe eb 	cp $eb	cp $00
1a14	ca d5 0d 	jp z,$0dd5	jp z,$0000
1a17	fe fe 	cp $fe	cp $00
1a19	ca df 0d 	jp z,$0ddf	jp z,$0000
1a1c	fe f6 	cp $f6	cp $00
1a1e	28 11 	jr z,$+$13	jr z,$+$00
1a20	fe e0 	cp $e0	cp $00
1a22	28 07 	jr z,$+$09	jr z,$+$00
1a24	fe de 	cp $de	cp $00
1a26	28 44 	jr z,$+$46	jr z,$+$00
1a28	c3 c2 25 	jp $25c2	jp $0000
1a2b	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
1a2e	c3 32 1b 	jp $1b32	jp $0000
1a31	fd 7e 00 	ld a,(iy)	ld a,(iy)
1a34	fe 24 	cp $24	cp $00
1a36	20 f0 	jr nz,$-$0e	jr nz,$-$00
1a38	fd 23 	inc iy	inc iy
1a3a	2a ee 54 	ld hl,($54ee)	ld hl,($0000)
1a3d	11 00 52 	ld de,$5200	ld de,$0000
1a40	7e 	ld a,(hl)	ld a,(hl)
1a41	b7 	or a	or a
1a42	28 c7 	jr z,$-$37	jr z,$-$00
1a44	ed a0 	ldi	ldi
1a46	fe a0 	cp $a0	cp $00
1a48	ea 40 1a 	jp pe,$1a40	jp pe,$0000
1a4b	fe 0a 	cp $0a	cp $00
1a4d	28 f1 	jr z,$-$0d	jr z,$-$00
1a4f	1d 	dec e	dec e
1a50	e5 	push hl	push hl
1a51	21 66 38 	ld hl,$3866	ld hl,$0000
1a54	01 5b 03 	ld bc,$035b	ld bc,$0000
1a57	ed b1 	cpir	cpir
1a59	06 a0 	ld b,$a0	ld b,$00
1a5b	fe 91 	cp $91	cp $00
1a5d	ea 61 1a 	jp pe,$1a61	jp pe,$0000
1a60	04 	inc b	inc b
1a61	7e 	ld a,(hl)	ld a,(hl)
1a62	ed a0 	ldi	ldi
1a64	b8 	cp b	cp b
1a65	ea 61 1a 	jp pe,$1a61	jp pe,$0000
1a68	e1 	pop hl	pop hl
1a69	1d 	dec e	dec e
1a6a	18 d4 	jr $-$2a	jr $-$00
1a6c	cd ed 44 	call $44ed	call $0000
1a6f	fe 28 	cp $28	cp $00
1a71	20 09 	jr nz,$+$0b	jr nz,$+$00
1a73	fd 23 	inc iy	inc iy
1a75	cd 7c 1a 	call $1a7c	call $0000
1a78	cd 90 20 	call $2090	call $0000
1a7b	c9 	ret	ret
1a7c	cd 9f 19 	call $199f	call $0000
1a7f	e5 	push hl	push hl
1a80	cd ed 44 	call $44ed	call $0000
1a83	1e 00 	ld e,$00	ld e,$00
1a85	fe 2c 	cp $2c	cp $00
1a87	20 0b 	jr nz,$+$0d	jr nz,$+$00
1a89	fd 23 	inc iy	inc iy
1a8b	cd 15 18 	call $1815	call $0000
1a8e	d9 	exx	exx
1a8f	eb 	ex de,hl	ex de,hl
1a90	1c 	inc e	inc e
1a91	1d 	dec e	dec e
1a92	28 19 	jr z,$+$1b	jr z,$+$00
1a94	e1 	pop hl	pop hl
1a95	7e 	ld a,(hl)	ld a,(hl)
1a96	23 	inc hl	inc hl
1a97	bb 	cp e	cp e
1a98	38 13 	jr c,$+$15	jr c,$+$00
1a9a	1d 	dec e	dec e
1a9b	fa a8 1a 	jp m,$1aa8	jp m,$0000
1a9e	19 	add hl,de	add hl,de
1a9f	19 	add hl,de	add hl,de
1aa0	7e 	ld a,(hl)	ld a,(hl)
1aa1	23 	inc hl	inc hl
1aa2	66 	ld h,(hl)	ld h,(hl)
1aa3	6f 	ld l,a	ld l,a
1aa4	2b 	dec hl	dec hl
1aa5	c3 32 1b 	jp $1b32	jp $0000
1aa8	6f 	ld l,a	ld l,a
1aa9	26 00 	ld h,$00	ld h,$00
1aab	18 f8 	jr $-$06	jr $-$00
1aad	3e 0f 	ld a,$0f	ld a,$00
1aaf	c3 26 3f 	jp $3f26	jp $0000
1ab2	cd f3 10 	call $10f3	call $0000
1ab5	18 7b 	jr $+$7d	jr $+$00
1ab7	cd 8b 0d 	call $0d8b	call $0000
1aba	eb 	ex de,hl	ex de,hl
1abb	18 75 	jr $+$77	jr $+$00
1abd	cd 8b 0d 	call $0d8b	call $0000
1ac0	18 70 	jr $+$72	jr $+$00
1ac2	cd b3 36 	call $36b3	call $0000
1ac5	cd 4e 06 	call $064e	call $0000
1ac8	ca 9f 1b 	jp z,$1b9f	jp z,$0000
1acb	c3 da 1f 	jp $1fda	jp $0000
1ace	cd b3 36 	call $36b3	call $0000
1ad1	cd 3d 06 	call $063d	call $0000
1ad4	6f 	ld l,a	ld l,a
1ad5	18 59 	jr $+$5b	jr $+$00
1ad7	cd 70 1e 	call $1e70	call $0000
1ada	18 19 	jr $+$1b	jr $+$00
1adc	cd ed 44 	call $44ed	call $0000
1adf	fe 28 	cp $28	cp $00
1ae1	20 0a 	jr nz,$+$0c	jr nz,$+$00
1ae3	cd 42 18 	call $1842	call $0000
1ae6	d9 	exx	exx
1ae7	44 	ld b,h	ld b,h
1ae8	4d 	ld c,l	ld c,l
1ae9	ed 68 	in l,(bc)	in l,(bc)
1aeb	18 43 	jr $+$45	jr $+$00
1aed	cd 0f 1e 	call $1e0f	call $0000
1af0	18 08 	jr $+$0a	jr $+$00
1af2	cd 4b 18 	call $184b	call $0000
1af5	af 	xor a	xor a
1af6	bb 	cp e	cp e
1af7	ca 9f 1b 	jp z,$1b9f	jp z,$0000
1afa	2a 00 52 	ld hl,($5200)	ld hl,($0000)
1afd	18 31 	jr $+$33	jr $+$00
1aff	cd 4b 18 	call $184b	call $0000
1b02	eb 	ex de,hl	ex de,hl
1b03	18 2b 	jr $+$2d	jr $+$00
1b05	2a de 54 	ld hl,($54de)	ld hl,($0000)
1b08	18 28 	jr $+$2a	jr $+$00
1b0a	2a e2 54 	ld hl,($54e2)	ld hl,($0000)
1b0d	18 23 	jr $+$25	jr $+$00
1b0f	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
1b12	18 1e 	jr $+$20	jr $+$00
1b14	fd 7e 00 	ld a,(iy)	ld a,(iy)
1b17	fd 23 	inc iy	inc iy
1b19	fe 50 	cp $50	cp $00
1b1b	c2 c2 25 	jp nz,$25c2	jp nz,$0000
1b1e	cd 07 40 	call $4007	call $0000
1b21	18 0f 	jr $+$11	jr $+$00
1b23	2a f2 54 	ld hl,($54f2)	ld hl,($0000)
1b26	18 0a 	jr $+$0c	jr $+$00
1b28	2a fd 54 	ld hl,($54fd)	ld hl,($0000)
1b2b	18 03 	jr $+$05	jr $+$00
1b2d	2a fb 54 	ld hl,($54fb)	ld hl,($0000)
1b30	26 00 	ld h,$00	ld h,$00
1b32	d9 	exx	exx
1b33	af 	xor a	xor a
1b34	4f 	ld c,a	ld c,a
1b35	67 	ld h,a	ld h,a
1b36	6f 	ld l,a	ld l,a
1b37	c9 	ret	ret
1b38	af 	xor a	xor a
1b39	21 3e 02 	ld hl,$023e	ld hl,$0000
1b3c	21 3e 01 	ld hl,$013e	ld hl,$0000
1b3f	f5 	push af	push af
1b40	cd 4b 18 	call $184b	call $0000
1b43	3e 0d 	ld a,$0d	ld a,$00
1b45	12 	ld (de),a	ld (de),a
1b46	f1 	pop af	pop af
1b47	c6 ff 	add a,$ff	add a,$00
1b49	21 00 52 	ld hl,$5200	ld hl,$0000
1b4c	cd 26 06 	call $0626	call $0000
1b4f	6f 	ld l,a	ld l,a
1b50	18 de 	jr $-$20	jr $-$00
1b52	cd b3 36 	call $36b3	call $0000
1b55	cd 8f 06 	call $068f	call $0000
1b58	18 12 	jr $+$14	jr $+$00
1b5a	cd b3 36 	call $36b3	call $0000
1b5d	cd 58 06 	call $0658	call $0000
1b60	18 0a 	jr $+$0c	jr $+$00
1b62	fd 7e 00 	ld a,(iy)	ld a,(iy)
1b65	fe 24 	cp $24	cp $00
1b67	28 09 	jr z,$+$0b	jr z,$+$00
1b69	cd 0b 0d 	call $0d0b	call $0000
1b6c	d5 	push de	push de
1b6d	d9 	exx	exx
1b6e	e1 	pop hl	pop hl
1b6f	af 	xor a	xor a
1b70	4f 	ld c,a	ld c,a
1b71	c9 	ret	ret
1b72	fd 23 	inc iy	inc iy
1b74	cd 20 0d 	call $0d20	call $0000
1b77	3e 80 	ld a,$80	ld a,$00
1b79	c9 	ret	ret
1b7a	cd d7 1f 	call $1fd7	call $0000
1b7d	d0 	ret nc	ret nc
1b7e	18 1f 	jr $+$21	jr $+$00
1b80	cd d7 1f 	call $1fd7	call $0000
1b83	c8 	ret z	ret z
1b84	d8 	ret c	ret c
1b85	18 18 	jr $+$1a	jr $+$00
1b87	cd d7 1f 	call $1fd7	call $0000
1b8a	d8 	ret c	ret c
1b8b	18 12 	jr $+$14	jr $+$00
1b8d	cd d7 1f 	call $1fd7	call $0000
1b90	28 0d 	jr z,$+$0f	jr z,$+$00
1b92	d0 	ret nc	ret nc
1b93	18 0a 	jr $+$0c	jr $+$00
1b95	cd d7 1f 	call $1fd7	call $0000
1b98	c8 	ret z	ret z
1b99	18 04 	jr $+$06	jr $+$00
1b9b	cd d7 1f 	call $1fd7	call $0000
1b9e	c0 	ret nz	ret nz
1b9f	3e ff 	ld a,$ff	ld a,$00
1ba1	d9 	exx	exx
1ba2	67 	ld h,a	ld h,a
1ba3	6f 	ld l,a	ld l,a
1ba4	d9 	exx	exx
1ba5	67 	ld h,a	ld h,a
1ba6	6f 	ld l,a	ld l,a
1ba7	3c 	inc a	inc a
1ba8	4f 	ld c,a	ld c,a
1ba9	c9 	ret	ret
1baa	3e 23 	ld a,$23	ld a,$00
1bac	18 43 	jr $+$45	jr $+$00
1bae	3e 10 	ld a,$10	ld a,$00
1bb0	18 3a 	jr $+$3c	jr $+$00
1bb2	3e 1a 	ld a,$1a	ld a,$00
1bb4	18 36 	jr $+$38	jr $+$00
1bb6	3e 15 	ld a,$15	ld a,$00
1bb8	18 32 	jr $+$34	jr $+$00
1bba	3e 1b 	ld a,$1b	ld a,$00
1bbc	18 2e 	jr $+$30	jr $+$00
1bbe	3e 1c 	ld a,$1c	ld a,$00
1bc0	18 2a 	jr $+$2c	jr $+$00
1bc2	3e 17 	ld a,$17	ld a,$00
1bc4	18 26 	jr $+$28	jr $+$00
1bc6	3e 1e 	ld a,$1e	ld a,$00
1bc8	18 22 	jr $+$24	jr $+$00
1bca	3e 1f 	ld a,$1f	ld a,$00
1bcc	18 1e 	jr $+$20	jr $+$00
1bce	3e 14 	ld a,$14	ld a,$00
1bd0	18 1a 	jr $+$1c	jr $+$00
1bd2	3e 1d 	ld a,$1d	ld a,$00
1bd4	18 16 	jr $+$18	jr $+$00
1bd6	3e 16 	ld a,$16	ld a,$00
1bd8	18 12 	jr $+$14	jr $+$00
1bda	3e 18 	ld a,$18	ld a,$00
1bdc	18 0e 	jr $+$10	jr $+$00
1bde	3e 19 	ld a,$19	ld a,$00
1be0	18 0a 	jr $+$0c	jr $+$00
1be2	3e 12 	ld a,$12	ld a,$00
1be4	18 06 	jr $+$08	jr $+$00
1be6	3e 13 	ld a,$13	ld a,$00
1be8	18 02 	jr $+$04	jr $+$00
1bea	3e 11 	ld a,$11	ld a,$00
1bec	f5 	push af	push af
1bed	cd 5c 18 	call $185c	call $0000
1bf0	f1 	pop af	pop af
1bf1	cd f7 44 	call $44f7	call $0000
1bf4	da 26 3f 	jp c,$3f26	jp c,$0000
1bf7	af 	xor a	xor a
1bf8	c9 	ret	ret
1bf9	3e 26 	ld a,$26	ld a,$00
1bfb	18 f4 	jr $-$0a	jr $-$00
1bfd	3e 27 	ld a,$27	ld a,$00
1bff	18 f0 	jr $-$0e	jr $-$00
1c01	cd 4b 18 	call $184b	call $0000
1c04	af 	xor a	xor a
1c05	12 	ld (de),a	ld (de),a
1c06	dd 21 00 52 	ld ix,$5200	ld ix,$0000
1c0a	3e 24 	ld a,$24	ld a,$00
1c0c	18 e3 	jr $-$1b	jr $-$00
1c0e	cd 4b 18 	call $184b	call $0000
1c11	3e 0d 	ld a,$0d	ld a,$00
1c13	12 	ld (de),a	ld (de),a
1c14	fd e5 	push iy	push iy
1c16	11 00 52 	ld de,$5200	ld de,$0000
1c19	fd 21 00 52 	ld iy,$5200	ld iy,$0000
1c1d	0e 00 	ld c,$00	ld c,$00
1c1f	cd fa 43 	call $43fa	call $0000
1c22	12 	ld (de),a	ld (de),a
1c23	13 	inc de	inc de
1c24	af 	xor a	xor a
1c25	cd fb 1f 	call $1ffb	call $0000
1c28	fd 21 02 00 	ld iy,$0002	ld iy,$0000
1c2c	fd 39 	add iy,sp	add iy,sp
1c2e	cd e4 16 	call $16e4	call $0000
1c31	fd e1 	pop iy	pop iy
1c33	fd 39 	add iy,sp	add iy,sp
1c35	fd f9 	ld sp,iy	ld sp,iy
1c37	fd e1 	pop iy	pop iy
1c39	08 	ex af,af'	ex af,af'
1c3a	c9 	ret	ret
1c3b	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
1c3f	cd ed 44 	call $44ed	call $0000
1c42	fe 28 	cp $28	cp $00
1c44	28 1c 	jr z,$+$1e	jr z,$+$00
1c46	cd 11 19 	call $1911	call $0000
1c49	cb 19 	rr c	rr c
1c4b	06 20 	ld b,$20	ld b,$00
1c4d	d9 	exx	exx
1c4e	ed 6a 	adc hl,hl	adc hl,hl
1c50	d9 	exx	exx
1c51	ed 6a 	adc hl,hl	adc hl,hl
1c53	cb 5d 	bit 3,l	bit 3,l
1c55	28 01 	jr z,$+$03	jr z,$+$00
1c57	3f 	ccf	ccf
1c58	10 f3 	djnz $-$0b	djnz $-$00
1c5a	cb 11 	rl c	rl c
1c5c	cd e8 31 	call $31e8	call $0000
1c5f	af 	xor a	xor a
1c60	4f 	ld c,a	ld c,a
1c61	c9 	ret	ret
1c62	cd 42 18 	call $1842	call $0000
1c65	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
1c69	cb 7c 	bit 7,h	bit 7,h
1c6b	37 	scf	scf
1c6c	20 ec 	jr nz,$-$12	jr nz,$-$00
1c6e	cd 3b 1f 	call $1f3b	call $0000
1c71	f5 	push af	push af
1c72	41 	ld b,c	ld b,c
1c73	eb 	ex de,hl	ex de,hl
1c74	d9 	exx	exx
1c75	eb 	ex de,hl	ex de,hl
1c76	cd 11 19 	call $1911	call $0000
1c79	c4 49 1c 	call nz,$1c49	call nz,$0000
1c7c	d9 	exx	exx
1c7d	0e 7f 	ld c,$7f	ld c,$00
1c7f	cb 7c 	bit 7,h	bit 7,h
1c81	20 08 	jr nz,$+$0a	jr nz,$+$00
1c83	d9 	exx	exx
1c84	29 	add hl,hl	add hl,hl
1c85	d9 	exx	exx
1c86	ed 6a 	adc hl,hl	adc hl,hl
1c88	0d 	dec c	dec c
1c89	20 f4 	jr nz,$-$0a	jr nz,$-$00
1c8b	cb bc 	res 7,h	res 7,h
1c8d	f1 	pop af	pop af
1c8e	c8 	ret z	ret z
1c8f	d9 	exx	exx
1c90	7b 	ld a,e	ld a,e
1c91	3d 	dec a	dec a
1c92	b2 	or d	or d
1c93	d9 	exx	exx
1c94	b3 	or e	or e
1c95	b2 	or d	or d
1c96	c8 	ret z	ret z
1c97	06 00 	ld b,$00	ld b,$00
1c99	3e 0a 	ld a,$0a	ld a,$00
1c9b	cd f7 44 	call $44f7	call $0000
1c9e	da 26 3f 	jp c,$3f26	jp c,$0000
1ca1	cd f9 1b 	call $1bf9	call $0000
1ca4	c3 38 18 	jp $1838	jp $0000
1ca7	fd 23 	inc iy	inc iy
1ca9	cd b9 19 	call $19b9	call $0000
1cac	cb 78 	bit 7,b	bit 7,b
1cae	ca 50 18 	jp z,$1850	jp z,$0000
1cb1	cd 86 19 	call $1986	call $0000
1cb4	e5 	push hl	push hl
1cb5	dd e1 	pop ix	pop ix
1cb7	af 	xor a	xor a
1cb8	67 	ld h,a	ld h,a
1cb9	6f 	ld l,a	ld l,a
1cba	47 	ld b,a	ld b,a
1cbb	dd 4e 00 	ld c,(ix)	ld c,(ix)
1cbe	09 	add hl,bc	add hl,bc
1cbf	0e 04 	ld c,$04	ld c,$00
1cc1	dd 09 	add ix,bc	add ix,bc
1cc3	1b 	dec de	dec de
1cc4	7a 	ld a,d	ld a,d
1cc5	b3 	or e	or e
1cc6	20 f3 	jr nz,$-$0b	jr nz,$-$00
1cc8	c3 32 1b 	jp $1b32	jp $0000
1ccb	cd ed 44 	call $44ed	call $0000
1cce	fe a9 	cp $a9	cp $00
1cd0	28 d5 	jr z,$-$29	jr z,$-$00
1cd2	cd b9 19 	call $19b9	call $0000
1cd5	cb 78 	bit 7,b	bit 7,b
1cd7	20 27 	jr nz,$+$29	jr nz,$+$00
1cd9	c5 	push bc	push bc
1cda	cd 86 19 	call $1986	call $0000
1cdd	e5 	push hl	push hl
1cde	dd e1 	pop ix	pop ix
1ce0	cd da 1f 	call $1fda	call $0000
1ce3	f1 	pop af	pop af
1ce4	d5 	push de	push de
1ce5	f5 	push af	push af
1ce6	cd c9 19 	call $19c9	call $0000
1ce9	3e 0b 	ld a,$0b	ld a,$00
1ceb	cd f7 44 	call $44f7	call $0000
1cee	da 26 3f 	jp c,$3f26	jp c,$0000
1cf1	f1 	pop af	pop af
1cf2	16 00 	ld d,$00	ld d,$00
1cf4	5f 	ld e,a	ld e,a
1cf5	dd 19 	add ix,de	add ix,de
1cf7	d1 	pop de	pop de
1cf8	1b 	dec de	dec de
1cf9	47 	ld b,a	ld b,a
1cfa	7a 	ld a,d	ld a,d
1cfb	b3 	or e	or e
1cfc	78 	ld a,b	ld a,b
1cfd	20 e5 	jr nz,$-$19	jr nz,$-$00
1cff	c9 	ret	ret
1d00	cd 86 19 	call $1986	call $0000
1d03	e5 	push hl	push hl
1d04	dd e1 	pop ix	pop ix
1d06	eb 	ex de,hl	ex de,hl
1d07	11 00 52 	ld de,$5200	ld de,$0000
1d0a	06 00 	ld b,$00	ld b,$00
1d0c	e5 	push hl	push hl
1d0d	dd 4e 00 	ld c,(ix)	ld c,(ix)
1d10	79 	ld a,c	ld a,c
1d11	b7 	or a	or a
1d12	28 0e 	jr z,$+$10	jr z,$+$00
1d14	83 	add a,e	add a,e
1d15	3e 13 	ld a,$13	ld a,$00
1d17	da 26 3f 	jp c,$3f26	jp c,$0000
1d1a	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
1d1d	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
1d20	ed b0 	ldir	ldir
1d22	e1 	pop hl	pop hl
1d23	0e 04 	ld c,$04	ld c,$00
1d25	dd 09 	add ix,bc	add ix,bc
1d27	2b 	dec hl	dec hl
1d28	7c 	ld a,h	ld a,h
1d29	b5 	or l	or l
1d2a	20 e0 	jr nz,$-$1e	jr nz,$-$00
1d2c	f6 80 	or $80	or $00
1d2e	c9 	ret	ret
1d2f	cd b9 19 	call $19b9	call $0000
1d32	cb 78 	bit 7,b	bit 7,b
1d34	c2 50 18 	jp nz,$1850	jp nz,$0000
1d37	c5 	push bc	push bc
1d38	cd 86 19 	call $1986	call $0000
1d3b	e5 	push hl	push hl
1d3c	dd e1 	pop ix	pop ix
1d3e	cd da 1f 	call $1fda	call $0000
1d41	f1 	pop af	pop af
1d42	d5 	push de	push de
1d43	f5 	push af	push af
1d44	c5 	push bc	push bc
1d45	e5 	push hl	push hl
1d46	d9 	exx	exx
1d47	e5 	push hl	push hl
1d48	d9 	exx	exx
1d49	cd 07 19 	call $1907	call $0000
1d4c	af 	xor a	xor a
1d4d	47 	ld b,a	ld b,a
1d4e	57 	ld d,a	ld d,a
1d4f	5f 	ld e,a	ld e,a
1d50	d9 	exx	exx
1d51	57 	ld d,a	ld d,a
1d52	1e 02 	ld e,$02	ld e,$00
1d54	d9 	exx	exx
1d55	3e 0e 	ld a,$0e	ld a,$00
1d57	dd e5 	push ix	push ix
1d59	cd f7 44 	call $44f7	call $0000
1d5c	dd e1 	pop ix	pop ix
1d5e	da 26 3f 	jp c,$3f26	jp c,$0000
1d61	d9 	exx	exx
1d62	eb 	ex de,hl	ex de,hl
1d63	e1 	pop hl	pop hl
1d64	d9 	exx	exx
1d65	eb 	ex de,hl	ex de,hl
1d66	e1 	pop hl	pop hl
1d67	79 	ld a,c	ld a,c
1d68	c1 	pop bc	pop bc
1d69	47 	ld b,a	ld b,a
1d6a	3e 0b 	ld a,$0b	ld a,$00
1d6c	cd f7 44 	call $44f7	call $0000
1d6f	da 26 3f 	jp c,$3f26	jp c,$0000
1d72	f1 	pop af	pop af
1d73	16 00 	ld d,$00	ld d,$00
1d75	5f 	ld e,a	ld e,a
1d76	dd 19 	add ix,de	add ix,de
1d78	d1 	pop de	pop de
1d79	1b 	dec de	dec de
1d7a	47 	ld b,a	ld b,a
1d7b	7a 	ld a,d	ld a,d
1d7c	b3 	or e	or e
1d7d	78 	ld a,b	ld a,b
1d7e	20 c2 	jr nz,$-$3c	jr nz,$-$00
1d80	3e 1e 	ld a,$1e	ld a,$00
1d82	cd f7 44 	call $44f7	call $0000
1d85	af 	xor a	xor a
1d86	c9 	ret	ret
1d87	cd 1e 18 	call $181e	call $0000
1d8a	cd 84 20 	call $2084	call $0000
1d8d	cd fb 1f 	call $1ffb	call $0000
1d90	cd 1e 18 	call $181e	call $0000
1d93	c1 	pop bc	pop bc
1d94	21 00 00 	ld hl,$0000	ld hl,$0000
1d97	39 	add hl,sp	add hl,sp
1d98	c5 	push bc	push bc
1d99	43 	ld b,e	ld b,e
1d9a	cd ed 44 	call $44ed	call $0000
1d9d	fe 2c 	cp $2c	cp $00
1d9f	3e 00 	ld a,$00	ld a,$00
1da1	20 17 	jr nz,$+$19	jr nz,$+$00
1da3	fd 23 	inc iy	inc iy
1da5	c5 	push bc	push bc
1da6	e5 	push hl	push hl
1da7	cd fb 1f 	call $1ffb	call $0000
1daa	cd 15 18 	call $1815	call $0000
1dad	c1 	pop bc	pop bc
1dae	cd 19 20 	call $2019	call $0000
1db1	e1 	pop hl	pop hl
1db2	c1 	pop bc	pop bc
1db3	d9 	exx	exx
1db4	7d 	ld a,l	ld a,l
1db5	d9 	exx	exx
1db6	b7 	or a	or a
1db7	28 01 	jr z,$+$03	jr z,$+$00
1db9	3d 	dec a	dec a
1dba	11 00 52 	ld de,$5200	ld de,$0000
1dbd	cd d4 1d 	call $1dd4	call $0000
1dc0	d1 	pop de	pop de
1dc1	28 03 	jr z,$+$05	jr z,$+$00
1dc3	ed 62 	sbc hl,hl	sbc hl,hl
1dc5	39 	add hl,sp	add hl,sp
1dc6	ed 72 	sbc hl,sp	sbc hl,sp
1dc8	eb 	ex de,hl	ex de,hl
1dc9	26 00 	ld h,$00	ld h,$00
1dcb	39 	add hl,sp	add hl,sp
1dcc	f9 	ld sp,hl	ld sp,hl
1dcd	eb 	ex de,hl	ex de,hl
1dce	cd 90 20 	call $2090	call $0000
1dd1	c3 32 1b 	jp $1b32	jp $0000
1dd4	c5 	push bc	push bc
1dd5	06 00 	ld b,$00	ld b,$00
1dd7	4f 	ld c,a	ld c,a
1dd8	09 	add hl,bc	add hl,bc
1dd9	c1 	pop bc	pop bc
1dda	91 	sub c	sub c
1ddb	30 28 	jr nc,$+$2a	jr nc,$+$00
1ddd	ed 44 	neg	neg
1ddf	4f 	ld c,a	ld c,a
1de0	1a 	ld a,(de)	ld a,(de)
1de1	c5 	push bc	push bc
1de2	06 00 	ld b,$00	ld b,$00
1de4	ed b1 	cpir	cpir
1de6	79 	ld a,c	ld a,c
1de7	c1 	pop bc	pop bc
1de8	20 1b 	jr nz,$+$1d	jr nz,$+$00
1dea	4f 	ld c,a	ld c,a
1deb	05 	dec b	dec b
1dec	b8 	cp b	cp b
1ded	04 	inc b	inc b
1dee	38 15 	jr c,$+$17	jr c,$+$00
1df0	c5 	push bc	push bc
1df1	d5 	push de	push de
1df2	e5 	push hl	push hl
1df3	05 	dec b	dec b
1df4	28 08 	jr z,$+$0a	jr z,$+$00
1df6	13 	inc de	inc de
1df7	1a 	ld a,(de)	ld a,(de)
1df8	be 	cp (hl)	cp (hl)
1df9	20 03 	jr nz,$+$05	jr nz,$+$00
1dfb	23 	inc hl	inc hl
1dfc	10 f8 	djnz $-$06	djnz $-$00
1dfe	e1 	pop hl	pop hl
1dff	d1 	pop de	pop de
1e00	c1 	pop bc	pop bc
1e01	20 dd 	jr nz,$-$21	jr nz,$-$00
1e03	af 	xor a	xor a
1e04	c9 	ret	ret
1e05	f6 ff 	or $ff	or $00
1e07	c9 	ret	ret
1e08	cd 42 18 	call $1842	call $0000
1e0b	d9 	exx	exx
1e0c	7d 	ld a,l	ld a,l
1e0d	18 0a 	jr $+$0c	jr $+$00
1e0f	cd ed 44 	call $44ed	call $0000
1e12	fe 23 	cp $23	cp $00
1e14	28 06 	jr z,$+$08	jr z,$+$00
1e16	cd c0 05 	call $05c0	call $0000
1e19	37 	scf	scf
1e1a	18 5b 	jr $+$5d	jr $+$00
1e1c	cd bd 36 	call $36bd	call $0000
1e1f	cd ed 44 	call $44ed	call $0000
1e22	fe 0f 	cp $0f	cp $00
1e24	28 04 	jr z,$+$06	jr z,$+$00
1e26	fe b8 	cp $b8	cp $00
1e28	20 0c 	jr nz,$+$0e	jr nz,$+$00
1e2a	fd 23 	inc iy	inc iy
1e2c	f5 	push af	push af
1e2d	d5 	push de	push de
1e2e	cd 42 18 	call $1842	call $0000
1e31	d9 	exx	exx
1e32	44 	ld b,h	ld b,h
1e33	4d 	ld c,l	ld c,l
1e34	d1 	pop de	pop de
1e35	f1 	pop af	pop af
1e36	21 00 52 	ld hl,$5200	ld hl,$0000
1e39	fe b8 	cp $b8	cp $00
1e3b	28 08 	jr z,$+$0a	jr z,$+$00
1e3d	51 	ld d,c	ld d,c
1e3e	01 00 01 	ld bc,$0100	ld bc,$0000
1e41	fe 0f 	cp $0f	cp $00
1e43	28 04 	jr z,$+$06	jr z,$+$00
1e45	16 00 	ld d,$00	ld d,$00
1e47	cb c8 	set 1,b	set 1,b
1e49	c5 	push bc	push bc
1e4a	cd 3d 06 	call $063d	call $0000
1e4d	c1 	pop bc	pop bc
1e4e	38 1c 	jr c,$+$1e	jr c,$+$00
1e50	cb 48 	bit 1,b	bit 1,b
1e52	28 13 	jr z,$+$15	jr z,$+$00
1e54	b9 	cp c	cp c
1e55	28 15 	jr z,$+$17	jr z,$+$00
1e57	cb 78 	bit 7,b	bit 7,b
1e59	20 08 	jr nz,$+$0a	jr nz,$+$00
1e5b	cb 40 	bit 0,b	bit 0,b
1e5d	28 08 	jr z,$+$0a	jr z,$+$00
1e5f	fe 0a 	cp $0a	cp $00
1e61	28 09 	jr z,$+$0b	jr z,$+$00
1e63	fe 0d 	cp $0d	cp $00
1e65	28 05 	jr z,$+$07	jr z,$+$00
1e67	77 	ld (hl),a	ld (hl),a
1e68	2c 	inc l	inc l
1e69	15 	dec d	dec d
1e6a	20 dd 	jr nz,$-$21	jr nz,$-$00
1e6c	eb 	ex de,hl	ex de,hl
1e6d	3e 80 	ld a,$80	ld a,$00
1e6f	c9 	ret	ret
1e70	cd 42 18 	call $1842	call $0000
1e73	d9 	exx	exx
1e74	cd 73 0d 	call $0d73	call $0000
1e77	11 00 52 	ld de,$5200	ld de,$0000
1e7a	12 	ld (de),a	ld (de),a
1e7b	3e 80 	ld a,$80	ld a,$00
1e7d	d0 	ret nc	ret nc
1e7e	1c 	inc e	inc e
1e7f	c9 	ret	ret
1e80	cd 1e 18 	call $181e	call $0000
1e83	cd 84 20 	call $2084	call $0000
1e86	cd fb 1f 	call $1ffb	call $0000
1e89	cd 15 18 	call $1815	call $0000
1e8c	c1 	pop bc	pop bc
1e8d	cd 19 20 	call $2019	call $0000
1e90	d9 	exx	exx
1e91	7d 	ld a,l	ld a,l
1e92	d9 	exx	exx
1e93	b7 	or a	or a
1e94	28 0d 	jr z,$+$0f	jr z,$+$00
1e96	3d 	dec a	dec a
1e97	6f 	ld l,a	ld l,a
1e98	93 	sub e	sub e
1e99	1e 00 	ld e,$00	ld e,$00
1e9b	30 06 	jr nc,$+$08	jr nc,$+$00
1e9d	ed 44 	neg	neg
1e9f	4f 	ld c,a	ld c,a
1ea0	cd ff 1e 	call $1eff	call $0000
1ea3	cd ed 44 	call $44ed	call $0000
1ea6	fe 2c 	cp $2c	cp $00
1ea8	28 1a 	jr z,$+$1c	jr z,$+$00
1eaa	cd 90 20 	call $2090	call $0000
1ead	3e 80 	ld a,$80	ld a,$00
1eaf	c9 	ret	ret
1eb0	cd 1e 18 	call $181e	call $0000
1eb3	cd ed 44 	call $44ed	call $0000
1eb6	fe 2c 	cp $2c	cp $00
1eb8	28 0a 	jr z,$+$0c	jr z,$+$00
1eba	cd 90 20 	call $2090	call $0000
1ebd	7b 	ld a,e	ld a,e
1ebe	b7 	or a	or a
1ebf	28 1a 	jr z,$+$1c	jr z,$+$00
1ec1	1d 	dec e	dec e
1ec2	18 17 	jr $+$19	jr $+$00
1ec4	fd 23 	inc iy	inc iy
1ec6	cd fb 1f 	call $1ffb	call $0000
1ec9	cd 15 18 	call $1815	call $0000
1ecc	c1 	pop bc	pop bc
1ecd	cd 19 20 	call $2019	call $0000
1ed0	cd 90 20 	call $2090	call $0000
1ed3	d9 	exx	exx
1ed4	7d 	ld a,l	ld a,l
1ed5	d9 	exx	exx
1ed6	bb 	cp e	cp e
1ed7	30 02 	jr nc,$+$04	jr nc,$+$00
1ed9	6b 	ld l,e	ld l,e
1eda	5f 	ld e,a	ld e,a
1edb	3e 80 	ld a,$80	ld a,$00
1edd	c9 	ret	ret
1ede	cd 1e 18 	call $181e	call $0000
1ee1	cd ed 44 	call $44ed	call $0000
1ee4	fe 2c 	cp $2c	cp $00
1ee6	28 0c 	jr z,$+$0e	jr z,$+$00
1ee8	cd 90 20 	call $2090	call $0000
1eeb	7b 	ld a,e	ld a,e
1eec	b7 	or a	or a
1eed	28 ec 	jr z,$-$12	jr z,$-$00
1eef	3d 	dec a	dec a
1ef0	0e 01 	ld c,$01	ld c,$00
1ef2	18 0a 	jr $+$0c	jr $+$00
1ef4	cd c4 1e 	call $1ec4	call $0000
1ef7	d0 	ret nc	ret nc
1ef8	1c 	inc e	inc e
1ef9	1d 	dec e	dec e
1efa	c8 	ret z	ret z
1efb	4b 	ld c,e	ld c,e
1efc	7d 	ld a,l	ld a,l
1efd	93 	sub e	sub e
1efe	6f 	ld l,a	ld l,a
1eff	06 00 	ld b,$00	ld b,$00
1f01	62 	ld h,d	ld h,d
1f02	58 	ld e,b	ld e,b
1f03	ed b0 	ldir	ldir
1f05	3e 80 	ld a,$80	ld a,$00
1f07	c9 	ret	ret
1f08	cd 15 18 	call $1815	call $0000
1f0b	cd 84 20 	call $2084	call $0000
1f0e	d9 	exx	exx
1f0f	7d 	ld a,l	ld a,l
1f10	d9 	exx	exx
1f11	f5 	push af	push af
1f12	cd 1e 18 	call $181e	call $0000
1f15	cd 90 20 	call $2090	call $0000
1f18	f1 	pop af	pop af
1f19	b7 	or a	or a
1f1a	28 be 	jr z,$-$40	jr z,$-$00
1f1c	3d 	dec a	dec a
1f1d	4f 	ld c,a	ld c,a
1f1e	3e 80 	ld a,$80	ld a,$00
1f20	c8 	ret z	ret z
1f21	1c 	inc e	inc e
1f22	1d 	dec e	dec e
1f23	c8 	ret z	ret z
1f24	43 	ld b,e	ld b,e
1f25	62 	ld h,d	ld h,d
1f26	2e 00 	ld l,$00	ld l,$00
1f28	c5 	push bc	push bc
1f29	7e 	ld a,(hl)	ld a,(hl)
1f2a	23 	inc hl	inc hl
1f2b	12 	ld (de),a	ld (de),a
1f2c	1c 	inc e	inc e
1f2d	3e 13 	ld a,$13	ld a,$00
1f2f	ca 26 3f 	jp z,$3f26	jp z,$0000
1f32	10 f5 	djnz $-$09	djnz $-$00
1f34	c1 	pop bc	pop bc
1f35	0d 	dec c	dec c
1f36	20 f0 	jr nz,$-$0e	jr nz,$-$00
1f38	3e 80 	ld a,$80	ld a,$00
1f3a	c9 	ret	ret
1f3b	7c 	ld a,h	ld a,h
1f3c	b5 	or l	or l
1f3d	d9 	exx	exx
1f3e	b4 	or h	or h
1f3f	b5 	or l	or l
1f40	d9 	exx	exx
1f41	c9 	ret	ret
1f42	d9 	exx	exx
1f43	fd 7e 00 	ld a,(iy)	ld a,(iy)
1f46	fd 23 	inc iy	inc iy
1f48	17 	rla	rla
1f49	17 	rla	rla
1f4a	67 	ld h,a	ld h,a
1f4b	e6 c0 	and $c0	and $00
1f4d	fd ae 00 	xor (iy)	xor (iy)
1f50	fd 23 	inc iy	inc iy
1f52	6f 	ld l,a	ld l,a
1f53	7c 	ld a,h	ld a,h
1f54	17 	rla	rla
1f55	17 	rla	rla
1f56	e6 c0 	and $c0	and $00
1f58	fd ae 00 	xor (iy)	xor (iy)
1f5b	fd 23 	inc iy	inc iy
1f5d	67 	ld h,a	ld h,a
1f5e	d9 	exx	exx
1f5f	af 	xor a	xor a
1f60	4f 	ld c,a	ld c,a
1f61	67 	ld h,a	ld h,a
1f62	6f 	ld l,a	ld l,a
1f63	c9 	ret	ret
1f64	fd 23 	inc iy	inc iy
1f66	cd 5c 18 	call $185c	call $0000
1f69	cd 6f 1f 	call $1f6f	call $0000
1f6c	3e 80 	ld a,$80	ld a,$00
1f6e	c9 	ret	ret
1f6f	cd f9 1b 	call $1bf9	call $0000
1f72	01 08 00 	ld bc,$0008	ld bc,$0000
1f75	11 00 52 	ld de,$5200	ld de,$0000
1f78	c5 	push bc	push bc
1f79	06 04 	ld b,$04	ld b,$00
1f7b	af 	xor a	xor a
1f7c	d9 	exx	exx
1f7d	29 	add hl,hl	add hl,hl
1f7e	d9 	exx	exx
1f7f	ed 6a 	adc hl,hl	adc hl,hl
1f81	17 	rla	rla
1f82	10 f8 	djnz $-$06	djnz $-$00
1f84	c1 	pop bc	pop bc
1f85	0d 	dec c	dec c
1f86	f8 	ret m	ret m
1f87	28 06 	jr z,$+$08	jr z,$+$00
1f89	b7 	or a	or a
1f8a	20 03 	jr nz,$+$05	jr nz,$+$00
1f8c	b8 	cp b	cp b
1f8d	28 e9 	jr z,$-$15	jr z,$-$00
1f8f	c6 90 	add a,$90	add a,$00
1f91	27 	daa	daa
1f92	ce 40 	adc a,$40	adc a,$00
1f94	27 	daa	daa
1f95	12 	ld (de),a	ld (de),a
1f96	13 	inc de	inc de
1f97	47 	ld b,a	ld b,a
1f98	18 de 	jr $-$20	jr $-$00
1f9a	cd ed 44 	call $44ed	call $0000
1f9d	fe 7e 	cp $7e	cp $00
1f9f	28 c3 	jr z,$-$3b	jr z,$-$00
1fa1	cd 5c 18 	call $185c	call $0000
1fa4	dd 21 00 54 	ld ix,$5400	ld ix,$0000
1fa8	dd 7e 03 	ld a,(ix+$03)	ld a,(ix+$00)
1fab	b7 	or a	or a
1fac	dd 21 d4 1f 	ld ix,$1fd4	ld ix,$0000
1fb0	28 04 	jr z,$+$06	jr z,$+$00
1fb2	dd 21 00 54 	ld ix,$5400	ld ix,$0000
1fb6	11 00 52 	ld de,$5200	ld de,$0000
1fb9	3e 25 	ld a,$25	ld a,$00
1fbb	cd f7 44 	call $44f7	call $0000
1fbe	da 26 3f 	jp c,$3f26	jp c,$0000
1fc1	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
1fc5	3e 80 	ld a,$80	ld a,$00
1fc7	c8 	ret z	ret z
1fc8	79 	ld a,c	ld a,c
1fc9	c6 04 	add a,$04	add a,$00
1fcb	bb 	cp e	cp e
1fcc	28 f7 	jr z,$-$07	jr z,$-$00
1fce	eb 	ex de,hl	ex de,hl
1fcf	36 20 	ld (hl),$20	ld (hl),$00
1fd1	23 	inc hl	inc hl
1fd2	eb 	ex de,hl	ex de,hl
1fd3	18 f6 	jr $-$08	jr $-$00
1fd5	09 	add hl,bc	add hl,bc
1fd6	00 	nop	nop
1fd7	cd e4 1f 	call $1fe4	call $0000
1fda	3e 00 	ld a,$00	ld a,$00
1fdc	d9 	exx	exx
1fdd	67 	ld h,a	ld h,a
1fde	6f 	ld l,a	ld l,a
1fdf	d9 	exx	exx
1fe0	67 	ld h,a	ld h,a
1fe1	6f 	ld l,a	ld l,a
1fe2	4f 	ld c,a	ld c,a
1fe3	c9 	ret	ret
1fe4	04 	inc b	inc b
1fe5	0c 	inc c	inc c
1fe6	05 	dec b	dec b
1fe7	28 0a 	jr z,$+$0c	jr z,$+$00
1fe9	0d 	dec c	dec c
1fea	28 0c 	jr z,$+$0e	jr z,$+$00
1fec	1a 	ld a,(de)	ld a,(de)
1fed	be 	cp (hl)	cp (hl)
1fee	c0 	ret nz	ret nz
1fef	13 	inc de	inc de
1ff0	23 	inc hl	inc hl
1ff1	18 f3 	jr $-$0b	jr $-$00
1ff3	b7 	or a	or a
1ff4	0d 	dec c	dec c
1ff5	c8 	ret z	ret z
1ff6	37 	scf	scf
1ff7	c9 	ret	ret
1ff8	b7 	or a	or a
1ff9	0c 	inc c	inc c
1ffa	c9 	ret	ret
1ffb	21 00 52 	ld hl,$5200	ld hl,$0000
1ffe	cd 68 32 	call $3268	call $0000
2001	dd e1 	pop ix	pop ix
2003	b7 	or a	or a
2004	54 	ld d,h	ld d,h
2005	4b 	ld c,e	ld c,e
2006	ed 52 	sbc hl,de	sbc hl,de
2008	39 	add hl,sp	add hl,sp
2009	f9 	ld sp,hl	ld sp,hl
200a	47 	ld b,a	ld b,a
200b	c5 	push bc	push bc
200c	28 09 	jr z,$+$0b	jr z,$+$00
200e	eb 	ex de,hl	ex de,hl
200f	06 00 	ld b,$00	ld b,$00
2011	68 	ld l,b	ld l,b
2012	ed b0 	ldir	ldir
2014	cd 68 32 	call $3268	call $0000
2017	dd e9 	jp (ix)	jp (ix)
2019	dd e1 	pop ix	pop ix
201b	21 00 00 	ld hl,$0000	ld hl,$0000
201e	44 	ld b,h	ld b,h
201f	39 	add hl,sp	add hl,sp
2020	11 00 52 	ld de,$5200	ld de,$0000
2023	0c 	inc c	inc c
2024	0d 	dec c	dec c
2025	28 02 	jr z,$+$04	jr z,$+$00
2027	ed b0 	ldir	ldir
2029	f9 	ld sp,hl	ld sp,hl
202a	dd e9 	jp (ix)	jp (ix)
202c	fd 7e 00 	ld a,(iy)	ld a,(iy)
202f	fe 30 	cp $30	cp $00
2031	d8 	ret c	ret c
2032	fe 32 	cp $32	cp $00
2034	3f 	ccf	ccf
2035	d8 	ret c	ret c
2036	d6 30 	sub $30	sub $00
2038	c9 	ret	ret
2039	fd 7e 00 	ld a,(iy)	ld a,(iy)
203c	fe 30 	cp $30	cp $00
203e	d8 	ret c	ret c
203f	fe 3a 	cp $3a	cp $00
2041	3f 	ccf	ccf
2042	d0 	ret nc	ret nc
2043	fe 41 	cp $41	cp $00
2045	d8 	ret c	ret c
2046	d6 37 	sub $37	sub $00
2048	fe 10 	cp $10	cp $00
204a	3f 	ccf	ccf
204b	c9 	ret	ret
204c	fe 3e 	cp $3e	cp $00
204e	d0 	ret nc	ret nc
204f	fe 3d 	cp $3d	cp $00
2051	d0 	ret nc	ret nc
2052	fe 3c 	cp $3c	cp $00
2054	c9 	ret	ret
2055	fd 23 	inc iy	inc iy
2057	e6 0f 	and $0f	and $00
2059	08 	ex af,af'	ex af,af'
205a	fa 50 18 	jp m,$1850	jp m,$0000
205d	08 	ex af,af'	ex af,af'
205e	e3 	ex (sp),hl	ex (sp),hl
205f	d9 	exx	exx
2060	e5 	push hl	push hl
2061	d9 	exx	exx
2062	f5 	push af	push af
2063	c5 	push bc	push bc
2064	e9 	jp (hl)	jp (hl)
2065	08 	ex af,af'	ex af,af'
2066	fa 50 18 	jp m,$1850	jp m,$0000
2069	d9 	exx	exx
206a	c1 	pop bc	pop bc
206b	d9 	exx	exx
206c	79 	ld a,c	ld a,c
206d	c1 	pop bc	pop bc
206e	47 	ld b,a	ld b,a
206f	f1 	pop af	pop af
2070	d9 	exx	exx
2071	eb 	ex de,hl	ex de,hl
2072	e1 	pop hl	pop hl
2073	d9 	exx	exx
2074	eb 	ex de,hl	ex de,hl
2075	e1 	pop hl	pop hl
2076	d9 	exx	exx
2077	c5 	push bc	push bc
2078	d9 	exx	exx
2079	cd f7 44 	call $44f7	call $0000
207c	38 1c 	jr c,$+$1e	jr c,$+$00
207e	af 	xor a	xor a
207f	08 	ex af,af'	ex af,af'
2080	fd 7e 00 	ld a,(iy)	ld a,(iy)
2083	c9 	ret	ret
2084	cd ed 44 	call $44ed	call $0000
2087	fd 23 	inc iy	inc iy
2089	fe 2c 	cp $2c	cp $00
208b	c8 	ret z	ret z
208c	3e 05 	ld a,$05	ld a,$00
208e	18 0a 	jr $+$0c	jr $+$00
2090	cd ed 44 	call $44ed	call $0000
2093	fd 23 	inc iy	inc iy
2095	fe 29 	cp $29	cp $00
2097	c8 	ret z	ret z
2098	3e 1b 	ld a,$1b	ld a,$00
209a	c3 26 3f 	jp $3f26	jp $0000
209d	e5 	push hl	push hl
209e	21 d8 16 	ld hl,$16d8	ld hl,$0000
20a1	18 06 	jr $+$08	jr $+$00
20a3	e5 	push hl	push hl
20a4	d6 8d 	sub $8d	sub $00
20a6	21 64 16 	ld hl,$1664	ld hl,$0000
20a9	c5 	push bc	push bc
20aa	87 	add a,a	add a,a
20ab	4f 	ld c,a	ld c,a
20ac	06 00 	ld b,$00	ld b,$00
20ae	09 	add hl,bc	add hl,bc
20af	7e 	ld a,(hl)	ld a,(hl)
20b0	23 	inc hl	inc hl
20b1	66 	ld h,(hl)	ld h,(hl)
20b2	6f 	ld l,a	ld l,a
20b3	c1 	pop bc	pop bc
20b4	e3 	ex (sp),hl	ex (sp),hl
20b5	c9 	ret	ret
20b6	7a 	ld a,d	ld a,d
20b7	d5 	push de	push de
20b8	e5 	push hl	push hl
20b9	dd e3 	ex (sp),ix	ex (sp),ix
20bb	b7 	or a	or a
20bc	fa cd 20 	jp m,$20cd	jp m,$0000
20bf	cd 07 19 	call $1907	call $0000
20c2	dd e3 	ex (sp),ix	ex (sp),ix
20c4	cd b0 31 	call $31b0	call $0000
20c7	e1 	pop hl	pop hl
20c8	d1 	pop de	pop de
20c9	4a 	ld c,d	ld c,d
20ca	06 00 	ld b,$00	ld b,$00
20cc	c9 	ret	ret
20cd	d5 	push de	push de
20ce	cd f0 19 	call $19f0	call $0000
20d1	e1 	pop hl	pop hl
20d2	dd e3 	ex (sp),ix	ex (sp),ix
20d4	cd fa 31 	call $31fa	call $0000
20d7	e1 	pop hl	pop hl
20d8	d1 	pop de	pop de
20d9	01 04 00 	ld bc,$0004	ld bc,$0000
20dc	c9 	ret	ret
20dd	cb b2 	res 6,d	res 6,d
20df	d5 	push de	push de
20e0	cd af 19 	call $19af	call $0000
20e3	cd 86 19 	call $1986	call $0000
20e6	c1 	pop bc	pop bc
20e7	78 	ld a,b	ld a,b
20e8	d5 	push de	push de
20e9	c5 	push bc	push bc
20ea	e5 	push hl	push hl
20eb	cd 8f 36 	call $368f	call $0000
20ee	42 	ld b,d	ld b,d
20ef	4b 	ld c,e	ld c,e
20f0	dd e1 	pop ix	pop ix
20f2	d1 	pop de	pop de
20f3	af 	xor a	xor a
20f4	ed 62 	sbc hl,hl	sbc hl,hl
20f6	39 	add hl,sp	add hl,sp
20f7	ed 42 	sbc hl,bc	sbc hl,bc
20f9	38 9f 	jr c,$-$5f	jr c,$-$00
20fb	c5 	push bc	push bc
20fc	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
2100	04 	inc b	inc b
2101	ed 42 	sbc hl,bc	sbc hl,bc
2103	09 	add hl,bc	add hl,bc
2104	c1 	pop bc	pop bc
2105	38 93 	jr c,$-$6b	jr c,$-$00
2107	f9 	ld sp,hl	ld sp,hl
2108	36 00 	ld (hl),$00	ld (hl),$00
210a	23 	inc hl	inc hl
210b	0b 	dec bc	dec bc
210c	78 	ld a,b	ld a,b
210d	b1 	or c	or c
210e	20 f8 	jr nz,$-$06	jr nz,$-$00
2110	4e 	ld c,(hl)	ld c,(hl)
2111	23 	inc hl	inc hl
2112	46 	ld b,(hl)	ld b,(hl)
2113	67 	ld h,a	ld h,a
2114	6f 	ld l,a	ld l,a
2115	39 	add hl,sp	add hl,sp
2116	cd 1e 21 	call $211e	call $0000
2119	f9 	ld sp,hl	ld sp,hl
211a	c1 	pop bc	pop bc
211b	c3 7b 24 	jp $247b	jp $0000
211e	3e 3d 	ld a,$3d	ld a,$00
2120	fd 2b 	dec iy	dec iy
2122	fd 23 	inc iy	inc iy
2124	d5 	push de	push de
2125	c5 	push bc	push bc
2126	e5 	push hl	push hl
2127	dd e5 	push ix	push ix
2129	5f 	ld e,a	ld e,a
212a	cd 98 21 	call $2198	call $0000
212d	dd e1 	pop ix	pop ix
212f	e1 	pop hl	pop hl
2130	c1 	pop bc	pop bc
2131	d1 	pop de	pop de
2132	cd ed 44 	call $44ed	call $0000
2135	fe 2c 	cp $2c	cp $00
2137	28 13 	jr z,$+$15	jr z,$+$00
2139	cd 18 35 	call $3518	call $0000
213c	20 e4 	jr nz,$-$1a	jr nz,$-$00
213e	c5 	push bc	push bc
213f	cd b6 20 	call $20b6	call $0000
2142	09 	add hl,bc	add hl,bc
2143	dd 09 	add ix,bc	add ix,bc
2145	c1 	pop bc	pop bc
2146	0b 	dec bc	dec bc
2147	78 	ld a,b	ld a,b
2148	b1 	or c	or c
2149	20 f3 	jr nz,$-$0b	jr nz,$-$00
214b	c9 	ret	ret
214c	c5 	push bc	push bc
214d	cd b6 20 	call $20b6	call $0000
2150	fd 23 	inc iy	inc iy
2152	09 	add hl,bc	add hl,bc
2153	dd 09 	add ix,bc	add ix,bc
2155	c1 	pop bc	pop bc
2156	0b 	dec bc	dec bc
2157	78 	ld a,b	ld a,b
2158	b1 	or c	or c
2159	c8 	ret z	ret z
215a	c5 	push bc	push bc
215b	d5 	push de	push de
215c	e5 	push hl	push hl
215d	dd e5 	push ix	push ix
215f	cb 7a 	bit 7,d	bit 7,d
2161	20 0e 	jr nz,$+$10	jr nz,$+$00
2163	d5 	push de	push de
2164	cd 0e 18 	call $180e	call $0000
2167	d1 	pop de	pop de
2168	dd e1 	pop ix	pop ix
216a	dd e5 	push ix	push ix
216c	cd b0 31 	call $31b0	call $0000
216f	18 0c 	jr $+$0e	jr $+$00
2171	d5 	push de	push de
2172	cd 1e 18 	call $181e	call $0000
2175	e1 	pop hl	pop hl
2176	dd e1 	pop ix	pop ix
2178	dd e5 	push ix	push ix
217a	cd fa 31 	call $31fa	call $0000
217d	dd e1 	pop ix	pop ix
217f	e1 	pop hl	pop hl
2180	d1 	pop de	pop de
2181	01 04 00 	ld bc,$0004	ld bc,$0000
2184	cb 7a 	bit 7,d	bit 7,d
2186	20 01 	jr nz,$+$03	jr nz,$+$00
2188	4a 	ld c,d	ld c,d
2189	cd ed 44 	call $44ed	call $0000
218c	fe 2c 	cp $2c	cp $00
218e	28 c0 	jr z,$-$3e	jr z,$-$00
2190	d1 	pop de	pop de
2191	09 	add hl,bc	add hl,bc
2192	1b 	dec de	dec de
2193	7a 	ld a,d	ld a,d
2194	b3 	or e	or e
2195	20 fa 	jr nz,$-$04	jr nz,$-$00
2197	c9 	ret	ret
2198	cd ed 44 	call $44ed	call $0000
219b	e5 	push hl	push hl
219c	c5 	push bc	push bc
219d	fd e5 	push iy	push iy
219f	d5 	push de	push de
21a0	fe 2d 	cp $2d	cp $00
21a2	20 0c 	jr nz,$+$0e	jr nz,$+$00
21a4	7b 	ld a,e	ld a,e
21a5	fe 3d 	cp $3d	cp $00
21a7	20 07 	jr nz,$+$09	jr nz,$+$00
21a9	fd 23 	inc iy	inc iy
21ab	cd ed 44 	call $44ed	call $0000
21ae	1e 2d 	ld e,$2d	ld e,$00
21b0	d5 	push de	push de
21b1	cd c5 41 	call $41c5	call $0000
21b4	d1 	pop de	pop de
21b5	20 56 	jr nz,$+$58	jr nz,$+$00
21b7	cb 77 	bit 6,a	bit 6,a
21b9	28 52 	jr z,$+$54	jr z,$+$00
21bb	c1 	pop bc	pop bc
21bc	c1 	pop bc	pop bc
21bd	cb b7 	res 6,a	res 6,a
21bf	ba 	cp d	cp d
21c0	c2 50 18 	jp nz,$1850	jp nz,$0000
21c3	d5 	push de	push de
21c4	cd af 19 	call $19af	call $0000
21c7	cd 86 19 	call $1986	call $0000
21ca	42 	ld b,d	ld b,d
21cb	4b 	ld c,e	ld c,e
21cc	d1 	pop de	pop de
21cd	e3 	ex (sp),hl	ex (sp),hl
21ce	cd ed 44 	call $44ed	call $0000
21d1	dd e1 	pop ix	pop ix
21d3	fe 2e 	cp $2e	cp $00
21d5	ca 65 22 	jp z,$2265	jp z,$0000
21d8	b7 	or a	or a
21d9	ed 42 	sbc hl,bc	sbc hl,bc
21db	c2 50 18 	jp nz,$1850	jp nz,$0000
21de	e1 	pop hl	pop hl
21df	cb 7a 	bit 7,d	bit 7,d
21e1	20 1d 	jr nz,$+$1f	jr nz,$+$00
21e3	c5 	push bc	push bc
21e4	e5 	push hl	push hl
21e5	7a 	ld a,d	ld a,d
21e6	cd 07 19 	call $1907	call $0000
21e9	dd e3 	ex (sp),ix	ex (sp),ix
21eb	d5 	push de	push de
21ec	cd b0 31 	call $31b0	call $0000
21ef	d1 	pop de	pop de
21f0	dd e3 	ex (sp),ix	ex (sp),ix
21f2	e1 	pop hl	pop hl
21f3	4a 	ld c,d	ld c,d
21f4	06 00 	ld b,$00	ld b,$00
21f6	dd 09 	add ix,bc	add ix,bc
21f8	09 	add hl,bc	add hl,bc
21f9	c1 	pop bc	pop bc
21fa	0b 	dec bc	dec bc
21fb	78 	ld a,b	ld a,b
21fc	b1 	or c	or c
21fd	20 e4 	jr nz,$-$1a	jr nz,$-$00
21ff	c9 	ret	ret
2200	eb 	ex de,hl	ex de,hl
2201	60 	ld h,b	ld h,b
2202	69 	ld l,c	ld l,c
2203	29 	add hl,hl	add hl,hl
2204	29 	add hl,hl	add hl,hl
2205	44 	ld b,h	ld b,h
2206	4d 	ld c,l	ld c,l
2207	dd e5 	push ix	push ix
2209	e1 	pop hl	pop hl
220a	ed b0 	ldir	ldir
220c	c9 	ret	ret
220d	d1 	pop de	pop de
220e	fd e1 	pop iy	pop iy
2210	cb 7a 	bit 7,d	bit 7,d
2212	20 28 	jr nz,$+$2a	jr nz,$+$00
2214	d5 	push de	push de
2215	cd ed 17 	call $17ed	call $0000
2218	79 	ld a,c	ld a,c
2219	d1 	pop de	pop de
221a	c1 	pop bc	pop bc
221b	dd e1 	pop ix	pop ix
221d	e5 	push hl	push hl
221e	c5 	push bc	push bc
221f	d5 	push de	push de
2220	d9 	exx	exx
2221	e5 	push hl	push hl
2222	d9 	exx	exx
2223	f5 	push af	push af
2224	4f 	ld c,a	ld c,a
2225	cd b0 31 	call $31b0	call $0000
2228	f1 	pop af	pop af
2229	d9 	exx	exx
222a	e1 	pop hl	pop hl
222b	d9 	exx	exx
222c	d1 	pop de	pop de
222d	4a 	ld c,d	ld c,d
222e	06 00 	ld b,$00	ld b,$00
2230	dd 09 	add ix,bc	add ix,bc
2232	c1 	pop bc	pop bc
2233	0b 	dec bc	dec bc
2234	ed 62 	sbc hl,hl	sbc hl,hl
2236	ed 42 	sbc hl,bc	sbc hl,bc
2238	e1 	pop hl	pop hl
2239	20 e2 	jr nz,$-$1c	jr nz,$-$00
223b	c9 	ret	ret
223c	cd 1e 18 	call $181e	call $0000
223f	7b 	ld a,e	ld a,e
2240	b7 	or a	or a
2241	28 0b 	jr z,$+$0d	jr z,$+$00
2243	21 00 52 	ld hl,$5200	ld hl,$0000
2246	11 00 53 	ld de,$5300	ld de,$0000
2249	4f 	ld c,a	ld c,a
224a	06 00 	ld b,$00	ld b,$00
224c	ed b0 	ldir	ldir
224e	c1 	pop bc	pop bc
224f	dd e1 	pop ix	pop ix
2251	d9 	exx	exx
2252	6f 	ld l,a	ld l,a
2253	d9 	exx	exx
2254	11 04 00 	ld de,$0004	ld de,$0000
2257	21 00 53 	ld hl,$5300	ld hl,$0000
225a	cd eb 31 	call $31eb	call $0000
225d	dd 19 	add ix,de	add ix,de
225f	0b 	dec bc	dec bc
2260	78 	ld a,b	ld a,b
2261	b1 	or c	or c
2262	20 f6 	jr nz,$-$08	jr nz,$-$00
2264	c9 	ret	ret
2265	fd 23 	inc iy	inc iy
2267	7a 	ld a,d	ld a,d
2268	b7 	or a	or a
2269	fa 50 18 	jp m,$1850	jp m,$0000
226c	eb 	ex de,hl	ex de,hl
226d	e1 	pop hl	pop hl
226e	d5 	push de	push de
226f	e5 	push hl	push hl
2270	dd e5 	push ix	push ix
2272	f5 	push af	push af
2273	cd 9f 19 	call $199f	call $0000
2276	cd 86 19 	call $1986	call $0000
2279	f1 	pop af	pop af
227a	eb 	ex de,hl	ex de,hl
227b	dd 6e 00 	ld l,(ix)	ld l,(ix)
227e	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
2281	6e 	ld l,(hl)	ld l,(hl)
2282	2d 	dec l	dec l
2283	eb 	ex de,hl	ex de,hl
2284	dd e1 	pop ix	pop ix
2286	c1 	pop bc	pop bc
2287	d1 	pop de	pop de
2288	fd e5 	push iy	push iy
228a	c5 	push bc	push bc
228b	e5 	push hl	push hl
228c	fd e1 	pop iy	pop iy
228e	21 01 00 	ld hl,$0001	ld hl,$0000
2291	28 06 	jr z,$+$08	jr z,$+$00
2293	fd 66 ff 	ld h,(iy-$01)	ld h,(iy-$00)
2296	fd 6e fe 	ld l,(iy-$02)	ld l,(iy-$00)
2299	d5 	push de	push de
229a	eb 	ex de,hl	ex de,hl
229b	cd 8f 36 	call $368f	call $0000
229e	eb 	ex de,hl	ex de,hl
229f	d1 	pop de	pop de
22a0	dd 46 ff 	ld b,(ix-$01)	ld b,(ix-$00)
22a3	dd 4e fe 	ld c,(ix-$02)	ld c,(ix-$00)
22a6	c5 	push bc	push bc
22a7	d5 	push de	push de
22a8	e5 	push hl	push hl
22a9	dd e5 	push ix	push ix
22ab	fd e5 	push iy	push iy
22ad	50 	ld d,b	ld d,b
22ae	59 	ld e,c	ld e,c
22af	f5 	push af	push af
22b0	cd da 1f 	call $1fda	call $0000
22b3	f1 	pop af	pop af
22b4	d5 	push de	push de
22b5	c5 	push bc	push bc
22b6	e5 	push hl	push hl
22b7	d9 	exx	exx
22b8	e5 	push hl	push hl
22b9	d9 	exx	exx
22ba	cd 07 19 	call $1907	call $0000
22bd	dd e5 	push ix	push ix
22bf	fd e3 	ex (sp),iy	ex (sp),iy
22c1	dd e1 	pop ix	pop ix
22c3	cd c9 19 	call $19c9	call $0000
22c6	dd e5 	push ix	push ix
22c8	fd e3 	ex (sp),iy	ex (sp),iy
22ca	dd e1 	pop ix	pop ix
22cc	f5 	push af	push af
22cd	3e 0a 	ld a,$0a	ld a,$00
22cf	cd f7 44 	call $44f7	call $0000
22d2	da 26 3f 	jp c,$3f26	jp c,$0000
22d5	f1 	pop af	pop af
22d6	d9 	exx	exx
22d7	eb 	ex de,hl	ex de,hl
22d8	e1 	pop hl	pop hl
22d9	d9 	exx	exx
22da	eb 	ex de,hl	ex de,hl
22db	e1 	pop hl	pop hl
22dc	08 	ex af,af'	ex af,af'
22dd	79 	ld a,c	ld a,c
22de	c1 	pop bc	pop bc
22df	47 	ld b,a	ld b,a
22e0	08 	ex af,af'	ex af,af'
22e1	f5 	push af	push af
22e2	3e 0b 	ld a,$0b	ld a,$00
22e4	cd f7 44 	call $44f7	call $0000
22e7	da 26 3f 	jp c,$3f26	jp c,$0000
22ea	f1 	pop af	pop af
22eb	d1 	pop de	pop de
22ec	d9 	exx	exx
22ed	4f 	ld c,a	ld c,a
22ee	06 00 	ld b,$00	ld b,$00
22f0	dd 09 	add ix,bc	add ix,bc
22f2	d1 	pop de	pop de
22f3	c1 	pop bc	pop bc
22f4	e3 	ex (sp),hl	ex (sp),hl
22f5	eb 	ex de,hl	ex de,hl
22f6	fd 19 	add iy,de	add iy,de
22f8	eb 	ex de,hl	ex de,hl
22f9	e3 	ex (sp),hl	ex (sp),hl
22fa	c5 	push bc	push bc
22fb	d5 	push de	push de
22fc	d9 	exx	exx
22fd	1b 	dec de	dec de
22fe	1c 	inc e	inc e
22ff	1d 	dec e	dec e
2300	20 b2 	jr nz,$-$4c	jr nz,$-$00
2302	14 	inc d	inc d
2303	15 	dec d	dec d
2304	20 ae 	jr nz,$-$50	jr nz,$-$00
2306	fd e1 	pop iy	pop iy
2308	dd e1 	pop ix	pop ix
230a	d9 	exx	exx
230b	08 	ex af,af'	ex af,af'
230c	f1 	pop af	pop af
230d	c1 	pop bc	pop bc
230e	d1 	pop de	pop de
230f	dd e3 	ex (sp),ix	ex (sp),ix
2311	d5 	push de	push de
2312	c5 	push bc	push bc
2313	f5 	push af	push af
2314	08 	ex af,af'	ex af,af'
2315	d9 	exx	exx
2316	f5 	push af	push af
2317	d5 	push de	push de
2318	cd d2 31 	call $31d2	call $0000
231b	d1 	pop de	pop de
231c	f1 	pop af	pop af
231d	4f 	ld c,a	ld c,a
231e	06 00 	ld b,$00	ld b,$00
2320	dd 09 	add ix,bc	add ix,bc
2322	d9 	exx	exx
2323	08 	ex af,af'	ex af,af'
2324	f1 	pop af	pop af
2325	c1 	pop bc	pop bc
2326	d1 	pop de	pop de
2327	dd e3 	ex (sp),ix	ex (sp),ix
2329	d5 	push de	push de
232a	c5 	push bc	push bc
232b	f5 	push af	push af
232c	08 	ex af,af'	ex af,af'
232d	d9 	exx	exx
232e	e1 	pop hl	pop hl
232f	d1 	pop de	pop de
2330	c1 	pop bc	pop bc
2331	1b 	dec de	dec de
2332	c5 	push bc	push bc
2333	d5 	push de	push de
2334	e5 	push hl	push hl
2335	4f 	ld c,a	ld c,a
2336	06 00 	ld b,$00	ld b,$00
2338	fd 09 	add iy,bc	add iy,bc
233a	f5 	push af	push af
233b	e5 	push hl	push hl
233c	cd 8f 36 	call $368f	call $0000
233f	c1 	pop bc	pop bc
2340	cd 72 23 	call $2372	call $0000
2343	f1 	pop af	pop af
2344	b7 	or a	or a
2345	01 00 00 	ld bc,$0000	ld bc,$0000
2348	ed 42 	sbc hl,bc	sbc hl,bc
234a	e1 	pop hl	pop hl
234b	d1 	pop de	pop de
234c	c1 	pop bc	pop bc
234d	20 15 	jr nz,$+$17	jr nz,$+$00
234f	d5 	push de	push de
2350	e5 	push hl	push hl
2351	eb 	ex de,hl	ex de,hl
2352	fd e5 	push iy	push iy
2354	e1 	pop hl	pop hl
2355	b7 	or a	or a
2356	ed 52 	sbc hl,de	sbc hl,de
2358	e5 	push hl	push hl
2359	fd e1 	pop iy	pop iy
235b	50 	ld d,b	ld d,b
235c	59 	ld e,c	ld e,c
235d	cd 8f 36 	call $368f	call $0000
2360	dd 19 	add ix,de	add ix,de
2362	e1 	pop hl	pop hl
2363	d1 	pop de	pop de
2364	1c 	inc e	inc e
2365	1d 	dec e	dec e
2366	c2 a6 22 	jp nz,$22a6	jp nz,$0000
2369	14 	inc d	inc d
236a	15 	dec d	dec d
236b	c2 a6 22 	jp nz,$22a6	jp nz,$0000
236e	e1 	pop hl	pop hl
236f	fd e1 	pop iy	pop iy
2371	c9 	ret	ret
2372	af 	xor a	xor a
2373	67 	ld h,a	ld h,a
2374	6f 	ld l,a	ld l,a
2375	3e 11 	ld a,$11	ld a,$00
2377	ed 42 	sbc hl,bc	sbc hl,bc
2379	30 01 	jr nc,$+$03	jr nc,$+$00
237b	09 	add hl,bc	add hl,bc
237c	3f 	ccf	ccf
237d	cb 13 	rl e	rl e
237f	cb 12 	rl d	rl d
2381	3d 	dec a	dec a
2382	c8 	ret z	ret z
2383	ed 6a 	adc hl,hl	adc hl,hl
2385	18 f0 	jr $-$0e	jr $-$00
2387	59 	ld e,c	ld e,c
2388	30 6d 	jr nc,$+$6f	jr nc,$+$00
238a	30 63 	jr nc,$+$65	jr nc,$+$00
238c	30 c2 	jr nc,$-$3c	jr nc,$-$00
238e	25 	dec h	dec h
238f	c2 25 c2 	jp nz,$c225	jp nz,$0000
2392	25 	dec h	dec h
2393	c2 25 08 	jp nz,$0825	jp nz,$0000
2396	2e 39 	ld l,$39	ld l,$00
2398	2d 	dec l	dec l
2399	c2 25 c2 	jp nz,$c225	jp nz,$0000
239c	25 	dec h	dec h
239d	7b 	ld a,e	ld a,e
239e	24 	inc h	inc h
239f	c2 25 7b 	jp nz,$7b25	jp nz,$0000
23a2	24 	inc h	inc h
23a3	25 	dec h	dec h
23a4	2e e3 	ld l,$e3	ld l,$00
23a6	2e f7 	ld l,$f7	ld l,$00
23a8	2e 05 	ld l,$05	ld l,$00
23aa	2f 	cpl	cpl
23ab	24 	inc h	inc h
23ac	2f 	cpl	cpl
23ad	36 2f 	ld (hl),$2f	ld (hl),$00
23af	13 	inc de	inc de
23b0	0e b5 	ld c,$b5	ld c,$00
23b2	2f 	cpl	cpl
23b3	ee 2f 	xor $2f	xor $00
23b5	2e 24 	ld l,$24	ld l,$00
23b7	78 	ld a,b	ld a,b
23b8	2e ad 	ld l,$ad	ld l,$00
23ba	2f 	cpl	cpl
23bb	57 	ld d,a	ld d,a
23bc	0e 57 	ld c,$57	ld c,$00
23be	2e 13 	ld l,$13	ld l,$00
23c0	25 	dec h	dec h
23c1	13 	inc de	inc de
23c2	25 	dec h	dec h
23c3	20 26 	jr nz,$+$28	jr nz,$+$00
23c5	5e 	ld e,(hl)	ld e,(hl)
23c6	0f 	rrca	rrca
23c7	b5 	or l	or l
23c8	24 	inc h	inc h
23c9	5f 	ld e,a	ld e,a
23ca	2b 	dec hl	dec hl
23cb	e5 	push hl	push hl
23cc	0d 	dec c	dec c
23cd	f6 28 	or $28	or $00
23cf	ad 	xor l	xor l
23d0	28 96 	jr z,$-$68	jr z,$-$00
23d2	28 af 	jr z,$-$4f	jr z,$-$00
23d4	0e ab 	ld c,$ab	ld c,$00
23d6	2c 	inc l	inc l
23d7	c4 2b 83 	call nz,$832b	call nz,$0000
23da	25 	dec h	dec h
23db	f5 	push af	push af
23dc	2a 47 0e 	ld hl,($0e47)	ld hl,($0000)
23df	5a 	ld e,d	ld e,d
23e0	0f 	rrca	rrca
23e1	43 	ld b,e	ld b,e
23e2	29 	add hl,hl	add hl,hl
23e3	1c 	inc e	inc e
23e4	28 7e 	jr z,$+$80	jr z,$+$00
23e6	2f 	cpl	cpl
23e7	66 	ld h,(hl)	ld h,(hl)
23e8	0f 	rrca	rrca
23e9	28 27 	jr z,$+$29	jr z,$+$00
23eb	c9 	ret	ret
23ec	29 	add hl,hl	add hl,hl
23ed	62 	ld h,d	ld h,d
23ee	2c 	inc l	inc l
23ef	13 	inc de	inc de
23f0	25 	dec h	dec h
23f1	c7 	rst $00	rst $00
23f2	28 73 	jr z,$+$75	jr z,$+$00
23f4	2e 9e 	ld l,$9e	ld l,$00
23f6	2e b8 	ld l,$b8	ld l,$00
23f8	28 29 	jr z,$+$2b	jr z,$+$00
23fa	24 	inc h	inc h
23fb	60 	ld h,b	ld h,b
23fc	2e 6f 	ld l,$6f	ld l,$00
23fe	0e 65 	ld c,$65	ld c,$00
2400	2f 	cpl	cpl
2401	cf 	rst $08	rst $00
2402	28 5b 	jr z,$+$5d	jr z,$+$00
2404	2f 	cpl	cpl
2405	ea 24 13 	jp pe,$1324	jp pe,$0000
2408	25 	dec h	dec h
2409	fd 0e 	trap	trap
240b	29 	add hl,hl	add hl,hl
240c	0f 	rrca	rrca
240d	62 	ld h,d	ld h,d
240e	0f 	rrca	rrca
240f	1c 	inc e	inc e
2410	10 5e 	djnz $+$60	djnz $+$00
2412	0e 0e 	ld c,$0e	ld c,$00
2414	0a 	ld a,(bc)	ld a,(bc)
2415	9b 	sbc a,e	sbc a,e
2416	0f 	rrca	rrca
2417	40 25 	dec.sis h	dec.sis h
2419	f3 	di	di
241a	10 f3 	djnz $-$0b	djnz $-$00
241c	10 5b 	djnz $+$5d	djnz $+$00
241e	10 c2 	djnz $-$3c	djnz $-$00
2420	25 	dec h	dec h
2421	13 	inc de	inc de
2422	25 	dec h	dec h
2423	7f 	ld a,a	ld a,a
2424	31 c2 25 	ld sp,$25c2	ld sp,$0000
2427	05 	dec b	dec b
2428	31 cd 18 	ld sp,$18cd	ld sp,$0000
242b	35 	dec (hl)	dec (hl)
242c	28 0d 	jr z,$+$0f	jr z,$+$00
242e	cd 1e 18 	call $181e	call $0000
2431	3e 0d 	ld a,$0d	ld a,$00
2433	12 	ld (de),a	ld (de),a
2434	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
2438	cd e2 3f 	call $3fe2	call $0000
243b	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
243f	dd 21 f6 54 	ld ix,$54f6	ld ix,$0000
2443	ed 5f 	ld a,r	ld a,r
2445	28 fc 	jr z,$-$02	jr z,$-$00
2447	07 	rlca	rlca
2448	07 	rlca	rlca
2449	dd 77 03 	ld (ix+$03),a	ld (ix+$00),a
244c	9f 	sbc a,a	sbc a,a
244d	dd 77 04 	ld (ix+$04),a	ld (ix+$00),a
2450	cd 25 40 	call $4025	call $0000
2453	21 00 00 	ld hl,$0000	ld hl,$0000
2456	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
2459	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
245c	cd db 35 	call $35db	call $0000
245f	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2462	fd 2a dc 54 	ld iy,($54dc)	ld iy,($0000)
2466	cd bd 24 	call $24bd	call $0000
2469	fd 7e 00 	ld a,(iy)	ld a,(iy)
246c	fe 8b 	cp $8b	cp $00
246e	ca 12 2d 	jp z,$2d12	jp z,$0000
2471	fe c9 	cp $c9	cp $00
2473	ca 25 2d 	jp z,$2d25	jp z,$0000
2476	fe cc 	cp $cc	cp $00
2478	ca 25 2d 	jp z,$2d25	jp z,$0000
247b	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
247f	cd 15 06 	call $0615	call $0000
2482	cd ed 44 	call $44ed	call $0000
2485	fd 23 	inc iy	inc iy
2487	fe 3a 	cp $3a	cp $00
2489	28 f7 	jr z,$-$07	jr z,$-$00
248b	fe 0d 	cp $0d	cp $00
248d	28 d7 	jr z,$-$27	jr z,$-$00
248f	fe 98 	cp $98	cp $00
2491	ea 75 25 	jp pe,$2575	jp pe,$0000
2494	d6 c7 	sub $c7	sub $00
2496	fa f8 24 	jp m,$24f8	jp m,$0000
2499	87 	add a,a	add a,a
249a	4f 	ld c,a	ld c,a
249b	06 00 	ld b,$00	ld b,$00
249d	21 87 23 	ld hl,$2387	ld hl,$0000
24a0	09 	add hl,bc	add hl,bc
24a1	7e 	ld a,(hl)	ld a,(hl)
24a2	23 	inc hl	inc hl
24a3	66 	ld h,(hl)	ld h,(hl)
24a4	6f 	ld l,a	ld l,a
24a5	cd ed 44 	call $44ed	call $0000
24a8	e9 	jp (hl)	jp (hl)
24a9	fd e5 	push iy	push iy
24ab	e1 	pop hl	pop hl
24ac	ed 4b dc 54 	ld bc,($54dc)	ld bc,($0000)
24b0	ed 42 	sbc hl,bc	sbc hl,bc
24b2	da 92 37 	jp c,$3792	jp c,$0000
24b5	1e 00 	ld e,$00	ld e,$00
24b7	cd 35 06 	call $0635	call $0000
24ba	c3 91 37 	jp $3791	jp $0000
24bd	fd 7e 00 	ld a,(iy)	ld a,(iy)
24c0	01 03 00 	ld bc,$0003	ld bc,$0000
24c3	fd 09 	add iy,bc	add iy,bc
24c5	b7 	or a	or a
24c6	28 e1 	jr z,$-$1d	jr z,$-$00
24c8	2a e6 54 	ld hl,($54e6)	ld hl,($0000)
24cb	7c 	ld a,h	ld a,h
24cc	b5 	or l	or l
24cd	c8 	ret z	ret z
24ce	fd 56 ff 	ld d,(iy-$01)	ld d,(iy-$00)
24d1	fd 5e fe 	ld e,(iy-$02)	ld e,(iy-$00)
24d4	ed 52 	sbc hl,de	sbc hl,de
24d6	d8 	ret c	ret c
24d7	eb 	ex de,hl	ex de,hl
24d8	3e 5b 	ld a,$5b	ld a,$00
24da	cd e4 40 	call $40e4	call $0000
24dd	cd 74 41 	call $4174	call $0000
24e0	3e 5d 	ld a,$5d	ld a,$00
24e2	cd e4 40 	call $40e4	call $0000
24e5	3e 20 	ld a,$20	ld a,$00
24e7	c3 e4 40 	jp $40e4	jp $0000
24ea	cd 1e 18 	call $181e	call $0000
24ed	3e 0d 	ld a,$0d	ld a,$00
24ef	12 	ld (de),a	ld (de),a
24f0	21 00 52 	ld hl,$5200	ld hl,$0000
24f3	cd 95 09 	call $0995	call $0000
24f6	18 83 	jr $-$7b	jr $-$00
24f8	fe c4 	cp $c4	cp $00
24fa	28 17 	jr z,$+$19	jr z,$+$00
24fc	fe be 	cp $be	cp $00
24fe	28 21 	jr z,$+$23	jr z,$+$00
2500	fe bf 	cp $bf	cp $00
2502	ca e7 0e 	jp z,$0ee7	jp z,$0000
2505	fe c0 	cp $c0	cp $00
2507	ca d0 0e 	jp z,$0ed0	jp z,$0000
250a	c3 c2 25 	jp $25c2	jp $0000
250d	fd e5 	push iy	push iy
250f	e1 	pop hl	pop hl
2510	cd 95 09 	call $0995	call $0000
2513	fd e5 	push iy	push iy
2515	e1 	pop hl	pop hl
2516	3e 0d 	ld a,$0d	ld a,$00
2518	47 	ld b,a	ld b,a
2519	ed b1 	cpir	cpir
251b	e5 	push hl	push hl
251c	fd e1 	pop iy	pop iy
251e	c3 66 24 	jp $2466	jp $0000
2521	cd 15 18 	call $1815	call $0000
2524	d9 	exx	exx
2525	e5 	push hl	push hl
2526	d9 	exx	exx
2527	cd 84 20 	call $2084	call $0000
252a	cd 1e 18 	call $181e	call $0000
252d	e1 	pop hl	pop hl
252e	af 	xor a	xor a
252f	12 	ld (de),a	ld (de),a
2530	7d 	ld a,l	ld a,l
2531	21 00 52 	ld hl,$5200	ld hl,$0000
2534	11 00 53 	ld de,$5300	ld de,$0000
2537	d5 	push de	push de
2538	01 00 01 	ld bc,$0100	ld bc,$0000
253b	ed b0 	ldir	ldir
253d	c3 37 3f 	jp $3f37	jp $0000
2540	cd c5 41 	call $41c5	call $0000
2543	20 0b 	jr nz,$+$0d	jr nz,$+$00
2545	f5 	push af	push af
2546	e5 	push hl	push hl
2547	cd 84 20 	call $2084	call $0000
254a	cd ed 44 	call $44ed	call $0000
254d	cd c5 41 	call $41c5	call $0000
2550	20 6d 	jr nz,$+$6f	jr nz,$+$00
2552	d1 	pop de	pop de
2553	c1 	pop bc	pop bc
2554	b8 	cp b	cp b
2555	20 74 	jr nz,$+$76	jr nz,$+$00
2557	e6 0f 	and $0f	and $00
2559	28 70 	jr z,$+$72	jr z,$+$00
255b	78 	ld a,b	ld a,b
255c	e6 c0 	and $c0	and $00
255e	28 0a 	jr z,$+$0c	jr z,$+$00
2560	06 02 	ld b,$02	ld b,$00
2562	f2 6a 25 	jp p,$256a	jp p,$0000
2565	ea 6a 25 	jp pe,$256a	jp pe,$0000
2568	06 04 	ld b,$04	ld b,$00
256a	4e 	ld c,(hl)	ld c,(hl)
256b	1a 	ld a,(de)	ld a,(de)
256c	77 	ld (hl),a	ld (hl),a
256d	79 	ld a,c	ld a,c
256e	12 	ld (de),a	ld (de),a
256f	13 	inc de	inc de
2570	23 	inc hl	inc hl
2571	10 f7 	djnz $-$07	djnz $-$00
2573	18 28 	jr $+$2a	jr $+$00
2575	fe 2a 	cp $2a	cp $00
2577	28 94 	jr z,$-$6a	jr z,$-$00
2579	fe 3d 	cp $3d	cp $00
257b	28 71 	jr z,$+$73	jr z,$+$00
257d	fe 5b 	cp $5b	cp $00
257f	28 52 	jr z,$+$54	jr z,$+$00
2581	fd 2b 	dec iy	dec iy
2583	cd 91 31 	call $3191	call $0000
2586	ca 7b 24 	jp z,$247b	jp z,$0000
2589	38 37 	jr c,$+$39	jr c,$+$00
258b	f2 dd 20 	jp p,$20dd	jp p,$0000
258e	ea dd 20 	jp pe,$20dd	jp pe,$0000
2591	7a 	ld a,d	ld a,d
2592	d5 	push de	push de
2593	e5 	push hl	push hl
2594	cd 1e 18 	call $181e	call $0000
2597	dd e1 	pop ix	pop ix
2599	e1 	pop hl	pop hl
259a	cd fa 31 	call $31fa	call $0000
259d	c3 7b 24 	jp $247b	jp $0000
25a0	cd c5 41 	call $41c5	call $0000
25a3	20 1a 	jr nz,$+$1c	jr nz,$+$00
25a5	47 	ld b,a	ld b,a
25a6	e6 c0 	and $c0	and $00
25a8	f2 cb 25 	jp p,$25cb	jp p,$0000
25ab	ea c8 25 	jp pe,$25c8	jp pe,$0000
25ae	cb 40 	bit 0,b	bit 0,b
25b0	28 19 	jr z,$+$1b	jr z,$+$00
25b2	cd ed 44 	call $44ed	call $0000
25b5	fe 2c 	cp $2c	cp $00
25b7	c9 	ret	ret
25b8	cd c5 41 	call $41c5	call $0000
25bb	c8 	ret z	ret z
25bc	d2 af 41 	jp nc,$41af	jp nc,$0000
25bf	3e 1a 	ld a,$1a	ld a,$00
25c1	21 3e 10 	ld hl,$103e	ld hl,$0000
25c4	21 3e 11 	ld hl,$113e	ld hl,$0000
25c7	21 3e 0e 	ld hl,$0e3e	ld hl,$0000
25ca	21 3e 06 	ld hl,$063e	ld hl,$0000
25cd	c3 26 3f 	jp $3f26	jp $0000
25d0	cd bd 24 	call $24bd	call $0000
25d3	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
25d7	cd 15 06 	call $0615	call $0000
25da	cd fd 10 	call $10fd	call $0000
25dd	38 e3 	jr c,$-$1b	jr c,$-$00
25df	fe 0d 	cp $0d	cp $00
25e1	28 ed 	jr z,$-$11	jr z,$-$00
25e3	21 fe 54 	ld hl,$54fe	ld hl,$0000
25e6	7e 	ld a,(hl)	ld a,(hl)
25e7	e6 0f 	and $0f	and $00
25e9	f6 30 	or $30	or $00
25eb	77 	ld (hl),a	ld (hl),a
25ec	18 af 	jr $-$4f	jr $-$00
25ee	cd e4 16 	call $16e4	call $0000
25f1	08 	ex af,af'	ex af,af'
25f2	87 	add a,a	add a,a
25f3	7b 	ld a,e	ld a,e
25f4	38 01 	jr c,$+$03	jr c,$+$00
25f6	79 	ld a,c	ld a,c
25f7	08 	ex af,af'	ex af,af'
25f8	e5 	push hl	push hl
25f9	d9 	exx	exx
25fa	c1 	pop bc	pop bc
25fb	eb 	ex de,hl	ex de,hl
25fc	d9 	exx	exx
25fd	c1 	pop bc	pop bc
25fe	21 c9 29 	ld hl,$29c9	ld hl,$0000
2601	af 	xor a	xor a
2602	ed 42 	sbc hl,bc	sbc hl,bc
2604	28 0a 	jr z,$+$0c	jr z,$+$00
2606	c5 	push bc	push bc
2607	cd 13 34 	call $3413	call $0000
260a	20 f1 	jr nz,$-$0d	jr nz,$-$00
260c	3e 07 	ld a,$07	ld a,$00
260e	18 bd 	jr $-$41	jr $-$00
2610	fd e1 	pop iy	pop iy
2612	fd 22 f4 54 	ld ($54f4),iy	ld ($0000),iy
2616	d9 	exx	exx
2617	eb 	ex de,hl	ex de,hl
2618	c5 	push bc	push bc
2619	d9 	exx	exx
261a	e1 	pop hl	pop hl
261b	08 	ex af,af'	ex af,af'
261c	5f 	ld e,a	ld e,a
261d	4f 	ld c,a	ld c,a
261e	1f 	rra	rra
261f	c9 	ret	ret
2620	fd e5 	push iy	push iy
2622	fe 21 	cp $21	cp $00
2624	ca f1 26 	jp z,$26f1	jp z,$0000
2627	cd 92 42 	call $4292	call $0000
262a	da db 26 	jp c,$26db	jp c,$0000
262d	c4 1e 43 	call nz,$431e	call nz,$0000
2630	fd 7e 00 	ld a,(iy)	ld a,(iy)
2633	fe 28 	cp $28	cp $00
2635	c2 f1 26 	jp nz,$26f1	jp nz,$0000
2638	e5 	push hl	push hl
2639	dd e1 	pop ix	pop ix
263b	7e 	ld a,(hl)	ld a,(hl)
263c	e6 fe 	and $fe	and $00
263e	23 	inc hl	inc hl
263f	b6 	or (hl)	or (hl)
2640	c2 f1 26 	jp nz,$26f1	jp nz,$0000
2643	c1 	pop bc	pop bc
2644	7a 	ld a,d	ld a,d
2645	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
2648	e5 	push hl	push hl
2649	dd e3 	ex (sp),ix	ex (sp),ix
264b	e5 	push hl	push hl
264c	f5 	push af	push af
264d	11 01 00 	ld de,$0001	ld de,$0000
2650	42 	ld b,d	ld b,d
2651	fd 23 	inc iy	inc iy
2653	c5 	push bc	push bc
2654	d5 	push de	push de
2655	dd e5 	push ix	push ix
2657	cd 15 18 	call $1815	call $0000
265a	cb 7c 	bit 7,h	bit 7,h
265c	20 7d 	jr nz,$+$7f	jr nz,$+$00
265e	d9 	exx	exx
265f	23 	inc hl	inc hl
2660	dd e1 	pop ix	pop ix
2662	dd 23 	inc ix	inc ix
2664	dd 75 00 	ld (ix),l	ld (ix),l
2667	dd 23 	inc ix	inc ix
2669	dd 74 00 	ld (ix),h	ld (ix),h
266c	c1 	pop bc	pop bc
266d	cd 9f 36 	call $369f	call $0000
2670	38 6c 	jr c,$+$6e	jr c,$+$00
2672	eb 	ex de,hl	ex de,hl
2673	c1 	pop bc	pop bc
2674	04 	inc b	inc b
2675	fd 7e 00 	ld a,(iy)	ld a,(iy)
2678	fe 2c 	cp $2c	cp $00
267a	28 d5 	jr z,$-$29	jr z,$-$00
267c	dd 23 	inc ix	inc ix
267e	cd 90 20 	call $2090	call $0000
2681	f1 	pop af	pop af
2682	cd 8f 36 	call $368f	call $0000
2685	38 57 	jr c,$+$59	jr c,$+$00
2687	e1 	pop hl	pop hl
2688	70 	ld (hl),b	ld (hl),b
2689	dd e3 	ex (sp),ix	ex (sp),ix
268b	e1 	pop hl	pop hl
268c	e6 80 	and $80	and $00
268e	dd b6 00 	or (ix)	or (ix)
2691	e5 	push hl	push hl
2692	24 	inc h	inc h
2693	19 	add hl,de	add hl,de
2694	38 48 	jr c,$+$4a	jr c,$+$00
2696	ed 72 	sbc hl,sp	sbc hl,sp
2698	30 44 	jr nc,$+$46	jr nc,$+$00
269a	e1 	pop hl	pop hl
269b	e5 	push hl	push hl
269c	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
26a0	b7 	or a	or a
26a1	ed 42 	sbc hl,bc	sbc hl,bc
26a3	44 	ld b,h	ld b,h
26a4	4d 	ld c,l	ld c,l
26a5	e1 	pop hl	pop hl
26a6	ed 42 	sbc hl,bc	sbc hl,bc
26a8	cb 47 	bit 0,a	bit 0,a
26aa	28 12 	jr z,$+$14	jr z,$+$00
26ac	21 00 00 	ld hl,$0000	ld hl,$0000
26af	ed 52 	sbc hl,de	sbc hl,de
26b1	b7 	or a	or a
26b2	ed 42 	sbc hl,bc	sbc hl,bc
26b4	39 	add hl,sp	add hl,sp
26b5	28 07 	jr z,$+$09	jr z,$+$00
26b7	f9 	ld sp,hl	ld sp,hl
26b8	d5 	push de	push de
26b9	c5 	push bc	push bc
26ba	f5 	push af	push af
26bb	cd be 26 	call $26be	call $0000
26be	dd 75 00 	ld (ix),l	ld (ix),l
26c1	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
26c4	78 	ld a,b	ld a,b
26c5	b1 	or c	or c
26c6	28 09 	jr z,$+$0b	jr z,$+$00
26c8	d5 	push de	push de
26c9	eb 	ex de,hl	ex de,hl
26ca	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
26cd	ed b0 	ldir	ldir
26cf	eb 	ex de,hl	ex de,hl
26d0	d1 	pop de	pop de
26d1	7a 	ld a,d	ld a,d
26d2	b3 	or e	or e
26d3	28 0e 	jr z,$+$10	jr z,$+$00
26d5	36 00 	ld (hl),$00	ld (hl),$00
26d7	23 	inc hl	inc hl
26d8	1b 	dec de	dec de
26d9	18 f6 	jr $-$08	jr $-$00
26db	3e 0a 	ld a,$0a	ld a,$00
26dd	21 3e 0b 	ld hl,$0b3e	ld hl,$0000
26e0	c3 26 3f 	jp $3f26	jp $0000
26e3	ed 72 	sbc hl,sp	sbc hl,sp
26e5	30 04 	jr nc,$+$06	jr nc,$+$00
26e7	39 	add hl,sp	add hl,sp
26e8	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
26eb	cd e2 44 	call $44e2	call $0000
26ee	c3 20 26 	jp $2620	jp $0000
26f1	fd e1 	pop iy	pop iy
26f3	cd b8 25 	call $25b8	call $0000
26f6	b7 	or a	or a
26f7	28 e2 	jr z,$-$1c	jr z,$-$00
26f9	fa db 26 	jp m,$26db	jp m,$0000
26fc	cb 77 	bit 6,a	bit 6,a
26fe	20 db 	jr nz,$-$23	jr nz,$-$00
2700	47 	ld b,a	ld b,a
2701	cd ed 44 	call $44ed	call $0000
2704	fe ea 	cp $ea	cp $00
2706	3e 00 	ld a,$00	ld a,$00
2708	20 03 	jr nz,$+$05	jr nz,$+$00
270a	fd 23 	inc iy	inc iy
270c	3c 	inc a	inc a
270d	f5 	push af	push af
270e	78 	ld a,b	ld a,b
270f	d9 	exx	exx
2710	21 00 00 	ld hl,$0000	ld hl,$0000
2713	4c 	ld c,h	ld c,h
2714	cd d2 31 	call $31d2	call $0000
2717	dd e5 	push ix	push ix
2719	cd 15 18 	call $1815	call $0000
271c	dd e1 	pop ix	pop ix
271e	d9 	exx	exx
271f	23 	inc hl	inc hl
2720	eb 	ex de,hl	ex de,hl
2721	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
2724	f1 	pop af	pop af
2725	c3 91 26 	jp $2691	jp $0000
2728	fe 23 	cp $23	cp $00
272a	20 64 	jr nz,$+$66	jr nz,$+$00
272c	cd bd 36 	call $36bd	call $0000
272f	cd e2 44 	call $44e2	call $0000
2732	d5 	push de	push de
2733	cd e4 16 	call $16e4	call $0000
2736	08 	ex af,af'	ex af,af'
2737	fa 57 27 	jp m,$2757	jp m,$0000
273a	d1 	pop de	pop de
273b	c5 	push bc	push bc
273c	d9 	exx	exx
273d	7d 	ld a,l	ld a,l
273e	d9 	exx	exx
273f	cd 45 06 	call $0645	call $0000
2742	d9 	exx	exx
2743	7c 	ld a,h	ld a,h
2744	d9 	exx	exx
2745	cd 45 06 	call $0645	call $0000
2748	7d 	ld a,l	ld a,l
2749	cd 45 06 	call $0645	call $0000
274c	7c 	ld a,h	ld a,h
274d	cd 45 06 	call $0645	call $0000
2750	c1 	pop bc	pop bc
2751	79 	ld a,c	ld a,c
2752	cd 45 06 	call $0645	call $0000
2755	18 d8 	jr $-$26	jr $-$00
2757	4b 	ld c,e	ld c,e
2758	d1 	pop de	pop de
2759	21 00 52 	ld hl,$5200	ld hl,$0000
275c	0c 	inc c	inc c
275d	0d 	dec c	dec c
275e	28 09 	jr z,$+$0b	jr z,$+$00
2760	7e 	ld a,(hl)	ld a,(hl)
2761	23 	inc hl	inc hl
2762	c5 	push bc	push bc
2763	cd 45 06 	call $0645	call $0000
2766	c1 	pop bc	pop bc
2767	18 f4 	jr $-$0a	jr $-$00
2769	3e 0d 	ld a,$0d	ld a,$00
276b	cd 45 06 	call $0645	call $0000
276e	18 bf 	jr $-$3f	jr $-$00
2770	06 02 	ld b,$02	ld b,$00
2772	18 22 	jr $+$24	jr $+$00
2774	01 00 01 	ld bc,$0100	ld bc,$0000
2777	18 1d 	jr $+$1f	jr $+$00
2779	21 00 54 	ld hl,$5400	ld hl,$0000
277c	af 	xor a	xor a
277d	be 	cp (hl)	cp (hl)
277e	28 10 	jr z,$+$12	jr z,$+$00
2780	3a fb 54 	ld a,($54fb)	ld a,($0000)
2783	b7 	or a	or a
2784	28 0a 	jr z,$+$0c	jr z,$+$00
2786	96 	sub (hl)	sub (hl)
2787	28 07 	jr z,$+$09	jr z,$+$00
2789	30 fb 	jr nc,$-$03	jr nc,$-$00
278b	ed 44 	neg	neg
278d	cd 85 35 	call $3585	call $0000
2790	3a 00 54 	ld a,($5400)	ld a,($0000)
2793	4f 	ld c,a	ld c,a
2794	06 00 	ld b,$00	ld b,$00
2796	cd 18 35 	call $3518	call $0000
2799	28 38 	jr z,$+$3a	jr z,$+$00
279b	cb 80 	res 0,b	res 0,b
279d	fd 23 	inc iy	inc iy
279f	fe 7e 	cp $7e	cp $00
27a1	28 cd 	jr z,$-$31	jr z,$-$00
27a3	fe 3b 	cp $3b	cp $00
27a5	28 cd 	jr z,$-$31	jr z,$-$00
27a7	fe 2c 	cp $2c	cp $00
27a9	28 ce 	jr z,$-$30	jr z,$-$00
27ab	cd 3e 35 	call $353e	call $0000
27ae	28 e6 	jr z,$-$18	jr z,$-$00
27b0	fd 2b 	dec iy	dec iy
27b2	c5 	push bc	push bc
27b3	cd e4 16 	call $16e4	call $0000
27b6	08 	ex af,af'	ex af,af'
27b7	fa cd 27 	jp m,$27cd	jp m,$0000
27ba	d1 	pop de	pop de
27bb	d5 	push de	push de
27bc	cb 4a 	bit 1,d	bit 1,d
27be	f5 	push af	push af
27bf	cc b2 1f 	call z,$1fb2	call z,$0000
27c2	f1 	pop af	pop af
27c3	c4 6f 1f 	call nz,$1f6f	call nz,$0000
27c6	c1 	pop bc	pop bc
27c7	c5 	push bc	push bc
27c8	79 	ld a,c	ld a,c
27c9	93 	sub e	sub e
27ca	d4 85 35 	call nc,$3585	call nc,$0000
27cd	c1 	pop bc	pop bc
27ce	cd 93 35 	call $3593	call $0000
27d1	18 c3 	jr $-$3b	jr $-$00
27d3	cb 40 	bit 0,b	bit 0,b
27d5	cc dd 40 	call z,$40dd	call z,$0000
27d8	18 3f 	jr $+$41	jr $+$00
27da	fd 23 	inc iy	inc iy
27dc	cd ed 44 	call $44ed	call $0000
27df	21 00 00 	ld hl,$0000	ld hl,$0000
27e2	fe ea 	cp $ea	cp $00
27e4	20 1d 	jr nz,$+$1f	jr nz,$+$00
27e6	fd 23 	inc iy	inc iy
27e8	2a ea 54 	ld hl,($54ea)	ld hl,($0000)
27eb	e5 	push hl	push hl
27ec	2a ec 54 	ld hl,($54ec)	ld hl,($0000)
27ef	e5 	push hl	push hl
27f0	21 00 04 	ld hl,$0400	ld hl,$0000
27f3	e5 	push hl	push hl
27f4	21 ea 54 	ld hl,$54ea	ld hl,$0000
27f7	e5 	push hl	push hl
27f8	21 0c 35 	ld hl,$350c	ld hl,$0000
27fb	e5 	push hl	push hl
27fc	21 00 00 	ld hl,$0000	ld hl,$0000
27ff	39 	add hl,sp	add hl,sp
2800	cd ed 44 	call $44ed	call $0000
2803	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
2806	fd 22 ea 54 	ld ($54ea),iy	ld ($0000),iy
280a	fe 87 	cp $87	cp $00
280c	c2 13 25 	jp nz,$2513	jp nz,$0000
280f	fd 23 	inc iy	inc iy
2811	ed 62 	sbc hl,hl	sbc hl,hl
2813	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
2816	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
2819	c3 7b 24 	jp $247b	jp $0000
281c	cd 18 35 	call $3518	call $0000
281f	ca cc 0e 	jp z,$0ecc	jp z,$0000
2822	fe 85 	cp $85	cp $00
2824	28 b4 	jr z,$-$4a	jr z,$-$00
2826	cd 15 18 	call $1815	call $0000
2829	fd 7e 00 	ld a,(iy)	ld a,(iy)
282c	fd 23 	inc iy	inc iy
282e	1e 2c 	ld e,$2c	ld e,$00
2830	fe e5 	cp $e5	cp $00
2832	28 0b 	jr z,$+$0d	jr z,$+$00
2834	fe e4 	cp $e4	cp $00
2836	28 07 	jr z,$+$09	jr z,$+$00
2838	1e f2 	ld e,$f2	ld e,$00
283a	bb 	cp e	cp e
283b	3e 27 	ld a,$27	ld a,$00
283d	20 4f 	jr nz,$+$51	jr nz,$+$00
283f	57 	ld d,a	ld d,a
2840	d9 	exx	exx
2841	e5 	push hl	push hl
2842	d9 	exx	exx
2843	c1 	pop bc	pop bc
2844	78 	ld a,b	ld a,b
2845	b4 	or h	or h
2846	b5 	or l	or l
2847	20 32 	jr nz,$+$34	jr nz,$+$00
2849	b1 	or c	or c
284a	28 2f 	jr z,$+$31	jr z,$+$00
284c	0d 	dec c	dec c
284d	28 11 	jr z,$+$13	jr z,$+$00
284f	cd 18 35 	call $3518	call $0000
2852	28 27 	jr z,$+$29	jr z,$+$00
2854	fd 23 	inc iy	inc iy
2856	fe 22 	cp $22	cp $00
2858	28 1a 	jr z,$+$1c	jr z,$+$00
285a	bb 	cp e	cp e
285b	20 f2 	jr nz,$-$0c	jr nz,$-$00
285d	0d 	dec c	dec c
285e	20 ef 	jr nz,$-$0f	jr nz,$-$00
2860	7b 	ld a,e	ld a,e
2861	fe f2 	cp $f2	cp $00
2863	28 2c 	jr z,$+$2e	jr z,$+$00
2865	d5 	push de	push de
2866	cd 42 18 	call $1842	call $0000
2869	d1 	pop de	pop de
286a	7a 	ld a,d	ld a,d
286b	fe e5 	cp $e5	cp $00
286d	28 30 	jr z,$+$32	jr z,$+$00
286f	cd 24 35 	call $3524	call $0000
2872	18 3c 	jr $+$3e	jr $+$00
2874	cd 7b 36 	call $367b	call $0000
2877	fd 23 	inc iy	inc iy
2879	18 d4 	jr $-$2a	jr $-$00
287b	fd 7e 00 	ld a,(iy)	ld a,(iy)
287e	fd 23 	inc iy	inc iy
2880	fe 8b 	cp $8b	cp $00
2882	ca c4 2c 	jp z,$2cc4	jp z,$0000
2885	fe 0d 	cp $0d	cp $00
2887	20 f2 	jr nz,$-$0c	jr nz,$-$00
2889	3e 28 	ld a,$28	ld a,$00
288b	21 3e 22 	ld hl,$223e	ld hl,$0000
288e	c3 26 3f 	jp $3f26	jp $0000
2891	3e ee 	ld a,$ee	ld a,$00
2893	c3 c9 29 	jp $29c9	jp $0000
2896	cd 42 18 	call $1842	call $0000
2899	cd 18 35 	call $3518	call $0000
289c	c2 c2 25 	jp nz,$25c2	jp nz,$0000
289f	d9 	exx	exx
28a0	cd 25 41 	call $4125	call $0000
28a3	e5 	push hl	push hl
28a4	fd e1 	pop iy	pop iy
28a6	ca 66 24 	jp z,$2466	jp z,$0000
28a9	3e 29 	ld a,$29	ld a,$00
28ab	18 e1 	jr $-$1d	jr $-$00
28ad	cd 42 18 	call $1842	call $0000
28b0	fd e5 	push iy	push iy
28b2	cd 68 32 	call $3268	call $0000
28b5	cd 99 28 	call $2899	call $0000
28b8	d1 	pop de	pop de
28b9	21 b8 28 	ld hl,$28b8	ld hl,$0000
28bc	b7 	or a	or a
28bd	ed 52 	sbc hl,de	sbc hl,de
28bf	fd e1 	pop iy	pop iy
28c1	28 30 	jr z,$+$32	jr z,$+$00
28c3	3e 26 	ld a,$26	ld a,$00
28c5	18 c7 	jr $-$37	jr $-$00
28c7	fd e5 	push iy	push iy
28c9	cd 68 32 	call $3268	call $0000
28cc	cd 7b 24 	call $247b	call $0000
28cf	c1 	pop bc	pop bc
28d0	c5 	push bc	push bc
28d1	21 cf 28 	ld hl,$28cf	ld hl,$0000
28d4	b7 	or a	or a
28d5	ed 42 	sbc hl,bc	sbc hl,bc
28d7	28 0b 	jr z,$+$0d	jr z,$+$00
28d9	3e 03 	ld a,$03	ld a,$00
28db	cd 13 34 	call $3413	call $0000
28de	20 ef 	jr nz,$-$0f	jr nz,$-$00
28e0	3e 2b 	ld a,$2b	ld a,$00
28e2	18 aa 	jr $-$54	jr $-$00
28e4	cd 15 18 	call $1815	call $0000
28e7	cd 3b 1f 	call $1f3b	call $0000
28ea	c1 	pop bc	pop bc
28eb	d1 	pop de	pop de
28ec	20 05 	jr nz,$+$07	jr nz,$+$00
28ee	d5 	push de	push de
28ef	c5 	push bc	push bc
28f0	d5 	push de	push de
28f1	fd e1 	pop iy	pop iy
28f3	c3 7b 24 	jp $247b	jp $0000
28f6	cd 91 31 	call $3191	call $0000
28f9	20 91 	jr nz,$-$6d	jr nz,$-$00
28fb	f5 	push af	push af
28fc	fd 7e 00 	ld a,(iy)	ld a,(iy)
28ff	fe b8 	cp $b8	cp $00
2901	3e 24 	ld a,$24	ld a,$00
2903	20 89 	jr nz,$-$75	jr nz,$-$00
2905	fd 23 	inc iy	inc iy
2907	dd e5 	push ix	push ix
2909	cd 0e 18 	call $180e	call $0000
290c	dd e1 	pop ix	pop ix
290e	f1 	pop af	pop af
290f	47 	ld b,a	ld b,a
2910	c5 	push bc	push bc
2911	e5 	push hl	push hl
2912	21 00 00 	ld hl,$0000	ld hl,$0000
2915	4c 	ld c,h	ld c,h
2916	d9 	exx	exx
2917	e5 	push hl	push hl
2918	21 01 00 	ld hl,$0001	ld hl,$0000
291b	d9 	exx	exx
291c	fd 7e 00 	ld a,(iy)	ld a,(iy)
291f	fe 88 	cp $88	cp $00
2921	20 09 	jr nz,$+$0b	jr nz,$+$00
2923	fd 23 	inc iy	inc iy
2925	dd e5 	push ix	push ix
2927	cd 0e 18 	call $180e	call $0000
292a	dd e1 	pop ix	pop ix
292c	06 08 	ld b,$08	ld b,$00
292e	cb 7c 	bit 7,h	bit 7,h
2930	20 02 	jr nz,$+$04	jr nz,$+$00
2932	06 0c 	ld b,$0c	ld b,$00
2934	c5 	push bc	push bc
2935	e5 	push hl	push hl
2936	d9 	exx	exx
2937	e5 	push hl	push hl
2938	d9 	exx	exx
2939	fd e5 	push iy	push iy
293b	dd e5 	push ix	push ix
293d	cd 68 32 	call $3268	call $0000
2940	cd 7b 24 	call $247b	call $0000
2943	c1 	pop bc	pop bc
2944	21 43 29 	ld hl,$2943	ld hl,$0000
2947	b7 	or a	or a
2948	ed 42 	sbc hl,bc	sbc hl,bc
294a	28 0c 	jr z,$+$0e	jr z,$+$00
294c	c5 	push bc	push bc
294d	3e 03 	ld a,$03	ld a,$00
294f	cd 13 34 	call $3413	call $0000
2952	20 ef 	jr nz,$-$0f	jr nz,$-$00
2954	3e 20 	ld a,$20	ld a,$00
2956	18 6a 	jr $+$6c	jr $+$00
2958	cd 18 35 	call $3518	call $0000
295b	e1 	pop hl	pop hl
295c	e5 	push hl	push hl
295d	c5 	push bc	push bc
295e	e5 	push hl	push hl
295f	c4 c5 41 	call nz,$41c5	call nz,$0000
2962	d1 	pop de	pop de
2963	eb 	ex de,hl	ex de,hl
2964	b7 	or a	or a
2965	ed 52 	sbc hl,de	sbc hl,de
2967	20 47 	jr nz,$+$49	jr nz,$+$00
2969	d5 	push de	push de
296a	dd 21 08 00 	ld ix,$0008	ld ix,$0000
296e	dd 39 	add ix,sp	add ix,sp
2970	cd d3 19 	call $19d3	call $0000
2973	dd 7e 0b 	ld a,(ix+$0b)	ld a,(ix+$00)
2976	dd e1 	pop ix	pop ix
2978	cd 07 19 	call $1907	call $0000
297b	f5 	push af	push af
297c	3e 0b 	ld a,$0b	ld a,$00
297e	cd f7 44 	call $44f7	call $0000
2981	38 3f 	jr c,$+$41	jr c,$+$00
2983	f1 	pop af	pop af
2984	cd d2 31 	call $31d2	call $0000
2987	dd 21 0c 00 	ld ix,$000c	ld ix,$0000
298b	dd 39 	add ix,sp	add ix,sp
298d	cd d3 19 	call $19d3	call $0000
2990	dd 7e ff 	ld a,(ix-$01)	ld a,(ix-$00)
2993	cd f7 44 	call $44f7	call $0000
2996	38 2a 	jr c,$+$2c	jr c,$+$00
2998	24 	inc h	inc h
2999	20 0a 	jr nz,$+$0c	jr nz,$+$00
299b	21 12 00 	ld hl,$0012	ld hl,$0000
299e	39 	add hl,sp	add hl,sp
299f	f9 	ld sp,hl	ld sp,hl
29a0	cd e2 44 	call $44e2	call $0000
29a3	18 9e 	jr $-$60	jr $-$00
29a5	c1 	pop bc	pop bc
29a6	d1 	pop de	pop de
29a7	fd e1 	pop iy	pop iy
29a9	fd e5 	push iy	push iy
29ab	d5 	push de	push de
29ac	c5 	push bc	push bc
29ad	c3 7b 24 	jp $247b	jp $0000
29b0	21 12 00 	ld hl,$0012	ld hl,$0000
29b3	39 	add hl,sp	add hl,sp
29b4	f9 	ld sp,hl	ld sp,hl
29b5	c1 	pop bc	pop bc
29b6	21 43 29 	ld hl,$2943	ld hl,$0000
29b9	ed 42 	sbc hl,bc	sbc hl,bc
29bb	e1 	pop hl	pop hl
29bc	e5 	push hl	push hl
29bd	c5 	push bc	push bc
29be	28 a5 	jr z,$-$59	jr z,$-$00
29c0	3e 21 	ld a,$21	ld a,$00
29c2	c3 26 3f 	jp $3f26	jp $0000
29c5	f5 	push af	push af
29c6	cd cd 29 	call $29cd	call $0000
29c9	f5 	push af	push af
29ca	cd cd 29 	call $29cd	call $0000
29cd	cd 68 32 	call $3268	call $0000
29d0	fd 2b 	dec iy	dec iy
29d2	fd e5 	push iy	push iy
29d4	cd 78 42 	call $4278	call $0000
29d7	c1 	pop bc	pop bc
29d8	28 39 	jr z,$+$3b	jr z,$+$00
29da	3e 1e 	ld a,$1e	ld a,$00
29dc	38 e4 	jr c,$-$1a	jr c,$-$00
29de	c5 	push bc	push bc
29df	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
29e2	3e dd 	ld a,$dd	ld a,$00
29e4	cd dd 35 	call $35dd	call $0000
29e7	38 21 	jr c,$+$23	jr c,$+$00
29e9	e5 	push hl	push hl
29ea	fd e1 	pop iy	pop iy
29ec	fd 23 	inc iy	inc iy
29ee	cd ed 44 	call $44ed	call $0000
29f1	cd 78 42 	call $4278	call $0000
29f4	fd e5 	push iy	push iy
29f6	d1 	pop de	pop de
29f7	38 09 	jr c,$+$0b	jr c,$+$00
29f9	c4 1e 43 	call nz,$431e	call nz,$0000
29fc	fd e5 	push iy	push iy
29fe	d1 	pop de	pop de
29ff	73 	ld (hl),e	ld (hl),e
2a00	23 	inc hl	inc hl
2a01	72 	ld (hl),d	ld (hl),d
2a02	eb 	ex de,hl	ex de,hl
2a03	3e 0d 	ld a,$0d	ld a,$00
2a05	47 	ld b,a	ld b,a
2a06	ed b1 	cpir	cpir
2a08	18 d8 	jr $-$26	jr $-$00
2a0a	fd e1 	pop iy	pop iy
2a0c	cd 78 42 	call $4278	call $0000
2a0f	3e 1d 	ld a,$1d	ld a,$00
2a11	20 af 	jr nz,$-$4f	jr nz,$-$00
2a13	5e 	ld e,(hl)	ld e,(hl)
2a14	23 	inc hl	inc hl
2a15	56 	ld d,(hl)	ld d,(hl)
2a16	21 02 00 	ld hl,$0002	ld hl,$0000
2a19	39 	add hl,sp	add hl,sp
2a1a	cd ed 44 	call $44ed	call $0000
2a1d	d5 	push de	push de
2a1e	fd e3 	ex (sp),iy	ex (sp),iy
2a20	d1 	pop de	pop de
2a21	fe 28 	cp $28	cp $00
2a23	c2 c7 2a 	jp nz,$2ac7	jp nz,$0000
2a26	cd ed 44 	call $44ed	call $0000
2a29	fe 28 	cp $28	cp $00
2a2b	c2 c2 25 	jp nz,$25c2	jp nz,$0000
2a2e	fd e5 	push iy	push iy
2a30	c1 	pop bc	pop bc
2a31	d9 	exx	exx
2a32	08 	ex af,af'	ex af,af'
2a33	af 	xor a	xor a
2a34	08 	ex af,af'	ex af,af'
2a35	cd a0 34 	call $34a0	call $0000
2a38	08 	ex af,af'	ex af,af'
2a39	b7 	or a	or a
2a3a	28 16 	jr z,$+$18	jr z,$+$00
2a3c	e5 	push hl	push hl
2a3d	ed 44 	neg	neg
2a3f	6f 	ld l,a	ld l,a
2a40	ed 44 	neg	neg
2a42	26 ff 	ld h,$ff	ld h,$00
2a44	29 	add hl,hl	add hl,hl
2a45	29 	add hl,hl	add hl,hl
2a46	29 	add hl,hl	add hl,hl
2a47	e3 	ex (sp),hl	ex (sp),hl
2a48	dd e1 	pop ix	pop ix
2a4a	dd 39 	add ix,sp	add ix,sp
2a4c	dd f9 	ld sp,ix	ld sp,ix
2a4e	f5 	push af	push af
2a4f	cd 52 2a 	call $2a52	call $0000
2a52	08 	ex af,af'	ex af,af'
2a53	cd 90 20 	call $2090	call $0000
2a56	d9 	exx	exx
2a57	c5 	push bc	push bc
2a58	fd e1 	pop iy	pop iy
2a5a	e5 	push hl	push hl
2a5b	cd af 32 	call $32af	call $0000
2a5e	e1 	pop hl	pop hl
2a5f	e3 	ex (sp),hl	ex (sp),hl
2a60	b7 	or a	or a
2a61	01 52 2a 	ld bc,$2a52	ld bc,$0000
2a64	ed 42 	sbc hl,bc	sbc hl,bc
2a66	09 	add hl,bc	add hl,bc
2a67	e3 	ex (sp),hl	ex (sp),hl
2a68	20 5d 	jr nz,$+$5f	jr nz,$+$00
2a6a	d5 	push de	push de
2a6b	e5 	push hl	push hl
2a6c	21 07 00 	ld hl,$0007	ld hl,$0000
2a6f	39 	add hl,sp	add hl,sp
2a70	7e 	ld a,(hl)	ld a,(hl)
2a71	23 	inc hl	inc hl
2a72	e5 	push hl	push hl
2a73	dd e1 	pop ix	pop ix
2a75	5f 	ld e,a	ld e,a
2a76	16 00 	ld d,$00	ld d,$00
2a78	eb 	ex de,hl	ex de,hl
2a79	29 	add hl,hl	add hl,hl
2a7a	29 	add hl,hl	add hl,hl
2a7b	29 	add hl,hl	add hl,hl
2a7c	19 	add hl,de	add hl,de
2a7d	23 	inc hl	inc hl
2a7e	23 	inc hl	inc hl
2a7f	5e 	ld e,(hl)	ld e,(hl)
2a80	23 	inc hl	inc hl
2a81	56 	ld d,(hl)	ld d,(hl)
2a82	23 	inc hl	inc hl
2a83	4e 	ld c,(hl)	ld c,(hl)
2a84	23 	inc hl	inc hl
2a85	46 	ld b,(hl)	ld b,(hl)
2a86	c5 	push bc	push bc
2a87	e5 	push hl	push hl
2a88	dd e5 	push ix	push ix
2a8a	47 	ld b,a	ld b,a
2a8b	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
2a8e	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
2a91	b7 	or a	or a
2a92	ed 52 	sbc hl,de	sbc hl,de
2a94	28 09 	jr z,$+$0b	jr z,$+$00
2a96	eb 	ex de,hl	ex de,hl
2a97	11 08 00 	ld de,$0008	ld de,$0000
2a9a	dd 19 	add ix,de	add ix,de
2a9c	eb 	ex de,hl	ex de,hl
2a9d	10 ec 	djnz $-$12	djnz $-$00
2a9f	dd e1 	pop ix	pop ix
2aa1	e1 	pop hl	pop hl
2aa2	c1 	pop bc	pop bc
2aa3	20 02 	jr nz,$+$04	jr nz,$+$00
2aa5	cb e6 	set 4,(hl)	set 4,(hl)
2aa7	11 03 00 	ld de,$0003	ld de,$0000
2aaa	cb 70 	bit 6,b	bit 6,b
2aac	20 08 	jr nz,$+$0a	jr nz,$+$00
2aae	1e 05 	ld e,$05	ld e,$00
2ab0	cb 78 	bit 7,b	bit 7,b
2ab2	28 02 	jr z,$+$04	jr z,$+$00
2ab4	59 	ld e,c	ld e,c
2ab5	13 	inc de	inc de
2ab6	19 	add hl,de	add hl,de
2ab7	4e 	ld c,(hl)	ld c,(hl)
2ab8	23 	inc hl	inc hl
2ab9	46 	ld b,(hl)	ld b,(hl)
2aba	23 	inc hl	inc hl
2abb	eb 	ex de,hl	ex de,hl
2abc	21 0c 35 	ld hl,$350c	ld hl,$0000
2abf	b7 	or a	or a
2ac0	ed 42 	sbc hl,bc	sbc hl,bc
2ac2	eb 	ex de,hl	ex de,hl
2ac3	28 ba 	jr z,$-$44	jr z,$-$00
2ac5	e1 	pop hl	pop hl
2ac6	d1 	pop de	pop de
2ac7	73 	ld (hl),e	ld (hl),e
2ac8	23 	inc hl	inc hl
2ac9	7e 	ld a,(hl)	ld a,(hl)
2aca	72 	ld (hl),d	ld (hl),d
2acb	fe ee 	cp $ee	cp $00
2acd	20 0c 	jr nz,$+$0e	jr nz,$+$00
2acf	d5 	push de	push de
2ad0	fd e3 	ex (sp),iy	ex (sp),iy
2ad2	cd 24 35 	call $3524	call $0000
2ad5	fd e3 	ex (sp),iy	ex (sp),iy
2ad7	d1 	pop de	pop de
2ad8	72 	ld (hl),d	ld (hl),d
2ad9	2b 	dec hl	dec hl
2ada	73 	ld (hl),e	ld (hl),e
2adb	c3 7b 24 	jp $247b	jp $0000
2ade	fd 23 	inc iy	inc iy
2ae0	18 f9 	jr $-$05	jr $-$00
2ae2	fd 23 	inc iy	inc iy
2ae4	2a f0 54 	ld hl,($54f0)	ld hl,($0000)
2ae7	e5 	push hl	push hl
2ae8	3e 40 	ld a,$40	ld a,$00
2aea	f5 	push af	push af
2aeb	21 f0 54 	ld hl,$54f0	ld hl,$0000
2aee	e5 	push hl	push hl
2aef	21 0c 35 	ld hl,$350c	ld hl,$0000
2af2	e5 	push hl	push hl
2af3	18 e6 	jr $-$18	jr $-$00
2af5	fe 85 	cp $85	cp $00
2af7	28 e5 	jr z,$-$19	jr z,$-$00
2af9	fe dc 	cp $dc	cp $00
2afb	28 e5 	jr z,$-$19	jr z,$-$00
2afd	c1 	pop bc	pop bc
2afe	c5 	push bc	push bc
2aff	21 c9 29 	ld hl,$29c9	ld hl,$0000
2b02	b7 	or a	or a
2b03	ed 42 	sbc hl,bc	sbc hl,bc
2b05	28 23 	jr z,$+$25	jr z,$+$00
2b07	21 cd 29 	ld hl,$29cd	ld hl,$0000
2b0a	b7 	or a	or a
2b0b	ed 42 	sbc hl,bc	sbc hl,bc
2b0d	28 1b 	jr z,$+$1d	jr z,$+$00
2b0f	21 0c 35 	ld hl,$350c	ld hl,$0000
2b12	b7 	or a	or a
2b13	ed 42 	sbc hl,bc	sbc hl,bc
2b15	28 13 	jr z,$+$15	jr z,$+$00
2b17	21 be 26 	ld hl,$26be	ld hl,$0000
2b1a	b7 	or a	or a
2b1b	ed 42 	sbc hl,bc	sbc hl,bc
2b1d	28 0b 	jr z,$+$0d	jr z,$+$00
2b1f	21 52 2a 	ld hl,$2a52	ld hl,$0000
2b22	b7 	or a	or a
2b23	ed 42 	sbc hl,bc	sbc hl,bc
2b25	3e 0c 	ld a,$0c	ld a,$00
2b27	c2 26 3f 	jp nz,$3f26	jp nz,$0000
2b2a	fd e5 	push iy	push iy
2b2c	c1 	pop bc	pop bc
2b2d	d9 	exx	exx
2b2e	fd 2b 	dec iy	dec iy
2b30	cd a0 34 	call $34a0	call $0000
2b33	d9 	exx	exx
2b34	c5 	push bc	push bc
2b35	fd e1 	pop iy	pop iy
2b37	cd c5 41 	call $41c5	call $0000
2b3a	c2 c2 25 	jp nz,$25c2	jp nz,$0000
2b3d	cb 77 	bit 6,a	bit 6,a
2b3f	20 14 	jr nz,$+$16	jr nz,$+$00
2b41	b7 	or a	or a
2b42	08 	ex af,af'	ex af,af'
2b43	cd da 1f 	call $1fda	call $0000
2b46	08 	ex af,af'	ex af,af'
2b47	f5 	push af	push af
2b48	f4 d2 31 	call p,$31d2	call p,$0000
2b4b	f1 	pop af	pop af
2b4c	59 	ld e,c	ld e,c
2b4d	fc 23 32 	call m,$3223	call m,$0000
2b50	cd e2 44 	call $44e2	call $0000
2b53	18 e2 	jr $-$1c	jr $-$00
2b55	dd 36 00 01 	ld (ix),$01	ld (ix),$00
2b59	dd 36 01 00 	ld (ix+$01),$00	ld (ix+$00),$00
2b5d	18 f1 	jr $-$0d	jr $-$00
2b5f	c1 	pop bc	pop bc
2b60	21 cd 29 	ld hl,$29cd	ld hl,$0000
2b63	af 	xor a	xor a
2b64	ed 42 	sbc hl,bc	sbc hl,bc
2b66	28 0b 	jr z,$+$0d	jr z,$+$00
2b68	c5 	push bc	push bc
2b69	cd 13 34 	call $3413	call $0000
2b6c	20 f1 	jr nz,$-$0d	jr nz,$-$00
2b6e	3e 0d 	ld a,$0d	ld a,$00
2b70	c3 26 3f 	jp $3f26	jp $0000
2b73	fd e1 	pop iy	pop iy
2b75	c3 7b 24 	jp $247b	jp $0000
2b78	cd bd 36 	call $36bd	call $0000
2b7b	cd e2 44 	call $44e2	call $0000
2b7e	d5 	push de	push de
2b7f	cd b8 25 	call $25b8	call $0000
2b82	d1 	pop de	pop de
2b83	f5 	push af	push af
2b84	e5 	push hl	push hl
2b85	b7 	or a	or a
2b86	fa ab 2b 	jp m,$2bab	jp m,$0000
2b89	cd 3d 06 	call $063d	call $0000
2b8c	d9 	exx	exx
2b8d	6f 	ld l,a	ld l,a
2b8e	d9 	exx	exx
2b8f	cd 3d 06 	call $063d	call $0000
2b92	d9 	exx	exx
2b93	67 	ld h,a	ld h,a
2b94	d9 	exx	exx
2b95	cd 3d 06 	call $063d	call $0000
2b98	6f 	ld l,a	ld l,a
2b99	cd 3d 06 	call $063d	call $0000
2b9c	67 	ld h,a	ld h,a
2b9d	cd 3d 06 	call $063d	call $0000
2ba0	4f 	ld c,a	ld c,a
2ba1	dd e1 	pop ix	pop ix
2ba3	f1 	pop af	pop af
2ba4	d5 	push de	push de
2ba5	cd d2 31 	call $31d2	call $0000
2ba8	d1 	pop de	pop de
2ba9	18 d0 	jr $-$2e	jr $-$00
2bab	21 00 52 	ld hl,$5200	ld hl,$0000
2bae	cd 3d 06 	call $063d	call $0000
2bb1	fe 0d 	cp $0d	cp $00
2bb3	28 04 	jr z,$+$06	jr z,$+$00
2bb5	77 	ld (hl),a	ld (hl),a
2bb6	2c 	inc l	inc l
2bb7	20 f5 	jr nz,$-$09	jr nz,$-$00
2bb9	dd e1 	pop ix	pop ix
2bbb	f1 	pop af	pop af
2bbc	d5 	push de	push de
2bbd	eb 	ex de,hl	ex de,hl
2bbe	cd 20 32 	call $3220	call $0000
2bc1	d1 	pop de	pop de
2bc2	18 b7 	jr $-$47	jr $-$00
2bc4	fe 23 	cp $23	cp $00
2bc6	28 b0 	jr z,$-$4e	jr z,$-$00
2bc8	0e 00 	ld c,$00	ld c,$00
2bca	fe 86 	cp $86	cp $00
2bcc	20 04 	jr nz,$+$06	jr nz,$+$00
2bce	fd 23 	inc iy	inc iy
2bd0	0e 80 	ld c,$80	ld c,$00
2bd2	21 00 53 	ld hl,$5300	ld hl,$0000
2bd5	36 0d 	ld (hl),$0d	ld (hl),$00
2bd7	cd 18 35 	call $3518	call $0000
2bda	28 99 	jr z,$-$65	jr z,$-$00
2bdc	fd 23 	inc iy	inc iy
2bde	fe 2c 	cp $2c	cp $00
2be0	28 51 	jr z,$+$53	jr z,$+$00
2be2	fe 3b 	cp $3b	cp $00
2be4	28 4d 	jr z,$+$4f	jr z,$+$00
2be6	e5 	push hl	push hl
2be7	fe 22 	cp $22	cp $00
2be9	20 0a 	jr nz,$+$0c	jr nz,$+$00
2beb	c5 	push bc	push bc
2bec	cd 5c 19 	call $195c	call $0000
2bef	c1 	pop bc	pop bc
2bf0	cd 93 35 	call $3593	call $0000
2bf3	18 05 	jr $+$07	jr $+$00
2bf5	cd 3e 35 	call $353e	call $0000
2bf8	20 05 	jr nz,$+$07	jr nz,$+$00
2bfa	e1 	pop hl	pop hl
2bfb	cb c1 	set 0,c	set 0,c
2bfd	18 d3 	jr $-$2b	jr $-$00
2bff	fd 2b 	dec iy	dec iy
2c01	c5 	push bc	push bc
2c02	cd b8 25 	call $25b8	call $0000
2c05	c1 	pop bc	pop bc
2c06	e1 	pop hl	pop hl
2c07	f5 	push af	push af
2c08	7e 	ld a,(hl)	ld a,(hl)
2c09	23 	inc hl	inc hl
2c0a	fe 0d 	cp $0d	cp $00
2c0c	cc 37 2c 	call z,$2c37	call z,$0000
2c0f	cb 79 	bit 7,c	bit 7,c
2c11	f5 	push af	push af
2c12	c4 b1 35 	call nz,$35b1	call nz,$0000
2c15	f1 	pop af	pop af
2c16	cc a0 35 	call z,$35a0	call z,$0000
2c19	f1 	pop af	pop af
2c1a	c5 	push bc	push bc
2c1b	e5 	push hl	push hl
2c1c	b7 	or a	or a
2c1d	fa 2e 2c 	jp m,$2c2e	jp m,$0000
2c20	f5 	push af	push af
2c21	dd e5 	push ix	push ix
2c23	cd 04 1c 	call $1c04	call $0000
2c26	dd e1 	pop ix	pop ix
2c28	f1 	pop af	pop af
2c29	cd d2 31 	call $31d2	call $0000
2c2c	18 03 	jr $+$05	jr $+$00
2c2e	cd 20 32 	call $3220	call $0000
2c31	e1 	pop hl	pop hl
2c32	c1 	pop bc	pop bc
2c33	cb 81 	res 0,c	res 0,c
2c35	18 a0 	jr $-$5e	jr $-$00
2c37	cb 41 	bit 0,c	bit 0,c
2c39	20 0a 	jr nz,$+$0c	jr nz,$+$00
2c3b	3e 3f 	ld a,$3f	ld a,$00
2c3d	cd e4 40 	call $40e4	call $0000
2c40	3e 20 	ld a,$20	ld a,$00
2c42	cd e4 40 	call $40e4	call $0000
2c45	21 00 53 	ld hl,$5300	ld hl,$0000
2c48	c5 	push bc	push bc
2c49	e5 	push hl	push hl
2c4a	dd e5 	push ix	push ix
2c4c	cd c9 05 	call $05c9	call $0000
2c4f	dd e1 	pop ix	pop ix
2c51	e1 	pop hl	pop hl
2c52	c1 	pop bc	pop bc
2c53	47 	ld b,a	ld b,a
2c54	af 	xor a	xor a
2c55	32 fb 54 	ld ($54fb),a	ld ($0000),a
2c58	b8 	cp b	cp b
2c59	c8 	ret z	ret z
2c5a	7e 	ld a,(hl)	ld a,(hl)
2c5b	fe 0d 	cp $0d	cp $00
2c5d	c8 	ret z	ret z
2c5e	23 	inc hl	inc hl
2c5f	10 f9 	djnz $-$05	djnz $-$00
2c61	c9 	ret	ret
2c62	fe 23 	cp $23	cp $00
2c64	ca 78 2b 	jp z,$2b78	jp z,$0000
2c67	2a f0 54 	ld hl,($54f0)	ld hl,($0000)
2c6a	7e 	ld a,(hl)	ld a,(hl)
2c6b	fe 3a 	cp $3a	cp $00
2c6d	cc 5a 2c 	call z,$2c5a	call z,$0000
2c70	23 	inc hl	inc hl
2c71	fe 0d 	cp $0d	cp $00
2c73	cc a2 2c 	call z,$2ca2	call z,$0000
2c76	e5 	push hl	push hl
2c77	cd b8 25 	call $25b8	call $0000
2c7a	e1 	pop hl	pop hl
2c7b	b7 	or a	or a
2c7c	fa 92 2c 	jp m,$2c92	jp m,$0000
2c7f	e5 	push hl	push hl
2c80	fd e3 	ex (sp),iy	ex (sp),iy
2c82	f5 	push af	push af
2c83	dd e5 	push ix	push ix
2c85	cd 0e 18 	call $180e	call $0000
2c88	dd e1 	pop ix	pop ix
2c8a	f1 	pop af	pop af
2c8b	cd d2 31 	call $31d2	call $0000
2c8e	fd e3 	ex (sp),iy	ex (sp),iy
2c90	18 07 	jr $+$09	jr $+$00
2c92	cd a0 35 	call $35a0	call $0000
2c95	e5 	push hl	push hl
2c96	cd 20 32 	call $3220	call $0000
2c99	e1 	pop hl	pop hl
2c9a	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2c9d	cd e2 44 	call $44e2	call $0000
2ca0	18 c8 	jr $-$36	jr $-$00
2ca2	cd db 35 	call $35db	call $0000
2ca5	23 	inc hl	inc hl
2ca6	d0 	ret nc	ret nc
2ca7	3e 2a 	ld a,$2a	ld a,$00
2ca9	18 64 	jr $+$66	jr $+$00
2cab	cd 15 18 	call $1815	call $0000
2cae	cd 3b 1f 	call $1f3b	call $0000
2cb1	28 2a 	jr z,$+$2c	jr z,$+$00
2cb3	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cb6	fe 8c 	cp $8c	cp $00
2cb8	c2 7b 24 	jp nz,$247b	jp nz,$0000
2cbb	fd 23 	inc iy	inc iy
2cbd	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cc0	fe 3b 	cp $3b	cp $00
2cc2	28 f7 	jr z,$-$07	jr z,$-$00
2cc4	cd ed 44 	call $44ed	call $0000
2cc7	fe 8d 	cp $8d	cp $00
2cc9	c2 7b 24 	jp nz,$247b	jp nz,$0000
2ccc	c3 96 28 	jp $2896	jp $0000
2ccf	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cd2	fd 23 	inc iy	inc iy
2cd4	fe 3b 	cp $3b	cp $00
2cd6	20 0a 	jr nz,$+$0c	jr nz,$+$00
2cd8	18 1e 	jr $+$20	jr $+$00
2cda	cd 7b 36 	call $367b	call $0000
2cdd	fd 7e 00 	ld a,(iy)	ld a,(iy)
2ce0	fd 23 	inc iy	inc iy
2ce2	fe 22 	cp $22	cp $00
2ce4	28 f4 	jr z,$-$0a	jr z,$-$00
2ce6	fe f4 	cp $f4	cp $00
2ce8	ca 13 25 	jp z,$2513	jp z,$0000
2ceb	fe 0d 	cp $0d	cp $00
2ced	ca 66 24 	jp z,$2466	jp z,$0000
2cf0	fe 8b 	cp $8b	cp $00
2cf2	28 d0 	jr z,$-$2e	jr z,$-$00
2cf4	fe 8c 	cp $8c	cp $00
2cf6	20 e5 	jr nz,$-$19	jr nz,$-$00
2cf8	fd 7e 00 	ld a,(iy)	ld a,(iy)
2cfb	fe 0d 	cp $0d	cp $00
2cfd	20 d0 	jr nz,$-$2e	jr nz,$-$00
2cff	01 8b 00 	ld bc,$008b	ld bc,$0000
2d02	11 8c cd 	ld de,$cd8c	ld de,$0000
2d05	fd 23 	inc iy	inc iy
2d07	cd f3 35 	call $35f3	call $0000
2d0a	ca 82 24 	jp z,$2482	jp z,$0000
2d0d	3e 31 	ld a,$31	ld a,$00
2d0f	c3 26 3f 	jp $3f26	jp $0000
2d12	01 fd ff 	ld bc,$fffd	ld bc,$0000
2d15	fd 09 	add iy,bc	add iy,bc
2d17	01 cd 00 	ld bc,$00cd	ld bc,$0000
2d1a	11 8c cd 	ld de,$cd8c	ld de,$0000
2d1d	cd f3 35 	call $35f3	call $0000
2d20	20 eb 	jr nz,$-$13	jr nz,$-$00
2d22	c3 7b 24 	jp $247b	jp $0000
2d25	01 fd ff 	ld bc,$fffd	ld bc,$0000
2d28	fd 09 	add iy,bc	add iy,bc
2d2a	01 cb 00 	ld bc,$00cb	ld bc,$0000
2d2d	11 ca cb 	ld de,$cbca	ld de,$0000
2d30	cd f3 35 	call $35f3	call $0000
2d33	28 ed 	jr z,$-$11	jr z,$-$00
2d35	3e 2f 	ld a,$2f	ld a,$00
2d37	18 d6 	jr $-$28	jr $-$00
2d39	cd e4 16 	call $16e4	call $0000
2d3c	08 	ex af,af'	ex af,af'
2d3d	06 00 	ld b,$00	ld b,$00
2d3f	f2 48 2d 	jp p,$2d48	jp p,$0000
2d42	cd fb 1f 	call $1ffb	call $0000
2d45	c1 	pop bc	pop bc
2d46	06 01 	ld b,$01	ld b,$00
2d48	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d4b	fd 23 	inc iy	inc iy
2d4d	fe ca 	cp $ca	cp $00
2d4f	3e 25 	ld a,$25	ld a,$00
2d51	20 bc 	jr nz,$-$42	jr nz,$-$00
2d53	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d56	fd 23 	inc iy	inc iy
2d58	fe 0d 	cp $0d	cp $00
2d5a	3e 30 	ld a,$30	ld a,$00
2d5c	20 b1 	jr nz,$-$4d	jr nz,$-$00
2d5e	af 	xor a	xor a
2d5f	d9 	exx	exx
2d60	e5 	push hl	push hl
2d61	d9 	exx	exx
2d62	e5 	push hl	push hl
2d63	c5 	push bc	push bc
2d64	6f 	ld l,a	ld l,a
2d65	01 c9 cc 	ld bc,$ccc9	ld bc,$0000
2d68	11 ca cb 	ld de,$cbca	ld de,$0000
2d6b	cd f5 35 	call $35f5	call $0000
2d6e	c1 	pop bc	pop bc
2d6f	e1 	pop hl	pop hl
2d70	d9 	exx	exx
2d71	e1 	pop hl	pop hl
2d72	d9 	exx	exx
2d73	3e 2f 	ld a,$2f	ld a,$00
2d75	c2 26 3f 	jp nz,$3f26	jp nz,$0000
2d78	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
2d7b	fe cb 	cp $cb	cp $00
2d7d	28 56 	jr z,$+$58	jr z,$+$00
2d7f	fe cc 	cp $cc	cp $00
2d81	28 52 	jr z,$+$54	jr z,$+$00
2d83	cb 40 	bit 0,b	bit 0,b
2d85	20 69 	jr nz,$+$6b	jr nz,$+$00
2d87	c5 	push bc	push bc
2d88	e5 	push hl	push hl
2d89	d9 	exx	exx
2d8a	e5 	push hl	push hl
2d8b	d9 	exx	exx
2d8c	cd 0e 18 	call $180e	call $0000
2d8f	dd 21 00 00 	ld ix,$0000	ld ix,$0000
2d93	dd 39 	add ix,sp	add ix,sp
2d95	d9 	exx	exx
2d96	dd 5e 00 	ld e,(ix)	ld e,(ix)
2d99	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
2d9c	d9 	exx	exx
2d9d	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
2da0	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
2da3	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
2da6	3e 09 	ld a,$09	ld a,$00
2da8	cd f7 44 	call $44f7	call $0000
2dab	7d 	ld a,l	ld a,l
2dac	b7 	or a	or a
2dad	d9 	exx	exx
2dae	e1 	pop hl	pop hl
2daf	d9 	exx	exx
2db0	e1 	pop hl	pop hl
2db1	c1 	pop bc	pop bc
2db2	20 2c 	jr nz,$+$2e	jr nz,$+$00
2db4	fd 7e 00 	ld a,(iy)	ld a,(iy)
2db7	fd 23 	inc iy	inc iy
2db9	fe 2c 	cp $2c	cp $00
2dbb	28 c6 	jr z,$-$38	jr z,$-$00
2dbd	d9 	exx	exx
2dbe	fd e5 	push iy	push iy
2dc0	e3 	ex (sp),hl	ex (sp),hl
2dc1	3e 0d 	ld a,$0d	ld a,$00
2dc3	47 	ld b,a	ld b,a
2dc4	ed b1 	cpir	cpir
2dc6	e3 	ex (sp),hl	ex (sp),hl
2dc7	fd e1 	pop iy	pop iy
2dc9	d9 	exx	exx
2dca	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
2dcd	fe ca 	cp $ca	cp $00
2dcf	20 8d 	jr nz,$-$71	jr nz,$-$00
2dd1	3e 01 	ld a,$01	ld a,$00
2dd3	18 8a 	jr $-$74	jr $-$00
2dd5	cb 40 	bit 0,b	bit 0,b
2dd7	28 49 	jr z,$+$4b	jr z,$+$00
2dd9	26 00 	ld h,$00	ld h,$00
2ddb	69 	ld l,c	ld l,c
2ddc	39 	add hl,sp	add hl,sp
2ddd	f9 	ld sp,hl	ld sp,hl
2dde	18 42 	jr $+$44	jr $+$00
2de0	cd ed 44 	call $44ed	call $0000
2de3	fe 2c 	cp $2c	cp $00
2de5	20 ee 	jr nz,$-$10	jr nz,$-$00
2de7	fd 23 	inc iy	inc iy
2de9	c5 	push bc	push bc
2dea	cd e4 16 	call $16e4	call $0000
2ded	c1 	pop bc	pop bc
2dee	18 f0 	jr $-$0e	jr $-$00
2df0	c5 	push bc	push bc
2df1	cd 1e 18 	call $181e	call $0000
2df4	c1 	pop bc	pop bc
2df5	21 00 00 	ld hl,$0000	ld hl,$0000
2df8	39 	add hl,sp	add hl,sp
2df9	43 	ld b,e	ld b,e
2dfa	11 00 52 	ld de,$5200	ld de,$0000
2dfd	c5 	push bc	push bc
2dfe	cd d7 1f 	call $1fd7	call $0000
2e01	c1 	pop bc	pop bc
2e02	06 01 	ld b,$01	ld b,$00
2e04	20 ae 	jr nz,$-$50	jr nz,$-$00
2e06	18 d8 	jr $-$26	jr $-$00
2e08	fd e5 	push iy	push iy
2e0a	cd 68 32 	call $3268	call $0000
2e0d	cd 10 2e 	call $2e10	call $0000
2e10	cd 15 18 	call $1815	call $0000
2e13	cd 3b 1f 	call $1f3b	call $0000
2e16	20 0a 	jr nz,$+$0c	jr nz,$+$00
2e18	c1 	pop bc	pop bc
2e19	c1 	pop bc	pop bc
2e1a	01 00 95 	ld bc,$9500	ld bc,$0000
2e1d	16 01 	ld d,$01	ld d,$00
2e1f	cd 32 36 	call $3632	call $0000
2e22	c3 7b 24 	jp $247b	jp $0000
2e25	c1 	pop bc	pop bc
2e26	d1 	pop de	pop de
2e27	d5 	push de	push de
2e28	c5 	push bc	push bc
2e29	b7 	or a	or a
2e2a	21 10 2e 	ld hl,$2e10	ld hl,$0000
2e2d	ed 42 	sbc hl,bc	sbc hl,bc
2e2f	28 0b 	jr z,$+$0d	jr z,$+$00
2e31	3e 03 	ld a,$03	ld a,$00
2e33	cd 13 34 	call $3413	call $0000
2e36	20 ed 	jr nz,$-$11	jr nz,$-$00
2e38	3e 2e 	ld a,$2e	ld a,$00
2e3a	18 4f 	jr $+$51	jr $+$00
2e3c	fd e5 	push iy	push iy
2e3e	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2e42	fd 19 	add iy,de	add iy,de
2e44	cd 15 18 	call $1815	call $0000
2e47	cd 3b 1f 	call $1f3b	call $0000
2e4a	d1 	pop de	pop de
2e4b	20 d5 	jr nz,$-$29	jr nz,$-$00
2e4d	c1 	pop bc	pop bc
2e4e	c1 	pop bc	pop bc
2e4f	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2e53	fd 19 	add iy,de	add iy,de
2e55	18 cb 	jr $-$33	jr $-$00
2e57	cd 6e 0d 	call $0d6e	call $0000
2e5a	af 	xor a	xor a
2e5b	32 fb 54 	ld ($54fb),a	ld ($0000),a
2e5e	18 c2 	jr $-$3c	jr $-$00
2e60	cd dc 44 	call $44dc	call $0000
2e63	0d 	dec c	dec c
2e64	0a 	ld a,(bc)	ld a,(bc)
2e65	fa 00 cd 	jp m,$cd00	jp m,$0000
2e68	3d 	dec a	dec a
2e69	41 	ld b,c	ld b,c
2e6a	cd 64 41 	call $4164	call $0000
2e6d	cd dd 40 	call $40dd	call $0000
2e70	c3 92 37 	jp $3792	jp $0000
2e73	cd c7 44 	call $44c7	call $0000
2e76	18 aa 	jr $-$54	jr $-$00
2e78	cd 25 40 	call $4025	call $0000
2e7b	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
2e7e	18 3b 	jr $+$3d	jr $+$00
2e80	fd 23 	inc iy	inc iy
2e82	3e 02 	ld a,$02	ld a,$00
2e84	cd 13 34 	call $3413	call $0000
2e87	20 99 	jr nz,$-$65	jr nz,$-$00
2e89	3e 35 	ld a,$35	ld a,$00
2e8b	c3 26 3f 	jp $3f26	jp $0000
2e8e	fd 23 	inc iy	inc iy
2e90	3e 01 	ld a,$01	ld a,$00
2e92	cd 13 34 	call $3413	call $0000
2e95	20 8b 	jr nz,$-$73	jr nz,$-$00
2e97	3e 36 	ld a,$36	ld a,$00
2e99	21 3e 29 	ld hl,$293e	ld hl,$0000
2e9c	18 ed 	jr $-$11	jr $-$00
2e9e	fe 85 	cp $85	cp $00
2ea0	28 de 	jr z,$-$20	jr z,$-$00
2ea2	fe dc 	cp $dc	cp $00
2ea4	28 e8 	jr z,$-$16	jr z,$-$00
2ea6	fe 2b 	cp $2b	cp $00
2ea8	28 1a 	jr z,$+$1c	jr z,$+$00
2eaa	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
2ead	cd 18 35 	call $3518	call $0000
2eb0	28 09 	jr z,$+$0b	jr z,$+$00
2eb2	cd 42 18 	call $1842	call $0000
2eb5	d9 	exx	exx
2eb6	cd 25 41 	call $4125	call $0000
2eb9	20 df 	jr nz,$-$1f	jr nz,$-$00
2ebb	cd db 35 	call $35db	call $0000
2ebe	22 f0 54 	ld ($54f0),hl	ld ($0000),hl
2ec1	c3 7b 24 	jp $247b	jp $0000
2ec4	cd 15 18 	call $1815	call $0000
2ec7	d9 	exx	exx
2ec8	eb 	ex de,hl	ex de,hl
2ec9	fd e5 	push iy	push iy
2ecb	e1 	pop hl	pop hl
2ecc	3e 0d 	ld a,$0d	ld a,$00
2ece	47 	ld b,a	ld b,a
2ecf	ed b1 	cpir	cpir
2ed1	1d 	dec e	dec e
2ed2	28 e7 	jr z,$-$17	jr z,$-$00
2ed4	fa bb 2e 	jp m,$2ebb	jp m,$0000
2ed7	af 	xor a	xor a
2ed8	47 	ld b,a	ld b,a
2ed9	4e 	ld c,(hl)	ld c,(hl)
2eda	b9 	cp c	cp c
2edb	28 bd 	jr z,$-$41	jr z,$-$00
2edd	09 	add hl,bc	add hl,bc
2ede	1d 	dec e	dec e
2edf	20 f8 	jr nz,$-$06	jr nz,$-$00
2ee1	18 d8 	jr $-$26	jr $-$00
2ee3	cd b3 36 	call $36b3	call $0000
2ee6	cd 31 35 	call $3531	call $0000
2ee9	7b 	ld a,e	ld a,e
2eea	f5 	push af	push af
2eeb	cd 15 18 	call $1815	call $0000
2eee	e5 	push hl	push hl
2eef	d9 	exx	exx
2ef0	d1 	pop de	pop de
2ef1	f1 	pop af	pop af
2ef2	cd 77 06 	call $0677	call $0000
2ef5	18 61 	jr $+$63	jr $+$00
2ef7	cd 31 35 	call $3531	call $0000
2efa	cd 15 18 	call $1815	call $0000
2efd	d9 	exx	exx
2efe	2e 00 	ld l,$00	ld l,$00
2f00	22 dc 54 	ld ($54dc),hl	ld ($0000),hl
2f03	18 53 	jr $+$55	jr $+$00
2f05	fe 24 	cp $24	cp $00
2f07	28 0e 	jr z,$+$10	jr z,$+$00
2f09	cd 31 35 	call $3531	call $0000
2f0c	cd 15 18 	call $1815	call $0000
2f0f	e5 	push hl	push hl
2f10	d9 	exx	exx
2f11	d1 	pop de	pop de
2f12	cd 39 0d 	call $0d39	call $0000
2f15	18 41 	jr $+$43	jr $+$00
2f17	fd 23 	inc iy	inc iy
2f19	cd 31 35 	call $3531	call $0000
2f1c	cd 1e 18 	call $181e	call $0000
2f1f	cd 56 0d 	call $0d56	call $0000
2f22	18 34 	jr $+$36	jr $+$00
2f24	cd 31 35 	call $3531	call $0000
2f27	cd 15 18 	call $1815	call $0000
2f2a	cd 25 40 	call $4025	call $0000
2f2d	d9 	exx	exx
2f2e	22 de 54 	ld ($54de),hl	ld ($0000),hl
2f31	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
2f34	18 22 	jr $+$24	jr $+$00
2f36	cd 31 35 	call $3531	call $0000
2f39	cd 15 18 	call $1815	call $0000
2f3c	d9 	exx	exx
2f3d	ed 5b e0 54 	ld de,($54e0)	ld de,($0000)
2f41	14 	inc d	inc d
2f42	af 	xor a	xor a
2f43	ed 52 	sbc hl,de	sbc hl,de
2f45	19 	add hl,de	add hl,de
2f46	da 26 3f 	jp c,$3f26	jp c,$0000
2f49	ed 5b e2 54 	ld de,($54e2)	ld de,($0000)
2f4d	22 e2 54 	ld ($54e2),hl	ld ($0000),hl
2f50	eb 	ex de,hl	ex de,hl
2f51	ed 72 	sbc hl,sp	sbc hl,sp
2f53	c2 7b 24 	jp nz,$247b	jp nz,$0000
2f56	eb 	ex de,hl	ex de,hl
2f57	f9 	ld sp,hl	ld sp,hl
2f58	c3 7b 24 	jp $247b	jp $0000
2f5b	cd 15 18 	call $1815	call $0000
2f5e	d9 	exx	exx
2f5f	7d 	ld a,l	ld a,l
2f60	32 fc 54 	ld ($54fc),a	ld ($0000),a
2f63	18 f3 	jr $-$0b	jr $-$00
2f65	fd 23 	inc iy	inc iy
2f67	21 00 00 	ld hl,$0000	ld hl,$0000
2f6a	fe ee 	cp $ee	cp $00
2f6c	28 0a 	jr z,$+$0c	jr z,$+$00
2f6e	fe 87 	cp $87	cp $00
2f70	28 07 	jr z,$+$09	jr z,$+$00
2f72	fd 2b 	dec iy	dec iy
2f74	cd 15 18 	call $1815	call $0000
2f77	d9 	exx	exx
2f78	2b 	dec hl	dec hl
2f79	22 e6 54 	ld ($54e6),hl	ld ($0000),hl
2f7c	18 da 	jr $-$24	jr $-$00
2f7e	cd 15 18 	call $1815	call $0000
2f81	d9 	exx	exx
2f82	7d 	ld a,l	ld a,l
2f83	06 01 	ld b,$01	ld b,$00
2f85	cd 93 05 	call $0593	call $0000
2f88	10 fb 	djnz $-$03	djnz $-$00
2f8a	fd 7e 00 	ld a,(iy)	ld a,(iy)
2f8d	fe 7c 	cp $7c	cp $00
2f8f	28 15 	jr z,$+$17	jr z,$+$00
2f91	fe 2c 	cp $2c	cp $00
2f93	28 08 	jr z,$+$0a	jr z,$+$00
2f95	fe 3b 	cp $3b	cp $00
2f97	20 06 	jr nz,$+$08	jr nz,$+$00
2f99	7c 	ld a,h	ld a,h
2f9a	cd 93 05 	call $0593	call $0000
2f9d	fd 23 	inc iy	inc iy
2f9f	cd 18 35 	call $3518	call $0000
2fa2	20 da 	jr nz,$-$24	jr nz,$-$00
2fa4	18 b2 	jr $-$4c	jr $-$00
2fa6	fd 23 	inc iy	inc iy
2fa8	af 	xor a	xor a
2fa9	06 09 	ld b,$09	ld b,$00
2fab	18 d8 	jr $-$26	jr $-$00
2fad	cd b3 36 	call $36b3	call $0000
2fb0	cd 35 06 	call $0635	call $0000
2fb3	18 a3 	jr $-$5b	jr $-$00
2fb5	cd b3 36 	call $36b3	call $0000
2fb8	d5 	push de	push de
2fb9	cd 84 20 	call $2084	call $0000
2fbc	cd e4 16 	call $16e4	call $0000
2fbf	08 	ex af,af'	ex af,af'
2fc0	fa ce 2f 	jp m,$2fce	jp m,$0000
2fc3	cd f9 1b 	call $1bf9	call $0000
2fc6	d9 	exx	exx
2fc7	7d 	ld a,l	ld a,l
2fc8	d1 	pop de	pop de
2fc9	cd 45 06 	call $0645	call $0000
2fcc	18 8a 	jr $-$74	jr $-$00
2fce	7b 	ld a,e	ld a,e
2fcf	d1 	pop de	pop de
2fd0	57 	ld d,a	ld d,a
2fd1	21 00 52 	ld hl,$5200	ld hl,$0000
2fd4	7e 	ld a,(hl)	ld a,(hl)
2fd5	23 	inc hl	inc hl
2fd6	cd 45 06 	call $0645	call $0000
2fd9	15 	dec d	dec d
2fda	20 f8 	jr nz,$-$06	jr nz,$-$00
2fdc	cd ed 44 	call $44ed	call $0000
2fdf	fe 3b 	cp $3b	cp $00
2fe1	fd 23 	inc iy	inc iy
2fe3	28 e7 	jr z,$-$17	jr z,$-$00
2fe5	3e 0a 	ld a,$0a	ld a,$00
2fe7	cd 45 06 	call $0645	call $0000
2fea	fd 2b 	dec iy	dec iy
2fec	18 de 	jr $-$20	jr $-$00
2fee	cd 15 18 	call $1815	call $0000
2ff1	d9 	exx	exx
2ff2	e5 	push hl	push hl
2ff3	06 00 	ld b,$00	ld b,$00
2ff5	11 00 53 	ld de,$5300	ld de,$0000
2ff8	cd ed 44 	call $44ed	call $0000
2ffb	fe 2c 	cp $2c	cp $00
2ffd	20 17 	jr nz,$+$19	jr nz,$+$00
2fff	fd 23 	inc iy	inc iy
3001	04 	inc b	inc b
3002	cd ed 44 	call $44ed	call $0000
3005	c5 	push bc	push bc
3006	d5 	push de	push de
3007	cd b8 25 	call $25b8	call $0000
300a	d1 	pop de	pop de
300b	c1 	pop bc	pop bc
300c	13 	inc de	inc de
300d	12 	ld (de),a	ld (de),a
300e	13 	inc de	inc de
300f	eb 	ex de,hl	ex de,hl
3010	73 	ld (hl),e	ld (hl),e
3011	23 	inc hl	inc hl
3012	72 	ld (hl),d	ld (hl),d
3013	eb 	ex de,hl	ex de,hl
3014	18 e2 	jr $-$1c	jr $-$00
3016	78 	ld a,b	ld a,b
3017	32 00 53 	ld ($5300),a	ld ($0000),a
301a	e1 	pop hl	pop hl
301b	cd 25 30 	call $3025	call $0000
301e	c3 7b 24 	jp $247b	jp $0000
3021	cd 42 18 	call $1842	call $0000
3024	d9 	exx	exx
3025	e5 	push hl	push hl
3026	fd e3 	ex (sp),iy	ex (sp),iy
3028	24 	inc h	inc h
3029	21 54 30 	ld hl,$3054	ld hl,$0000
302c	e5 	push hl	push hl
302d	dd 21 00 54 	ld ix,$5400	ld ix,$0000
3031	cc 8a 10 	call z,$108a	call z,$0000
3034	dd 4e 18 	ld c,(ix+$18)	ld c,(ix+$00)
3037	c5 	push bc	push bc
3038	f1 	pop af	pop af
3039	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
303c	dd 46 08 	ld b,(ix+$08)	ld b,(ix+$00)
303f	dd 4e 0c 	ld c,(ix+$0c)	ld c,(ix+$00)
3042	dd 56 10 	ld d,(ix+$10)	ld d,(ix+$00)
3045	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
3048	dd 66 20 	ld h,(ix+$20)	ld h,(ix+$00)
304b	dd 6e 30 	ld l,(ix+$30)	ld l,(ix+$00)
304e	dd 21 00 53 	ld ix,$5300	ld ix,$0000
3052	fd e9 	jp (iy)	jp (iy)
3054	fd e1 	pop iy	pop iy
3056	af 	xor a	xor a
3057	4f 	ld c,a	ld c,a
3058	c9 	ret	ret
3059	cd a0 25 	call $25a0	call $0000
305c	21 00 ff 	ld hl,$ff00	ld hl,$0000
305f	20 48 	jr nz,$+$4a	jr nz,$+$00
3061	18 26 	jr $+$28	jr $+$00
3063	cd a0 25 	call $25a0	call $0000
3066	21 ff ff 	ld hl,$ffff	ld hl,$0000
3069	20 3e 	jr nz,$+$40	jr nz,$+$00
306b	18 1c 	jr $+$1e	jr $+$00
306d	cd a0 25 	call $25a0	call $0000
3070	3e 05 	ld a,$05	ld a,$00
3072	c2 26 3f 	jp nz,$3f26	jp nz,$0000
3075	fd 23 	inc iy	inc iy
3077	dd e5 	push ix	push ix
3079	cd 15 18 	call $1815	call $0000
307c	dd e1 	pop ix	pop ix
307e	d9 	exx	exx
307f	cd ed 44 	call $44ed	call $0000
3082	2d 	dec l	dec l
3083	26 fe 	ld h,$fe	ld h,$00
3085	fe 2c 	cp $2c	cp $00
3087	20 20 	jr nz,$+$22	jr nz,$+$00
3089	fd 23 	inc iy	inc iy
308b	e5 	push hl	push hl
308c	dd e5 	push ix	push ix
308e	cd 15 18 	call $1815	call $0000
3091	dd e1 	pop ix	pop ix
3093	d9 	exx	exx
3094	7d 	ld a,l	ld a,l
3095	e1 	pop hl	pop hl
3096	b7 	or a	or a
3097	28 0d 	jr z,$+$0f	jr z,$+$00
3099	3d 	dec a	dec a
309a	85 	add a,l	add a,l
309b	67 	ld h,a	ld h,a
309c	30 0b 	jr nc,$+$0d	jr nc,$+$00
309e	7d 	ld a,l	ld a,l
309f	3c 	inc a	inc a
30a0	28 07 	jr z,$+$09	jr z,$+$00
30a2	26 fe 	ld h,$fe	ld h,$00
30a4	18 03 	jr $+$05	jr $+$00
30a6	21 01 00 	ld hl,$0001	ld hl,$0000
30a9	cd 90 20 	call $2090	call $0000
30ac	cd 31 35 	call $3531	call $0000
30af	e5 	push hl	push hl
30b0	dd e5 	push ix	push ix
30b2	cd 1e 18 	call $181e	call $0000
30b5	dd e1 	pop ix	pop ix
30b7	e1 	pop hl	pop hl
30b8	4b 	ld c,e	ld c,e
30b9	dd 46 00 	ld b,(ix)	ld b,(ix)
30bc	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
30bf	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
30c2	7d 	ld a,l	ld a,l
30c3	3c 	inc a	inc a
30c4	20 0f 	jr nz,$+$11	jr nz,$+$00
30c6	24 	inc h	inc h
30c7	24 	inc h	inc h
30c8	79 	ld a,c	ld a,c
30c9	bc 	cp h	cp h
30ca	30 01 	jr nc,$+$03	jr nc,$+$00
30cc	67 	ld h,a	ld h,a
30cd	78 	ld a,b	ld a,b
30ce	94 	sub h	sub h
30cf	30 01 	jr nc,$+$03	jr nc,$+$00
30d1	af 	xor a	xor a
30d2	6f 	ld l,a	ld l,a
30d3	18 12 	jr $+$14	jr $+$00
30d5	7c 	ld a,h	ld a,h
30d6	3c 	inc a	inc a
30d7	20 06 	jr nz,$+$08	jr nz,$+$00
30d9	78 	ld a,b	ld a,b
30da	d6 02 	sub $02	sub $00
30dc	38 24 	jr c,$+$26	jr c,$+$00
30de	67 	ld h,a	ld h,a
30df	7d 	ld a,l	ld a,l
30e0	b8 	cp b	cp b
30e1	30 1f 	jr nc,$+$21	jr nc,$+$00
30e3	7c 	ld a,h	ld a,h
30e4	b8 	cp b	cp b
30e5	38 03 	jr c,$+$05	jr c,$+$00
30e7	78 	ld a,b	ld a,b
30e8	3d 	dec a	dec a
30e9	67 	ld h,a	ld h,a
30ea	7c 	ld a,h	ld a,h
30eb	95 	sub l	sub l
30ec	38 14 	jr c,$+$16	jr c,$+$00
30ee	3c 	inc a	inc a
30ef	b9 	cp c	cp c
30f0	38 01 	jr c,$+$03	jr c,$+$00
30f2	79 	ld a,c	ld a,c
30f3	06 00 	ld b,$00	ld b,$00
30f5	60 	ld h,b	ld h,b
30f6	4f 	ld c,a	ld c,a
30f7	b7 	or a	or a
30f8	28 08 	jr z,$+$0a	jr z,$+$00
30fa	eb 	ex de,hl	ex de,hl
30fb	19 	add hl,de	add hl,de
30fc	eb 	ex de,hl	ex de,hl
30fd	21 00 52 	ld hl,$5200	ld hl,$0000
3100	ed b0 	ldir	ldir
3102	c3 7b 24 	jp $247b	jp $0000
3105	fd 23 	inc iy	inc iy
3107	fe e3 	cp $e3	cp $00
3109	20 0c 	jr nz,$+$0e	jr nz,$+$00
310b	dd 21 00 00 	ld ix,$0000	ld ix,$0000
310f	cd 18 35 	call $3518	call $0000
3112	c4 c5 41 	call nz,$41c5	call nz,$0000
3115	3e e3 	ld a,$e3	ld a,$00
3117	16 01 	ld d,$01	ld d,$00
3119	5f 	ld e,a	ld e,a
311a	7b 	ld a,e	ld a,e
311b	c1 	pop bc	pop bc
311c	21 43 29 	ld hl,$2943	ld hl,$0000
311f	b7 	or a	or a
3120	ed 42 	sbc hl,bc	sbc hl,bc
3122	28 25 	jr z,$+$27	jr z,$+$00
3124	21 cf 28 	ld hl,$28cf	ld hl,$0000
3127	b7 	or a	or a
3128	ed 42 	sbc hl,bc	sbc hl,bc
312a	28 38 	jr z,$+$3a	jr z,$+$00
312c	21 10 2e 	ld hl,$2e10	ld hl,$0000
312f	b7 	or a	or a
3130	ed 42 	sbc hl,bc	sbc hl,bc
3132	28 3a 	jr z,$+$3c	jr z,$+$00
3134	c5 	push bc	push bc
3135	dd e5 	push ix	push ix
3137	c1 	pop bc	pop bc
3138	d9 	exx	exx
3139	3e 03 	ld a,$03	ld a,$00
313b	cd 13 34 	call $3413	call $0000
313e	d9 	exx	exx
313f	c5 	push bc	push bc
3140	dd e1 	pop ix	pop ix
3142	20 d6 	jr nz,$-$28	jr nz,$-$00
3144	3e 2c 	ld a,$2c	ld a,$00
3146	c3 26 3f 	jp $3f26	jp $0000
3149	c1 	pop bc	pop bc
314a	21 0e 00 	ld hl,$000e	ld hl,$0000
314d	39 	add hl,sp	add hl,sp
314e	f9 	ld sp,hl	ld sp,hl
314f	fe e3 	cp $e3	cp $00
3151	20 c7 	jr nz,$-$37	jr nz,$-$00
3153	dd e5 	push ix	push ix
3155	e1 	pop hl	pop hl
3156	7c 	ld a,h	ld a,h
3157	b5 	or l	or l
3158	28 02 	jr z,$+$04	jr z,$+$00
315a	ed 42 	sbc hl,bc	sbc hl,bc
315c	01 00 d0 	ld bc,$d000	ld bc,$0000
315f	28 15 	jr z,$+$17	jr z,$+$00
3161	14 	inc d	inc d
3162	18 b6 	jr $-$48	jr $-$00
3164	c1 	pop bc	pop bc
3165	fe f5 	cp $f5	cp $00
3167	20 b1 	jr nz,$-$4d	jr nz,$-$00
3169	01 00 f2 	ld bc,$f200	ld bc,$0000
316c	18 08 	jr $+$0a	jr $+$00
316e	c1 	pop bc	pop bc
316f	fe c7 	cp $c7	cp $00
3171	20 a7 	jr nz,$-$57	jr nz,$-$00
3173	01 00 95 	ld bc,$9500	ld bc,$0000
3176	cd 32 36 	call $3632	call $0000
3179	cd 24 35 	call $3524	call $0000
317c	c3 7b 24 	jp $247b	jp $0000
317f	cd 15 18 	call $1815	call $0000
3182	d9 	exx	exx
3183	e5 	push hl	push hl
3184	cd 84 20 	call $2084	call $0000
3187	cd 15 18 	call $1815	call $0000
318a	d9 	exx	exx
318b	c1 	pop bc	pop bc
318c	ed 69 	out (bc),l	out (bc),l
318e	c3 7b 24 	jp $247b	jp $0000
3191	cd c5 41 	call $41c5	call $0000
3194	d8 	ret c	ret c
3195	c4 af 41 	call nz,$41af	call nz,$0000
3198	57 	ld d,a	ld d,a
3199	cd ed 44 	call $44ed	call $0000
319c	fd 23 	inc iy	inc iy
319e	5f 	ld e,a	ld e,a
319f	fe 3d 	cp $3d	cp $00
31a1	c4 31 35 	call nz,$3531	call nz,$0000
31a4	7a 	ld a,d	ld a,d
31a5	e6 c0 	and $c0	and $00
31a7	c0 	ret nz	ret nz
31a8	d5 	push de	push de
31a9	e5 	push hl	push hl
31aa	cd 0e 18 	call $180e	call $0000
31ad	dd e1 	pop ix	pop ix
31af	d1 	pop de	pop de
31b0	7b 	ld a,e	ld a,e
31b1	fe 3d 	cp $3d	cp $00
31b3	28 1c 	jr z,$+$1e	jr z,$+$00
31b5	d5 	push de	push de
31b6	d9 	exx	exx
31b7	eb 	ex de,hl	ex de,hl
31b8	d9 	exx	exx
31b9	eb 	ex de,hl	ex de,hl
31ba	41 	ld b,c	ld b,c
31bb	e3 	ex (sp),hl	ex (sp),hl
31bc	7c 	ld a,h	ld a,h
31bd	e3 	ex (sp),hl	ex (sp),hl
31be	cd 07 19 	call $1907	call $0000
31c1	e3 	ex (sp),hl	ex (sp),hl
31c2	7d 	ld a,l	ld a,l
31c3	e3 	ex (sp),hl	ex (sp),hl
31c4	e6 0f 	and $0f	and $00
31c6	dd e5 	push ix	push ix
31c8	cd f7 44 	call $44f7	call $0000
31cb	dd e1 	pop ix	pop ix
31cd	d1 	pop de	pop de
31ce	da 26 3f 	jp c,$3f26	jp c,$0000
31d1	7a 	ld a,d	ld a,d
31d2	fe 05 	cp $05	cp $00
31d4	28 12 	jr z,$+$14	jr z,$+$00
31d6	f5 	push af	push af
31d7	0c 	inc c	inc c
31d8	0d 	dec c	dec c
31d9	c4 f9 1b 	call nz,$1bf9	call nz,$0000
31dc	f1 	pop af	pop af
31dd	fe 04 	cp $04	cp $00
31df	28 0a 	jr z,$+$0c	jr z,$+$00
31e1	bf 	cp a	cp a
31e2	d9 	exx	exx
31e3	dd 75 00 	ld (ix),l	ld (ix),l
31e6	d9 	exx	exx
31e7	c9 	ret	ret
31e8	dd 71 04 	ld (ix+$04),c	ld (ix+$00),c
31eb	d9 	exx	exx
31ec	dd 75 00 	ld (ix),l	ld (ix),l
31ef	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
31f2	d9 	exx	exx
31f3	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
31f6	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
31f9	c9 	ret	ret
31fa	7d 	ld a,l	ld a,l
31fb	fe 2b 	cp $2b	cp $00
31fd	7c 	ld a,h	ld a,h
31fe	20 20 	jr nz,$+$22	jr nz,$+$00
3200	fd e5 	push iy	push iy
3202	dd e5 	push ix	push ix
3204	fd e1 	pop iy	pop iy
3206	cd fb 1f 	call $1ffb	call $0000
3209	fd e5 	push iy	push iy
320b	dd e1 	pop ix	pop ix
320d	cd f0 19 	call $19f0	call $0000
3210	c1 	pop bc	pop bc
3211	78 	ld a,b	ld a,b
3212	0c 	inc c	inc c
3213	0d 	dec c	dec c
3214	28 08 	jr z,$+$0a	jr z,$+$00
3216	21 00 00 	ld hl,$0000	ld hl,$0000
3219	44 	ld b,h	ld b,h
321a	39 	add hl,sp	add hl,sp
321b	ed b0 	ldir	ldir
321d	f9 	ld sp,hl	ld sp,hl
321e	fd e1 	pop iy	pop iy
3220	21 00 52 	ld hl,$5200	ld hl,$0000
3223	1f 	rra	rra
3224	30 4f 	jr nc,$+$51	jr nc,$+$00
3226	e5 	push hl	push hl
3227	cd 14 19 	call $1914	call $0000
322a	7b 	ld a,e	ld a,e
322b	d9 	exx	exx
322c	6f 	ld l,a	ld l,a
322d	7c 	ld a,h	ld a,h
322e	d9 	exx	exx
322f	bb 	cp e	cp e
3230	30 24 	jr nc,$+$26	jr nc,$+$00
3232	d9 	exx	exx
3233	65 	ld h,l	ld h,l
3234	d9 	exx	exx
3235	e5 	push hl	push hl
3236	06 00 	ld b,$00	ld b,$00
3238	4f 	ld c,a	ld c,a
3239	09 	add hl,bc	add hl,bc
323a	ed 4b e0 54 	ld bc,($54e0)	ld bc,($0000)
323e	ed 42 	sbc hl,bc	sbc hl,bc
3240	e1 	pop hl	pop hl
3241	28 12 	jr z,$+$14	jr z,$+$00
3243	60 	ld h,b	ld h,b
3244	69 	ld l,c	ld l,c
3245	b7 	or a	or a
3246	28 0d 	jr z,$+$0f	jr z,$+$00
3248	7b 	ld a,e	ld a,e
3249	5f 	ld e,a	ld e,a
324a	1d 	dec e	dec e
324b	a3 	and e	and e
324c	20 fb 	jr nz,$-$03	jr nz,$-$00
324e	37 	scf	scf
324f	cb 13 	rl e	rl e
3251	7b 	ld a,e	ld a,e
3252	d9 	exx	exx
3253	67 	ld h,a	ld h,a
3254	d9 	exx	exx
3255	37 	scf	scf
3256	cd eb 31 	call $31eb	call $0000
3259	06 00 	ld b,$00	ld b,$00
325b	4b 	ld c,e	ld c,e
325c	eb 	ex de,hl	ex de,hl
325d	e1 	pop hl	pop hl
325e	0d 	dec c	dec c
325f	0c 	inc c	inc c
3260	c8 	ret z	ret z
3261	ed b0 	ldir	ldir
3263	d0 	ret nc	ret nc
3264	ed 53 e0 54 	ld ($54e0),de	ld ($0000),de
3268	e5 	push hl	push hl
3269	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
326c	24 	inc h	inc h
326d	ed 72 	sbc hl,sp	sbc hl,sp
326f	e1 	pop hl	pop hl
3270	d8 	ret c	ret c
3271	af 	xor a	xor a
3272	c3 26 3f 	jp $3f26	jp $0000
3275	4b 	ld c,e	ld c,e
3276	dd e5 	push ix	push ix
3278	d1 	pop de	pop de
3279	af 	xor a	xor a
327a	47 	ld b,a	ld b,a
327b	b9 	cp c	cp c
327c	28 02 	jr z,$+$04	jr z,$+$00
327e	ed b0 	ldir	ldir
3280	3e 0d 	ld a,$0d	ld a,$00
3282	12 	ld (de),a	ld (de),a
3283	c9 	ret	ret
3284	dd 75 00 	ld (ix),l	ld (ix),l
3287	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
328a	dd 77 02 	ld (ix+$02),a	ld (ix+$00),a
328d	fd e3 	ex (sp),iy	ex (sp),iy
328f	f5 	push af	push af
3290	fd e5 	push iy	push iy
3292	dd e5 	push ix	push ix
3294	cd ed 44 	call $44ed	call $0000
3297	cd b8 25 	call $25b8	call $0000
329a	dd e1 	pop ix	pop ix
329c	dd 75 04 	ld (ix+$04),l	ld (ix+$00),l
329f	dd 74 05 	ld (ix+$05),h	ld (ix+$00),h
32a2	dd 77 06 	ld (ix+$06),a	ld (ix+$00),a
32a5	fd e1 	pop iy	pop iy
32a7	f1 	pop af	pop af
32a8	01 08 00 	ld bc,$0008	ld bc,$0000
32ab	dd 09 	add ix,bc	add ix,bc
32ad	18 2d 	jr $+$2f	jr $+$00
32af	3e ff 	ld a,$ff	ld a,$00
32b1	f5 	push af	push af
32b2	fd 23 	inc iy	inc iy
32b4	13 	inc de	inc de
32b5	d5 	push de	push de
32b6	06 00 	ld b,$00	ld b,$00
32b8	cd ed 44 	call $44ed	call $0000
32bb	fe f8 	cp $f8	cp $00
32bd	20 06 	jr nz,$+$08	jr nz,$+$00
32bf	fd 23 	inc iy	inc iy
32c1	cd ed 44 	call $44ed	call $0000
32c4	04 	inc b	inc b
32c5	c5 	push bc	push bc
32c6	dd e5 	push ix	push ix
32c8	cd c5 41 	call $41c5	call $0000
32cb	38 49 	jr c,$+$4b	jr c,$+$00
32cd	c4 af 41 	call nz,$41af	call nz,$0000
32d0	dd e1 	pop ix	pop ix
32d2	c1 	pop bc	pop bc
32d3	d1 	pop de	pop de
32d4	e5 	push hl	push hl
32d5	f5 	push af	push af
32d6	d5 	push de	push de
32d7	05 	dec b	dec b
32d8	28 aa 	jr z,$-$54	jr z,$-$00
32da	fd e3 	ex (sp),iy	ex (sp),iy
32dc	cb 77 	bit 6,a	bit 6,a
32de	20 3b 	jr nz,$+$3d	jr nz,$+$00
32e0	b7 	or a	or a
32e1	fa f7 32 	jp m,$32f7	jp m,$0000
32e4	dd e5 	push ix	push ix
32e6	cd 0e 18 	call $180e	call $0000
32e9	dd e1 	pop ix	pop ix
32eb	fd e3 	ex (sp),iy	ex (sp),iy
32ed	d1 	pop de	pop de
32ee	f1 	pop af	pop af
32ef	d9 	exx	exx
32f0	e5 	push hl	push hl
32f1	d9 	exx	exx
32f2	e5 	push hl	push hl
32f3	47 	ld b,a	ld b,a
32f4	c5 	push bc	push bc
32f5	18 13 	jr $+$15	jr $+$00
32f7	dd e5 	push ix	push ix
32f9	cd 1e 18 	call $181e	call $0000
32fc	d9 	exx	exx
32fd	c1 	pop bc	pop bc
32fe	fd e3 	ex (sp),iy	ex (sp),iy
3300	d1 	pop de	pop de
3301	d9 	exx	exx
3302	f1 	pop af	pop af
3303	cd fb 1f 	call $1ffb	call $0000
3306	d9 	exx	exx
3307	c5 	push bc	push bc
3308	dd e1 	pop ix	pop ix
330a	cd ed 44 	call $44ed	call $0000
330d	fe 2c 	cp $2c	cp $00
330f	20 27 	jr nz,$+$29	jr nz,$+$00
3311	1a 	ld a,(de)	ld a,(de)
3312	fe 2c 	cp $2c	cp $00
3314	28 9c 	jr z,$-$62	jr z,$-$00
3316	3e 1f 	ld a,$1f	ld a,$00
3318	c3 26 3f 	jp $3f26	jp $0000
331b	dd e5 	push ix	push ix
331d	cd ed 44 	call $44ed	call $0000
3320	cd c5 41 	call $41c5	call $0000
3323	38 f1 	jr c,$-$0d	jr c,$-$00
3325	dd 4e 00 	ld c,(ix)	ld c,(ix)
3328	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
332b	dd e1 	pop ix	pop ix
332d	cd ed 44 	call $44ed	call $0000
3330	fd e3 	ex (sp),iy	ex (sp),iy
3332	d1 	pop de	pop de
3333	f1 	pop af	pop af
3334	c5 	push bc	push bc
3335	f5 	push af	push af
3336	18 d2 	jr $-$2c	jr $-$00
3338	cd 90 20 	call $2090	call $0000
333b	1a 	ld a,(de)	ld a,(de)
333c	fe 29 	cp $29	cp $00
333e	20 d6 	jr nz,$-$28	jr nz,$-$00
3340	13 	inc de	inc de
3341	d9 	exx	exx
3342	c1 	pop bc	pop bc
3343	78 	ld a,b	ld a,b
3344	3c 	inc a	inc a
3345	d9 	exx	exx
3346	c8 	ret z	ret z
3347	d9 	exx	exx
3348	3d 	dec a	dec a
3349	cb 77 	bit 6,a	bit 6,a
334b	20 19 	jr nz,$+$1b	jr nz,$+$00
334d	b7 	or a	or a
334e	fa 5c 33 	jp m,$335c	jp m,$0000
3351	e1 	pop hl	pop hl
3352	d9 	exx	exx
3353	e1 	pop hl	pop hl
3354	d9 	exx	exx
3355	dd e1 	pop ix	pop ix
3357	cd d2 31 	call $31d2	call $0000
335a	18 e6 	jr $-$18	jr $-$00
335c	cd 19 20 	call $2019	call $0000
335f	dd e1 	pop ix	pop ix
3361	cd 20 32 	call $3220	call $0000
3364	18 dc 	jr $-$22	jr $-$00
3366	c1 	pop bc	pop bc
3367	dd e1 	pop ix	pop ix
3369	dd 71 00 	ld (ix),c	ld (ix),c
336c	dd 70 01 	ld (ix+$01),b	ld (ix+$00),b
336f	18 d1 	jr $-$2d	jr $-$00
3371	3e ff 	ld a,$ff	ld a,$00
3373	f5 	push af	push af
3374	d9 	exx	exx
3375	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
3378	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
337b	e5 	push hl	push hl
337c	dd 6e 00 	ld l,(ix)	ld l,(ix)
337f	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
3382	dd 7e 02 	ld a,(ix+$02)	ld a,(ix+$00)
3385	cb 77 	bit 6,a	bit 6,a
3387	20 19 	jr nz,$+$1b	jr nz,$+$00
3389	b7 	or a	or a
338a	fa a8 33 	jp m,$33a8	jp m,$0000
338d	e5 	push hl	push hl
338e	dd e3 	ex (sp),ix	ex (sp),ix
3390	cd 07 19 	call $1907	call $0000
3393	dd e1 	pop ix	pop ix
3395	d9 	exx	exx
3396	e5 	push hl	push hl
3397	d9 	exx	exx
3398	e5 	push hl	push hl
3399	dd 46 06 	ld b,(ix+$06)	ld b,(ix+$00)
339c	c5 	push bc	push bc
339d	cd 68 32 	call $3268	call $0000
33a0	18 1e 	jr $+$20	jr $+$00
33a2	5e 	ld e,(hl)	ld e,(hl)
33a3	23 	inc hl	inc hl
33a4	56 	ld d,(hl)	ld d,(hl)
33a5	d5 	push de	push de
33a6	18 f1 	jr $-$0d	jr $-$00
33a8	e5 	push hl	push hl
33a9	dd e3 	ex (sp),ix	ex (sp),ix
33ab	cd f0 19 	call $19f0	call $0000
33ae	dd e1 	pop ix	pop ix
33b0	dd 7e 06 	ld a,(ix+$06)	ld a,(ix+$00)
33b3	d9 	exx	exx
33b4	dd e5 	push ix	push ix
33b6	e1 	pop hl	pop hl
33b7	d9 	exx	exx
33b8	cd fb 1f 	call $1ffb	call $0000
33bb	d9 	exx	exx
33bc	e5 	push hl	push hl
33bd	dd e1 	pop ix	pop ix
33bf	d9 	exx	exx
33c0	11 08 00 	ld de,$0008	ld de,$0000
33c3	dd 19 	add ix,de	add ix,de
33c5	d9 	exx	exx
33c6	10 ac 	djnz $-$52	djnz $-$00
33c8	c3 41 33 	jp $3341	jp $0000
33cb	c1 	pop bc	pop bc
33cc	26 00 	ld h,$00	ld h,$00
33ce	68 	ld l,b	ld l,b
33cf	29 	add hl,hl	add hl,hl
33d0	29 	add hl,hl	add hl,hl
33d1	29 	add hl,hl	add hl,hl
33d2	39 	add hl,sp	add hl,sp
33d3	dd 21 00 00 	ld ix,$0000	ld ix,$0000
33d7	dd 39 	add ix,sp	add ix,sp
33d9	f5 	push af	push af
33da	d5 	push de	push de
33db	e5 	push hl	push hl
33dc	d9 	exx	exx
33dd	c5 	push bc	push bc
33de	d5 	push de	push de
33df	d9 	exx	exx
33e0	78 	ld a,b	ld a,b
33e1	21 00 52 	ld hl,$5200	ld hl,$0000
33e4	11 00 53 	ld de,$5300	ld de,$0000
33e7	01 ff 00 	ld bc,$00ff	ld bc,$0000
33ea	ed b0 	ldir	ldir
33ec	47 	ld b,a	ld b,a
33ed	cd 71 33 	call $3371	call $0000
33f0	21 00 53 	ld hl,$5300	ld hl,$0000
33f3	11 00 52 	ld de,$5200	ld de,$0000
33f6	01 ff 00 	ld bc,$00ff	ld bc,$0000
33f9	ed b0 	ldir	ldir
33fb	d9 	exx	exx
33fc	d1 	pop de	pop de
33fd	c1 	pop bc	pop bc
33fe	d9 	exx	exx
33ff	e1 	pop hl	pop hl
3400	d1 	pop de	pop de
3401	f1 	pop af	pop af
3402	18 0a 	jr $+$0c	jr $+$00
3404	c1 	pop bc	pop bc
3405	cb 78 	bit 7,b	bit 7,b
3407	e1 	pop hl	pop hl
3408	c1 	pop bc	pop bc
3409	09 	add hl,bc	add hl,bc
340a	39 	add hl,sp	add hl,sp
340b	c4 c5 36 	call nz,$36c5	call nz,$0000
340e	f9 	ld sp,hl	ld sp,hl
340f	dd 23 	inc ix	inc ix
3411	18 05 	jr $+$07	jr $+$00
3413	d1 	pop de	pop de
3414	dd 21 00 00 	ld ix,$0000	ld ix,$0000
3418	c1 	pop bc	pop bc
3419	21 0c 35 	ld hl,$350c	ld hl,$0000
341c	b7 	or a	or a
341d	ed 42 	sbc hl,bc	sbc hl,bc
341f	28 1a 	jr z,$+$1c	jr z,$+$00
3421	b7 	or a	or a
3422	20 0f 	jr nz,$+$11	jr nz,$+$00
3424	21 52 2a 	ld hl,$2a52	ld hl,$0000
3427	ed 42 	sbc hl,bc	sbc hl,bc
3429	28 a0 	jr z,$-$5e	jr z,$-$00
342b	21 be 26 	ld hl,$26be	ld hl,$0000
342e	b7 	or a	or a
342f	ed 42 	sbc hl,bc	sbc hl,bc
3431	28 d1 	jr z,$-$2d	jr z,$-$00
3433	dd e5 	push ix	push ix
3435	e1 	pop hl	pop hl
3436	7c 	ld a,h	ld a,h
3437	b5 	or l	or l
3438	c5 	push bc	push bc
3439	eb 	ex de,hl	ex de,hl
343a	e9 	jp (hl)	jp (hl)
343b	dd e1 	pop ix	pop ix
343d	b7 	or a	or a
343e	28 20 	jr z,$+$22	jr z,$+$00
3440	dd e5 	push ix	push ix
3442	c1 	pop bc	pop bc
3443	cb 47 	bit 0,a	bit 0,a
3445	28 07 	jr z,$+$09	jr z,$+$00
3447	21 f0 54 	ld hl,$54f0	ld hl,$0000
344a	ed 42 	sbc hl,bc	sbc hl,bc
344c	28 12 	jr z,$+$14	jr z,$+$00
344e	b7 	or a	or a
344f	cb 4f 	bit 1,a	bit 1,a
3451	28 07 	jr z,$+$09	jr z,$+$00
3453	21 ea 54 	ld hl,$54ea	ld hl,$0000
3456	ed 42 	sbc hl,bc	sbc hl,bc
3458	28 06 	jr z,$+$08	jr z,$+$00
345a	c5 	push bc	push bc
345b	01 0c 35 	ld bc,$350c	ld bc,$0000
345e	18 d8 	jr $-$26	jr $-$00
3460	c1 	pop bc	pop bc
3461	cb 70 	bit 6,b	bit 6,b
3463	20 14 	jr nz,$+$16	jr nz,$+$00
3465	cb 78 	bit 7,b	bit 7,b
3467	20 23 	jr nz,$+$25	jr nz,$+$00
3469	e1 	pop hl	pop hl
346a	d9 	exx	exx
346b	e1 	pop hl	pop hl
346c	d9 	exx	exx
346d	cb 60 	bit 4,b	bit 4,b
346f	20 a7 	jr nz,$-$57	jr nz,$-$00
3471	f5 	push af	push af
3472	78 	ld a,b	ld a,b
3473	cd d2 31 	call $31d2	call $0000
3476	f1 	pop af	pop af
3477	18 9f 	jr $-$5f	jr $-$00
3479	e1 	pop hl	pop hl
347a	cb 60 	bit 4,b	bit 4,b
347c	20 9a 	jr nz,$-$64	jr nz,$-$00
347e	dd 75 00 	ld (ix),l	ld (ix),l
3481	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
3484	18 92 	jr $-$6c	jr $-$00
3486	06 00 	ld b,$00	ld b,$00
3488	09 	add hl,bc	add hl,bc
3489	f9 	ld sp,hl	ld sp,hl
348a	18 8c 	jr $-$72	jr $-$00
348c	21 00 00 	ld hl,$0000	ld hl,$0000
348f	39 	add hl,sp	add hl,sp
3490	cb 60 	bit 4,b	bit 4,b
3492	20 f2 	jr nz,$-$0c	jr nz,$-$00
3494	f5 	push af	push af
3495	d5 	push de	push de
3496	59 	ld e,c	ld e,c
3497	78 	ld a,b	ld a,b
3498	cd 23 32 	call $3223	call $0000
349b	d1 	pop de	pop de
349c	f1 	pop af	pop af
349d	f9 	ld sp,hl	ld sp,hl
349e	18 ea 	jr $-$14	jr $-$00
34a0	d1 	pop de	pop de
34a1	fd 23 	inc iy	inc iy
34a3	cd ed 44 	call $44ed	call $0000
34a6	fe f8 	cp $f8	cp $00
34a8	20 08 	jr nz,$+$0a	jr nz,$+$00
34aa	08 	ex af,af'	ex af,af'
34ab	3c 	inc a	inc a
34ac	08 	ex af,af'	ex af,af'
34ad	fd 23 	inc iy	inc iy
34af	cd ed 44 	call $44ed	call $0000
34b2	d5 	push de	push de
34b3	d9 	exx	exx
34b4	c5 	push bc	push bc
34b5	d5 	push de	push de
34b6	e5 	push hl	push hl
34b7	d9 	exx	exx
34b8	cd b8 25 	call $25b8	call $0000
34bb	d9 	exx	exx
34bc	e1 	pop hl	pop hl
34bd	d1 	pop de	pop de
34be	c1 	pop bc	pop bc
34bf	d9 	exx	exx
34c0	d1 	pop de	pop de
34c1	cb 77 	bit 6,a	bit 6,a
34c3	20 12 	jr nz,$+$14	jr nz,$+$00
34c5	b7 	or a	or a
34c6	fa e1 34 	jp m,$34e1	jp m,$0000
34c9	d9 	exx	exx
34ca	e5 	push hl	push hl
34cb	d9 	exx	exx
34cc	47 	ld b,a	ld b,a
34cd	cd 07 19 	call $1907	call $0000
34d0	d9 	exx	exx
34d1	e3 	ex (sp),hl	ex (sp),hl
34d2	d9 	exx	exx
34d3	e5 	push hl	push hl
34d4	c5 	push bc	push bc
34d5	18 30 	jr $+$32	jr $+$00
34d7	dd 4e 00 	ld c,(ix)	ld c,(ix)
34da	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
34dd	c5 	push bc	push bc
34de	f5 	push af	push af
34df	18 26 	jr $+$28	jr $+$00
34e1	f5 	push af	push af
34e2	d5 	push de	push de
34e3	d9 	exx	exx
34e4	e5 	push hl	push hl
34e5	d9 	exx	exx
34e6	cd f0 19 	call $19f0	call $0000
34e9	d9 	exx	exx
34ea	e1 	pop hl	pop hl
34eb	d9 	exx	exx
34ec	4b 	ld c,e	ld c,e
34ed	d1 	pop de	pop de
34ee	cd 68 32 	call $3268	call $0000
34f1	f1 	pop af	pop af
34f2	21 00 00 	ld hl,$0000	ld hl,$0000
34f5	45 	ld b,l	ld b,l
34f6	ed 42 	sbc hl,bc	sbc hl,bc
34f8	39 	add hl,sp	add hl,sp
34f9	f9 	ld sp,hl	ld sp,hl
34fa	47 	ld b,a	ld b,a
34fb	c5 	push bc	push bc
34fc	28 09 	jr z,$+$0b	jr z,$+$00
34fe	d5 	push de	push de
34ff	11 00 52 	ld de,$5200	ld de,$0000
3502	eb 	ex de,hl	ex de,hl
3503	45 	ld b,l	ld b,l
3504	ed b0 	ldir	ldir
3506	d1 	pop de	pop de
3507	dd e5 	push ix	push ix
3509	cd 0c 35 	call $350c	call $0000
350c	cd 68 32 	call $3268	call $0000
350f	cd ed 44 	call $44ed	call $0000
3512	fe 2c 	cp $2c	cp $00
3514	28 8b 	jr z,$-$73	jr z,$-$00
3516	eb 	ex de,hl	ex de,hl
3517	e9 	jp (hl)	jp (hl)
3518	cd ed 44 	call $44ed	call $0000
351b	fe 8b 	cp $8b	cp $00
351d	d0 	ret nc	ret nc
351e	fe 3a 	cp $3a	cp $00
3520	d0 	ret nc	ret nc
3521	fe 0d 	cp $0d	cp $00
3523	c9 	ret	ret
3524	cd 18 35 	call $3518	call $0000
3527	c8 	ret z	ret z
3528	fd 23 	inc iy	inc iy
352a	fe 22 	cp $22	cp $00
352c	cc 7b 36 	call z,$367b	call z,$0000
352f	18 f3 	jr $-$0b	jr $-$00
3531	cd ed 44 	call $44ed	call $0000
3534	fd 23 	inc iy	inc iy
3536	fe 3d 	cp $3d	cp $00
3538	c8 	ret z	ret z
3539	3e 04 	ld a,$04	ld a,$00
353b	c3 26 3f 	jp $3f26	jp $0000
353e	fe 8a 	cp $8a	cp $00
3540	28 0c 	jr z,$+$0e	jr z,$+$00
3542	fe 89 	cp $89	cp $00
3544	28 38 	jr z,$+$3a	jr z,$+$00
3546	fe 27 	cp $27	cp $00
3548	c0 	ret nz	ret nz
3549	cd dd 40 	call $40dd	call $0000
354c	af 	xor a	xor a
354d	c9 	ret	ret
354e	c5 	push bc	push bc
354f	cd 15 18 	call $1815	call $0000
3552	d9 	exx	exx
3553	c1 	pop bc	pop bc
3554	fd 7e 00 	ld a,(iy)	ld a,(iy)
3557	fe 2c 	cp $2c	cp $00
3559	28 11 	jr z,$+$13	jr z,$+$00
355b	cd 90 20 	call $2090	call $0000
355e	7d 	ld a,l	ld a,l
355f	21 fb 54 	ld hl,$54fb	ld hl,$0000
3562	be 	cp (hl)	cp (hl)
3563	c8 	ret z	ret z
3564	f5 	push af	push af
3565	dc dd 40 	call c,$40dd	call c,$0000
3568	f1 	pop af	pop af
3569	96 	sub (hl)	sub (hl)
356a	18 19 	jr $+$1b	jr $+$00
356c	fd 23 	inc iy	inc iy
356e	c5 	push bc	push bc
356f	e5 	push hl	push hl
3570	cd 15 18 	call $1815	call $0000
3573	d9 	exx	exx
3574	d1 	pop de	pop de
3575	c1 	pop bc	pop bc
3576	cd 90 20 	call $2090	call $0000
3579	cd 7e 0d 	call $0d7e	call $0000
357c	af 	xor a	xor a
357d	c9 	ret	ret
357e	c5 	push bc	push bc
357f	cd 42 18 	call $1842	call $0000
3582	d9 	exx	exx
3583	7d 	ld a,l	ld a,l
3584	c1 	pop bc	pop bc
3585	b7 	or a	or a
3586	c8 	ret z	ret z
3587	c5 	push bc	push bc
3588	47 	ld b,a	ld b,a
3589	3e 20 	ld a,$20	ld a,$00
358b	cd e4 40 	call $40e4	call $0000
358e	10 f9 	djnz $-$05	djnz $-$00
3590	c1 	pop bc	pop bc
3591	af 	xor a	xor a
3592	c9 	ret	ret
3593	21 00 52 	ld hl,$5200	ld hl,$0000
3596	1c 	inc e	inc e
3597	1d 	dec e	dec e
3598	c8 	ret z	ret z
3599	7e 	ld a,(hl)	ld a,(hl)
359a	23 	inc hl	inc hl
359b	cd e4 40 	call $40e4	call $0000
359e	18 f7 	jr $-$07	jr $-$00
35a0	f5 	push af	push af
35a1	c5 	push bc	push bc
35a2	e5 	push hl	push hl
35a3	fd e3 	ex (sp),iy	ex (sp),iy
35a5	cd bd 35 	call $35bd	call $0000
35a8	cd ed 44 	call $44ed	call $0000
35ab	fd e3 	ex (sp),iy	ex (sp),iy
35ad	e1 	pop hl	pop hl
35ae	c1 	pop bc	pop bc
35af	f1 	pop af	pop af
35b0	c9 	ret	ret
35b1	11 00 52 	ld de,$5200	ld de,$0000
35b4	7e 	ld a,(hl)	ld a,(hl)
35b5	12 	ld (de),a	ld (de),a
35b6	fe 0d 	cp $0d	cp $00
35b8	c8 	ret z	ret z
35b9	23 	inc hl	inc hl
35ba	1c 	inc e	inc e
35bb	18 f7 	jr $-$07	jr $-$00
35bd	cd ed 44 	call $44ed	call $0000
35c0	fe 22 	cp $22	cp $00
35c2	fd 23 	inc iy	inc iy
35c4	ca 5c 19 	jp z,$195c	jp z,$0000
35c7	fd 2b 	dec iy	dec iy
35c9	11 00 52 	ld de,$5200	ld de,$0000
35cc	fd 7e 00 	ld a,(iy)	ld a,(iy)
35cf	12 	ld (de),a	ld (de),a
35d0	fe 2c 	cp $2c	cp $00
35d2	c8 	ret z	ret z
35d3	fe 0d 	cp $0d	cp $00
35d5	c8 	ret z	ret z
35d6	fd 23 	inc iy	inc iy
35d8	1c 	inc e	inc e
35d9	18 f1 	jr $-$0d	jr $-$00
35db	3e dc 	ld a,$dc	ld a,$00
35dd	06 00 	ld b,$00	ld b,$00
35df	4e 	ld c,(hl)	ld c,(hl)
35e0	0c 	inc c	inc c
35e1	0d 	dec c	dec c
35e2	28 0c 	jr z,$+$0e	jr z,$+$00
35e4	23 	inc hl	inc hl
35e5	23 	inc hl	inc hl
35e6	23 	inc hl	inc hl
35e7	be 	cp (hl)	cp (hl)
35e8	c8 	ret z	ret z
35e9	0d 	dec c	dec c
35ea	0d 	dec c	dec c
35eb	0d 	dec c	dec c
35ec	09 	add hl,bc	add hl,bc
35ed	c3 df 35 	jp $35df	jp $0000
35f0	2b 	dec hl	dec hl
35f1	37 	scf	scf
35f2	c9 	ret	ret
35f3	2e 00 	ld l,$00	ld l,$00
35f5	fd 7e 00 	ld a,(iy)	ld a,(iy)
35f8	b7 	or a	or a
35f9	28 34 	jr z,$+$36	jr z,$+$00
35fb	fd 7e 03 	ld a,(iy+$03)	ld a,(iy+$00)
35fe	b8 	cp b	cp b
35ff	28 1d 	jr z,$+$1f	jr z,$+$00
3601	b9 	cp c	cp c
3602	28 1a 	jr z,$+$1c	jr z,$+$00
3604	ba 	cp d	cp d
3605	28 22 	jr z,$+$24	jr z,$+$00
3607	c5 	push bc	push bc
3608	06 00 	ld b,$00	ld b,$00
360a	fd 4e 00 	ld c,(iy)	ld c,(iy)
360d	fd 09 	add iy,bc	add iy,bc
360f	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
3612	bb 	cp e	cp e
3613	79 	ld a,c	ld a,c
3614	c1 	pop bc	pop bc
3615	20 de 	jr nz,$-$20	jr nz,$-$00
3617	fe 05 	cp $05	cp $00
3619	38 da 	jr c,$-$24	jr c,$-$00
361b	2c 	inc l	inc l
361c	18 d7 	jr $-$27	jr $-$00
361e	2c 	inc l	inc l
361f	2d 	dec l	dec l
3620	20 e2 	jr nz,$-$1c	jr nz,$-$00
3622	01 04 00 	ld bc,$0004	ld bc,$0000
3625	fd 09 	add iy,bc	add iy,bc
3627	af 	xor a	xor a
3628	c9 	ret	ret
3629	2d 	dec l	dec l
362a	f2 07 36 	jp p,$3607	jp p,$0000
362d	18 f3 	jr $-$0b	jr $-$00
362f	f6 01 	or $01	or $00
3631	c9 	ret	ret
3632	fd 7e 00 	ld a,(iy)	ld a,(iy)
3635	fd 23 	inc iy	inc iy
3637	fe 22 	cp $22	cp $00
3639	cc 7b 36 	call z,$367b	call z,$0000
363c	fe f4 	cp $f4	cp $00
363e	28 22 	jr z,$+$24	jr z,$+$00
3640	fe 10 	cp $10	cp $00
3642	28 30 	jr z,$+$32	jr z,$+$00
3644	b8 	cp b	cp b
3645	28 29 	jr z,$+$2b	jr z,$+$00
3647	b9 	cp c	cp c
3648	28 23 	jr z,$+$25	jr z,$+$00
364a	fe 0d 	cp $0d	cp $00
364c	20 e4 	jr nz,$-$1a	jr nz,$-$00
364e	fd 7e 00 	ld a,(iy)	ld a,(iy)
3651	fd 23 	inc iy	inc iy
3653	b7 	or a	or a
3654	ca b5 24 	jp z,$24b5	jp z,$0000
3657	fd 23 	inc iy	inc iy
3659	fd 23 	inc iy	inc iy
365b	fd 7e 00 	ld a,(iy)	ld a,(iy)
365e	fe dc 	cp $dc	cp $00
3660	20 d0 	jr nz,$-$2e	jr nz,$-$00
3662	fd 7e 00 	ld a,(iy)	ld a,(iy)
3665	fd 23 	inc iy	inc iy
3667	fe 0d 	cp $0d	cp $00
3669	20 f7 	jr nz,$-$07	jr nz,$-$00
366b	18 e1 	jr $-$1d	jr $-$00
366d	14 	inc d	inc d
366e	18 c2 	jr $-$3c	jr $-$00
3670	15 	dec d	dec d
3671	20 bf 	jr nz,$-$3f	jr nz,$-$00
3673	c9 	ret	ret
3674	cd ed 44 	call $44ed	call $0000
3677	fd 23 	inc iy	inc iy
3679	18 b7 	jr $-$47	jr $-$00
367b	fd 7e 00 	ld a,(iy)	ld a,(iy)
367e	fd 23 	inc iy	inc iy
3680	fe 0d 	cp $0d	cp $00
3682	ca 8a 36 	jp z,$368a	jp z,$0000
3685	fe 22 	cp $22	cp $00
3687	20 f2 	jr nz,$-$0c	jr nz,$-$00
3689	c9 	ret	ret
368a	3e 09 	ld a,$09	ld a,$00
368c	c3 26 3f 	jp $3f26	jp $0000
368f	62 	ld h,d	ld h,d
3690	6b 	ld l,e	ld l,e
3691	fe 01 	cp $01	cp $00
3693	c8 	ret z	ret z
3694	fe 05 	cp $05	cp $00
3696	29 	add hl,hl	add hl,hl
3697	d8 	ret c	ret c
3698	29 	add hl,hl	add hl,hl
3699	d8 	ret c	ret c
369a	eb 	ex de,hl	ex de,hl
369b	c0 	ret nz	ret nz
369c	19 	add hl,de	add hl,de
369d	eb 	ex de,hl	ex de,hl
369e	c9 	ret	ret
369f	eb 	ex de,hl	ex de,hl
36a0	21 00 00 	ld hl,$0000	ld hl,$0000
36a3	3e 10 	ld a,$10	ld a,$00
36a5	29 	add hl,hl	add hl,hl
36a6	d8 	ret c	ret c
36a7	cb 23 	sla e	sla e
36a9	cb 12 	rl d	rl d
36ab	30 02 	jr nc,$+$04	jr nc,$+$00
36ad	09 	add hl,bc	add hl,bc
36ae	d8 	ret c	ret c
36af	3d 	dec a	dec a
36b0	20 f3 	jr nz,$-$0b	jr nz,$-$00
36b2	c9 	ret	ret
36b3	cd ed 44 	call $44ed	call $0000
36b6	fe 23 	cp $23	cp $00
36b8	3e 2d 	ld a,$2d	ld a,$00
36ba	c2 26 3f 	jp nz,$3f26	jp nz,$0000
36bd	fd 23 	inc iy	inc iy
36bf	cd 42 18 	call $1842	call $0000
36c2	d9 	exx	exx
36c3	eb 	ex de,hl	ex de,hl
36c4	c9 	ret	ret
36c5	f5 	push af	push af
36c6	c5 	push bc	push bc
36c7	d5 	push de	push de
36c8	e5 	push hl	push hl
36c9	af 	xor a	xor a
36ca	50 	ld d,b	ld d,b
36cb	59 	ld e,c	ld e,c
36cc	47 	ld b,a	ld b,a
36cd	d5 	push de	push de
36ce	2b 	dec hl	dec hl
36cf	56 	ld d,(hl)	ld d,(hl)
36d0	2b 	dec hl	dec hl
36d1	5e 	ld e,(hl)	ld e,(hl)
36d2	2b 	dec hl	dec hl
36d3	4e 	ld c,(hl)	ld c,(hl)
36d4	2b 	dec hl	dec hl
36d5	e5 	push hl	push hl
36d6	2a e0 54 	ld hl,($54e0)	ld hl,($0000)
36d9	eb 	ex de,hl	ex de,hl
36da	09 	add hl,bc	add hl,bc
36db	ed 52 	sbc hl,de	sbc hl,de
36dd	20 07 	jr nz,$+$09	jr nz,$+$00
36df	19 	add hl,de	add hl,de
36e0	ed 42 	sbc hl,bc	sbc hl,bc
36e2	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
36e5	b4 	or h	or h
36e6	d1 	pop de	pop de
36e7	e1 	pop hl	pop hl
36e8	0e 04 	ld c,$04	ld c,$00
36ea	b7 	or a	or a
36eb	ed 42 	sbc hl,bc	sbc hl,bc
36ed	eb 	ex de,hl	ex de,hl
36ee	20 dd 	jr nz,$-$21	jr nz,$-$00
36f0	b7 	or a	or a
36f1	e1 	pop hl	pop hl
36f2	d1 	pop de	pop de
36f3	c1 	pop bc	pop bc
36f4	b7 	or a	or a
36f5	20 cf 	jr nz,$-$2f	jr nz,$-$00
36f7	f1 	pop af	pop af
36f8	c9 	ret	ret
36f9	c3 23 37 	jp $3723	jp $0000
36fc	c3 91 37 	jp $3791	jp $0000
36ff	c3 c5 25 	jp $25c5	jp $0000
3702	c3 37 3f 	jp $3f37	jp $0000
3705	c3 dc 44 	jp $44dc	jp $0000
3708	c3 ca 44 	jp $44ca	jp $0000
370b	c3 42 18 	jp $1842	jp $0000
370e	c3 15 18 	jp $1815	jp $0000
3711	c3 1e 18 	jp $181e	jp $0000
3714	c3 95 09 	jp $0995	jp $0000
3717	c3 3d 06 	jp $063d	jp $0000
371a	c3 45 06 	jp $0645	jp $0000
371d	c3 4e 06 	jp $064e	jp $0000
3720	c3 35 06 	jp $0635	jp $0000
3723	21 00 54 	ld hl,$5400	ld hl,$0000
3726	f9 	ld sp,hl	ld sp,hl
3727	36 0a 	ld (hl),$0a	ld (hl),$00
3729	2c 	inc l	inc l
372a	36 09 	ld (hl),$09	ld (hl),$00
372c	2c 	inc l	inc l
372d	af 	xor a	xor a
372e	77 	ld (hl),a	ld (hl),a
372f	2c 	inc l	inc l
3730	20 fc 	jr nz,$-$02	jr nz,$-$00
3732	3e 37 	ld a,$37	ld a,$00
3734	32 fe 54 	ld ($54fe),a	ld ($0000),a
3737	21 70 37 	ld hl,$3770	ld hl,$0000
373a	22 ee 54 	ld ($54ee),hl	ld ($0000),hl
373d	cd 82 05 	call $0582	call $0000
3740	ed 53 e2 54 	ld ($54e2),de	ld ($0000),de
3744	22 dc 54 	ld ($54dc),hl	ld ($0000),hl
3747	cd 20 40 	call $4020	call $0000
374a	c2 34 24 	jp nz,$2434	jp nz,$0000
374d	cd dc 44 	call $44dc	call $0000
3750	42 	ld b,d	ld b,d
3751	42 	ld b,d	ld b,d
3752	43 	ld b,e	ld b,e
3753	20 42 	jr nz,$+$44	jr nz,$+$00
3755	41 	ld b,c	ld b,c
3756	53 	ld d,e	ld d,e
3757	49 43 	ld.lis b,e	ld.lis b,e
3759	20 28 	jr nz,$+$2a	jr nz,$+$00
375b	5a 	ld e,d	ld e,d
375c	38 30 	jr c,$+$32	jr c,$+$00
375e	29 	add hl,hl	add hl,hl
375f	20 56 	jr nz,$+$58	jr nz,$+$00
3761	65 	ld h,l	ld h,l
3762	72 	ld (hl),d	ld (hl),d
3763	73 	ld (hl),e	ld (hl),e
3764	69 	ld l,c	ld l,c
3765	6f 	ld l,a	ld l,a
3766	6e 	ld l,(hl)	ld l,(hl)
3767	20 35 	jr nz,$+$37	jr nz,$+$00
3769	2e 30 	ld l,$30	ld l,$00
376b	30 20 	jr nc,$+$22	jr nc,$+$00
376d	20 0d 	jr nz,$+$0f	jr nz,$+$00
376f	0a 	ld a,(bc)	ld a,(bc)
3770	28 43 	jr z,$+$45	jr z,$+$00
3772	29 	add hl,hl	add hl,hl
3773	20 43 	jr nz,$+$45	jr nz,$+$00
3775	6f 	ld l,a	ld l,a
3776	70 	ld (hl),b	ld (hl),b
3777	79 	ld a,c	ld a,c
3778	72 	ld (hl),d	ld (hl),d
3779	69 	ld l,c	ld l,c
377a	67 	ld h,a	ld h,a
377b	68 	ld l,b	ld l,b
377c	74 	ld (hl),h	ld (hl),h
377d	20 52 	jr nz,$+$54	jr nz,$+$00
377f	2e 54 	ld l,$54	ld l,$00
3781	2e 52 	ld l,$52	ld l,$00
3783	75 	ld (hl),l	ld (hl),l
3784	73 	ld (hl),e	ld (hl),e
3785	73 	ld (hl),e	ld (hl),e
3786	65 	ld h,l	ld h,l
3787	6c 	ld l,h	ld l,h
3788	6c 	ld l,h	ld l,h
3789	20 32 	jr nz,$+$34	jr nz,$+$00
378b	30 32 	jr nc,$+$34	jr nc,$+$00
378d	34 	inc (hl)	inc (hl)
378e	0d 	dec c	dec c
378f	0a 	ld a,(bc)	ld a,(bc)
3790	00 	nop	nop
3791	f6 37 	or $37	or $00
3793	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
3797	cd 91 05 	call $0591	call $0000
379a	21 fe 54 	ld hl,$54fe	ld hl,$0000
379d	7e 	ld a,(hl)	ld a,(hl)
379e	e6 0f 	and $0f	and $00
37a0	f6 30 	or $30	or $00
37a2	77 	ld (hl),a	ld (hl),a
37a3	ed 62 	sbc hl,hl	sbc hl,hl
37a5	22 ea 54 	ld ($54ea),hl	ld ($0000),hl
37a8	22 ec 54 	ld ($54ec),hl	ld ($0000),hl
37ab	22 f4 54 	ld ($54f4),hl	ld ($0000),hl
37ae	2a e8 54 	ld hl,($54e8)	ld hl,($0000)
37b1	e5 	push hl	push hl
37b2	7c 	ld a,h	ld a,h
37b3	b5 	or l	or l
37b4	28 17 	jr z,$+$19	jr z,$+$00
37b6	e5 	push hl	push hl
37b7	cd 78 41 	call $4178	call $0000
37ba	e1 	pop hl	pop hl
37bb	ed 4b ff 54 	ld bc,($54ff)	ld bc,($0000)
37bf	06 00 	ld b,$00	ld b,$00
37c1	09 	add hl,bc	add hl,bc
37c2	da 91 43 	jp c,$4391	jp c,$0000
37c5	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
37c8	3e 20 	ld a,$20	ld a,$00
37ca	cd e4 40 	call $40e4	call $0000
37cd	21 00 52 	ld hl,$5200	ld hl,$0000
37d0	cd c9 05 	call $05c9	call $0000
37d3	af 	xor a	xor a
37d4	32 fb 54 	ld ($54fb),a	ld ($0000),a
37d7	fd 21 00 52 	ld iy,$5200	ld iy,$0000
37db	21 c3 3b 	ld hl,$3bc3	ld hl,$0000
37de	cd 88 3f 	call $3f88	call $0000
37e1	e1 	pop hl	pop hl
37e2	20 19 	jr nz,$+$1b	jr nz,$+$00
37e4	87 	add a,a	add a,a
37e5	4f 	ld c,a	ld c,a
37e6	7c 	ld a,h	ld a,h
37e7	b5 	or l	or l
37e8	20 0f 	jr nz,$+$11	jr nz,$+$00
37ea	47 	ld b,a	ld b,a
37eb	21 f3 3b 	ld hl,$3bf3	ld hl,$0000
37ee	09 	add hl,bc	add hl,bc
37ef	7e 	ld a,(hl)	ld a,(hl)
37f0	23 	inc hl	inc hl
37f1	66 	ld h,(hl)	ld h,(hl)
37f2	6f 	ld l,a	ld l,a
37f3	fd 23 	inc iy	inc iy
37f5	cd ed 44 	call $44ed	call $0000
37f8	e9 	jp (hl)	jp (hl)
37f9	fd 21 00 52 	ld iy,$5200	ld iy,$0000
37fd	7c 	ld a,h	ld a,h
37fe	b5 	or l	or l
37ff	cc 6c 43 	call z,$436c	call z,$0000
3802	cd ed 44 	call $44ed	call $0000
3805	11 00 53 	ld de,$5300	ld de,$0000
3808	0e 01 	ld c,$01	ld c,$00
380a	e5 	push hl	push hl
380b	cd fa 43 	call $43fa	call $0000
380e	e1 	pop hl	pop hl
380f	12 	ld (de),a	ld (de),a
3810	af 	xor a	xor a
3811	47 	ld b,a	ld b,a
3812	4b 	ld c,e	ld c,e
3813	13 	inc de	inc de
3814	12 	ld (de),a	ld (de),a
3815	7c 	ld a,h	ld a,h
3816	b5 	or l	or l
3817	fd 21 00 53 	ld iy,$5300	ld iy,$0000
381b	ca 7b 24 	jp z,$247b	jp z,$0000
381e	c5 	push bc	push bc
381f	cd 25 41 	call $4125	call $0000
3822	cc cb 3f 	call z,$3fcb	call z,$0000
3825	c1 	pop bc	pop bc
3826	79 	ld a,c	ld a,c
3827	b7 	or a	or a
3828	28 39 	jr z,$+$3b	jr z,$+$00
382a	c6 04 	add a,$04	add a,$00
382c	4f 	ld c,a	ld c,a
382d	d5 	push de	push de
382e	c5 	push bc	push bc
382f	eb 	ex de,hl	ex de,hl
3830	c5 	push bc	push bc
3831	cd 07 40 	call $4007	call $0000
3834	c1 	pop bc	pop bc
3835	e5 	push hl	push hl
3836	09 	add hl,bc	add hl,bc
3837	e5 	push hl	push hl
3838	24 	inc h	inc h
3839	af 	xor a	xor a
383a	ed 72 	sbc hl,sp	sbc hl,sp
383c	e1 	pop hl	pop hl
383d	d2 26 3f 	jp nc,$3f26	jp nc,$0000
3840	e3 	ex (sp),hl	ex (sp),hl
3841	e5 	push hl	push hl
3842	23 	inc hl	inc hl
3843	b7 	or a	or a
3844	ed 52 	sbc hl,de	sbc hl,de
3846	44 	ld b,h	ld b,h
3847	4d 	ld c,l	ld c,l
3848	e1 	pop hl	pop hl
3849	d1 	pop de	pop de
384a	28 02 	jr z,$+$04	jr z,$+$00
384c	ed b8 	lddr	lddr
384e	c1 	pop bc	pop bc
384f	d1 	pop de	pop de
3850	23 	inc hl	inc hl
3851	71 	ld (hl),c	ld (hl),c
3852	23 	inc hl	inc hl
3853	73 	ld (hl),e	ld (hl),e
3854	23 	inc hl	inc hl
3855	72 	ld (hl),d	ld (hl),d
3856	23 	inc hl	inc hl
3857	11 00 53 	ld de,$5300	ld de,$0000
385a	eb 	ex de,hl	ex de,hl
385b	0d 	dec c	dec c
385c	0d 	dec c	dec c
385d	0d 	dec c	dec c
385e	ed b0 	ldir	ldir
3860	cd fc 3f 	call $3ffc	call $0000
3863	c3 92 37 	jp $3792	jp $0000
3866	80 	add a,b	add a,b
3867	41 	ld b,c	ld b,c
3868	4e 	ld c,(hl)	ld c,(hl)
3869	44 	ld b,h	ld b,h
386a	94 	sub h	sub h
386b	41 	ld b,c	ld b,c
386c	42 	ld b,d	ld b,d
386d	53 	ld d,e	ld d,e
386e	95 	sub l	sub l
386f	41 	ld b,c	ld b,c
3870	43 	ld b,e	ld b,e
3871	53 	ld d,e	ld d,e
3872	96 	sub (hl)	sub (hl)
3873	41 	ld b,c	ld b,c
3874	44 	ld b,h	ld b,h
3875	56 	ld d,(hl)	ld d,(hl)
3876	41 	ld b,c	ld b,c
3877	4c 	ld c,h	ld c,h
3878	97 	sub a	sub a
3879	41 	ld b,c	ld b,c
387a	53 	ld d,e	ld d,e
387b	43 	ld b,e	ld b,e
387c	98 	sbc a,b	sbc a,b
387d	41 	ld b,c	ld b,c
387e	53 	ld d,e	ld d,e
387f	4e 	ld c,(hl)	ld c,(hl)
3880	99 	sbc a,c	sbc a,c
3881	41 	ld b,c	ld b,c
3882	54 	ld d,h	ld d,h
3883	4e 	ld c,(hl)	ld c,(hl)
3884	9a 	sbc a,d	sbc a,d
3885	42 	ld b,d	ld b,d
3886	47 	ld b,a	ld b,a
3887	45 	ld b,l	ld b,l
3888	54 	ld d,h	ld d,h
3889	20 d5 	jr nz,$-$29	jr nz,$-$00
388b	42 	ld b,d	ld b,d
388c	50 	ld d,b	ld d,b
388d	55 	ld d,l	ld d,l
388e	54 	ld d,h	ld d,h
388f	20 0f 	jr nz,$+$11	jr nz,$+$00
3891	42 	ld b,d	ld b,d
3892	59 	ld e,c	ld e,c
3893	20 fb 	jr nz,$-$03	jr nz,$-$00
3895	43 	ld b,e	ld b,e
3896	4f 	ld c,a	ld c,a
3897	4c 	ld c,h	ld c,h
3898	4f 	ld c,a	ld c,a
3899	55 	ld d,l	ld d,l
389a	52 fb 	ei.sil	ei.sil
389c	43 	ld b,e	ld b,e
389d	4f 	ld c,a	ld c,a
389e	4c 	ld c,h	ld c,h
389f	4f 	ld c,a	ld c,a
38a0	52 d6 43 	sub.sil $43	sub.sil $00
38a3	41 	ld b,c	ld b,c
38a4	4c 	ld c,h	ld c,h
38a5	4c 	ld c,h	ld c,h
38a6	c8 	ret z	ret z
38a7	43 	ld b,e	ld b,e
38a8	41 	ld b,c	ld b,c
38a9	53 	ld d,e	ld d,e
38aa	45 	ld b,l	ld b,l
38ab	d7 	rst $10	rst $00
38ac	43 	ld b,e	ld b,e
38ad	48 	ld c,b	ld c,b
38ae	41 	ld b,c	ld b,c
38af	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
38b1	bd 	cp l	cp l
38b2	43 	ld b,e	ld b,e
38b3	48 	ld c,b	ld c,b
38b4	52 24 	inc.sil h	inc.sil h
38b6	d8 	ret c	ret c
38b7	43 	ld b,e	ld b,e
38b8	4c 	ld c,h	ld c,h
38b9	45 	ld b,l	ld b,l
38ba	41 	ld b,c	ld b,c
38bb	52 20 d9 	jr.sil nz,$-$24	jr.sil nz,$-$00
38be	43 	ld b,e	ld b,e
38bf	4c 	ld c,h	ld c,h
38c0	4f 	ld c,a	ld c,a
38c1	53 	ld d,e	ld d,e
38c2	45 	ld b,l	ld b,l
38c3	20 da 	jr nz,$-$24	jr nz,$-$00
38c5	43 	ld b,e	ld b,e
38c6	4c 	ld c,h	ld c,h
38c7	47 	ld b,a	ld b,a
38c8	20 db 	jr nz,$-$23	jr nz,$-$00
38ca	43 	ld b,e	ld b,e
38cb	4c 	ld c,h	ld c,h
38cc	53 	ld d,e	ld d,e
38cd	20 9b 	jr nz,$-$63	jr nz,$-$00
38cf	43 	ld b,e	ld b,e
38d0	4f 	ld c,a	ld c,a
38d1	53 	ld d,e	ld d,e
38d2	9c 	sbc a,h	sbc a,h
38d3	43 	ld b,e	ld b,e
38d4	4f 	ld c,a	ld c,a
38d5	55 	ld d,l	ld d,l
38d6	4e 	ld c,(hl)	ld c,(hl)
38d7	54 	ld d,h	ld d,h
38d8	20 01 	jr nz,$+$03	jr nz,$+$00
38da	43 	ld b,e	ld b,e
38db	49 	noni.lis	noni.lis
38dc	52 43 	ld.sil b,e	ld.sil b,e
38de	4c 	ld c,h	ld c,h
38df	45 	ld b,l	ld b,l
38e0	dc 44 41 	call c,$4144	call c,$0000
38e3	54 	ld d,h	ld d,h
38e4	41 	ld b,c	ld b,c
38e5	9d 	sbc a,l	sbc a,l
38e6	44 	ld b,h	ld b,h
38e7	45 	ld b,l	ld b,l
38e8	47 	ld b,a	ld b,a
38e9	dd 44 	ld b,ixh	ld b,ixh
38eb	45 	ld b,l	ld b,l
38ec	46 	ld b,(hl)	ld b,(hl)
38ed	81 	add a,c	add a,c
38ee	44 	ld b,h	ld b,h
38ef	49 56 	ld.lis d,(hl)	ld.lis d,(hl)
38f1	de 44 	sbc a,$44	sbc a,$00
38f3	49 4d 	ld.lis c,l	ld.lis c,l
38f5	df 	rst $18	rst $00
38f6	44 	ld b,h	ld b,h
38f7	52 41 	ld.sil b,c	ld.sil b,c
38f9	57 	ld d,a	ld d,a
38fa	e1 	pop hl	pop hl
38fb	45 	ld b,l	ld b,l
38fc	4e 	ld c,(hl)	ld c,(hl)
38fd	44 	ld b,h	ld b,h
38fe	50 	ld d,b	ld d,b
38ff	52 4f 	ld.sil c,a	ld.sil c,a
3901	43 	ld b,e	ld b,e
3902	20 ce 	jr nz,$-$30	jr nz,$-$00
3904	45 	ld b,l	ld b,l
3905	4e 	ld c,(hl)	ld c,(hl)
3906	44 	ld b,h	ld b,h
3907	57 	ld d,a	ld d,a
3908	48 	ld c,b	ld c,b
3909	49 4c 	ld.lis c,h	ld.lis c,h
390b	45 	ld b,l	ld b,l
390c	20 cb 	jr nz,$-$33	jr nz,$-$00
390e	45 	ld b,l	ld b,l
390f	4e 	ld c,(hl)	ld c,(hl)
3910	44 	ld b,h	ld b,h
3911	43 	ld b,e	ld b,e
3912	41 	ld b,c	ld b,c
3913	53 	ld d,e	ld d,e
3914	45 	ld b,l	ld b,l
3915	20 cd 	jr nz,$-$31	jr nz,$-$00
3917	45 	ld b,l	ld b,l
3918	4e 	ld c,(hl)	ld c,(hl)
3919	44 	ld b,h	ld b,h
391a	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
391c	20 e0 	jr nz,$-$1e	jr nz,$-$00
391e	45 	ld b,l	ld b,l
391f	4e 	ld c,(hl)	ld c,(hl)
3920	44 	ld b,h	ld b,h
3921	20 e2 	jr nz,$-$1c	jr nz,$-$00
3923	45 	ld b,l	ld b,l
3924	4e 	ld c,(hl)	ld c,(hl)
3925	56 	ld d,(hl)	ld d,(hl)
3926	45 	ld b,l	ld b,l
3927	4c 	ld c,h	ld c,h
3928	4f 	ld c,a	ld c,a
3929	50 	ld d,b	ld d,b
392a	45 	ld b,l	ld b,l
392b	8b 	adc a,e	adc a,e
392c	45 	ld b,l	ld b,l
392d	4c 	ld c,h	ld c,h
392e	53 	ld d,e	ld d,e
392f	45 	ld b,l	ld b,l
3930	a0 	and b	and b
3931	45 	ld b,l	ld b,l
3932	56 	ld d,(hl)	ld d,(hl)
3933	41 	ld b,c	ld b,c
3934	4c 	ld c,h	ld c,h
3935	9e 	sbc a,(hl)	sbc a,(hl)
3936	45 	ld b,l	ld b,l
3937	52 4c 	ld.sil c,h	ld.sil c,h
3939	20 85 	jr nz,$-$79	jr nz,$-$00
393b	45 	ld b,l	ld b,l
393c	52 	noni.sil	noni.sil
393d	52 4f 	ld.sil c,a	ld.sil c,a
393f	52 c5 	push.sil bc	push.sil bc
3941	45 	ld b,l	ld b,l
3942	4f 	ld c,a	ld c,a
3943	46 	ld b,(hl)	ld b,(hl)
3944	20 82 	jr nz,$-$7c	jr nz,$-$00
3946	45 	ld b,l	ld b,l
3947	4f 	ld c,a	ld c,a
3948	52 9f 	sbc.sil a,a	sbc.sil a,a
394a	45 	ld b,l	ld b,l
394b	52 	noni.sil	noni.sil
394c	52 20 10 	jr.sil nz,$+$13	jr.sil nz,$+$00
394f	45 	ld b,l	ld b,l
3950	58 	ld e,b	ld e,b
3951	49 54 	ld.lis d,h	ld.lis d,h
3953	20 a1 	jr nz,$-$5d	jr nz,$-$00
3955	45 	ld b,l	ld b,l
3956	58 	ld e,b	ld e,b
3957	50 	ld d,b	ld d,b
3958	a2 	and d	and d
3959	45 	ld b,l	ld b,l
395a	58 	ld e,b	ld e,b
395b	54 	ld d,h	ld d,h
395c	20 02 	jr nz,$+$04	jr nz,$+$00
395e	45 	ld b,l	ld b,l
395f	4c 	ld c,h	ld c,h
3960	4c 	ld c,h	ld c,h
3961	49 50 	ld.lis d,b	ld.lis d,b
3963	53 	ld d,e	ld d,e
3964	45 	ld b,l	ld b,l
3965	e3 	ex (sp),hl	ex (sp),hl
3966	46 	ld b,(hl)	ld b,(hl)
3967	4f 	ld c,a	ld c,a
3968	52 a3 	and.sil e	and.sil e
396a	46 	ld b,(hl)	ld b,(hl)
396b	41 	ld b,c	ld b,c
396c	4c 	ld c,h	ld c,h
396d	53 	ld d,e	ld d,e
396e	45 	ld b,l	ld b,l
396f	20 03 	jr nz,$+$05	jr nz,$+$00
3971	46 	ld b,(hl)	ld b,(hl)
3972	49 4c 	ld.lis c,h	ld.lis c,h
3974	4c 	ld c,h	ld c,h
3975	a4 	and h	and h
3976	46 	ld b,(hl)	ld b,(hl)
3977	4e 	ld c,(hl)	ld c,(hl)
3978	e5 	push hl	push hl
3979	47 	ld b,a	ld b,a
397a	4f 	ld c,a	ld c,a
397b	54 	ld d,h	ld d,h
397c	4f 	ld c,a	ld c,a
397d	be 	cp (hl)	cp (hl)
397e	47 	ld b,a	ld b,a
397f	45 	ld b,l	ld b,l
3980	54 	ld d,h	ld d,h
3981	24 	inc h	inc h
3982	a5 	and l	and l
3983	47 	ld b,a	ld b,a
3984	45 	ld b,l	ld b,l
3985	54 	ld d,h	ld d,h
3986	e4 47 4f 	call po,$4f47	call po,$0000
3989	53 	ld d,e	ld d,e
398a	55 	ld d,l	ld d,l
398b	42 	ld b,d	ld b,d
398c	e6 47 	and $47	and $00
398e	43 	ld b,e	ld b,e
398f	4f 	ld c,a	ld c,a
3990	4c 	ld c,h	ld c,h
3991	93 	sub e	sub e
3992	48 	ld c,b	ld c,b
3993	49 4d 	ld.lis c,l	ld.lis c,l
3995	45 	ld b,l	ld b,l
3996	4d 	ld c,l	ld c,l
3997	20 e8 	jr nz,$-$16	jr nz,$-$00
3999	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
399b	50 	ld d,b	ld d,b
399c	55 	ld d,l	ld d,l
399d	54 	ld d,h	ld d,h
399e	e7 	rst $20	rst $00
399f	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
39a1	bf 	cp a	cp a
39a2	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39a4	4b 	ld c,e	ld c,e
39a5	45 	ld b,l	ld b,l
39a6	59 	ld e,c	ld e,c
39a7	24 	inc h	inc h
39a8	a6 	and (hl)	and (hl)
39a9	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39ab	4b 	ld c,e	ld c,e
39ac	45 	ld b,l	ld b,l
39ad	59 	ld e,c	ld e,c
39ae	a8 	xor b	xor b
39af	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39b1	54 	ld d,h	ld d,h
39b2	a7 	and a	and a
39b3	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39b5	53 	ld d,e	ld d,e
39b6	54 	ld d,h	ld d,h
39b7	52 28 0c 	jr.sil z,$+$0f	jr.sil z,$+$00
39ba	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39bc	53 	ld d,e	ld d,e
39bd	54 	ld d,h	ld d,h
39be	41 	ld b,c	ld b,c
39bf	4c 	ld c,h	ld c,h
39c0	4c 	ld c,h	ld c,h
39c1	86 	add a,(hl)	add a,(hl)
39c2	4c 	ld c,h	ld c,h
39c3	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
39c5	45 	ld b,l	ld b,l
39c6	92 	sub d	sub d
39c7	4c 	ld c,h	ld c,h
39c8	4f 	ld c,a	ld c,a
39c9	4d 	ld c,l	ld c,l
39ca	45 	ld b,l	ld b,l
39cb	4d 	ld c,l	ld c,l
39cc	20 ea 	jr nz,$-$14	jr nz,$-$00
39ce	4c 	ld c,h	ld c,h
39cf	4f 	ld c,a	ld c,a
39d0	43 	ld b,e	ld b,e
39d1	41 	ld b,c	ld b,c
39d2	4c 	ld c,h	ld c,h
39d3	c0 	ret nz	ret nz
39d4	4c 	ld c,h	ld c,h
39d5	45 	ld b,l	ld b,l
39d6	46 	ld b,(hl)	ld b,(hl)
39d7	54 	ld d,h	ld d,h
39d8	24 	inc h	inc h
39d9	28 a9 	jr z,$-$55	jr z,$-$00
39db	4c 	ld c,h	ld c,h
39dc	45 	ld b,l	ld b,l
39dd	4e 	ld c,(hl)	ld c,(hl)
39de	e9 	jp (hl)	jp (hl)
39df	4c 	ld c,h	ld c,h
39e0	45 	ld b,l	ld b,l
39e1	54 	ld d,h	ld d,h
39e2	ab 	xor e	xor e
39e3	4c 	ld c,h	ld c,h
39e4	4f 	ld c,a	ld c,a
39e5	47 	ld b,a	ld b,a
39e6	aa 	xor d	xor d
39e7	4c 	ld c,h	ld c,h
39e8	4e 	ld c,(hl)	ld c,(hl)
39e9	c1 	pop bc	pop bc
39ea	4d 	ld c,l	ld c,l
39eb	49 44 	ld.lis b,h	ld.lis b,h
39ed	24 	inc h	inc h
39ee	28 eb 	jr z,$-$13	jr z,$-$00
39f0	4d 	ld c,l	ld c,l
39f1	4f 	ld c,a	ld c,a
39f2	44 	ld b,h	ld b,h
39f3	45 	ld b,l	ld b,l
39f4	83 	add a,e	add a,e
39f5	4d 	ld c,l	ld c,l
39f6	4f 	ld c,a	ld c,a
39f7	44 	ld b,h	ld b,h
39f8	ec 4d 4f 	call pe,$4f4d	call pe,$0000
39fb	56 	ld d,(hl)	ld d,(hl)
39fc	45 	ld b,l	ld b,l
39fd	04 	inc b	inc b
39fe	4d 	ld c,l	ld c,l
39ff	4f 	ld c,a	ld c,a
3a00	55 	ld d,l	ld d,l
3a01	53 	ld d,e	ld d,e
3a02	45 	ld b,l	ld b,l
3a03	ed 4e 	trap	trap
3a05	45 	ld b,l	ld b,l
3a06	58 	ld e,b	ld e,b
3a07	54 	ld d,h	ld d,h
3a08	ac 	xor h	xor h
3a09	4e 	ld c,(hl)	ld c,(hl)
3a0a	4f 	ld c,a	ld c,a
3a0b	54 	ld d,h	ld d,h
3a0c	ee 4f 	xor $4f	xor $00
3a0e	4e 	ld c,(hl)	ld c,(hl)
3a0f	87 	add a,a	add a,a
3a10	4f 	ld c,a	ld c,a
3a11	46 	ld b,(hl)	ld b,(hl)
3a12	46 	ld b,(hl)	ld b,(hl)
3a13	20 ca 	jr nz,$-$34	jr nz,$-$00
3a15	4f 	ld c,a	ld c,a
3a16	46 	ld b,(hl)	ld b,(hl)
3a17	20 05 	jr nz,$+$07	jr nz,$+$00
3a19	4f 	ld c,a	ld c,a
3a1a	52 	noni.sil	noni.sil
3a1b	49 47 	ld.lis b,a	ld.lis b,a
3a1d	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a1f	84 	add a,h	add a,h
3a20	4f 	ld c,a	ld c,a
3a21	52 8e 	adc.sil a,(hl)	adc.sil a,(hl)
3a23	4f 	ld c,a	ld c,a
3a24	50 	ld d,b	ld d,b
3a25	45 	ld b,l	ld b,l
3a26	4e 	ld c,(hl)	ld c,(hl)
3a27	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a29	ae 	xor (hl)	xor (hl)
3a2a	4f 	ld c,a	ld c,a
3a2b	50 	ld d,b	ld d,b
3a2c	45 	ld b,l	ld b,l
3a2d	4e 	ld c,(hl)	ld c,(hl)
3a2e	4f 	ld c,a	ld c,a
3a2f	55 	ld d,l	ld d,l
3a30	54 	ld d,h	ld d,h
3a31	ad 	xor l	xor l
3a32	4f 	ld c,a	ld c,a
3a33	50 	ld d,b	ld d,b
3a34	45 	ld b,l	ld b,l
3a35	4e 	ld c,(hl)	ld c,(hl)
3a36	55 	ld d,l	ld d,l
3a37	50 	ld d,b	ld d,b
3a38	ff 	rst $38	rst $00
3a39	4f 	ld c,a	ld c,a
3a3a	53 	ld d,e	ld d,e
3a3b	43 	ld b,e	ld b,e
3a3c	4c 	ld c,h	ld c,h
3a3d	49 cc 4f 54 	call.lis z,$544f	call.lis z,$0000
3a41	48 	ld c,b	ld c,b
3a42	45 	ld b,l	ld b,l
3a43	52 57 	ld.sil d,a	ld.sil d,a
3a45	49 53 	ld.lis d,e	ld.lis d,e
3a47	45 	ld b,l	ld b,l
3a48	f1 	pop af	pop af
3a49	50 	ld d,b	ld d,b
3a4a	52 	noni.sil	noni.sil
3a4b	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a4d	54 	ld d,h	ld d,h
3a4e	90 	sub b	sub b
3a4f	50 	ld d,b	ld d,b
3a50	41 	ld b,c	ld b,c
3a51	47 	ld b,a	ld b,a
3a52	45 	ld b,l	ld b,l
3a53	20 8f 	jr nz,$-$6f	jr nz,$-$00
3a55	50 	ld d,b	ld d,b
3a56	54 	ld d,h	ld d,h
3a57	52 20 af 	jr.sil nz,$-$4e	jr.sil nz,$-$00
3a5a	50 	ld d,b	ld d,b
3a5b	49 20 f0 	jr.lis nz,$-$0d	jr.lis nz,$-$00
3a5e	50 	ld d,b	ld d,b
3a5f	4c 	ld c,h	ld c,h
3a60	4f 	ld c,a	ld c,a
3a61	54 	ld d,h	ld d,h
3a62	b0 	or b	or b
3a63	50 	ld d,b	ld d,b
3a64	4f 	ld c,a	ld c,a
3a65	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a67	54 	ld d,h	ld d,h
3a68	28 f2 	jr z,$-$0c	jr z,$-$00
3a6a	50 	ld d,b	ld d,b
3a6b	52 4f 	ld.sil c,a	ld.sil c,a
3a6d	43 	ld b,e	ld b,e
3a6e	b1 	or c	or c
3a6f	50 	ld d,b	ld d,b
3a70	4f 	ld c,a	ld c,a
3a71	53 	ld d,e	ld d,e
3a72	20 0e 	jr nz,$+$10	jr nz,$+$00
3a74	50 	ld d,b	ld d,b
3a75	55 	ld d,l	ld d,l
3a76	54 	ld d,h	ld d,h
3a77	06 51 	ld b,$51	ld b,$00
3a79	55 	ld d,l	ld d,l
3a7a	49 54 	ld.lis d,h	ld.lis d,h
3a7c	20 f8 	jr nz,$-$06	jr nz,$-$00
3a7e	52 45 	ld.sil b,l	ld.sil b,l
3a80	54 	ld d,h	ld d,h
3a81	55 	ld d,l	ld d,l
3a82	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3a84	20 f5 	jr nz,$-$09	jr nz,$-$00
3a86	52 45 	ld.sil b,l	ld.sil b,l
3a88	50 	ld d,b	ld d,b
3a89	45 	ld b,l	ld b,l
3a8a	41 	ld b,c	ld b,c
3a8b	54 	ld d,h	ld d,h
3a8c	f6 52 	or $52	or $00
3a8e	45 	ld b,l	ld b,l
3a8f	50 	ld d,b	ld d,b
3a90	4f 	ld c,a	ld c,a
3a91	52 54 	ld.sil d,h	ld.sil d,h
3a93	20 f3 	jr nz,$-$0b	jr nz,$-$00
3a95	52 45 	ld.sil b,l	ld.sil b,l
3a97	41 	ld b,c	ld b,c
3a98	44 	ld b,h	ld b,h
3a99	f4 52 45 	call p,$4552	call p,$0000
3a9c	4d 	ld c,l	ld c,l
3a9d	f9 	ld sp,hl	ld sp,hl
3a9e	52 55 	ld.sil d,l	ld.sil d,l
3aa0	4e 	ld c,(hl)	ld c,(hl)
3aa1	20 b2 	jr nz,$-$4c	jr nz,$-$00
3aa3	52 41 	ld.sil b,c	ld.sil b,c
3aa5	44 	ld b,h	ld b,h
3aa6	f7 	rst $30	rst $00
3aa7	52 45 	ld.sil b,l	ld.sil b,l
3aa9	53 	ld d,e	ld d,e
3aaa	54 	ld d,h	ld d,h
3aab	4f 	ld c,a	ld c,a
3aac	52 45 	ld.sil b,l	ld.sil b,l
3aae	c2 52 49 	jp nz,$4952	jp nz,$0000
3ab1	47 	ld b,a	ld b,a
3ab2	48 	ld c,b	ld c,b
3ab3	54 	ld d,h	ld d,h
3ab4	24 	inc h	inc h
3ab5	28 b3 	jr z,$-$4b	jr z,$-$00
3ab7	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3ab9	44 	ld b,h	ld b,h
3aba	20 07 	jr nz,$+$09	jr nz,$+$00
3abc	52 45 	ld.sil b,l	ld.sil b,l
3abe	43 	ld b,e	ld b,e
3abf	54 	ld d,h	ld d,h
3ac0	41 	ld b,c	ld b,c
3ac1	4e 	ld c,(hl)	ld c,(hl)
3ac2	47 	ld b,a	ld b,a
3ac3	4c 	ld c,h	ld c,h
3ac4	45 	ld b,l	ld b,l
3ac5	88 	adc a,b	adc a,b
3ac6	53 	ld d,e	ld d,e
3ac7	54 	ld d,h	ld d,h
3ac8	45 	ld b,l	ld b,l
3ac9	50 	ld d,b	ld d,b
3aca	b4 	or h	or h
3acb	53 	ld d,e	ld d,e
3acc	47 	ld b,a	ld b,a
3acd	4e 	ld c,(hl)	ld c,(hl)
3ace	b5 	or l	or l
3acf	53 	ld d,e	ld d,e
3ad0	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3ad2	b6 	or (hl)	or (hl)
3ad3	53 	ld d,e	ld d,e
3ad4	51 	ld d,c	ld d,c
3ad5	52 89 	adc.sil a,c	adc.sil a,c
3ad7	53 	ld d,e	ld d,e
3ad8	50 	ld d,b	ld d,b
3ad9	43 	ld b,e	ld b,e
3ada	c3 53 54 	jp $5453	jp $0000
3add	52 24 	inc.sil h	inc.sil h
3adf	c4 53 54 	call nz,$5453	call nz,$0000
3ae2	52 	noni.sil	noni.sil
3ae3	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3ae5	47 	ld b,a	ld b,a
3ae6	24 	inc h	inc h
3ae7	28 d4 	jr z,$-$2a	jr z,$-$00
3ae9	53 	ld d,e	ld d,e
3aea	4f 	ld c,a	ld c,a
3aeb	55 	ld d,l	ld d,l
3aec	4e 	ld c,(hl)	ld c,(hl)
3aed	44 	ld b,h	ld b,h
3aee	fa 53 54 	jp m,$5453	jp m,$0000
3af1	4f 	ld c,a	ld c,a
3af2	50 	ld d,b	ld d,b
3af3	20 c6 	jr nz,$-$38	jr nz,$-$00
3af5	53 	ld d,e	ld d,e
3af6	55 	ld d,l	ld d,l
3af7	4d 	ld c,l	ld c,l
3af8	08 	ex af,af'	ex af,af'
3af9	53 	ld d,e	ld d,e
3afa	57 	ld d,a	ld d,a
3afb	41 	ld b,c	ld b,c
3afc	50 	ld d,b	ld d,b
3afd	09 	add hl,bc	add hl,bc
3afe	53 	ld d,e	ld d,e
3aff	59 	ld e,c	ld e,c
3b00	53 	ld d,e	ld d,e
3b01	b7 	or a	or a
3b02	54 	ld d,h	ld d,h
3b03	41 	ld b,c	ld b,c
3b04	4e 	ld c,(hl)	ld c,(hl)
3b05	8a 	adc a,d	adc a,d
3b06	54 	ld d,h	ld d,h
3b07	41 	ld b,c	ld b,c
3b08	42 	ld b,d	ld b,d
3b09	28 8c 	jr z,$-$72	jr z,$-$00
3b0b	54 	ld d,h	ld d,h
3b0c	48 	ld c,b	ld c,b
3b0d	45 	ld b,l	ld b,l
3b0e	4e 	ld c,(hl)	ld c,(hl)
3b0f	91 	sub c	sub c
3b10	54 	ld d,h	ld d,h
3b11	49 4d 	ld.lis c,l	ld.lis c,l
3b13	45 	ld b,l	ld b,l
3b14	20 0a 	jr nz,$+$0c	jr nz,$+$00
3b16	54 	ld d,h	ld d,h
3b17	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b19	54 	ld d,h	ld d,h
3b1a	b8 	cp b	cp b
3b1b	54 	ld d,h	ld d,h
3b1c	4f 	ld c,a	ld c,a
3b1d	fc 54 52 	call m,$5254	call m,$0000
3b20	41 	ld b,c	ld b,c
3b21	43 	ld b,e	ld b,e
3b22	45 	ld b,l	ld b,l
3b23	b9 	cp c	cp c
3b24	54 	ld d,h	ld d,h
3b25	52 55 	ld.sil d,l	ld.sil d,l
3b27	45 	ld b,l	ld b,l
3b28	20 fd 	jr nz,$-$01	jr nz,$-$00
3b2a	55 	ld d,l	ld d,l
3b2b	4e 	ld c,(hl)	ld c,(hl)
3b2c	54 	ld d,h	ld d,h
3b2d	49 4c 	ld.lis c,h	ld.lis c,h
3b2f	ba 	cp d	cp d
3b30	55 	ld d,l	ld d,l
3b31	53 	ld d,e	ld d,e
3b32	52 ef 	rst.sil $28	rst.sil $00
3b34	56 	ld d,(hl)	ld d,(hl)
3b35	44 	ld b,h	ld b,h
3b36	55 	ld d,l	ld d,l
3b37	bb 	cp e	cp e
3b38	56 	ld d,(hl)	ld d,(hl)
3b39	41 	ld b,c	ld b,c
3b3a	4c 	ld c,h	ld c,h
3b3b	bc 	cp h	cp h
3b3c	56 	ld d,(hl)	ld d,(hl)
3b3d	50 	ld d,b	ld d,b
3b3e	4f 	ld c,a	ld c,a
3b3f	53 	ld d,e	ld d,e
3b40	20 c7 	jr nz,$-$37	jr nz,$-$00
3b42	57 	ld d,a	ld d,a
3b43	48 	ld c,b	ld c,b
3b44	49 4c 	ld.lis c,h	ld.lis c,h
3b46	45 	ld b,l	ld b,l
3b47	c9 	ret	ret
3b48	57 	ld d,a	ld d,a
3b49	48 	ld c,b	ld c,b
3b4a	45 	ld b,l	ld b,l
3b4b	4e 	ld c,(hl)	ld c,(hl)
3b4c	0b 	dec bc	dec bc
3b4d	57 	ld d,a	ld d,a
3b4e	41 	ld b,c	ld b,c
3b4f	49 54 	ld.lis d,h	ld.lis d,h
3b51	20 fe 	jr nz,$	jr nz,$
3b53	57 	ld d,a	ld d,a
3b54	49 44 	ld.lis b,h	ld.lis b,h
3b56	54 	ld d,h	ld d,h
3b57	48 	ld c,b	ld c,b
3b58	cf 	rst $08	rst $00
3b59	50 	ld d,b	ld d,b
3b5a	54 	ld d,h	ld d,h
3b5b	52 d1 	pop.sil de	pop.sil de
3b5d	54 	ld d,h	ld d,h
3b5e	49 4d 	ld.lis c,l	ld.lis c,l
3b60	45 	ld b,l	ld b,l
3b61	d3 48 	out ($48),a	out ($00),a
3b63	49 4d 	ld.lis c,l	ld.lis c,l
3b65	45 	ld b,l	ld b,l
3b66	4d 	ld c,l	ld c,l
3b67	d2 4c 4f 	jp nc,$4f4c	jp nc,$0000
3b6a	4d 	ld c,l	ld c,l
3b6b	45 	ld b,l	ld b,l
3b6c	4d 	ld c,l	ld c,l
3b6d	d0 	ret nc	ret nc
3b6e	50 	ld d,b	ld d,b
3b6f	41 	ld b,c	ld b,c
3b70	47 	ld b,a	ld b,a
3b71	45 	ld b,l	ld b,l
3b72	11 4d 69 	ld de,$694d	ld de,$0000
3b75	73 	ld (hl),e	ld (hl),e
3b76	73 	ld (hl),e	ld (hl),e
3b77	69 	ld l,c	ld l,c
3b78	6e 	ld l,(hl)	ld l,(hl)
3b79	67 	ld h,a	ld h,a
3b7a	20 12 	jr nz,$+$14	jr nz,$+$00
3b7c	4e 	ld c,(hl)	ld c,(hl)
3b7d	6f 	ld l,a	ld l,a
3b7e	20 73 	jr nz,$+$75	jr nz,$+$00
3b80	75 	ld (hl),l	ld (hl),l
3b81	63 	ld h,e	ld h,e
3b82	68 	ld l,b	ld l,b
3b83	20 13 	jr nz,$+$15	jr nz,$+$00
3b85	42 	ld b,d	ld b,d
3b86	61 	ld h,c	ld h,c
3b87	64 	ld h,h	ld h,h
3b88	20 14 	jr nz,$+$16	jr nz,$+$00
3b8a	20 72 	jr nz,$+$74	jr nz,$+$00
3b8c	61 	ld h,c	ld h,c
3b8d	6e 	ld l,(hl)	ld l,(hl)
3b8e	67 	ld h,a	ld h,a
3b8f	65 	ld h,l	ld h,l
3b90	15 	dec d	dec d
3b91	76 	halt	halt
3b92	61 	ld h,c	ld h,c
3b93	72 	ld (hl),d	ld (hl),d
3b94	69 	ld l,c	ld l,c
3b95	61 	ld h,c	ld h,c
3b96	62 	ld h,d	ld h,d
3b97	6c 	ld l,h	ld l,h
3b98	65 	ld h,l	ld h,l
3b99	16 4f 	ld d,$4f	ld d,$00
3b9b	75 	ld (hl),l	ld (hl),l
3b9c	74 	ld (hl),h	ld (hl),h
3b9d	20 6f 	jr nz,$+$71	jr nz,$+$00
3b9f	66 	ld h,(hl)	ld h,(hl)
3ba0	17 	rla	rla
3ba1	4e 	ld c,(hl)	ld c,(hl)
3ba2	6f 	ld l,a	ld l,a
3ba3	20 18 	jr nz,$+$1a	jr nz,$+$00
3ba5	20 73 	jr nz,$+$75	jr nz,$+$00
3ba7	70 	ld (hl),b	ld (hl),b
3ba8	61 	ld h,c	ld h,c
3ba9	63 	ld h,e	ld h,e
3baa	65 	ld h,l	ld h,l
3bab	19 	add hl,de	add hl,de
3bac	4e 	ld c,(hl)	ld c,(hl)
3bad	6f 	ld l,a	ld l,a
3bae	74 	ld (hl),h	ld (hl),h
3baf	20 69 	jr nz,$+$6b	jr nz,$+$00
3bb1	6e 	ld l,(hl)	ld l,(hl)
3bb2	20 61 	jr nz,$+$63	jr nz,$+$00
3bb4	20 1a 	jr nz,$+$1c	jr nz,$+$00
3bb6	20 6c 	jr nz,$+$6e	jr nz,$+$00
3bb8	6f 	ld l,a	ld l,a
3bb9	6f 	ld l,a	ld l,a
3bba	70 	ld (hl),b	ld (hl),b
3bbb	1b 	dec de	dec de
3bbc	20 6e 	jr nz,$+$70	jr nz,$+$00
3bbe	6f 	ld l,a	ld l,a
3bbf	74 	ld (hl),h	ld (hl),h
3bc0	20 ff 	jr nz,$+$01	jr nz,$+$00
3bc2	ff 	rst $38	rst $00
3bc3	80 	add a,b	add a,b
3bc4	41 	ld b,c	ld b,c
3bc5	55 	ld d,l	ld d,l
3bc6	54 	ld d,h	ld d,h
3bc7	4f 	ld c,a	ld c,a
3bc8	81 	add a,c	add a,c
3bc9	44 	ld b,h	ld b,h
3bca	45 	ld b,l	ld b,l
3bcb	4c 	ld c,h	ld c,h
3bcc	45 	ld b,l	ld b,l
3bcd	54 	ld d,h	ld d,h
3bce	45 	ld b,l	ld b,l
3bcf	82 	add a,d	add a,d
3bd0	4c 	ld c,h	ld c,h
3bd1	49 53 	ld.lis d,e	ld.lis d,e
3bd3	54 	ld d,h	ld d,h
3bd4	83 	add a,e	add a,e
3bd5	4c 	ld c,h	ld c,h
3bd6	4f 	ld c,a	ld c,a
3bd7	41 	ld b,c	ld b,c
3bd8	44 	ld b,h	ld b,h
3bd9	84 	add a,h	add a,h
3bda	4e 	ld c,(hl)	ld c,(hl)
3bdb	45 	ld b,l	ld b,l
3bdc	57 	ld d,a	ld d,a
3bdd	20 85 	jr nz,$-$79	jr nz,$-$00
3bdf	4f 	ld c,a	ld c,a
3be0	4c 	ld c,h	ld c,h
3be1	44 	ld b,h	ld b,h
3be2	20 86 	jr nz,$-$78	jr nz,$-$00
3be4	52 45 	ld.sil b,l	ld.sil b,l
3be6	4e 	ld c,(hl)	ld c,(hl)
3be7	55 	ld d,l	ld d,l
3be8	4d 	ld c,l	ld c,l
3be9	42 	ld b,d	ld b,d
3bea	45 	ld b,l	ld b,l
3beb	52 87 	add.sil a,a	add.sil a,a
3bed	53 	ld d,e	ld d,e
3bee	41 	ld b,c	ld b,c
3bef	56 	ld d,(hl)	ld d,(hl)
3bf0	45 	ld b,l	ld b,l
3bf1	ff 	rst $38	rst $00
3bf2	ff 	rst $38	rst $00
3bf3	c5 	push bc	push bc
3bf4	3e 68 	ld a,$68	ld a,$00
3bf6	3d 	dec a	dec a
3bf7	90 	sub b	sub b
3bf8	3d 	dec a	dec a
3bf9	e4 3e df 	call po,$df3e	call po,$0000
3bfc	3e f2 	ld a,$f2	ld a,$00
3bfe	3e 15 	ld a,$15	ld a,$00
3c00	3e 0b 	ld a,$0b	ld a,$00
3c02	3f 	ccf	ccf
3c03	17 	rla	rla
3c04	72 	ld (hl),d	ld (hl),d
3c05	6f 	ld l,a	ld l,a
3c06	6f 	ld l,a	ld l,a
3c07	6d 	ld l,l	ld l,l
3c08	00 	nop	nop
3c09	16 14 	ld d,$14	ld d,$00
3c0b	00 	nop	nop
3c0c	00 	nop	nop
3c0d	4d 	ld c,l	ld c,l
3c0e	75 	ld (hl),l	ld (hl),l
3c0f	6c 	ld l,h	ld l,h
3c10	74 	ld (hl),h	ld (hl),h
3c11	69 	ld l,c	ld l,c
3c12	70 	ld (hl),b	ld (hl),b
3c13	6c 	ld l,h	ld l,h
3c14	65 	ld h,l	ld h,l
3c15	20 6c 	jr nz,$+$6e	jr nz,$+$00
3c17	61 	ld h,c	ld h,c
3c18	62 	ld h,d	ld h,d
3c19	65 	ld h,l	ld h,l
3c1a	6c 	ld l,h	ld l,h
3c1b	00 	nop	nop
3c1c	4d 	ld c,l	ld c,l
3c1d	69 	ld l,c	ld l,c
3c1e	73 	ld (hl),e	ld (hl),e
3c1f	74 	ld (hl),h	ld (hl),h
3c20	61 	ld h,c	ld h,c
3c21	6b 	ld l,e	ld l,e
3c22	65 	ld h,l	ld h,l
3c23	00 	nop	nop
3c24	11 2c 00 	ld de,$002c	ld de,$0000
3c27	54 	ld d,h	ld d,h
3c28	79 	ld a,c	ld a,c
3c29	70 	ld (hl),b	ld (hl),b
3c2a	65 	ld h,l	ld h,l
3c2b	20 6d 	jr nz,$+$6f	jr nz,$+$00
3c2d	69 	ld l,c	ld l,c
3c2e	73 	ld (hl),e	ld (hl),e
3c2f	6d 	ld l,l	ld l,l
3c30	61 	ld h,c	ld h,c
3c31	74 	ld (hl),h	ld (hl),h
3c32	63 	ld h,e	ld h,e
3c33	68 	ld l,b	ld l,b
3c34	00 	nop	nop
3c35	19 	add hl,de	add hl,de
3c36	a4 	and h	and h
3c37	00 	nop	nop
3c38	00 	nop	nop
3c39	11 22 00 	ld de,$0022	ld de,$0000
3c3c	13 	inc de	inc de
3c3d	de 00 	sbc a,$00	sbc a,$00
3c3f	de 18 	sbc a,$18	sbc a,$00
3c41	00 	nop	nop
3c42	19 	add hl,de	add hl,de
3c43	a4 	and h	and h
3c44	20 6f 	jr nz,$+$71	jr nz,$+$00
3c46	72 	ld (hl),d	ld (hl),d
3c47	20 f2 	jr nz,$-$0c	jr nz,$-$00
3c49	00 	nop	nop
3c4a	19 	add hl,de	add hl,de
3c4b	f2 00 13 	jp p,$1300	jp p,$0000
3c4e	75 	ld (hl),l	ld (hl),l
3c4f	73 	ld (hl),e	ld (hl),e
3c50	65 	ld h,l	ld h,l
3c51	20 6f 	jr nz,$+$71	jr nz,$+$00
3c53	66 	ld h,(hl)	ld h,(hl)
3c54	20 61 	jr nz,$+$63	jr nz,$+$00
3c56	72 	ld (hl),d	ld (hl),d
3c57	72 	ld (hl),d	ld (hl),d
3c58	61 	ld h,c	ld h,c
3c59	79 	ld a,c	ld a,c
3c5a	00 	nop	nop
3c5b	13 	inc de	inc de
3c5c	73 	ld (hl),e	ld (hl),e
3c5d	75 	ld (hl),l	ld (hl),l
3c5e	62 	ld h,d	ld h,d
3c5f	73 	ld (hl),e	ld (hl),e
3c60	63 	ld h,e	ld h,e
3c61	72 	ld (hl),d	ld (hl),d
3c62	69 	ld l,c	ld l,c
3c63	70 	ld (hl),b	ld (hl),b
3c64	74 	ld (hl),h	ld (hl),h
3c65	00 	nop	nop
3c66	53 	ld d,e	ld d,e
3c67	79 	ld a,c	ld a,c
3c68	6e 	ld l,(hl)	ld l,(hl)
3c69	74 	ld (hl),h	ld (hl),h
3c6a	61 	ld h,c	ld h,c
3c6b	78 	ld a,b	ld a,b
3c6c	20 65 	jr nz,$+$67	jr nz,$+$00
3c6e	72 	ld (hl),d	ld (hl),d
3c6f	72 	ld (hl),d	ld (hl),d
3c70	6f 	ld l,a	ld l,a
3c71	72 	ld (hl),d	ld (hl),d
3c72	00 	nop	nop
3c73	45 	ld b,l	ld b,l
3c74	73 	ld (hl),e	ld (hl),e
3c75	63 	ld h,e	ld h,e
3c76	61 	ld h,c	ld h,c
3c77	70 	ld (hl),b	ld (hl),b
3c78	65 	ld h,l	ld h,l
3c79	00 	nop	nop
3c7a	44 	ld b,h	ld b,h
3c7b	69 	ld l,c	ld l,c
3c7c	76 	halt	halt
3c7d	69 	ld l,c	ld l,c
3c7e	73 	ld (hl),e	ld (hl),e
3c7f	69 	ld l,c	ld l,c
3c80	6f 	ld l,a	ld l,a
3c81	6e 	ld l,(hl)	ld l,(hl)
3c82	20 62 	jr nz,$+$64	jr nz,$+$00
3c84	79 	ld a,c	ld a,c
3c85	20 7a 	jr nz,$+$7c	jr nz,$+$00
3c87	65 	ld h,l	ld h,l
3c88	72 	ld (hl),d	ld (hl),d
3c89	6f 	ld l,a	ld l,a
3c8a	00 	nop	nop
3c8b	53 	ld d,e	ld d,e
3c8c	74 	ld (hl),h	ld (hl),h
3c8d	72 	ld (hl),d	ld (hl),d
3c8e	69 	ld l,c	ld l,c
3c8f	6e 	ld l,(hl)	ld l,(hl)
3c90	67 	ld h,a	ld h,a
3c91	20 74 	jr nz,$+$76	jr nz,$+$00
3c93	6f 	ld l,a	ld l,a
3c94	6f 	ld l,a	ld l,a
3c95	20 6c 	jr nz,$+$6e	jr nz,$+$00
3c97	6f 	ld l,a	ld l,a
3c98	6e 	ld l,(hl)	ld l,(hl)
3c99	67 	ld h,a	ld h,a
3c9a	00 	nop	nop
3c9b	4e 	ld c,(hl)	ld c,(hl)
3c9c	75 	ld (hl),l	ld (hl),l
3c9d	6d 	ld l,l	ld l,l
3c9e	62 	ld h,d	ld h,d
3c9f	65 	ld h,l	ld h,l
3ca0	72 	ld (hl),d	ld (hl),d
3ca1	20 74 	jr nz,$+$76	jr nz,$+$00
3ca3	6f 	ld l,a	ld l,a
3ca4	6f 	ld l,a	ld l,a
3ca5	20 62 	jr nz,$+$64	jr nz,$+$00
3ca7	69 	ld l,c	ld l,c
3ca8	67 	ld h,a	ld h,a
3ca9	00 	nop	nop
3caa	2d 	dec l	dec l
3cab	76 	halt	halt
3cac	65 	ld h,l	ld h,l
3cad	20 72 	jr nz,$+$74	jr nz,$+$00
3caf	6f 	ld l,a	ld l,a
3cb0	6f 	ld l,a	ld l,a
3cb1	74 	ld (hl),h	ld (hl),h
3cb2	00 	nop	nop
3cb3	4c 	ld c,h	ld c,h
3cb4	6f 	ld l,a	ld l,a
3cb5	67 	ld h,a	ld h,a
3cb6	14 	inc d	inc d
3cb7	00 	nop	nop
3cb8	41 	ld b,c	ld b,c
3cb9	63 	ld h,e	ld h,e
3cba	63 	ld h,e	ld h,e
3cbb	75 	ld (hl),l	ld (hl),l
3cbc	72 	ld (hl),d	ld (hl),d
3cbd	61 	ld h,c	ld h,c
3cbe	63 	ld h,e	ld h,e
3cbf	79 	ld a,c	ld a,c
3cc0	20 6c 	jr nz,$+$6e	jr nz,$+$00
3cc2	6f 	ld l,a	ld l,a
3cc3	73 	ld (hl),e	ld (hl),e
3cc4	74 	ld (hl),h	ld (hl),h
3cc5	00 	nop	nop
3cc6	45 	ld b,l	ld b,l
3cc7	78 	ld a,b	ld a,b
3cc8	70 	ld (hl),b	ld (hl),b
3cc9	6f 	ld l,a	ld l,a
3cca	6e 	ld l,(hl)	ld l,(hl)
3ccb	65 	ld h,l	ld h,l
3ccc	6e 	ld l,(hl)	ld l,(hl)
3ccd	74 	ld (hl),h	ld (hl),h
3cce	14 	inc d	inc d
3ccf	00 	nop	nop
3cd0	00 	nop	nop
3cd1	12 	ld (de),a	ld (de),a
3cd2	15 	dec d	dec d
3cd3	00 	nop	nop
3cd4	11 29 00 	ld de,$0029	ld de,$0000
3cd7	13 	inc de	inc de
3cd8	68 	ld l,b	ld l,b
3cd9	65 	ld h,l	ld h,l
3cda	78 	ld a,b	ld a,b
3cdb	20 6f 	jr nz,$+$71	jr nz,$+$00
3cdd	72 	ld (hl),d	ld (hl),d
3cde	20 62 	jr nz,$+$64	jr nz,$+$00
3ce0	69 	ld l,c	ld l,c
3ce1	6e 	ld l,(hl)	ld l,(hl)
3ce2	61 	ld h,c	ld h,c
3ce3	72 	ld (hl),d	ld (hl),d
3ce4	79 	ld a,c	ld a,c
3ce5	00 	nop	nop
3ce6	12 	ld (de),a	ld (de),a
3ce7	a4 	and h	and h
3ce8	2f 	cpl	cpl
3ce9	f2 00 13 	jp p,$1300	jp p,$0000
3cec	63 	ld h,e	ld h,e
3ced	61 	ld h,c	ld h,c
3cee	6c 	ld l,h	ld l,h
3cef	6c 	ld l,h	ld l,h
3cf0	00 	nop	nop
3cf1	13 	inc de	inc de
3cf2	61 	ld h,c	ld h,c
3cf3	72 	ld (hl),d	ld (hl),d
3cf4	67 	ld h,a	ld h,a
3cf5	75 	ld (hl),l	ld (hl),l
3cf6	6d 	ld l,l	ld l,l
3cf7	65 	ld h,l	ld h,l
3cf8	6e 	ld l,(hl)	ld l,(hl)
3cf9	74 	ld (hl),h	ld (hl),h
3cfa	73 	ld (hl),e	ld (hl),e
3cfb	00 	nop	nop
3cfc	19 	add hl,de	add hl,de
3cfd	e3 	ex (sp),hl	ex (sp),hl
3cfe	1a 	ld a,(de)	ld a,(de)
3cff	00 	nop	nop
3d00	43 	ld b,e	ld b,e
3d01	61 	ld h,c	ld h,c
3d02	6e 	ld l,(hl)	ld l,(hl)
3d03	27 	daa	daa
3d04	74 	ld (hl),h	ld (hl),h
3d05	20 6d 	jr nz,$+$6f	jr nz,$+$00
3d07	61 	ld h,c	ld h,c
3d08	74 	ld (hl),h	ld (hl),h
3d09	63 	ld h,e	ld h,e
3d0a	68 	ld l,b	ld l,b
3d0b	20 e3 	jr nz,$-$1b	jr nz,$-$00
3d0d	00 	nop	nop
3d0e	13 	inc de	inc de
3d0f	e3 	ex (sp),hl	ex (sp),hl
3d10	20 15 	jr nz,$+$17	jr nz,$+$00
3d12	00 	nop	nop
3d13	00 	nop	nop
3d14	11 b8 00 	ld de,$00b8	ld de,$0000
3d17	00 	nop	nop
3d18	17 	rla	rla
3d19	e4 00 ee 	call po,$ee00	call po,$0000
3d1c	20 73 	jr nz,$+$75	jr nz,$+$00
3d1e	79 	ld a,c	ld a,c
3d1f	6e 	ld l,(hl)	ld l,(hl)
3d20	74 	ld (hl),h	ld (hl),h
3d21	61 	ld h,c	ld h,c
3d22	78 	ld a,b	ld a,b
3d23	00 	nop	nop
3d24	ee 14 	xor $14	xor $00
3d26	00 	nop	nop
3d27	12 	ld (de),a	ld (de),a
3d28	6c 	ld l,h	ld l,h
3d29	69 	ld l,c	ld l,c
3d2a	6e 	ld l,(hl)	ld l,(hl)
3d2b	65 	ld h,l	ld h,l
3d2c	00 	nop	nop
3d2d	16 20 	ld d,$20	ld d,$00
3d2f	dc 00 19 	call c,$1900	call c,$0000
3d32	f5 	push af	push af
3d33	1a 	ld a,(de)	ld a,(de)
3d34	00 	nop	nop
3d35	13 	inc de	inc de
3d36	10 00 	djnz $+$02	djnz $+$00
3d38	11 23 00 	ld de,$0023	ld de,$0000
3d3b	19 	add hl,de	add hl,de
3d3c	c7 	rst $00	rst $00
3d3d	1a 	ld a,(de)	ld a,(de)
3d3e	00 	nop	nop
3d3f	11 cb 00 	ld de,$00cb	ld de,$0000
3d42	ca 1b 6c 	jp z,$6c1b	jp z,$0000
3d45	61 	ld h,c	ld h,c
3d46	73 	ld (hl),e	ld (hl),e
3d47	74 	ld (hl),h	ld (hl),h
3d48	00 	nop	nop
3d49	11 cd 00 	ld de,$00cd	ld de,$0000
3d4c	00 	nop	nop
3d4d	00 	nop	nop
3d4e	00 	nop	nop
3d4f	ee 20 	xor $20	xor $00
3d51	85 	add a,l	add a,l
3d52	1b 	dec de	dec de
3d53	ea 00 dc 	jp pe,$dc00	jp pe,$0000
3d56	1b 	dec de	dec de
3d57	ea 00 e3 	jp pe,$e300	jp pe,$0000
3d5a	f5 	push af	push af
3d5b	c7 	rst $00	rst $00
3d5c	c8 	ret z	ret z
3d5d	8b 	adc a,e	adc a,e
3d5e	c9 	ret	ret
3d5f	cc ed fd 	call z,$fded	call z,$0000
3d62	ce cb 	adc a,$cb	adc a,$00
3d64	cd 8b c9 	call $c98b	call $0000
3d67	cc cd b9 	call z,$b9cd	call z,$0000
3d6a	43 	ld b,e	ld b,e
3d6b	7e 	ld a,(hl)	ld a,(hl)
3d6c	b7 	or a	or a
3d6d	28 79 	jr z,$+$7b	jr z,$+$00
3d6f	23 	inc hl	inc hl
3d70	5e 	ld e,(hl)	ld e,(hl)
3d71	23 	inc hl	inc hl
3d72	56 	ld d,(hl)	ld d,(hl)
3d73	2b 	dec hl	dec hl
3d74	2b 	dec hl	dec hl
3d75	eb 	ex de,hl	ex de,hl
3d76	37 	scf	scf
3d77	ed 42 	sbc hl,bc	sbc hl,bc
3d79	eb 	ex de,hl	ex de,hl
3d7a	30 6c 	jr nc,$+$6e	jr nc,$+$00
3d7c	c5 	push bc	push bc
3d7d	cd cb 3f 	call $3fcb	call $0000
3d80	c1 	pop bc	pop bc
3d81	18 e8 	jr $-$16	jr $-$00
3d83	fd 23 	inc iy	inc iy
3d85	cd 15 18 	call $1815	call $0000
3d88	d9 	exx	exx
3d89	7d 	ld a,l	ld a,l
3d8a	32 fe 54 	ld ($54fe),a	ld ($0000),a
3d8d	c3 92 37 	jp $3792	jp $0000
3d90	fe 4f 	cp $4f	cp $00
3d92	28 ef 	jr z,$-$0f	jr z,$-$00
3d94	0e 01 	ld c,$01	ld c,$00
3d96	11 00 53 	ld de,$5300	ld de,$0000
3d99	cd fa 43 	call $43fa	call $0000
3d9c	12 	ld (de),a	ld (de),a
3d9d	fd 21 00 53 	ld iy,$5300	ld iy,$0000
3da1	cd b9 43 	call $43b9	call $0000
3da4	cd ed 44 	call $44ed	call $0000
3da7	fe e7 	cp $e7	cp $00
3da9	3e 00 	ld a,$00	ld a,$00
3dab	20 15 	jr nz,$+$17	jr nz,$+$00
3dad	fd 23 	inc iy	inc iy
3daf	cd ed 44 	call $44ed	call $0000
3db2	eb 	ex de,hl	ex de,hl
3db3	fd e5 	push iy	push iy
3db5	e1 	pop hl	pop hl
3db6	3e 0d 	ld a,$0d	ld a,$00
3db8	c5 	push bc	push bc
3db9	01 00 01 	ld bc,$0100	ld bc,$0000
3dbc	ed b1 	cpir	cpir
3dbe	79 	ld a,c	ld a,c
3dbf	2f 	cpl	cpl
3dc0	c1 	pop bc	pop bc
3dc1	eb 	ex de,hl	ex de,hl
3dc2	5f 	ld e,a	ld e,a
3dc3	78 	ld a,b	ld a,b
3dc4	b1 	or c	or c
3dc5	20 01 	jr nz,$+$03	jr nz,$+$00
3dc7	0b 	dec bc	dec bc
3dc8	d9 	exx	exx
3dc9	dd 21 fe 54 	ld ix,$54fe	ld ix,$0000
3dcd	1e 00 	ld e,$00	ld e,$00
3dcf	d9 	exx	exx
3dd0	3e 14 	ld a,$14	ld a,$00
3dd2	c5 	push bc	push bc
3dd3	d5 	push de	push de
3dd4	e5 	push hl	push hl
3dd5	08 	ex af,af'	ex af,af'
3dd6	7e 	ld a,(hl)	ld a,(hl)
3dd7	b7 	or a	or a
3dd8	28 0e 	jr z,$+$10	jr z,$+$00
3dda	7b 	ld a,e	ld a,e
3ddb	23 	inc hl	inc hl
3ddc	5e 	ld e,(hl)	ld e,(hl)
3ddd	23 	inc hl	inc hl
3dde	56 	ld d,(hl)	ld d,(hl)
3ddf	2b 	dec hl	dec hl
3de0	2b 	dec hl	dec hl
3de1	d5 	push de	push de
3de2	eb 	ex de,hl	ex de,hl
3de3	37 	scf	scf
3de4	ed 42 	sbc hl,bc	sbc hl,bc
3de6	eb 	ex de,hl	ex de,hl
3de7	d1 	pop de	pop de
3de8	d2 91 37 	jp nc,$3791	jp nc,$0000
3deb	4e 	ld c,(hl)	ld c,(hl)
3dec	47 	ld b,a	ld b,a
3ded	23 	inc hl	inc hl
3dee	23 	inc hl	inc hl
3def	23 	inc hl	inc hl
3df0	0d 	dec c	dec c
3df1	0d 	dec c	dec c
3df2	0d 	dec c	dec c
3df3	0d 	dec c	dec c
3df4	d5 	push de	push de
3df5	e5 	push hl	push hl
3df6	af 	xor a	xor a
3df7	b8 	cp b	cp b
3df8	fd e5 	push iy	push iy
3dfa	d1 	pop de	pop de
3dfb	c4 d4 1d 	call nz,$1dd4	call nz,$0000
3dfe	e1 	pop hl	pop hl
3dff	d1 	pop de	pop de
3e00	fd e5 	push iy	push iy
3e02	cc 3f 40 	call z,$403f	call z,$0000
3e05	fd e1 	pop iy	pop iy
3e07	08 	ex af,af'	ex af,af'
3e08	3d 	dec a	dec a
3e09	cd 18 06 	call $0618	call $0000
3e0c	e1 	pop hl	pop hl
3e0d	5e 	ld e,(hl)	ld e,(hl)
3e0e	16 00 	ld d,$00	ld d,$00
3e10	19 	add hl,de	add hl,de
3e11	d1 	pop de	pop de
3e12	c1 	pop bc	pop bc
3e13	18 bd 	jr $-$41	jr $-$00
3e15	cd 25 40 	call $4025	call $0000
3e18	cd 96 43 	call $4396	call $0000
3e1b	d9 	exx	exx
3e1c	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3e1f	ed 5b de 54 	ld de,($54de)	ld de,($0000)
3e23	7e 	ld a,(hl)	ld a,(hl)
3e24	b7 	or a	or a
3e25	28 28 	jr z,$+$2a	jr z,$+$00
3e27	23 	inc hl	inc hl
3e28	4e 	ld c,(hl)	ld c,(hl)
3e29	23 	inc hl	inc hl
3e2a	46 	ld b,(hl)	ld b,(hl)
3e2b	eb 	ex de,hl	ex de,hl
3e2c	71 	ld (hl),c	ld (hl),c
3e2d	23 	inc hl	inc hl
3e2e	70 	ld (hl),b	ld (hl),b
3e2f	23 	inc hl	inc hl
3e30	d9 	exx	exx
3e31	e5 	push hl	push hl
3e32	09 	add hl,bc	add hl,bc
3e33	da 91 43 	jp c,$4391	jp c,$0000
3e36	d9 	exx	exx
3e37	c1 	pop bc	pop bc
3e38	71 	ld (hl),c	ld (hl),c
3e39	23 	inc hl	inc hl
3e3a	70 	ld (hl),b	ld (hl),b
3e3b	23 	inc hl	inc hl
3e3c	eb 	ex de,hl	ex de,hl
3e3d	2b 	dec hl	dec hl
3e3e	2b 	dec hl	dec hl
3e3f	af 	xor a	xor a
3e40	47 	ld b,a	ld b,a
3e41	4e 	ld c,(hl)	ld c,(hl)
3e42	09 	add hl,bc	add hl,bc
3e43	eb 	ex de,hl	ex de,hl
3e44	e5 	push hl	push hl
3e45	24 	inc h	inc h
3e46	ed 72 	sbc hl,sp	sbc hl,sp
3e48	e1 	pop hl	pop hl
3e49	eb 	ex de,hl	ex de,hl
3e4a	38 d7 	jr c,$-$27	jr c,$-$00
3e4c	c3 26 3f 	jp $3f26	jp $0000
3e4f	eb 	ex de,hl	ex de,hl
3e50	36 ff 	ld (hl),$ff	ld (hl),$00
3e52	23 	inc hl	inc hl
3e53	36 ff 	ld (hl),$ff	ld (hl),$00
3e55	ed 5b de 54 	ld de,($54de)	ld de,($0000)
3e59	d9 	exx	exx
3e5a	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3e5d	4e 	ld c,(hl)	ld c,(hl)
3e5e	79 	ld a,c	ld a,c
3e5f	b7 	or a	or a
3e60	28 86 	jr z,$-$78	jr z,$-$00
3e62	d9 	exx	exx
3e63	eb 	ex de,hl	ex de,hl
3e64	23 	inc hl	inc hl
3e65	23 	inc hl	inc hl
3e66	5e 	ld e,(hl)	ld e,(hl)
3e67	23 	inc hl	inc hl
3e68	56 	ld d,(hl)	ld d,(hl)
3e69	23 	inc hl	inc hl
3e6a	d5 	push de	push de
3e6b	eb 	ex de,hl	ex de,hl
3e6c	d9 	exx	exx
3e6d	d1 	pop de	pop de
3e6e	23 	inc hl	inc hl
3e6f	73 	ld (hl),e	ld (hl),e
3e70	23 	inc hl	inc hl
3e71	72 	ld (hl),d	ld (hl),d
3e72	23 	inc hl	inc hl
3e73	0d 	dec c	dec c
3e74	0d 	dec c	dec c
3e75	0d 	dec c	dec c
3e76	06 00 	ld b,$00	ld b,$00
3e78	3e 8d 	ld a,$8d	ld a,$00
3e7a	ed b1 	cpir	cpir
3e7c	20 df 	jr nz,$-$1f	jr nz,$-$00
3e7e	c5 	push bc	push bc
3e7f	e5 	push hl	push hl
3e80	e5 	push hl	push hl
3e81	fd e1 	pop iy	pop iy
3e83	d9 	exx	exx
3e84	e5 	push hl	push hl
3e85	cd 42 1f 	call $1f42	call $0000
3e88	e1 	pop hl	pop hl
3e89	d9 	exx	exx
3e8a	44 	ld b,h	ld b,h
3e8b	4d 	ld c,l	ld c,l
3e8c	2a de 54 	ld hl,($54de)	ld hl,($0000)
3e8f	5e 	ld e,(hl)	ld e,(hl)
3e90	23 	inc hl	inc hl
3e91	56 	ld d,(hl)	ld d,(hl)
3e92	23 	inc hl	inc hl
3e93	eb 	ex de,hl	ex de,hl
3e94	b7 	or a	or a
3e95	ed 42 	sbc hl,bc	sbc hl,bc
3e97	eb 	ex de,hl	ex de,hl
3e98	5e 	ld e,(hl)	ld e,(hl)
3e99	23 	inc hl	inc hl
3e9a	56 	ld d,(hl)	ld d,(hl)
3e9b	23 	inc hl	inc hl
3e9c	38 f1 	jr c,$-$0d	jr c,$-$00
3e9e	eb 	ex de,hl	ex de,hl
3e9f	28 1a 	jr z,$+$1c	jr z,$+$00
3ea1	cd dc 44 	call $44dc	call $0000
3ea4	46 	ld b,(hl)	ld b,(hl)
3ea5	61 	ld h,c	ld h,c
3ea6	69 	ld l,c	ld l,c
3ea7	6c 	ld l,h	ld l,h
3ea8	65 	ld h,l	ld h,l
3ea9	64 	ld h,h	ld h,h
3eaa	20 61 	jr nz,$+$63	jr nz,$+$00
3eac	74 	ld (hl),h	ld (hl),h
3ead	20 00 	jr nz,$+$02	jr nz,$+$00
3eaf	d9 	exx	exx
3eb0	e5 	push hl	push hl
3eb1	d9 	exx	exx
3eb2	e1 	pop hl	pop hl
3eb3	cd 74 41 	call $4174	call $0000
3eb6	cd dd 40 	call $40dd	call $0000
3eb9	18 06 	jr $+$08	jr $+$00
3ebb	d1 	pop de	pop de
3ebc	d5 	push de	push de
3ebd	1b 	dec de	dec de
3ebe	cd a1 44 	call $44a1	call $0000
3ec1	e1 	pop hl	pop hl
3ec2	c1 	pop bc	pop bc
3ec3	18 b3 	jr $-$4b	jr $-$00
3ec5	cd 96 43 	call $4396	call $0000
3ec8	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
3ecb	79 	ld a,c	ld a,c
3ecc	32 ff 54 	ld ($54ff),a	ld ($0000),a
3ecf	18 37 	jr $+$39	jr $+$00
3ed1	cd dc 44 	call $44dc	call $0000
3ed4	13 	inc de	inc de
3ed5	70 	ld (hl),b	ld (hl),b
3ed6	72 	ld (hl),d	ld (hl),d
3ed7	6f 	ld l,a	ld l,a
3ed8	67 	ld h,a	ld h,a
3ed9	72 	ld (hl),d	ld (hl),d
3eda	61 	ld h,c	ld h,c
3edb	6d 	ld l,l	ld l,l
3edc	0d 	dec c	dec c
3edd	0a 	ld a,(bc)	ld a,(bc)
3ede	00 	nop	nop
3edf	cd 20 40 	call $4020	call $0000
3ee2	18 24 	jr $+$26	jr $+$00
3ee4	cd 1e 18 	call $181e	call $0000
3ee7	3e 0d 	ld a,$0d	ld a,$00
3ee9	12 	ld (de),a	ld (de),a
3eea	cd e2 3f 	call $3fe2	call $0000
3eed	cd 25 40 	call $4025	call $0000
3ef0	18 31 	jr $+$33	jr $+$00
3ef2	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
3ef5	e5 	push hl	push hl
3ef6	23 	inc hl	inc hl
3ef7	23 	inc hl	inc hl
3ef8	23 	inc hl	inc hl
3ef9	01 fc 00 	ld bc,$00fc	ld bc,$0000
3efc	3e 0d 	ld a,$0d	ld a,$00
3efe	ed b1 	cpir	cpir
3f00	20 cf 	jr nz,$-$2f	jr nz,$-$00
3f02	7d 	ld a,l	ld a,l
3f03	e1 	pop hl	pop hl
3f04	77 	ld (hl),a	ld (hl),a
3f05	cd fc 3f 	call $3ffc	call $0000
3f08	c3 92 37 	jp $3792	jp $0000
3f0b	cd 1e 18 	call $181e	call $0000
3f0e	3e 0d 	ld a,$0d	ld a,$00
3f10	12 	ld (de),a	ld (de),a
3f11	ed 5b dc 54 	ld de,($54dc)	ld de,($0000)
3f15	cd 07 40 	call $4007	call $0000
3f18	b7 	or a	or a
3f19	ed 52 	sbc hl,de	sbc hl,de
3f1b	44 	ld b,h	ld b,h
3f1c	4d 	ld c,l	ld c,l
3f1d	21 00 52 	ld hl,$5200	ld hl,$0000
3f20	cd a4 07 	call $07a4	call $0000
3f23	c3 91 37 	jp $3791	jp $0000
3f26	21 03 3c 	ld hl,$3c03	ld hl,$0000
3f29	4f 	ld c,a	ld c,a
3f2a	b7 	or a	or a
3f2b	28 0c 	jr z,$+$0e	jr z,$+$00
3f2d	47 	ld b,a	ld b,a
3f2e	af 	xor a	xor a
3f2f	be 	cp (hl)	cp (hl)
3f30	23 	inc hl	inc hl
3f31	20 fc 	jr nz,$-$02	jr nz,$-$00
3f33	10 fa 	djnz $-$04	djnz $-$00
3f35	18 02 	jr $+$04	jr $+$00
3f37	e1 	pop hl	pop hl
3f38	4f 	ld c,a	ld c,a
3f39	22 ee 54 	ld ($54ee),hl	ld ($0000),hl
3f3c	2a ec 54 	ld hl,($54ec)	ld hl,($0000)
3f3f	7c 	ld a,h	ld a,h
3f40	b5 	or l	or l
3f41	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
3f45	28 01 	jr z,$+$03	jr z,$+$00
3f47	f9 	ld sp,hl	ld sp,hl
3f48	79 	ld a,c	ld a,c
3f49	cd 3d 41 	call $413d	call $0000
3f4c	32 fd 54 	ld ($54fd),a	ld ($0000),a
3f4f	22 f2 54 	ld ($54f2),hl	ld ($0000),hl
3f52	b7 	or a	or a
3f53	28 0b 	jr z,$+$0d	jr z,$+$00
3f55	2a ea 54 	ld hl,($54ea)	ld hl,($0000)
3f58	7c 	ld a,h	ld a,h
3f59	b5 	or l	or l
3f5a	e5 	push hl	push hl
3f5b	fd e1 	pop iy	pop iy
3f5d	c2 7b 24 	jp nz,$247b	jp nz,$0000
3f60	ed 7b e2 54 	ld sp,($54e2)	ld sp,($0000)
3f64	ed 62 	sbc hl,hl	sbc hl,hl
3f66	22 e8 54 	ld ($54e8),hl	ld ($0000),hl
3f69	22 e6 54 	ld ($54e6),hl	ld ($0000),hl
3f6c	cd 25 06 	call $0625	call $0000
3f6f	cd dd 40 	call $40dd	call $0000
3f72	cd c7 44 	call $44c7	call $0000
3f75	2a f2 54 	ld hl,($54f2)	ld hl,($0000)
3f78	cd 64 41 	call $4164	call $0000
3f7b	1e 00 	ld e,$00	ld e,$00
3f7d	dc 35 06 	call c,$0635	call c,$0000
3f80	cd dd 40 	call $40dd	call $0000
3f83	18 83 	jr $-$7b	jr $-$00
3f85	21 66 38 	ld hl,$3866	ld hl,$0000
3f88	fd 7e 00 	ld a,(iy)	ld a,(iy)
3f8b	46 	ld b,(hl)	ld b,(hl)
3f8c	23 	inc hl	inc hl
3f8d	be 	cp (hl)	cp (hl)
3f8e	28 0a 	jr z,$+$0c	jr z,$+$00
3f90	d8 	ret c	ret c
3f91	23 	inc hl	inc hl
3f92	7e 	ld a,(hl)	ld a,(hl)
3f93	fe a0 	cp $a0	cp $00
3f95	ea 91 3f 	jp pe,$3f91	jp pe,$0000
3f98	18 ee 	jr $-$10	jr $-$00
3f9a	fd e5 	push iy	push iy
3f9c	23 	inc hl	inc hl
3f9d	7e 	ld a,(hl)	ld a,(hl)
3f9e	fe a0 	cp $a0	cp $00
3fa0	e2 c7 3f 	jp po,$3fc7	jp po,$0000
3fa3	fd 23 	inc iy	inc iy
3fa5	fd 7e 00 	ld a,(iy)	ld a,(iy)
3fa8	be 	cp (hl)	cp (hl)
3fa9	20 05 	jr nz,$+$07	jr nz,$+$00
3fab	fe a1 	cp $a1	cp $00
3fad	ea 9c 3f 	jp pe,$3f9c	jp pe,$0000
3fb0	fd 7e 00 	ld a,(iy)	ld a,(iy)
3fb3	fe 2e 	cp $2e	cp $00
3fb5	28 10 	jr z,$+$12	jr z,$+$00
3fb7	cd de 43 	call $43de	call $0000
3fba	38 04 	jr c,$+$06	jr c,$+$00
3fbc	fd e1 	pop iy	pop iy
3fbe	18 d1 	jr $-$2d	jr $-$00
3fc0	7e 	ld a,(hl)	ld a,(hl)
3fc1	fe 20 	cp $20	cp $00
3fc3	20 f7 	jr nz,$-$07	jr nz,$-$00
3fc5	fd 2b 	dec iy	dec iy
3fc7	f1 	pop af	pop af
3fc8	af 	xor a	xor a
3fc9	78 	ld a,b	ld a,b
3fca	c9 	ret	ret
3fcb	d5 	push de	push de
3fcc	e5 	push hl	push hl
3fcd	e5 	push hl	push hl
3fce	06 00 	ld b,$00	ld b,$00
3fd0	4e 	ld c,(hl)	ld c,(hl)
3fd1	09 	add hl,bc	add hl,bc
3fd2	e5 	push hl	push hl
3fd3	eb 	ex de,hl	ex de,hl
3fd4	cd 07 40 	call $4007	call $0000
3fd7	ed 52 	sbc hl,de	sbc hl,de
3fd9	44 	ld b,h	ld b,h
3fda	4d 	ld c,l	ld c,l
3fdb	e1 	pop hl	pop hl
3fdc	d1 	pop de	pop de
3fdd	ed b0 	ldir	ldir
3fdf	e1 	pop hl	pop hl
3fe0	d1 	pop de	pop de
3fe1	c9 	ret	ret
3fe2	ed 5b dc 54 	ld de,($54dc)	ld de,($0000)
3fe6	21 00 ff 	ld hl,$ff00	ld hl,$0000
3fe9	39 	add hl,sp	add hl,sp
3fea	ed 52 	sbc hl,de	sbc hl,de
3fec	44 	ld b,h	ld b,h
3fed	4d 	ld c,l	ld c,l
3fee	21 00 52 	ld hl,$5200	ld hl,$0000
3ff1	cd ae 06 	call $06ae	call $0000
3ff4	d4 20 40 	call nc,$4020	call nc,$0000
3ff7	3e 00 	ld a,$00	ld a,$00
3ff9	d2 26 3f 	jp nc,$3f26	jp nc,$0000
3ffc	cd 07 40 	call $4007	call $0000
3fff	2b 	dec hl	dec hl
4000	36 ff 	ld (hl),$ff	ld (hl),$00
4002	2b 	dec hl	dec hl
4003	36 ff 	ld (hl),$ff	ld (hl),$00
4005	18 1e 	jr $+$20	jr $+$00
4007	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
400a	06 00 	ld b,$00	ld b,$00
400c	3e 0d 	ld a,$0d	ld a,$00
400e	4e 	ld c,(hl)	ld c,(hl)
400f	0c 	inc c	inc c
4010	0d 	dec c	dec c
4011	28 09 	jr z,$+$0b	jr z,$+$00
4013	09 	add hl,bc	add hl,bc
4014	2b 	dec hl	dec hl
4015	be 	cp (hl)	cp (hl)
4016	23 	inc hl	inc hl
4017	28 f5 	jr z,$-$09	jr z,$-$00
4019	c3 d1 3e 	jp $3ed1	jp $0000
401c	23 	inc hl	inc hl
401d	23 	inc hl	inc hl
401e	23 	inc hl	inc hl
401f	c9 	ret	ret
4020	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4023	36 00 	ld (hl),$00	ld (hl),$00
4025	e5 	push hl	push hl
4026	c5 	push bc	push bc
4027	f5 	push af	push af
4028	cd 07 40 	call $4007	call $0000
402b	22 de 54 	ld ($54de),hl	ld ($0000),hl
402e	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
4031	21 6c 54 	ld hl,$546c	ld hl,$0000
4034	06 70 	ld b,$70	ld b,$00
4036	36 00 	ld (hl),$00	ld (hl),$00
4038	23 	inc hl	inc hl
4039	10 fb 	djnz $-$03	djnz $-$00
403b	f1 	pop af	pop af
403c	c1 	pop bc	pop bc
403d	e1 	pop hl	pop hl
403e	c9 	ret	ret
403f	e5 	push hl	push hl
4040	eb 	ex de,hl	ex de,hl
4041	c5 	push bc	push bc
4042	cd 78 41 	call $4178	call $0000
4045	c1 	pop bc	pop bc
4046	e1 	pop hl	pop hl
4047	7e 	ld a,(hl)	ld a,(hl)
4048	d9 	exx	exx
4049	21 60 3d 	ld hl,$3d60	ld hl,$0000
404c	01 08 00 	ld bc,$0008	ld bc,$0000
404f	ed b1 	cpir	cpir
4051	cc d7 40 	call z,$40d7	call z,$0000
4054	fe cb 	cp $cb	cp $00
4056	cc d7 40 	call z,$40d7	call z,$0000
4059	3e 20 	ld a,$20	ld a,$00
405b	dd cb 00 46 	bit 0,(ix)	bit 0,(ix)
405f	c4 e4 40 	call nz,$40e4	call nz,$0000
4062	7b 	ld a,e	ld a,e
4063	87 	add a,a	add a,a
4064	dd cb 00 4e 	bit 1,(ix)	bit 1,(ix)
4068	c4 85 35 	call nz,$3585	call nz,$0000
406b	d9 	exx	exx
406c	7e 	ld a,(hl)	ld a,(hl)
406d	1e 00 	ld e,$00	ld e,$00
406f	d9 	exx	exx
4070	01 07 00 	ld bc,$0007	ld bc,$0000
4073	21 59 3d 	ld hl,$3d59	ld hl,$0000
4076	ed b1 	cpir	cpir
4078	cc db 40 	call z,$40db	call z,$0000
407b	fe c8 	cp $c8	cp $00
407d	cc db 40 	call z,$40db	call z,$0000
4080	d9 	exx	exx
4081	7e 	ld a,(hl)	ld a,(hl)
4082	23 	inc hl	inc hl
4083	fe 0d 	cp $0d	cp $00
4085	28 25 	jr z,$+$27	jr z,$+$00
4087	57 	ld d,a	ld d,a
4088	fe 10 	cp $10	cp $00
408a	20 02 	jr nz,$+$04	jr nz,$+$00
408c	cb fb 	set 7,e	set 7,e
408e	fe 22 	cp $22	cp $00
4090	20 01 	jr nz,$+$03	jr nz,$+$00
4092	1c 	inc e	inc e
4093	cd cb 40 	call $40cb	call $0000
4096	7b 	ld a,e	ld a,e
4097	e6 81 	and $81	and $00
4099	20 e6 	jr nz,$-$18	jr nz,$-$00
409b	7e 	ld a,(hl)	ld a,(hl)
409c	d9 	exx	exx
409d	21 60 3d 	ld hl,$3d60	ld hl,$0000
40a0	01 03 00 	ld bc,$0003	ld bc,$0000
40a3	ed b1 	cpir	cpir
40a5	cc d7 40 	call z,$40d7	call z,$0000
40a8	0e 04 	ld c,$04	ld c,$00
40aa	18 c7 	jr $-$37	jr $-$00
40ac	7a 	ld a,d	ld a,d
40ad	fe 8c 	cp $8c	cp $00
40af	d9 	exx	exx
40b0	cc db 40 	call z,$40db	call z,$0000
40b3	d9 	exx	exx
40b4	18 27 	jr $+$29	jr $+$00
40b6	e5 	push hl	push hl
40b7	fd e1 	pop iy	pop iy
40b9	c5 	push bc	push bc
40ba	cd 42 1f 	call $1f42	call $0000
40bd	c1 	pop bc	pop bc
40be	d9 	exx	exx
40bf	c5 	push bc	push bc
40c0	d5 	push de	push de
40c1	cd 74 41 	call $4174	call $0000
40c4	d1 	pop de	pop de
40c5	c1 	pop bc	pop bc
40c6	d9 	exx	exx
40c7	fd e5 	push iy	push iy
40c9	e1 	pop hl	pop hl
40ca	c9 	ret	ret
40cb	cb 43 	bit 0,e	bit 0,e
40cd	20 15 	jr nz,$+$17	jr nz,$+$00
40cf	fe 8d 	cp $8d	cp $00
40d1	28 e3 	jr z,$-$1b	jr z,$-$00
40d3	cd fd 40 	call $40fd	call $0000
40d6	c9 	ret	ret
40d7	1d 	dec e	dec e
40d8	f2 dc 40 	jp p,$40dc	jp p,$0000
40db	1c 	inc e	inc e
40dc	c9 	ret	ret
40dd	3e 0d 	ld a,$0d	ld a,$00
40df	cd e4 40 	call $40e4	call $0000
40e2	3e 0a 	ld a,$0a	ld a,$00
40e4	cd 93 05 	call $0593	call $0000
40e7	d6 0d 	sub $0d	sub $00
40e9	28 05 	jr z,$+$07	jr z,$+$00
40eb	d8 	ret c	ret c
40ec	3a fb 54 	ld a,($54fb)	ld a,($0000)
40ef	3c 	inc a	inc a
40f0	32 fb 54 	ld ($54fb),a	ld ($0000),a
40f3	c8 	ret z	ret z
40f4	e5 	push hl	push hl
40f5	2a fc 54 	ld hl,($54fc)	ld hl,($0000)
40f8	bd 	cp l	cp l
40f9	e1 	pop hl	pop hl
40fa	c0 	ret nz	ret nz
40fb	18 e0 	jr $-$1e	jr $-$00
40fd	fe a0 	cp $a0	cp $00
40ff	ea e4 40 	jp pe,$40e4	jp pe,$0000
4102	c5 	push bc	push bc
4103	e5 	push hl	push hl
4104	21 66 38 	ld hl,$3866	ld hl,$0000
4107	01 5b 03 	ld bc,$035b	ld bc,$0000
410a	ed b1 	cpir	cpir
410c	c4 e4 40 	call nz,$40e4	call nz,$0000
410f	06 a0 	ld b,$a0	ld b,$00
4111	fe 91 	cp $91	cp $00
4113	ea 17 41 	jp pe,$4117	jp pe,$0000
4116	04 	inc b	inc b
4117	7e 	ld a,(hl)	ld a,(hl)
4118	23 	inc hl	inc hl
4119	b8 	cp b	cp b
411a	f5 	push af	push af
411b	ec e4 40 	call pe,$40e4	call pe,$0000
411e	f1 	pop af	pop af
411f	ea 17 41 	jp pe,$4117	jp pe,$0000
4122	e1 	pop hl	pop hl
4123	c1 	pop bc	pop bc
4124	c9 	ret	ret
4125	eb 	ex de,hl	ex de,hl
4126	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4129	af 	xor a	xor a
412a	be 	cp (hl)	cp (hl)
412b	3c 	inc a	inc a
412c	d0 	ret nc	ret nc
412d	af 	xor a	xor a
412e	47 	ld b,a	ld b,a
412f	4e 	ld c,(hl)	ld c,(hl)
4130	e5 	push hl	push hl
4131	23 	inc hl	inc hl
4132	7e 	ld a,(hl)	ld a,(hl)
4133	23 	inc hl	inc hl
4134	66 	ld h,(hl)	ld h,(hl)
4135	6f 	ld l,a	ld l,a
4136	ed 52 	sbc hl,de	sbc hl,de
4138	e1 	pop hl	pop hl
4139	d0 	ret nc	ret nc
413a	09 	add hl,bc	add hl,bc
413b	18 f2 	jr $-$0c	jr $-$00
413d	06 00 	ld b,$00	ld b,$00
413f	ed 5b f4 54 	ld de,($54f4)	ld de,($0000)
4143	2a dc 54 	ld hl,($54dc)	ld hl,($0000)
4146	b7 	or a	or a
4147	ed 52 	sbc hl,de	sbc hl,de
4149	19 	add hl,de	add hl,de
414a	30 13 	jr nc,$+$15	jr nc,$+$00
414c	4e 	ld c,(hl)	ld c,(hl)
414d	0c 	inc c	inc c
414e	0d 	dec c	dec c
414f	28 0e 	jr z,$+$10	jr z,$+$00
4151	09 	add hl,bc	add hl,bc
4152	ed 52 	sbc hl,de	sbc hl,de
4154	19 	add hl,de	add hl,de
4155	38 f5 	jr c,$-$09	jr c,$-$00
4157	ed 42 	sbc hl,bc	sbc hl,bc
4159	23 	inc hl	inc hl
415a	5e 	ld e,(hl)	ld e,(hl)
415b	23 	inc hl	inc hl
415c	56 	ld d,(hl)	ld d,(hl)
415d	eb 	ex de,hl	ex de,hl
415e	c9 	ret	ret
415f	21 00 00 	ld hl,$0000	ld hl,$0000
4162	18 fa 	jr $-$04	jr $-$00
4164	7c 	ld a,h	ld a,h
4165	b5 	or l	or l
4166	c8 	ret z	ret z
4167	cd dc 44 	call $44dc	call $0000
416a	20 61 	jr nz,$+$63	jr nz,$+$00
416c	74 	ld (hl),h	ld (hl),h
416d	20 6c 	jr nz,$+$6e	jr nz,$+$00
416f	69 	ld l,c	ld l,c
4170	6e 	ld l,(hl)	ld l,(hl)
4171	65 	ld h,l	ld h,l
4172	20 00 	jr nz,$+$02	jr nz,$+$00
4174	0e 00 	ld c,$00	ld c,$00
4176	18 02 	jr $+$04	jr $+$00
4178	0e 20 	ld c,$20	ld c,$00
417a	06 05 	ld b,$05	ld b,$00
417c	11 10 27 	ld de,$2710	ld de,$0000
417f	af 	xor a	xor a
4180	ed 52 	sbc hl,de	sbc hl,de
4182	3c 	inc a	inc a
4183	30 fb 	jr nc,$-$03	jr nc,$-$00
4185	19 	add hl,de	add hl,de
4186	3d 	dec a	dec a
4187	28 04 	jr z,$+$06	jr z,$+$00
4189	cb e1 	set 4,c	set 4,c
418b	cb e9 	set 5,c	set 5,c
418d	b1 	or c	or c
418e	c4 e4 40 	call nz,$40e4	call nz,$0000
4191	78 	ld a,b	ld a,b
4192	fe 05 	cp $05	cp $00
4194	28 06 	jr z,$+$08	jr z,$+$00
4196	29 	add hl,hl	add hl,hl
4197	54 	ld d,h	ld d,h
4198	5d 	ld e,l	ld e,l
4199	29 	add hl,hl	add hl,hl
419a	29 	add hl,hl	add hl,hl
419b	19 	add hl,de	add hl,de
419c	11 e8 03 	ld de,$03e8	ld de,$0000
419f	10 de 	djnz $-$20	djnz $-$00
41a1	37 	scf	scf
41a2	c9 	ret	ret
41a3	fd 23 	inc iy	inc iy
41a5	fd 23 	inc iy	inc iy
41a7	e5 	push hl	push hl
41a8	dd e1 	pop ix	pop ix
41aa	7a 	ld a,d	ld a,d
41ab	f6 40 	or $40	or $00
41ad	bf 	cp a	cp a
41ae	c9 	ret	ret
41af	cd 1e 43 	call $431e	call $0000
41b2	fd 7e 00 	ld a,(iy)	ld a,(iy)
41b5	fe 28 	cp $28	cp $00
41b7	20 7d 	jr nz,$+$7f	jr nz,$+$00
41b9	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
41bc	fe 29 	cp $29	cp $00
41be	28 e3 	jr z,$-$1b	jr z,$-$00
41c0	3e 0e 	ld a,$0e	ld a,$00
41c2	c3 26 3f 	jp $3f26	jp $0000
41c5	fd 7e 00 	ld a,(iy)	ld a,(iy)
41c8	fe 21 	cp $21	cp $00
41ca	28 76 	jr z,$+$78	jr z,$+$00
41cc	fe 3f 	cp $3f	cp $00
41ce	28 76 	jr z,$+$78	jr z,$+$00
41d0	fe 7c 	cp $7c	cp $00
41d2	28 75 	jr z,$+$77	jr z,$+$00
41d4	fe 24 	cp $24	cp $00
41d6	28 75 	jr z,$+$77	jr z,$+$00
41d8	cd 92 42 	call $4292	call $0000
41db	c0 	ret nz	ret nz
41dc	fd 7e 00 	ld a,(iy)	ld a,(iy)
41df	fe 28 	cp $28	cp $00
41e1	20 4b 	jr nz,$+$4d	jr nz,$+$00
41e3	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
41e6	fe 29 	cp $29	cp $00
41e8	28 b9 	jr z,$-$45	jr z,$-$00
41ea	d5 	push de	push de
41eb	7e 	ld a,(hl)	ld a,(hl)
41ec	23 	inc hl	inc hl
41ed	66 	ld h,(hl)	ld h,(hl)
41ee	6f 	ld l,a	ld l,a
41ef	e6 fe 	and $fe	and $00
41f1	b4 	or h	or h
41f2	28 cc 	jr z,$-$32	jr z,$-$00
41f4	7e 	ld a,(hl)	ld a,(hl)
41f5	b7 	or a	or a
41f6	28 c8 	jr z,$-$36	jr z,$-$00
41f8	23 	inc hl	inc hl
41f9	11 00 00 	ld de,$0000	ld de,$0000
41fc	f5 	push af	push af
41fd	fd 23 	inc iy	inc iy
41ff	e5 	push hl	push hl
4200	d5 	push de	push de
4201	cd 15 18 	call $1815	call $0000
4204	d9 	exx	exx
4205	d1 	pop de	pop de
4206	e3 	ex (sp),hl	ex (sp),hl
4207	4e 	ld c,(hl)	ld c,(hl)
4208	23 	inc hl	inc hl
4209	46 	ld b,(hl)	ld b,(hl)
420a	23 	inc hl	inc hl
420b	e3 	ex (sp),hl	ex (sp),hl
420c	eb 	ex de,hl	ex de,hl
420d	d5 	push de	push de
420e	cd 9f 36 	call $369f	call $0000
4211	d1 	pop de	pop de
4212	19 	add hl,de	add hl,de
4213	eb 	ex de,hl	ex de,hl
4214	b7 	or a	or a
4215	ed 42 	sbc hl,bc	sbc hl,bc
4217	3e 0f 	ld a,$0f	ld a,$00
4219	30 a7 	jr nc,$-$57	jr nc,$-$00
421b	e1 	pop hl	pop hl
421c	f1 	pop af	pop af
421d	3d 	dec a	dec a
421e	20 1c 	jr nz,$+$1e	jr nz,$+$00
4220	cd 90 20 	call $2090	call $0000
4223	f1 	pop af	pop af
4224	e5 	push hl	push hl
4225	cd 8f 36 	call $368f	call $0000
4228	e1 	pop hl	pop hl
4229	19 	add hl,de	add hl,de
422a	57 	ld d,a	ld d,a
422b	fd 7e 00 	ld a,(iy)	ld a,(iy)
422e	fe 3f 	cp $3f	cp $00
4230	28 26 	jr z,$+$28	jr z,$+$00
4232	fe 21 	cp $21	cp $00
4234	28 1e 	jr z,$+$20	jr z,$+$00
4236	e5 	push hl	push hl
4237	dd e1 	pop ix	pop ix
4239	7a 	ld a,d	ld a,d
423a	bf 	cp a	cp a
423b	c9 	ret	ret
423c	f5 	push af	push af
423d	cd 84 20 	call $2084	call $0000
4240	18 bd 	jr $-$41	jr $-$00
4242	3e 04 	ld a,$04	ld a,$00
4244	18 09 	jr $+$0b	jr $+$00
4246	af 	xor a	xor a
4247	18 06 	jr $+$08	jr $+$00
4249	3e 05 	ld a,$05	ld a,$00
424b	18 02 	jr $+$04	jr $+$00
424d	3e 80 	ld a,$80	ld a,$00
424f	ed 62 	sbc hl,hl	sbc hl,hl
4251	f5 	push af	push af
4252	18 15 	jr $+$17	jr $+$00
4254	06 04 	ld b,$04	ld b,$00
4256	18 02 	jr $+$04	jr $+$00
4258	06 00 	ld b,$00	ld b,$00
425a	e5 	push hl	push hl
425b	dd e1 	pop ix	pop ix
425d	7a 	ld a,d	ld a,d
425e	fe 81 	cp $81	cp $00
4260	c8 	ret z	ret z
4261	c5 	push bc	push bc
4262	cd 07 19 	call $1907	call $0000
4265	cd f9 1b 	call $1bf9	call $0000
4268	d9 	exx	exx
4269	e5 	push hl	push hl
426a	fd 23 	inc iy	inc iy
426c	cd 42 18 	call $1842	call $0000
426f	d9 	exx	exx
4270	d1 	pop de	pop de
4271	f1 	pop af	pop af
4272	19 	add hl,de	add hl,de
4273	e5 	push hl	push hl
4274	dd e1 	pop ix	pop ix
4276	bf 	cp a	cp a
4277	c9 	ret	ret
4278	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
427b	cd de 43 	call $43de	call $0000
427e	d8 	ret c	ret c
427f	fd 7e 00 	ld a,(iy)	ld a,(iy)
4282	21 d8 54 	ld hl,$54d8	ld hl,$0000
4285	fe a4 	cp $a4	cp $00
4287	28 43 	jr z,$+$45	jr z,$+$00
4289	21 da 54 	ld hl,$54da	ld hl,$0000
428c	fe f2 	cp $f2	cp $00
428e	28 3c 	jr z,$+$3e	jr z,$+$00
4290	37 	scf	scf
4291	c9 	ret	ret
4292	d6 40 	sub $40	sub $00
4294	d8 	ret c	ret c
4295	26 00 	ld h,$00	ld h,$00
4297	fe 1b 	cp $1b	cp $00
4299	30 1d 	jr nc,$+$1f	jr nc,$+$00
429b	87 	add a,a	add a,a
429c	6f 	ld l,a	ld l,a
429d	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
42a0	fe 25 	cp $25	cp $00
42a2	20 20 	jr nz,$+$22	jr nz,$+$00
42a4	fd 7e 02 	ld a,(iy+$02)	ld a,(iy+$00)
42a7	fe 28 	cp $28	cp $00
42a9	28 19 	jr z,$+$1b	jr z,$+$00
42ab	29 	add hl,hl	add hl,hl
42ac	11 00 54 	ld de,$5400	ld de,$0000
42af	19 	add hl,de	add hl,de
42b0	fd 23 	inc iy	inc iy
42b2	fd 23 	inc iy	inc iy
42b4	16 04 	ld d,$04	ld d,$00
42b6	af 	xor a	xor a
42b7	c9 	ret	ret
42b8	fe 1f 	cp $1f	cp $00
42ba	d8 	ret c	ret c
42bb	fe 3b 	cp $3b	cp $00
42bd	3f 	ccf	ccf
42be	3d 	dec a	dec a
42bf	d8 	ret c	ret c
42c0	d6 03 	sub $03	sub $00
42c2	87 	add a,a	add a,a
42c3	6f 	ld l,a	ld l,a
42c4	11 6c 54 	ld de,$546c	ld de,$0000
42c7	2d 	dec l	dec l
42c8	2d 	dec l	dec l
42c9	37 	scf	scf
42ca	f8 	ret m	ret m
42cb	19 	add hl,de	add hl,de
42cc	5e 	ld e,(hl)	ld e,(hl)
42cd	23 	inc hl	inc hl
42ce	56 	ld d,(hl)	ld d,(hl)
42cf	7a 	ld a,d	ld a,d
42d0	b3 	or e	or e
42d1	28 49 	jr z,$+$4b	jr z,$+$00
42d3	62 	ld h,d	ld h,d
42d4	6b 	ld l,e	ld l,e
42d5	23 	inc hl	inc hl
42d6	23 	inc hl	inc hl
42d7	fd e5 	push iy	push iy
42d9	7e 	ld a,(hl)	ld a,(hl)
42da	23 	inc hl	inc hl
42db	fd 23 	inc iy	inc iy
42dd	fd be 00 	cp (iy)	cp (iy)
42e0	28 f7 	jr z,$-$07	jr z,$-$00
42e2	b7 	or a	or a
42e3	28 05 	jr z,$+$07	jr z,$+$00
42e5	fd e1 	pop iy	pop iy
42e7	eb 	ex de,hl	ex de,hl
42e8	18 e2 	jr $-$1c	jr $-$00
42ea	fd 2b 	dec iy	dec iy
42ec	fd 7e 00 	ld a,(iy)	ld a,(iy)
42ef	fe 28 	cp $28	cp $00
42f1	28 13 	jr z,$+$15	jr z,$+$00
42f3	fd 23 	inc iy	inc iy
42f5	cd d1 43 	call $43d1	call $0000
42f8	38 0c 	jr c,$+$0e	jr c,$+$00
42fa	fe 28 	cp $28	cp $00
42fc	28 e7 	jr z,$-$17	jr z,$-$00
42fe	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
4301	cd de 43 	call $43de	call $0000
4304	30 df 	jr nc,$-$1f	jr nc,$-$00
4306	d1 	pop de	pop de
4307	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
430a	fe 24 	cp $24	cp $00
430c	16 81 	ld d,$81	ld d,$00
430e	c8 	ret z	ret z
430f	fe 26 	cp $26	cp $00
4311	16 01 	ld d,$01	ld d,$00
4313	c8 	ret z	ret z
4314	fe 25 	cp $25	cp $00
4316	16 04 	ld d,$04	ld d,$00
4318	c8 	ret z	ret z
4319	14 	inc d	inc d
431a	bf 	cp a	cp a
431b	c9 	ret	ret
431c	3c 	inc a	inc a
431d	c9 	ret	ret
431e	af 	xor a	xor a
431f	ed 5b e0 54 	ld de,($54e0)	ld de,($0000)
4323	72 	ld (hl),d	ld (hl),d
4324	2b 	dec hl	dec hl
4325	73 	ld (hl),e	ld (hl),e
4326	eb 	ex de,hl	ex de,hl
4327	77 	ld (hl),a	ld (hl),a
4328	23 	inc hl	inc hl
4329	77 	ld (hl),a	ld (hl),a
432a	23 	inc hl	inc hl
432b	fd 23 	inc iy	inc iy
432d	cd d1 43 	call $43d1	call $0000
4330	38 14 	jr c,$+$16	jr c,$+$00
4332	77 	ld (hl),a	ld (hl),a
4333	23 	inc hl	inc hl
4334	cd de 43 	call $43de	call $0000
4337	30 f2 	jr nc,$-$0c	jr nc,$-$00
4339	fe 28 	cp $28	cp $00
433b	28 09 	jr z,$+$0b	jr z,$+$00
433d	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
4340	fe 28 	cp $28	cp $00
4342	28 e7 	jr z,$-$17	jr z,$-$00
4344	fd 23 	inc iy	inc iy
4346	36 00 	ld (hl),$00	ld (hl),$00
4348	23 	inc hl	inc hl
4349	e5 	push hl	push hl
434a	cd 07 43 	call $4307	call $0000
434d	fd 7e 00 	ld a,(iy)	ld a,(iy)
4350	fe 28 	cp $28	cp $00
4352	3e 02 	ld a,$02	ld a,$00
4354	28 07 	jr z,$+$09	jr z,$+$00
4356	7a 	ld a,d	ld a,d
4357	b7 	or a	or a
4358	f2 5d 43 	jp p,$435d	jp p,$0000
435b	3e 04 	ld a,$04	ld a,$00
435d	36 00 	ld (hl),$00	ld (hl),$00
435f	23 	inc hl	inc hl
4360	3d 	dec a	dec a
4361	20 fa 	jr nz,$-$04	jr nz,$-$00
4363	22 e0 54 	ld ($54e0),hl	ld ($0000),hl
4366	cd 68 32 	call $3268	call $0000
4369	e1 	pop hl	pop hl
436a	af 	xor a	xor a
436b	c9 	ret	ret
436c	cd ed 44 	call $44ed	call $0000
436f	21 00 00 	ld hl,$0000	ld hl,$0000
4372	fd 7e 00 	ld a,(iy)	ld a,(iy)
4375	d6 30 	sub $30	sub $00
4377	d8 	ret c	ret c
4378	fe 0a 	cp $0a	cp $00
437a	d0 	ret nc	ret nc
437b	fd 23 	inc iy	inc iy
437d	54 	ld d,h	ld d,h
437e	5d 	ld e,l	ld e,l
437f	29 	add hl,hl	add hl,hl
4380	38 0f 	jr c,$+$11	jr c,$+$00
4382	29 	add hl,hl	add hl,hl
4383	38 0c 	jr c,$+$0e	jr c,$+$00
4385	19 	add hl,de	add hl,de
4386	38 09 	jr c,$+$0b	jr c,$+$00
4388	29 	add hl,hl	add hl,hl
4389	38 06 	jr c,$+$08	jr c,$+$00
438b	5f 	ld e,a	ld e,a
438c	16 00 	ld d,$00	ld d,$00
438e	19 	add hl,de	add hl,de
438f	30 e1 	jr nc,$-$1d	jr nc,$-$00
4391	3e 14 	ld a,$14	ld a,$00
4393	c3 26 3f 	jp $3f26	jp $0000
4396	cd 6c 43 	call $436c	call $0000
4399	7c 	ld a,h	ld a,h
439a	b5 	or l	or l
439b	20 02 	jr nz,$+$04	jr nz,$+$00
439d	2e 0a 	ld l,$0a	ld l,$00
439f	cd 18 35 	call $3518	call $0000
43a2	fd 23 	inc iy	inc iy
43a4	e5 	push hl	push hl
43a5	21 0a 00 	ld hl,$000a	ld hl,$0000
43a8	c4 6c 43 	call nz,$436c	call nz,$0000
43ab	e3 	ex (sp),hl	ex (sp),hl
43ac	c1 	pop bc	pop bc
43ad	78 	ld a,b	ld a,b
43ae	b1 	or c	or c
43af	c0 	ret nz	ret nz
43b0	cd 37 3f 	call $3f37	call $0000
43b3	53 	ld d,e	ld d,e
43b4	69 	ld l,c	ld l,c
43b5	6c 	ld l,h	ld l,h
43b6	6c 	ld l,h	ld l,h
43b7	79 	ld a,c	ld a,c
43b8	00 	nop	nop
43b9	cd 6c 43 	call $436c	call $0000
43bc	e5 	push hl	push hl
43bd	cd 18 35 	call $3518	call $0000
43c0	28 09 	jr z,$+$0b	jr z,$+$00
43c2	fe e7 	cp $e7	cp $00
43c4	28 05 	jr z,$+$07	jr z,$+$00
43c6	fd 23 	inc iy	inc iy
43c8	cd 6c 43 	call $436c	call $0000
43cb	e3 	ex (sp),hl	ex (sp),hl
43cc	cd 25 41 	call $4125	call $0000
43cf	c1 	pop bc	pop bc
43d0	c9 	ret	ret
43d1	fd 7e 00 	ld a,(iy)	ld a,(iy)
43d4	fe 24 	cp $24	cp $00
43d6	d8 	ret c	ret c
43d7	fe 27 	cp $27	cp $00
43d9	3f 	ccf	ccf
43da	d0 	ret nc	ret nc
43db	fe 28 	cp $28	cp $00
43dd	c8 	ret z	ret z
43de	fe 30 	cp $30	cp $00
43e0	d8 	ret c	ret c
43e1	fe 3a 	cp $3a	cp $00
43e3	3f 	ccf	ccf
43e4	d0 	ret nc	ret nc
43e5	fe 40 	cp $40	cp $00
43e7	c8 	ret z	ret z
43e8	fe 41 	cp $41	cp $00
43ea	d8 	ret c	ret c
43eb	fe 5b 	cp $5b	cp $00
43ed	3f 	ccf	ccf
43ee	d0 	ret nc	ret nc
43ef	fe 5f 	cp $5f	cp $00
43f1	d8 	ret c	ret c
43f2	fe 7b 	cp $7b	cp $00
43f4	3f 	ccf	ccf
43f5	c9 	ret	ret
43f6	12 	ld (de),a	ld (de),a
43f7	13 	inc de	inc de
43f8	fd 23 	inc iy	inc iy
43fa	7b 	ld a,e	ld a,e
43fb	fe fc 	cp $fc	cp $00
43fd	3e 13 	ld a,$13	ld a,$00
43ff	d2 26 3f 	jp nc,$3f26	jp nc,$0000
4402	fd 7e 00 	ld a,(iy)	ld a,(iy)
4405	fe 0d 	cp $0d	cp $00
4407	c8 	ret z	ret z
4408	cd de 43 	call $43de	call $0000
440b	30 04 	jr nc,$+$06	jr nc,$+$00
440d	cb a9 	res 5,c	res 5,c
440f	cb 99 	res 3,c	res 3,c
4411	fe 20 	cp $20	cp $00
4413	28 e1 	jr z,$-$1d	jr z,$-$00
4415	fe 2c 	cp $2c	cp $00
4417	28 dd 	jr z,$-$21	jr z,$-$00
4419	fe 47 	cp $47	cp $00
441b	38 02 	jr c,$+$04	jr c,$+$00
441d	cb 99 	res 3,c	res 3,c
441f	fe 22 	cp $22	cp $00
4421	20 05 	jr nz,$+$07	jr nz,$+$00
4423	cb 11 	rl c	rl c
4425	3f 	ccf	ccf
4426	cb 19 	rr c	rr c
4428	cb 61 	bit 4,c	bit 4,c
442a	28 10 	jr z,$+$12	jr z,$+$00
442c	cb a1 	res 4,c	res 4,c
442e	c5 	push bc	push bc
442f	d5 	push de	push de
4430	cd 6c 43 	call $436c	call $0000
4433	d1 	pop de	pop de
4434	c1 	pop bc	pop bc
4435	7c 	ld a,h	ld a,h
4436	b5 	or l	or l
4437	c4 a1 44 	call nz,$44a1	call nz,$0000
443a	18 be 	jr $-$40	jr $-$00
443c	0d 	dec c	dec c
443d	28 09 	jr z,$+$0b	jr z,$+$00
443f	0c 	inc c	inc c
4440	20 b4 	jr nz,$-$4a	jr nz,$-$00
4442	b7 	or a	or a
4443	f4 85 3f 	call p,$3f85	call p,$0000
4446	18 12 	jr $+$14	jr $+$00
4448	fe 2a 	cp $2a	cp $00
444a	28 16 	jr z,$+$18	jr z,$+$00
444c	b7 	or a	or a
444d	f4 85 3f 	call p,$3f85	call p,$0000
4450	fe 8f 	cp $8f	cp $00
4452	38 06 	jr c,$+$08	jr c,$+$00
4454	fe 94 	cp $94	cp $00
4456	30 02 	jr nc,$+$04	jr nc,$+$00
4458	c6 40 	add a,$40	add a,$00
445a	fe f4 	cp $f4	cp $00
445c	28 04 	jr z,$+$06	jr z,$+$00
445e	fe dc 	cp $dc	cp $00
4460	20 02 	jr nz,$+$04	jr nz,$+$00
4462	cb f1 	set 6,c	set 6,c
4464	fe a4 	cp $a4	cp $00
4466	28 09 	jr z,$+$0b	jr z,$+$00
4468	fe f2 	cp $f2	cp $00
446a	28 05 	jr z,$+$07	jr z,$+$00
446c	cd e8 43 	call $43e8	call $0000
446f	38 02 	jr c,$+$04	jr c,$+$00
4471	cb e9 	set 5,c	set 5,c
4473	fe 26 	cp $26	cp $00
4475	20 02 	jr nz,$+$04	jr nz,$+$00
4477	cb d9 	set 3,c	set 3,c
4479	21 98 44 	ld hl,$4498	ld hl,$0000
447c	c5 	push bc	push bc
447d	01 06 00 	ld bc,$0006	ld bc,$0000
4480	ed b1 	cpir	cpir
4482	c1 	pop bc	pop bc
4483	20 02 	jr nz,$+$04	jr nz,$+$00
4485	cb e1 	set 4,c	set 4,c
4487	21 9c 44 	ld hl,$449c	ld hl,$0000
448a	c5 	push bc	push bc
448b	01 05 00 	ld bc,$0005	ld bc,$0000
448e	ed b1 	cpir	cpir
4490	c1 	pop bc	pop bc
4491	20 02 	jr nz,$+$04	jr nz,$+$00
4493	cb c1 	set 0,c	set 0,c
4495	c3 f6 43 	jp $43f6	jp $0000
4498	e5 	push hl	push hl
4499	e4 f7 fc 	call po,$fcf7	call po,$0000
449c	8c 	adc a,h	adc a,h
449d	8b 	adc a,e	adc a,e
449e	f5 	push af	push af
449f	85 	add a,l	add a,l
44a0	3a cb e1 	ld a,($e1cb)	ld a,($0000)
44a3	eb 	ex de,hl	ex de,hl
44a4	36 8d 	ld (hl),$8d	ld (hl),$00
44a6	23 	inc hl	inc hl
44a7	7a 	ld a,d	ld a,d
44a8	e6 c0 	and $c0	and $00
44aa	0f 	rrca	rrca
44ab	0f 	rrca	rrca
44ac	47 	ld b,a	ld b,a
44ad	7b 	ld a,e	ld a,e
44ae	e6 c0 	and $c0	and $00
44b0	b0 	or b	or b
44b1	0f 	rrca	rrca
44b2	0f 	rrca	rrca
44b3	ee 54 	xor $54	xor $00
44b5	77 	ld (hl),a	ld (hl),a
44b6	23 	inc hl	inc hl
44b7	7b 	ld a,e	ld a,e
44b8	e6 3f 	and $3f	and $00
44ba	f6 40 	or $40	or $00
44bc	77 	ld (hl),a	ld (hl),a
44bd	23 	inc hl	inc hl
44be	7a 	ld a,d	ld a,d
44bf	e6 3f 	and $3f	and $00
44c1	f6 40 	or $40	or $00
44c3	77 	ld (hl),a	ld (hl),a
44c4	23 	inc hl	inc hl
44c5	eb 	ex de,hl	ex de,hl
44c6	c9 	ret	ret
44c7	2a ee 54 	ld hl,($54ee)	ld hl,($0000)
44ca	7e 	ld a,(hl)	ld a,(hl)
44cb	23 	inc hl	inc hl
44cc	b7 	or a	or a
44cd	c8 	ret z	ret z
44ce	fe 0a 	cp $0a	cp $00
44d0	28 05 	jr z,$+$07	jr z,$+$00
44d2	cd fd 40 	call $40fd	call $0000
44d5	18 f3 	jr $-$0b	jr $-$00
44d7	cd e4 40 	call $40e4	call $0000
44da	18 ee 	jr $-$10	jr $-$00
44dc	e3 	ex (sp),hl	ex (sp),hl
44dd	cd ca 44 	call $44ca	call $0000
44e0	e3 	ex (sp),hl	ex (sp),hl
44e1	c9 	ret	ret
44e2	cd ed 44 	call $44ed	call $0000
44e5	fe 2c 	cp $2c	cp $00
44e7	28 0a 	jr z,$+$0c	jr z,$+$00
44e9	c1 	pop bc	pop bc
44ea	c3 7b 24 	jp $247b	jp $0000
44ed	fd 7e 00 	ld a,(iy)	ld a,(iy)
44f0	fe 20 	cp $20	cp $00
44f2	c0 	ret nz	ret nz
44f3	fd 23 	inc iy	inc iy
44f5	18 f6 	jr $-$08	jr $-$00
44f7	fd e5 	push iy	push iy
44f9	fd 21 00 00 	ld iy,$0000	ld iy,$0000
44fd	fd 39 	add iy,sp	add iy,sp
44ff	cd 0e 45 	call $450e	call $0000
4502	bf 	cp a	cp a
4503	fd e1 	pop iy	pop iy
4505	c9 	ret	ret
4506	3e 01 	ld a,$01	ld a,$00
4508	fd f9 	ld sp,iy	ld sp,iy
450a	b7 	or a	or a
450b	37 	scf	scf
450c	18 f5 	jr $-$09	jr $-$00
450e	fe 2e 	cp $2e	cp $00
4510	30 f4 	jr nc,$-$0a	jr nc,$-$00
4512	fe 10 	cp $10	cp $00
4514	30 07 	jr nc,$+$09	jr nc,$+$00
4516	08 	ex af,af'	ex af,af'
4517	78 	ld a,b	ld a,b
4518	b1 	or c	or c
4519	c4 87 4e 	call nz,$4e87	call nz,$0000
451c	08 	ex af,af'	ex af,af'
451d	e5 	push hl	push hl
451e	21 2e 45 	ld hl,$452e	ld hl,$0000
4521	c5 	push bc	push bc
4522	87 	add a,a	add a,a
4523	4f 	ld c,a	ld c,a
4524	06 00 	ld b,$00	ld b,$00
4526	09 	add hl,bc	add hl,bc
4527	7e 	ld a,(hl)	ld a,(hl)
4528	23 	inc hl	inc hl
4529	66 	ld h,(hl)	ld h,(hl)
452a	6f 	ld l,a	ld l,a
452b	c1 	pop bc	pop bc
452c	e3 	ex (sp),hl	ex (sp),hl
452d	c9 	ret	ret
452e	ad 	xor l	xor l
452f	45 	ld b,l	ld b,l
4530	fa 45 bf 	jp m,$bf45	jp m,$0000
4533	45 	ld b,l	ld b,l
4534	e3 	ex (sp),hl	ex (sp),hl
4535	45 	ld b,l	ld b,l
4536	d1 	pop de	pop de
4537	45 	ld b,l	ld b,l
4538	f8 	ret m	ret m
4539	47 	ld b,a	ld b,a
453a	05 	dec b	dec b
453b	48 	ld c,b	ld c,b
453c	ed 47 	ld i,a	ld i,a
453e	d6 47 	sub $47	sub $00
4540	10 48 	djnz $+$4a	djnz $+$00
4542	c4 46 1d 	call nz,$1d46	call nz,$0000
4545	46 	ld b,(hl)	ld b,(hl)
4546	e1 	pop hl	pop hl
4547	47 	ld b,a	ld b,a
4548	07 	rlca	rlca
4549	46 	ld b,(hl)	ld b,(hl)
454a	3f 	ccf	ccf
454b	47 	ld b,a	ld b,a
454c	7c 	ld a,h	ld a,h
454d	46 	ld b,(hl)	ld b,(hl)
454e	60 	ld h,b	ld h,b
454f	48 	ld c,b	ld c,b
4550	bc 	cp h	cp h
4551	4b 	ld c,e	ld c,e
4552	18 4b 	jr $+$4d	jr $+$00
4554	3d 	dec a	dec a
4555	4b 	ld c,e	ld c,e
4556	56 	ld d,(hl)	ld d,(hl)
4557	49 8a 	adc.lis a,d	adc.lis a,d
4559	48 	ld c,b	ld c,b
455a	fb 	ei	ei
455b	49 d0 	ret.lis nc	ret.lis nc
455d	48 	ld c,b	ld c,b
455e	86 	add a,(hl)	add a,(hl)
455f	4a 	ld c,d	ld c,d
4560	06 4b 	ld b,$4b	ld b,$00
4562	6b 	ld l,e	ld l,e
4563	48 	ld c,b	ld c,b
4564	92 	sub d	sub d
4565	48 	ld c,b	ld c,b
4566	a8 	xor b	xor b
4567	48 	ld c,b	ld c,b
4568	61 	ld h,c	ld h,c
4569	49 e6 48 	and.lis $48	and.lis $00
456c	39 	add hl,sp	add hl,sp
456d	49 03 	inc.lis bc	inc.lis bc
456f	4f 	ld c,a	ld c,a
4570	da 49 14 	jp c,$1449	jp c,$0000
4573	48 	ld c,b	ld c,b
4574	7e 	ld a,(hl)	ld a,(hl)
4575	48 	ld c,b	ld c,b
4576	b8 	cp b	cp b
4577	48 	ld c,b	ld c,b
4578	c4 4b d9 	call nz,$d94b	call nz,$0000
457b	4d 	ld c,l	ld c,l
457c	94 	sub h	sub h
457d	4e 	ld c,(hl)	ld c,(hl)
457e	d9 	exx	exx
457f	4e 	ld c,(hl)	ld c,(hl)
4580	ea 4e 1f 	jp pe,$1f4e	jp pe,$0000
4583	48 	ld c,b	ld c,b
4584	1f 	rra	rra
4585	48 	ld c,b	ld c,b
4586	2c 	inc l	inc l
4587	48 	ld c,b	ld c,b
4588	3e 48 	ld a,$48	ld a,$00
458a	aa 	xor d	xor d
458b	45 	ld b,l	ld b,l
458c	f7 	rst $30	rst $00
458d	45 	ld b,l	ld b,l
458e	bc 	cp h	cp h
458f	45 	ld b,l	ld b,l
4590	e0 	ret po	ret po
4591	45 	ld b,l	ld b,l
4592	ce 45 	adc a,$45	adc a,$00
4594	f3 	di	di
4595	47 	ld b,a	ld b,a
4596	00 	nop	nop
4597	48 	ld c,b	ld c,b
4598	e8 	ret pe	ret pe
4599	47 	ld b,a	ld b,a
459a	d1 	pop de	pop de
459b	47 	ld b,a	ld b,a
459c	0b 	dec bc	dec bc
459d	48 	ld c,b	ld c,b
459e	ef 	rst $28	rst $00
459f	46 	ld b,(hl)	ld b,(hl)
45a0	27 	daa	daa
45a1	46 	ld b,(hl)	ld b,(hl)
45a2	dc 47 11 	call c,$1147	call c,$0000
45a5	46 	ld b,(hl)	ld b,(hl)
45a6	a7 	and a	and a
45a7	47 	ld b,a	ld b,a
45a8	7f 	ld a,a	ld a,a
45a9	46 	ld b,(hl)	ld b,(hl)
45aa	cd d0 4d 	call $4dd0	call $0000
45ad	7c 	ld a,h	ld a,h
45ae	a2 	and d	and d
45af	67 	ld h,a	ld h,a
45b0	7d 	ld a,l	ld a,l
45b1	a3 	and e	and e
45b2	6f 	ld l,a	ld l,a
45b3	d9 	exx	exx
45b4	7c 	ld a,h	ld a,h
45b5	a2 	and d	and d
45b6	67 	ld h,a	ld h,a
45b7	7d 	ld a,l	ld a,l
45b8	a3 	and e	and e
45b9	6f 	ld l,a	ld l,a
45ba	d9 	exx	exx
45bb	c9 	ret	ret
45bc	cd d0 4d 	call $4dd0	call $0000
45bf	7c 	ld a,h	ld a,h
45c0	aa 	xor d	xor d
45c1	67 	ld h,a	ld h,a
45c2	7d 	ld a,l	ld a,l
45c3	ab 	xor e	xor e
45c4	6f 	ld l,a	ld l,a
45c5	d9 	exx	exx
45c6	7c 	ld a,h	ld a,h
45c7	aa 	xor d	xor d
45c8	67 	ld h,a	ld h,a
45c9	7d 	ld a,l	ld a,l
45ca	ab 	xor e	xor e
45cb	6f 	ld l,a	ld l,a
45cc	d9 	exx	exx
45cd	c9 	ret	ret
45ce	cd d0 4d 	call $4dd0	call $0000
45d1	7c 	ld a,h	ld a,h
45d2	b2 	or d	or d
45d3	67 	ld h,a	ld h,a
45d4	7d 	ld a,l	ld a,l
45d5	b3 	or e	or e
45d6	6f 	ld l,a	ld l,a
45d7	d9 	exx	exx
45d8	7c 	ld a,h	ld a,h
45d9	b2 	or d	or d
45da	67 	ld h,a	ld h,a
45db	7d 	ld a,l	ld a,l
45dc	b3 	or e	or e
45dd	6f 	ld l,a	ld l,a
45de	d9 	exx	exx
45df	c9 	ret	ret
45e0	cd d0 4d 	call $4dd0	call $0000
45e3	7c 	ld a,h	ld a,h
45e4	aa 	xor d	xor d
45e5	cb 7c 	bit 7,h	bit 7,h
45e7	cd d7 50 	call $50d7	call $0000
45ea	3e df 	ld a,$df	ld a,$00
45ec	cd 13 50 	call $5013	call $0000
45ef	d9 	exx	exx
45f0	0e 00 	ld c,$00	ld c,$00
45f2	08 	ex af,af'	ex af,af'
45f3	c8 	ret z	ret z
45f4	c3 e8 4d 	jp $4de8	jp $0000
45f7	cd d0 4d 	call $4dd0	call $0000
45fa	cd e3 45 	call $45e3	call $0000
45fd	b7 	or a	or a
45fe	cd be 4e 	call $4ebe	call $0000
4601	0e 00 	ld c,$00	ld c,$00
4603	f0 	ret p	ret p
4604	c3 e8 4d 	jp $4de8	jp $0000
4607	cd 46 4f 	call $4f46	call $0000
460a	e0 	ret po	ret po
460b	cd 40 4f 	call $4f40	call $0000
460e	cd 8b 4e 	call $4e8b	call $0000
4611	7a 	ld a,d	ld a,d
4612	ee 80 	xor $80	xor $00
4614	57 	ld d,a	ld d,a
4615	18 10 	jr $+$12	jr $+$00
4617	7c 	ld a,h	ld a,h
4618	ee 80 	xor $80	xor $00
461a	67 	ld h,a	ld h,a
461b	18 0a 	jr $+$0c	jr $+$00
461d	cd 40 4f 	call $4f40	call $0000
4620	e0 	ret po	ret po
4621	cd 46 4f 	call $4f46	call $0000
4624	cd 8b 4e 	call $4e8b	call $0000
4627	05 	dec b	dec b
4628	04 	inc b	inc b
4629	c8 	ret z	ret z
462a	0d 	dec c	dec c
462b	0c 	inc c	inc c
462c	ca be 4e 	jp z,$4ebe	jp z,$0000
462f	d9 	exx	exx
4630	01 00 00 	ld bc,$0000	ld bc,$0000
4633	d9 	exx	exx
4634	7c 	ld a,h	ld a,h
4635	aa 	xor d	xor d
4636	f5 	push af	push af
4637	78 	ld a,b	ld a,b
4638	b9 	cp c	cp c
4639	dc be 4e 	call c,$4ebe	call c,$0000
463c	78 	ld a,b	ld a,b
463d	cb fc 	set 7,h	set 7,h
463f	c4 c0 4d 	call nz,$4dc0	call nz,$0000
4642	f1 	pop af	pop af
4643	7a 	ld a,d	ld a,d
4644	cb fa 	set 7,d	set 7,d
4646	fa 53 46 	jp m,$4653	jp m,$0000
4649	cd 40 4f 	call $4f40	call $0000
464c	dc c6 4e 	call c,$4ec6	call c,$0000
464f	cb fc 	set 7,h	set 7,h
4651	18 0a 	jr $+$0c	jr $+$00
4653	cd 46 4f 	call $4f46	call $0000
4656	dc fc 4d 	call c,$4dfc	call c,$0000
4659	cd 68 4e 	call $4e68	call $0000
465c	2f 	cpl	cpl
465d	d9 	exx	exx
465e	eb 	ex de,hl	ex de,hl
465f	21 00 80 	ld hl,$8000	ld hl,$0000
4662	b7 	or a	or a
4663	ed 42 	sbc hl,bc	sbc hl,bc
4665	eb 	ex de,hl	ex de,hl
4666	d9 	exx	exx
4667	cc b8 4e 	call z,$4eb8	call z,$0000
466a	dc aa 4e 	call c,$4eaa	call c,$0000
466d	dc d2 4e 	call c,$4ed2	call c,$0000
4670	cb bc 	res 7,h	res 7,h
4672	0d 	dec c	dec c
4673	0c 	inc c	inc c
4674	ca 03 4f 	jp z,$4f03	jp z,$0000
4677	b7 	or a	or a
4678	f0 	ret p	ret p
4679	cb fc 	set 7,h	set 7,h
467b	c9 	ret	ret
467c	cd 8b 4e 	call $4e8b	call $0000
467f	05 	dec b	dec b
4680	04 	inc b	inc b
4681	3e 12 	ld a,$12	ld a,$00
4683	ca 08 45 	jp z,$4508	jp z,$0000
4686	0d 	dec c	dec c
4687	0c 	inc c	inc c
4688	c8 	ret z	ret z
4689	7c 	ld a,h	ld a,h
468a	aa 	xor d	xor d
468b	08 	ex af,af'	ex af,af'
468c	cb fa 	set 7,d	set 7,d
468e	cb fc 	set 7,h	set 7,h
4690	c5 	push bc	push bc
4691	42 	ld b,d	ld b,d
4692	4b 	ld c,e	ld c,e
4693	11 00 00 	ld de,$0000	ld de,$0000
4696	d9 	exx	exx
4697	42 	ld b,d	ld b,d
4698	4b 	ld c,e	ld c,e
4699	11 00 00 	ld de,$0000	ld de,$0000
469c	3e e0 	ld a,$e0	ld a,$00
469e	cd 13 50 	call $5013	call $0000
46a1	d9 	exx	exx
46a2	cb 7a 	bit 7,d	bit 7,d
46a4	d9 	exx	exx
46a5	cc 2e 50 	call z,$502e	call z,$0000
46a8	eb 	ex de,hl	ex de,hl
46a9	d9 	exx	exx
46aa	cb 38 	srl b	srl b
46ac	cb 19 	rr c	rr c
46ae	b7 	or a	or a
46af	ed 42 	sbc hl,bc	sbc hl,bc
46b1	3f 	ccf	ccf
46b2	eb 	ex de,hl	ex de,hl
46b3	cc b8 4e 	call z,$4eb8	call z,$0000
46b6	dc aa 4e 	call c,$4eaa	call c,$0000
46b9	c1 	pop bc	pop bc
46ba	dc d2 4e 	call c,$4ed2	call c,$0000
46bd	1f 	rra	rra
46be	79 	ld a,c	ld a,c
46bf	98 	sbc a,b	sbc a,b
46c0	3f 	ccf	ccf
46c1	c3 28 47 	jp $4728	jp $0000
46c4	7c 	ld a,h	ld a,h
46c5	aa 	xor d	xor d
46c6	cd d7 50 	call $50d7	call $0000
46c9	3e df 	ld a,$df	ld a,$00
46cb	cd 41 50 	call $5041	call $0000
46ce	d9 	exx	exx
46cf	0e bf 	ld c,$bf	ld c,$00
46d1	cd e3 4e 	call $4ee3	call $0000
46d4	20 0d 	jr nz,$+$0f	jr nz,$+$00
46d6	cb 7a 	bit 7,d	bit 7,d
46d8	20 09 	jr nz,$+$0b	jr nz,$+$00
46da	cd be 4e 	call $4ebe	call $0000
46dd	4a 	ld c,d	ld c,d
46de	08 	ex af,af'	ex af,af'
46df	f0 	ret p	ret p
46e0	c3 e8 4d 	jp $4de8	jp $0000
46e3	0d 	dec c	dec c
46e4	cd aa 50 	call $50aa	call $0000
46e7	f2 e3 46 	jp p,$46e3	jp p,$0000
46ea	08 	ex af,af'	ex af,af'
46eb	f8 	ret m	ret m
46ec	cb bc 	res 7,h	res 7,h
46ee	c9 	ret	ret
46ef	05 	dec b	dec b
46f0	04 	inc b	inc b
46f1	ca 03 4f 	jp z,$4f03	jp z,$0000
46f4	0d 	dec c	dec c
46f5	0c 	inc c	inc c
46f6	c8 	ret z	ret z
46f7	7c 	ld a,h	ld a,h
46f8	aa 	xor d	xor d
46f9	08 	ex af,af'	ex af,af'
46fa	cb fa 	set 7,d	set 7,d
46fc	cb fc 	set 7,h	set 7,h
46fe	c5 	push bc	push bc
46ff	44 	ld b,h	ld b,h
4700	4d 	ld c,l	ld c,l
4701	21 00 00 	ld hl,$0000	ld hl,$0000
4704	d9 	exx	exx
4705	44 	ld b,h	ld b,h
4706	4d 	ld c,l	ld c,l
4707	21 00 00 	ld hl,$0000	ld hl,$0000
470a	3e e0 	ld a,$e0	ld a,$00
470c	cd 41 50 	call $5041	call $0000
470f	dc 55 50 	call c,$5055	call c,$0000
4712	d9 	exx	exx
4713	e5 	push hl	push hl
4714	21 00 80 	ld hl,$8000	ld hl,$0000
4717	b7 	or a	or a
4718	ed 52 	sbc hl,de	sbc hl,de
471a	e1 	pop hl	pop hl
471b	cc b8 4e 	call z,$4eb8	call z,$0000
471e	dc aa 4e 	call c,$4eaa	call c,$0000
4721	c1 	pop bc	pop bc
4722	dc d2 4e 	call c,$4ed2	call c,$0000
4725	1f 	rra	rra
4726	79 	ld a,c	ld a,c
4727	88 	adc a,b	adc a,b
4728	38 05 	jr c,$+$07	jr c,$+$00
472a	f2 03 4f 	jp p,$4f03	jp p,$0000
472d	18 03 	jr $+$05	jr $+$00
472f	fa d4 4e 	jp m,$4ed4	jp m,$0000
4732	c6 80 	add a,$80	add a,$00
4734	4f 	ld c,a	ld c,a
4735	ca 03 4f 	jp z,$4f03	jp z,$0000
4738	08 	ex af,af'	ex af,af'
4739	cb bc 	res 7,h	res 7,h
473b	f0 	ret p	ret p
473c	cb fc 	set 7,h	set 7,h
473e	c9 	ret	ret
473f	cd be 4e 	call $4ebe	call $0000
4742	cb 7c 	bit 7,h	bit 7,h
4744	f5 	push af	push af
4745	c4 e8 4d 	call nz,$4de8	call nz,$0000
4748	48 	ld c,b	ld c,b
4749	06 20 	ld b,$20	ld b,$00
474b	cd 5d 4f 	call $4f5d	call $0000
474e	38 08 	jr c,$+$0a	jr c,$+$00
4750	10 f9 	djnz $-$05	djnz $-$00
4752	f1 	pop af	pop af
4753	d9 	exx	exx
4754	2c 	inc l	inc l
4755	d9 	exx	exx
4756	4c 	ld c,h	ld c,h
4757	c9 	ret	ret
4758	f1 	pop af	pop af
4759	c5 	push bc	push bc
475a	eb 	ex de,hl	ex de,hl
475b	e5 	push hl	push hl
475c	d9 	exx	exx
475d	eb 	ex de,hl	ex de,hl
475e	e5 	push hl	push hl
475f	d9 	exx	exx
4760	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4764	dd 39 	add ix,sp	add ix,sp
4766	28 34 	jr z,$+$36	jr z,$+$00
4768	c5 	push bc	push bc
4769	d9 	exx	exx
476a	d5 	push de	push de
476b	d9 	exx	exx
476c	d5 	push de	push de
476d	cd 94 4e 	call $4e94	call $0000
4770	cd 72 4a 	call $4a72	call $0000
4773	cd e8 31 	call $31e8	call $0000
4776	18 1d 	jr $+$1f	jr $+$00
4778	c5 	push bc	push bc
4779	d9 	exx	exx
477a	cb 23 	sla e	sla e
477c	cb 12 	rl d	rl d
477e	d5 	push de	push de
477f	d9 	exx	exx
4780	cb 13 	rl e	rl e
4782	cb 12 	rl d	rl d
4784	d5 	push de	push de
4785	3e 0a 	ld a,$0a	ld a,$00
4787	f5 	push af	push af
4788	cd 6f 4f 	call $4f6f	call $0000
478b	cd 0e 45 	call $450e	call $0000
478e	f1 	pop af	pop af
478f	cd d3 19 	call $19d3	call $0000
4792	dc 0e 45 	call c,$450e	call c,$0000
4795	d1 	pop de	pop de
4796	d9 	exx	exx
4797	d1 	pop de	pop de
4798	d9 	exx	exx
4799	79 	ld a,c	ld a,c
479a	c1 	pop bc	pop bc
479b	4f 	ld c,a	ld c,a
479c	10 da 	djnz $-$24	djnz $-$00
479e	f1 	pop af	pop af
479f	f1 	pop af	pop af
47a0	f1 	pop af	pop af
47a1	c9 	ret	ret
47a2	f1 	pop af	pop af
47a3	f1 	pop af	pop af
47a4	f1 	pop af	pop af
47a5	18 a1 	jr $-$5d	jr $-$00
47a7	cb 7a 	bit 7,d	bit 7,d
47a9	f5 	push af	push af
47aa	cd be 4e 	call $4ebe	call $0000
47ad	cd 7d 4f 	call $4f7d	call $0000
47b0	0d 	dec c	dec c
47b1	0c 	inc c	inc c
47b2	28 ee 	jr z,$-$10	jr z,$-$00
47b4	3e 9e 	ld a,$9e	ld a,$00
47b6	b9 	cp c	cp c
47b7	38 08 	jr c,$+$0a	jr c,$+$00
47b9	3c 	inc a	inc a
47ba	cd c0 4d 	call $4dc0	call $0000
47bd	08 	ex af,af'	ex af,af'
47be	f2 a2 47 	jp p,$47a2	jp p,$0000
47c1	cd be 4e 	call $4ebe	call $0000
47c4	cd 89 4a 	call $4a89	call $0000
47c7	cd 86 4f 	call $4f86	call $0000
47ca	f1 	pop af	pop af
47cb	cd ef 46 	call $46ef	call $0000
47ce	c3 fe 49 	jp $49fe	jp $0000
47d1	cd 0d 4f 	call $4f0d	call $0000
47d4	18 03 	jr $+$05	jr $+$00
47d6	cd 00 4f 	call $4f00	call $0000
47d9	d0 	ret nc	ret nc
47da	18 38 	jr $+$3a	jr $+$00
47dc	cd 0d 4f 	call $4f0d	call $0000
47df	18 03 	jr $+$05	jr $+$00
47e1	cd 00 4f 	call $4f00	call $0000
47e4	c8 	ret z	ret z
47e5	d8 	ret c	ret c
47e6	18 2c 	jr $+$2e	jr $+$00
47e8	cd 0d 4f 	call $4f0d	call $0000
47eb	18 03 	jr $+$05	jr $+$00
47ed	cd 00 4f 	call $4f00	call $0000
47f0	d8 	ret c	ret c
47f1	18 21 	jr $+$23	jr $+$00
47f3	cd 0d 4f 	call $4f0d	call $0000
47f6	18 03 	jr $+$05	jr $+$00
47f8	cd 00 4f 	call $4f00	call $0000
47fb	28 17 	jr z,$+$19	jr z,$+$00
47fd	d0 	ret nc	ret nc
47fe	18 14 	jr $+$16	jr $+$00
4800	cd 0d 4f 	call $4f0d	call $0000
4803	18 03 	jr $+$05	jr $+$00
4805	cd 00 4f 	call $4f00	call $0000
4808	c8 	ret z	ret z
4809	18 09 	jr $+$0b	jr $+$00
480b	cd 0d 4f 	call $4f0d	call $0000
480e	18 03 	jr $+$05	jr $+$00
4810	cd 00 4f 	call $4f00	call $0000
4813	c0 	ret nz	ret nz
4814	21 ff ff 	ld hl,$ffff	ld hl,$0000
4817	d9 	exx	exx
4818	21 ff ff 	ld hl,$ffff	ld hl,$0000
481b	d9 	exx	exx
481c	af 	xor a	xor a
481d	4f 	ld c,a	ld c,a
481e	c9 	ret	ret
481f	cd 50 48 	call $4850	call $0000
4822	28 07 	jr z,$+$09	jr z,$+$00
4824	d9 	exx	exx
4825	29 	add hl,hl	add hl,hl
4826	d9 	exx	exx
4827	ed 6a 	adc hl,hl	adc hl,hl
4829	10 f9 	djnz $-$05	djnz $-$00
482b	c9 	ret	ret
482c	cd 50 48 	call $4850	call $0000
482f	28 fa 	jr z,$-$04	jr z,$-$00
4831	cb 2c 	sra h	sra h
4833	cb 1d 	rr l	rr l
4835	d9 	exx	exx
4836	cb 1c 	rr h	rr h
4838	cb 1d 	rr l	rr l
483a	d9 	exx	exx
483b	10 f4 	djnz $-$0a	djnz $-$00
483d	c9 	ret	ret
483e	cd 50 48 	call $4850	call $0000
4841	28 e8 	jr z,$-$16	jr z,$-$00
4843	cb 3c 	srl h	srl h
4845	cb 1d 	rr l	rr l
4847	d9 	exx	exx
4848	cb 1c 	rr h	rr h
484a	cb 1d 	rr l	rr l
484c	d9 	exx	exx
484d	10 f4 	djnz $-$0a	djnz $-$00
484f	c9 	ret	ret
4850	cd d0 4d 	call $4dd0	call $0000
4853	7a 	ld a,d	ld a,d
4854	b3 	or e	or e
4855	d9 	exx	exx
4856	b2 	or d	or d
4857	7b 	ld a,e	ld a,e
4858	d9 	exx	exx
4859	06 20 	ld b,$20	ld b,$00
485b	20 02 	jr nz,$+$04	jr nz,$+$00
485d	47 	ld b,a	ld b,a
485e	b7 	or a	or a
485f	c9 	ret	ret
4860	cb 7c 	bit 7,h	bit 7,h
4862	c8 	ret z	ret z
4863	0d 	dec c	dec c
4864	0c 	inc c	inc c
4865	ca e8 4d 	jp z,$4de8	jp z,$0000
4868	cb bc 	res 7,h	res 7,h
486a	c9 	ret	ret
486b	cd d9 4d 	call $4dd9	call $0000
486e	7c 	ld a,h	ld a,h
486f	2f 	cpl	cpl
4870	67 	ld h,a	ld h,a
4871	7d 	ld a,l	ld a,l
4872	2f 	cpl	cpl
4873	6f 	ld l,a	ld l,a
4874	d9 	exx	exx
4875	7c 	ld a,h	ld a,h
4876	2f 	cpl	cpl
4877	67 	ld h,a	ld h,a
4878	7d 	ld a,l	ld a,l
4879	2f 	cpl	cpl
487a	6f 	ld l,a	ld l,a
487b	d9 	exx	exx
487c	af 	xor a	xor a
487d	c9 	ret	ret
487e	21 0f 49 	ld hl,$490f	ld hl,$0000
4881	d9 	exx	exx
4882	21 a2 da 	ld hl,$daa2	ld hl,$0000
4885	d9 	exx	exx
4886	0e 81 	ld c,$81	ld c,$00
4888	af 	xor a	xor a
4889	c9 	ret	ret
488a	cd 9a 48 	call $489a	call $0000
488d	cd ef 46 	call $46ef	call $0000
4890	af 	xor a	xor a
4891	c9 	ret	ret
4892	cd 9a 48 	call $489a	call $0000
4895	cd 7f 46 	call $467f	call $0000
4898	af 	xor a	xor a
4899	c9 	ret	ret
489a	cd 94 4e 	call $4e94	call $0000
489d	11 2e 65 	ld de,$652e	ld de,$0000
48a0	d9 	exx	exx
48a1	11 d3 e0 	ld de,$e0d3	ld de,$0000
48a4	d9 	exx	exx
48a5	06 85 	ld b,$85	ld b,$00
48a7	c9 	ret	ret
48a8	cd e3 4e 	call $4ee3	call $0000
48ab	b1 	or c	or c
48ac	c8 	ret z	ret z
48ad	cb 7c 	bit 7,h	bit 7,h
48af	c2 14 48 	jp nz,$4814	jp nz,$0000
48b2	cd 03 4f 	call $4f03	call $0000
48b5	c3 aa 4e 	jp $4eaa	jp $0000
48b8	cd c5 50 	call $50c5	call $0000
48bb	f5 	push af	push af
48bc	cd 16 4d 	call $4d16	call $0000
48bf	f1 	pop af	pop af
48c0	fe 2d 	cp $2d	cp $00
48c2	3e 00 	ld a,$00	ld a,$00
48c4	c0 	ret nz	ret nz
48c5	0d 	dec c	dec c
48c6	0c 	inc c	inc c
48c7	ca e8 4d 	jp z,$4de8	jp z,$0000
48ca	7c 	ld a,h	ld a,h
48cb	ee 80 	xor $80	xor $00
48cd	67 	ld h,a	ld h,a
48ce	af 	xor a	xor a
48cf	c9 	ret	ret
48d0	0d 	dec c	dec c
48d1	0c 	inc c	inc c
48d2	c8 	ret z	ret z
48d3	3e 9f 	ld a,$9f	ld a,$00
48d5	44 	ld b,h	ld b,h
48d6	cd c0 4d 	call $4dc0	call $0000
48d9	08 	ex af,af'	ex af,af'
48da	a0 	and b	and b
48db	fc aa 4e 	call m,$4eaa	call m,$0000
48de	78 	ld a,b	ld a,b
48df	b7 	or a	or a
48e0	fc e8 4d 	call m,$4de8	call m,$0000
48e3	af 	xor a	xor a
48e4	4f 	ld c,a	ld c,a
48e5	c9 	ret	ret
48e6	cd 94 4e 	call $4e94	call $0000
48e9	cb 7c 	bit 7,h	bit 7,h
48eb	3e 15 	ld a,$15	ld a,$00
48ed	c2 08 45 	jp nz,$4508	jp nz,$0000
48f0	0d 	dec c	dec c
48f1	0c 	inc c	inc c
48f2	c8 	ret z	ret z
48f3	cb fc 	set 7,h	set 7,h
48f5	cb 41 	bit 0,c	bit 0,c
48f7	cc c6 4e 	call z,$4ec6	call z,$0000
48fa	79 	ld a,c	ld a,c
48fb	d6 80 	sub $80	sub $00
48fd	cb 2f 	sra a	sra a
48ff	c6 80 	add a,$80	add a,$00
4901	4f 	ld c,a	ld c,a
4902	c5 	push bc	push bc
4903	eb 	ex de,hl	ex de,hl
4904	21 00 00 	ld hl,$0000	ld hl,$0000
4907	44 	ld b,h	ld b,h
4908	4d 	ld c,l	ld c,l
4909	d9 	exx	exx
490a	eb 	ex de,hl	ex de,hl
490b	21 00 00 	ld hl,$0000	ld hl,$0000
490e	44 	ld b,h	ld b,h
490f	4d 	ld c,l	ld c,l
4910	3e e1 	ld a,$e1	ld a,$00
4912	cd 74 50 	call $5074	call $0000
4915	d9 	exx	exx
4916	cb 78 	bit 7,b	bit 7,b
4918	d9 	exx	exx
4919	cc 74 50 	call z,$5074	call z,$0000
491c	cd 93 50 	call $5093	call $0000
491f	b7 	or a	or a
4920	cd 2e 50 	call $502e	call $0000
4923	cb 1b 	rr e	rr e
4925	60 	ld h,b	ld h,b
4926	69 	ld l,c	ld l,c
4927	d9 	exx	exx
4928	60 	ld h,b	ld h,b
4929	69 	ld l,c	ld l,c
492a	dc aa 4e 	call c,$4eaa	call c,$0000
492d	c1 	pop bc	pop bc
492e	dc d2 4e 	call c,$4ed2	call c,$0000
4931	1f 	rra	rra
4932	9f 	sbc a,a	sbc a,a
4933	81 	add a,c	add a,c
4934	4f 	ld c,a	ld c,a
4935	cb bc 	res 7,h	res 7,h
4937	af 	xor a	xor a
4938	c9 	ret	ret
4939	cd 94 4e 	call $4e94	call $0000
493c	cd 7d 4f 	call $4f7d	call $0000
493f	cd 59 49 	call $4959	call $0000
4942	cd 86 4f 	call $4f86	call $0000
4945	cd 7d 4f 	call $4f7d	call $0000
4948	cd be 4e 	call $4ebe	call $0000
494b	cd 64 49 	call $4964	call $0000
494e	cd 86 4f 	call $4f86	call $0000
4951	cd 7f 46 	call $467f	call $0000
4954	af 	xor a	xor a
4955	c9 	ret	ret
4956	cd 94 4e 	call $4e94	call $0000
4959	cd 09 4e 	call $4e09	call $0000
495c	1c 	inc e	inc e
495d	1c 	inc e	inc e
495e	7b 	ld a,e	ld a,e
495f	18 0e 	jr $+$10	jr $+$00
4961	cd 94 4e 	call $4e94	call $0000
4964	e5 	push hl	push hl
4965	cd 09 4e 	call $4e09	call $0000
4968	f1 	pop af	pop af
4969	07 	rlca	rlca
496a	07 	rlca	rlca
496b	07 	rlca	rlca
496c	e6 04 	and $04	and $00
496e	ab 	xor e	xor e
496f	f5 	push af	push af
4970	cb bc 	res 7,h	res 7,h
4972	1f 	rra	rra
4973	cd f0 49 	call $49f0	call $0000
4976	dc 17 46 	call c,$4617	call c,$0000
4979	f1 	pop af	pop af
497a	f5 	push af	push af
497b	e6 03 	and $03	and $00
497d	e2 ae 49 	jp po,$49ae	jp po,$0000
4980	cd 7d 4f 	call $4f7d	call $0000
4983	cd 77 4f 	call $4f77	call $0000
4986	cd b0 4f 	call $4fb0	call $0000
4989	b7 	or a	or a
498a	a8 	xor b	xor b
498b	11 36 6d 	ld de,$6d36	ld de,$0000
498e	26 de 	ld h,$de	ld h,$00
4990	05 	dec b	dec b
4991	d0 	ret nc	ret nc
4992	73 	ld (hl),e	ld (hl),e
4993	c0 	ret nz	ret nz
4994	80 	add a,b	add a,b
4995	88 	adc a,b	adc a,b
4996	08 	ex af,af'	ex af,af'
4997	79 	ld a,c	ld a,c
4998	9d 	sbc a,l	sbc a,l
4999	aa 	xor d	xor d
499a	aa 	xor d	xor d
499b	aa 	xor d	xor d
499c	7d 	ld a,l	ld a,l
499d	00 	nop	nop
499e	00 	nop	nop
499f	00 	nop	nop
49a0	00 	nop	nop
49a1	80 	add a,b	add a,b
49a2	cd 86 4f 	call $4f86	call $0000
49a5	cd 86 4f 	call $4f86	call $0000
49a8	cd ef 46 	call $46ef	call $0000
49ab	c3 d0 49 	jp $49d0	jp $0000
49ae	cd 77 4f 	call $4f77	call $0000
49b1	cd b0 4f 	call $4fb0	call $0000
49b4	71 	ld (hl),c	ld (hl),c
49b5	d5 	push de	push de
49b6	78 	ld a,b	ld a,b
49b7	4c 	ld c,h	ld c,h
49b8	70 	ld (hl),b	ld (hl),b
49b9	af 	xor a	xor a
49ba	94 	sub h	sub h
49bb	03 	inc bc	inc bc
49bc	b6 	or (hl)	or (hl)
49bd	76 	halt	halt
49be	c8 	ret z	ret z
49bf	9c 	sbc a,h	sbc a,h
49c0	aa 	xor d	xor d
49c1	2a 7b dd 	ld hl,($dd7b)	ld hl,($0000)
49c4	ff 	rst $38	rst $00
49c5	ff 	rst $38	rst $00
49c6	ff 	rst $38	rst $00
49c7	7e 	ld a,(hl)	ld a,(hl)
49c8	00 	nop	nop
49c9	00 	nop	nop
49ca	00 	nop	nop
49cb	00 	nop	nop
49cc	80 	add a,b	add a,b
49cd	cd 86 4f 	call $4f86	call $0000
49d0	f1 	pop af	pop af
49d1	e6 04 	and $04	and $00
49d3	c8 	ret z	ret z
49d4	0d 	dec c	dec c
49d5	0c 	inc c	inc c
49d6	c8 	ret z	ret z
49d7	cb fc 	set 7,h	set 7,h
49d9	c9 	ret	ret
49da	21 00 00 	ld hl,$0000	ld hl,$0000
49dd	d9 	exx	exx
49de	21 00 00 	ld hl,$0000	ld hl,$0000
49e1	d9 	exx	exx
49e2	0e 80 	ld c,$80	ld c,$00
49e4	c9 	ret	ret
49e5	11 00 00 	ld de,$0000	ld de,$0000
49e8	d9 	exx	exx
49e9	11 00 00 	ld de,$0000	ld de,$0000
49ec	d9 	exx	exx
49ed	06 80 	ld b,$80	ld b,$00
49ef	c9 	ret	ret
49f0	11 0f 49 	ld de,$490f	ld de,$0000
49f3	d9 	exx	exx
49f4	11 a2 da 	ld de,$daa2	ld de,$0000
49f7	d9 	exx	exx
49f8	06 7f 	ld b,$7f	ld b,$00
49fa	c9 	ret	ret
49fb	cd 94 4e 	call $4e94	call $0000
49fe	cd 7b 4a 	call $4a7b	call $0000
4a01	d9 	exx	exx
4a02	1d 	dec e	dec e
4a03	01 cf d1 	ld bc,$d1cf	ld bc,$0000
4a06	d9 	exx	exx
4a07	e5 	push hl	push hl
4a08	cd 19 4e 	call $4e19	call $0000
4a0b	f1 	pop af	pop af
4a0c	cb 7b 	bit 7,e	bit 7,e
4a0e	28 09 	jr z,$+$0b	jr z,$+$00
4a10	17 	rla	rla
4a11	da 03 4f 	jp c,$4f03	jp c,$0000
4a14	3e 18 	ld a,$18	ld a,$00
4a16	c3 08 45 	jp $4508	jp $0000
4a19	e6 80 	and $80	and $00
4a1b	b3 	or e	or e
4a1c	f5 	push af	push af
4a1d	cb bc 	res 7,h	res 7,h
4a1f	cd 7d 4f 	call $4f7d	call $0000
4a22	cd b0 4f 	call $4fb0	call $0000
4a25	72 	ld (hl),d	ld (hl),d
4a26	40 2e 94 	ld.sis l,$94	ld.sis l,$00
4a29	73 	ld (hl),e	ld (hl),e
4a2a	65 	ld h,l	ld h,l
4a2b	6f 	ld l,a	ld l,a
4a2c	4f 	ld c,a	ld c,a
4a2d	2e 76 	ld l,$76	ld l,$00
4a2f	37 	scf	scf
4a30	6d 	ld l,l	ld l,l
4a31	02 	ld (bc),a	ld (bc),a
4a32	88 	adc a,b	adc a,b
4a33	79 	ld a,c	ld a,c
4a34	12 	ld (de),a	ld (de),a
4a35	e5 	push hl	push hl
4a36	a0 	and b	and b
4a37	2a 7b 14 	ld hl,($147b)	ld hl,($0000)
4a3a	4f 	ld c,a	ld c,a
4a3b	aa 	xor d	xor d
4a3c	aa 	xor d	xor d
4a3d	7d 	ld a,l	ld a,l
4a3e	56 	ld d,(hl)	ld d,(hl)
4a3f	fd ff 	trap	trap
4a41	7f 	ld a,a	ld a,a
4a42	7e 	ld a,(hl)	ld a,(hl)
4a43	fe ff 	cp $ff	cp $00
4a45	ff 	rst $38	rst $00
4a46	ff 	rst $38	rst $00
4a47	7f 	ld a,a	ld a,a
4a48	00 	nop	nop
4a49	00 	nop	nop
4a4a	00 	nop	nop
4a4b	00 	nop	nop
4a4c	80 	add a,b	add a,b
4a4d	cd 86 4f 	call $4f86	call $0000
4a50	f1 	pop af	pop af
4a51	f5 	push af	push af
4a52	f4 72 4a 	call p,$4a72	call p,$0000
4a55	f1 	pop af	pop af
4a56	f2 5d 4a 	jp p,$4a5d	jp p,$0000
4a59	e6 7f 	and $7f	and $00
4a5b	ed 44 	neg	neg
4a5d	c6 80 	add a,$80	add a,$00
4a5f	81 	add a,c	add a,c
4a60	38 05 	jr c,$+$07	jr c,$+$00
4a62	f2 03 4f 	jp p,$4f03	jp p,$0000
4a65	18 03 	jr $+$05	jr $+$00
4a67	fa d4 4e 	jp m,$4ed4	jp m,$0000
4a6a	c6 80 	add a,$80	add a,$00
4a6c	ca 03 4f 	jp z,$4f03	jp z,$0000
4a6f	4f 	ld c,a	ld c,a
4a70	af 	xor a	xor a
4a71	c9 	ret	ret
4a72	cd e5 49 	call $49e5	call $0000
4a75	cd be 4e 	call $4ebe	call $0000
4a78	c3 7f 46 	jp $467f	jp $0000
4a7b	11 72 31 	ld de,$3172	ld de,$0000
4a7e	d9 	exx	exx
4a7f	11 f8 17 	ld de,$17f8	ld de,$0000
4a82	d9 	exx	exx
4a83	06 7f 	ld b,$7f	ld b,$00
4a85	c9 	ret	ret
4a86	cd 94 4e 	call $4e94	call $0000
4a89	3e 16 	ld a,$16	ld a,$00
4a8b	cb 7c 	bit 7,h	bit 7,h
4a8d	c2 08 45 	jp nz,$4508	jp nz,$0000
4a90	0c 	inc c	inc c
4a91	0d 	dec c	dec c
4a92	ca 08 45 	jp z,$4508	jp z,$0000
4a95	11 04 35 	ld de,$3504	ld de,$0000
4a98	d9 	exx	exx
4a99	11 33 f3 	ld de,$f333	ld de,$0000
4a9c	d9 	exx	exx
4a9d	cd 15 4f 	call $4f15	call $0000
4aa0	79 	ld a,c	ld a,c
4aa1	0e 80 	ld c,$80	ld c,$00
4aa3	38 02 	jr c,$+$04	jr c,$+$00
4aa5	0d 	dec c	dec c
4aa6	3c 	inc a	inc a
4aa7	f5 	push af	push af
4aa8	cd 92 4f 	call $4f92	call $0000
4aab	cd 7d 4f 	call $4f7d	call $0000
4aae	cd 77 4f 	call $4f77	call $0000
4ab1	cd b0 4f 	call $4fb0	call $0000
4ab4	48 	ld c,b	ld c,b
4ab5	cc fb 74 	call z,$74fb	call z,$0000
4ab8	7d 	ld a,l	ld a,l
4ab9	af 	xor a	xor a
4aba	ae 	xor (hl)	xor (hl)
4abb	ff 	rst $38	rst $00
4abc	11 7e 8c 	ld de,$8c7e	ld de,$0000
4abf	d9 	exx	exx
4ac0	cd 4c 7e 	call $7e4c	call $0000
4ac3	e3 	ex (sp),hl	ex (sp),hl
4ac4	a9 	xor c	xor c
4ac5	aa 	xor d	xor d
4ac6	2a 7f 00 	ld hl,($007f)	ld hl,($0000)
4ac9	00 	nop	nop
4aca	00 	nop	nop
4acb	00 	nop	nop
4acc	81 	add a,c	add a,c
4acd	cd 86 4f 	call $4f86	call $0000
4ad0	cd 86 4f 	call $4f86	call $0000
4ad3	cd ef 46 	call $46ef	call $0000
4ad6	f1 	pop af	pop af
4ad7	cd 7d 4f 	call $4f7d	call $0000
4ada	08 	ex af,af'	ex af,af'
4adb	cd 03 4f 	call $4f03	call $0000
4ade	08 	ex af,af'	ex af,af'
4adf	d6 80 	sub $80	sub $00
4ae1	28 1b 	jr z,$+$1d	jr z,$+$00
4ae3	30 02 	jr nc,$+$04	jr nc,$+$00
4ae5	2f 	cpl	cpl
4ae6	3c 	inc a	inc a
4ae7	67 	ld h,a	ld h,a
4ae8	0e 87 	ld c,$87	ld c,$00
4aea	f5 	push af	push af
4aeb	cd 7a 4e 	call $4e7a	call $0000
4aee	cb bc 	res 7,h	res 7,h
4af0	cd 7b 4a 	call $4a7b	call $0000
4af3	cd ef 46 	call $46ef	call $0000
4af6	f1 	pop af	pop af
4af7	30 05 	jr nc,$+$07	jr nc,$+$00
4af9	fa fe 4a 	jp m,$4afe	jp m,$0000
4afc	cb fc 	set 7,h	set 7,h
4afe	cd 86 4f 	call $4f86	call $0000
4b01	cd 27 46 	call $4627	call $0000
4b04	af 	xor a	xor a
4b05	c9 	ret	ret
4b06	cd 86 4a 	call $4a86	call $0000
4b09	11 5b 5e 	ld de,$5e5b	ld de,$0000
4b0c	d9 	exx	exx
4b0d	11 a9 d8 	ld de,$d8a9	ld de,$0000
4b10	d9 	exx	exx
4b11	06 7e 	ld b,$7e	ld b,$00
4b13	cd ef 46 	call $46ef	call $0000
4b16	af 	xor a	xor a
4b17	c9 	ret	ret
4b18	cd 94 4e 	call $4e94	call $0000
4b1b	cd 7d 4f 	call $4f7d	call $0000
4b1e	cd 6f 4f 	call $4f6f	call $0000
4b21	cd ef 46 	call $46ef	call $0000
4b24	cd e5 49 	call $49e5	call $0000
4b27	cd 17 46 	call $4617	call $0000
4b2a	cd e9 48 	call $48e9	call $0000
4b2d	cd 86 4f 	call $4f86	call $0000
4b30	0c 	inc c	inc c
4b31	0d 	dec c	dec c
4b32	3e 02 	ld a,$02	ld a,$00
4b34	d5 	push de	push de
4b35	28 70 	jr z,$+$72	jr z,$+$00
4b37	d1 	pop de	pop de
4b38	cd 75 4a 	call $4a75	call $0000
4b3b	18 03 	jr $+$05	jr $+$00
4b3d	cd 94 4e 	call $4e94	call $0000
4b40	e5 	push hl	push hl
4b41	cb bc 	res 7,h	res 7,h
4b43	11 13 54 	ld de,$5413	ld de,$0000
4b46	d9 	exx	exx
4b47	11 d0 cc 	ld de,$ccd0	ld de,$0000
4b4a	d9 	exx	exx
4b4b	06 7e 	ld b,$7e	ld b,$00
4b4d	cd 12 4f 	call $4f12	call $0000
4b50	06 00 	ld b,$00	ld b,$00
4b52	38 1c 	jr c,$+$1e	jr c,$+$00
4b54	11 82 1a 	ld de,$1a82	ld de,$0000
4b57	d9 	exx	exx
4b58	11 9a 79 	ld de,$799a	ld de,$0000
4b5b	d9 	exx	exx
4b5c	06 81 	ld b,$81	ld b,$00
4b5e	cd 12 4f 	call $4f12	call $0000
4b61	38 08 	jr c,$+$0a	jr c,$+$00
4b63	cd 72 4a 	call $4a72	call $0000
4b66	06 02 	ld b,$02	ld b,$00
4b68	c3 70 4b 	jp $4b70	jp $0000
4b6b	cd 92 4f 	call $4f92	call $0000
4b6e	06 01 	ld b,$01	ld b,$00
4b70	c5 	push bc	push bc
4b71	cd 7d 4f 	call $4f7d	call $0000
4b74	cd 77 4f 	call $4f77	call $0000
4b77	cd b0 4f 	call $4fb0	call $0000
4b7a	35 	dec (hl)	dec (hl)
4b7b	f3 	di	di
4b7c	d8 	ret c	ret c
4b7d	37 	scf	scf
4b7e	7b 	ld a,e	ld a,e
4b7f	91 	sub c	sub c
4b80	6b 	ld l,e	ld l,e
4b81	b9 	cp c	cp c
4b82	aa 	xor d	xor d
4b83	7c 	ld a,h	ld a,h
4b84	de 41 	sbc a,$41	sbc a,$00
4b86	97 	sub a	sub a
4b87	61 	ld h,c	ld h,c
4b88	7c 	ld a,h	ld a,h
4b89	7b 	ld a,e	ld a,e
4b8a	9d 	sbc a,l	sbc a,l
4b8b	37 	scf	scf
4b8c	92 	sub d	sub d
4b8d	7d 	ld a,l	ld a,l
4b8e	5a 	ld e,d	ld e,d
4b8f	2a cc 4c 	ld hl,($4ccc)	ld hl,($0000)
4b92	7d 	ld a,l	ld a,l
4b93	5c 	ld e,h	ld e,h
4b94	a9 	xor c	xor c
4b95	aa 	xor d	xor d
4b96	aa 	xor d	xor d
4b97	7e 	ld a,(hl)	ld a,(hl)
4b98	00 	nop	nop
4b99	00 	nop	nop
4b9a	00 	nop	nop
4b9b	00 	nop	nop
4b9c	80 	add a,b	add a,b
4b9d	cd 86 4f 	call $4f86	call $0000
4ba0	cd 86 4f 	call $4f86	call $0000
4ba3	cd ef 46 	call $46ef	call $0000
4ba6	f1 	pop af	pop af
4ba7	cd f0 49 	call $49f0	call $0000
4baa	1f 	rra	rra
4bab	f5 	push af	push af
4bac	dc 27 46 	call c,$4627	call c,$0000
4baf	f1 	pop af	pop af
4bb0	04 	inc b	inc b
4bb1	1f 	rra	rra
4bb2	dc 17 46 	call c,$4617	call c,$0000
4bb5	f1 	pop af	pop af
4bb6	b7 	or a	or a
4bb7	f0 	ret p	ret p
4bb8	cb fc 	set 7,h	set 7,h
4bba	af 	xor a	xor a
4bbb	c9 	ret	ret
4bbc	cd 18 4b 	call $4b18	call $0000
4bbf	3e 02 	ld a,$02	ld a,$00
4bc1	f5 	push af	push af
4bc2	18 e3 	jr $-$1b	jr $-$00
4bc4	cd 94 4e 	call $4e94	call $0000
4bc7	06 00 	ld b,$00	ld b,$00
4bc9	cb 7c 	bit 7,h	bit 7,h
4bcb	28 06 	jr z,$+$08	jr z,$+$00
4bcd	cb bc 	res 7,h	res 7,h
4bcf	3e 2d 	ld a,$2d	ld a,$00
4bd1	12 	ld (de),a	ld (de),a
4bd2	13 	inc de	inc de
4bd3	af 	xor a	xor a
4bd4	b9 	cp c	cp c
4bd5	28 47 	jr z,$+$49	jr z,$+$00
4bd7	d5 	push de	push de
4bd8	78 	ld a,b	ld a,b
4bd9	f5 	push af	push af
4bda	79 	ld a,c	ld a,c
4bdb	fe a1 	cp $a1	cp $00
4bdd	30 1a 	jr nc,$+$1c	jr nc,$+$00
4bdf	fe 9b 	cp $9b	cp $00
4be1	30 25 	jr nc,$+$27	jr nc,$+$00
4be3	2f 	cpl	cpl
4be4	fe e1 	cp $e1	cp $00
4be6	38 02 	jr c,$+$04	jr c,$+$00
4be8	3e f8 	ld a,$f8	ld a,$00
4bea	c6 1c 	add a,$1c	add a,$00
4bec	cd d7 4f 	call $4fd7	call $0000
4bef	f5 	push af	push af
4bf0	cd ef 46 	call $46ef	call $0000
4bf3	f1 	pop af	pop af
4bf4	47 	ld b,a	ld b,a
4bf5	f1 	pop af	pop af
4bf6	90 	sub b	sub b
4bf7	18 e0 	jr $-$1e	jr $-$00
4bf9	d6 20 	sub $20	sub $00
4bfb	cd d7 4f 	call $4fd7	call $0000
4bfe	f5 	push af	push af
4bff	cd 7f 46 	call $467f	call $0000
4c02	f1 	pop af	pop af
4c03	47 	ld b,a	ld b,a
4c04	f1 	pop af	pop af
4c05	80 	add a,b	add a,b
4c06	18 d1 	jr $-$2d	jr $-$00
4c08	3e 09 	ld a,$09	ld a,$00
4c0a	cd d7 4f 	call $4fd7	call $0000
4c0d	cd 12 4f 	call $4f12	call $0000
4c10	79 	ld a,c	ld a,c
4c11	c1 	pop bc	pop bc
4c12	4f 	ld c,a	ld c,a
4c13	cb fc 	set 7,h	set 7,h
4c15	dc 34 4f 	call c,$4f34	call c,$0000
4c18	d1 	pop de	pop de
4c19	cb b9 	res 7,c	res 7,c
4c1b	3e 00 	ld a,$00	ld a,$00
4c1d	17 	rla	rla
4c1e	0c 	inc c	inc c
4c1f	08 	ex af,af'	ex af,af'
4c20	78 	ld a,b	ld a,b
4c21	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4c25	20 08 	jr nz,$+$0a	jr nz,$+$00
4c27	af 	xor a	xor a
4c28	dd be 01 	cp (ix+$01)	cp (ix+$00)
4c2b	28 0a 	jr z,$+$0c	jr z,$+$00
4c2d	3e f6 	ld a,$f6	ld a,$00
4c2f	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4c32	b7 	or a	or a
4c33	fa 37 4c 	jp m,$4c37	jp m,$0000
4c36	af 	xor a	xor a
4c37	f5 	push af	push af
4c38	08 	ex af,af'	ex af,af'
4c39	cd 5d 4f 	call $4f5d	call $0000
4c3c	8f 	adc a,a	adc a,a
4c3d	fe 0a 	cp $0a	cp $00
4c3f	38 05 	jr c,$+$07	jr c,$+$00
4c41	d6 0a 	sub $0a	sub $00
4c43	d9 	exx	exx
4c44	2c 	inc l	inc l
4c45	d9 	exx	exx
4c46	0d 	dec c	dec c
4c47	20 f0 	jr nz,$-$0e	jr nz,$-$00
4c49	4f 	ld c,a	ld c,a
4c4a	7c 	ld a,h	ld a,h
4c4b	e6 3f 	and $3f	and $00
4c4d	67 	ld h,a	ld h,a
4c4e	f1 	pop af	pop af
4c4f	f2 5c 4c 	jp p,$4c5c	jp p,$0000
4c52	3c 	inc a	inc a
4c53	20 1c 	jr nz,$+$1e	jr nz,$+$00
4c55	3e 04 	ld a,$04	ld a,$00
4c57	b9 	cp c	cp c
4c58	3e 00 	ld a,$00	ld a,$00
4c5a	18 15 	jr $+$17	jr $+$00
4c5c	f5 	push af	push af
4c5d	79 	ld a,c	ld a,c
4c5e	ce 30 	adc a,$30	adc a,$00
4c60	fe 30 	cp $30	cp $00
4c62	28 05 	jr z,$+$07	jr z,$+$00
4c64	fe 3a 	cp $3a	cp $00
4c66	3f 	ccf	ccf
4c67	30 08 	jr nc,$+$0a	jr nc,$+$00
4c69	e3 	ex (sp),hl	ex (sp),hl
4c6a	cb 75 	bit 6,l	bit 6,l
4c6c	e3 	ex (sp),hl	ex (sp),hl
4c6d	20 05 	jr nz,$+$07	jr nz,$+$00
4c6f	3e 30 	ld a,$30	ld a,$00
4c71	3c 	inc a	inc a
4c72	3d 	dec a	dec a
4c73	f5 	push af	push af
4c74	04 	inc b	inc b
4c75	cd e3 4e 	call $4ee3	call $0000
4c78	0e 20 	ld c,$20	ld c,$00
4c7a	3e 00 	ld a,$00	ld a,$00
4c7c	20 bb 	jr nz,$-$43	jr nz,$-$00
4c7e	f1 	pop af	pop af
4c7f	f5 	push af	push af
4c80	3e 00 	ld a,$00	ld a,$00
4c82	38 b5 	jr c,$-$49	jr c,$-$00
4c84	eb 	ex de,hl	ex de,hl
4c85	0e ff 	ld c,$ff	ld c,$00
4c87	16 01 	ld d,$01	ld d,$00
4c89	dd 5e 01 	ld e,(ix+$01)	ld e,(ix+$00)
4c8c	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
4c90	20 32 	jr nz,$+$34	jr nz,$+$00
4c92	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4c96	28 11 	jr z,$+$13	jr z,$+$00
4c98	78 	ld a,b	ld a,b
4c99	b7 	or a	or a
4c9a	28 04 	jr z,$+$06	jr z,$+$00
4c9c	fa a0 4c 	jp m,$4ca0	jp m,$0000
4c9f	50 	ld d,b	ld d,b
4ca0	7a 	ld a,d	ld a,d
4ca1	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4ca4	5f 	ld e,a	ld e,a
4ca5	fe 0b 	cp $0b	cp $00
4ca7	38 17 	jr c,$+$19	jr c,$+$00
4ca9	78 	ld a,b	ld a,b
4caa	11 01 01 	ld de,$0101	ld de,$0000
4cad	b7 	or a	or a
4cae	fa c4 4c 	jp m,$4cc4	jp m,$0000
4cb1	28 0d 	jr z,$+$0f	jr z,$+$00
4cb3	dd 7e 01 	ld a,(ix+$01)	ld a,(ix+$00)
4cb6	b7 	or a	or a
4cb7	20 02 	jr nz,$+$04	jr nz,$+$00
4cb9	3e 0a 	ld a,$0a	ld a,$00
4cbb	b8 	cp b	cp b
4cbc	38 06 	jr c,$+$08	jr c,$+$00
4cbe	50 	ld d,b	ld d,b
4cbf	58 	ld e,b	ld e,b
4cc0	78 	ld a,b	ld a,b
4cc1	c6 81 	add a,$81	add a,$00
4cc3	4f 	ld c,a	ld c,a
4cc4	cb fa 	set 7,d	set 7,d
4cc6	1d 	dec e	dec e
4cc7	7a 	ld a,d	ld a,d
4cc8	b9 	cp c	cp c
4cc9	30 0c 	jr nc,$+$0e	jr nc,$+$00
4ccb	f1 	pop af	pop af
4ccc	28 03 	jr z,$+$05	jr z,$+$00
4cce	f2 d9 4c 	jp p,$4cd9	jp p,$0000
4cd1	f5 	push af	push af
4cd2	1c 	inc e	inc e
4cd3	1d 	dec e	dec e
4cd4	fa e8 4c 	jp m,$4ce8	jp m,$0000
4cd7	3e 30 	ld a,$30	ld a,$00
4cd9	15 	dec d	dec d
4cda	e2 e0 4c 	jp po,$4ce0	jp po,$0000
4cdd	36 2e 	ld (hl),$2e	ld (hl),$00
4cdf	23 	inc hl	inc hl
4ce0	77 	ld (hl),a	ld (hl),a
4ce1	23 	inc hl	inc hl
4ce2	1d 	dec e	dec e
4ce3	f2 c7 4c 	jp p,$4cc7	jp p,$0000
4ce6	18 e3 	jr $-$1b	jr $-$00
4ce8	f1 	pop af	pop af
4ce9	0c 	inc c	inc c
4cea	4d 	ld c,l	ld c,l
4ceb	20 27 	jr nz,$+$29	jr nz,$+$00
4ced	36 45 	ld (hl),$45	ld (hl),$00
4cef	23 	inc hl	inc hl
4cf0	78 	ld a,b	ld a,b
4cf1	3d 	dec a	dec a
4cf2	f2 fa 4c 	jp p,$4cfa	jp p,$0000
4cf5	36 2d 	ld (hl),$2d	ld (hl),$00
4cf7	23 	inc hl	inc hl
4cf8	ed 44 	neg	neg
4cfa	36 30 	ld (hl),$30	ld (hl),$00
4cfc	28 15 	jr z,$+$17	jr z,$+$00
4cfe	fe 0a 	cp $0a	cp $00
4d00	47 	ld b,a	ld b,a
4d01	3e 3a 	ld a,$3a	ld a,$00
4d03	38 03 	jr c,$+$05	jr c,$+$00
4d05	23 	inc hl	inc hl
4d06	36 30 	ld (hl),$30	ld (hl),$00
4d08	34 	inc (hl)	inc (hl)
4d09	be 	cp (hl)	cp (hl)
4d0a	20 05 	jr nz,$+$07	jr nz,$+$00
4d0c	36 30 	ld (hl),$30	ld (hl),$00
4d0e	2b 	dec hl	dec hl
4d0f	34 	inc (hl)	inc (hl)
4d10	23 	inc hl	inc hl
4d11	10 f5 	djnz $-$09	djnz $-$00
4d13	23 	inc hl	inc hl
4d14	eb 	ex de,hl	ex de,hl
4d15	c9 	ret	ret
4d16	cd 03 4f 	call $4f03	call $0000
4d19	0e 00 	ld c,$00	ld c,$00
4d1b	cd 9b 4d 	call $4d9b	call $0000
4d1e	fe 2e 	cp $2e	cp $00
4d20	06 00 	ld b,$00	ld b,$00
4d22	cc 99 4d 	call z,$4d99	call z,$0000
4d25	fe 45 	cp $45	cp $00
4d27	3e 00 	ld a,$00	ld a,$00
4d29	cc 6a 4d 	call z,$4d6a	call z,$0000
4d2c	cb 7c 	bit 7,h	bit 7,h
4d2e	20 08 	jr nz,$+$0a	jr nz,$+$00
4d30	b7 	or a	or a
4d31	20 05 	jr nz,$+$07	jr nz,$+$00
4d33	b8 	cp b	cp b
4d34	20 02 	jr nz,$+$04	jr nz,$+$00
4d36	b9 	cp c	cp c
4d37	c8 	ret z	ret z
4d38	90 	sub b	sub b
4d39	81 	add a,c	add a,c
4d3a	0e 9f 	ld c,$9f	ld c,$00
4d3c	cd 7a 4e 	call $4e7a	call $0000
4d3f	cb bc 	res 7,h	res 7,h
4d41	b7 	or a	or a
4d42	c8 	ret z	ret z
4d43	fa 4e 4d 	jp m,$4d4e	jp m,$0000
4d46	cd d7 4f 	call $4fd7	call $0000
4d49	cd ef 46 	call $46ef	call $0000
4d4c	af 	xor a	xor a
4d4d	c9 	ret	ret
4d4e	fe da 	cp $da	cp $00
4d50	38 0a 	jr c,$+$0c	jr c,$+$00
4d52	ed 44 	neg	neg
4d54	cd d7 4f 	call $4fd7	call $0000
4d57	cd 7f 46 	call $467f	call $0000
4d5a	af 	xor a	xor a
4d5b	c9 	ret	ret
4d5c	f5 	push af	push af
4d5d	3e 26 	ld a,$26	ld a,$00
4d5f	cd d7 4f 	call $4fd7	call $0000
4d62	cd 7f 46 	call $467f	call $0000
4d65	f1 	pop af	pop af
4d66	c6 26 	add a,$26	add a,$00
4d68	18 e4 	jr $-$1a	jr $-$00
4d6a	c5 	push bc	push bc
4d6b	47 	ld b,a	ld b,a
4d6c	0e 02 	ld c,$02	ld c,$00
4d6e	dd 23 	inc ix	inc ix
4d70	cd c5 50 	call $50c5	call $0000
4d73	08 	ex af,af'	ex af,af'
4d74	cd bb 50 	call $50bb	call $0000
4d77	38 17 	jr c,$+$19	jr c,$+$00
4d79	78 	ld a,b	ld a,b
4d7a	87 	add a,a	add a,a
4d7b	87 	add a,a	add a,a
4d7c	80 	add a,b	add a,b
4d7d	87 	add a,a	add a,a
4d7e	47 	ld b,a	ld b,a
4d7f	dd 7e 00 	ld a,(ix)	ld a,(ix)
4d82	dd 23 	inc ix	inc ix
4d84	e6 0f 	and $0f	and $00
4d86	80 	add a,b	add a,b
4d87	47 	ld b,a	ld b,a
4d88	0d 	dec c	dec c
4d89	f2 74 4d 	jp p,$4d74	jp p,$0000
4d8c	06 64 	ld b,$64	ld b,$00
4d8e	18 e4 	jr $-$1a	jr $-$00
4d90	08 	ex af,af'	ex af,af'
4d91	fe 2d 	cp $2d	cp $00
4d93	78 	ld a,b	ld a,b
4d94	c1 	pop bc	pop bc
4d95	c0 	ret nz	ret nz
4d96	ed 44 	neg	neg
4d98	c9 	ret	ret
4d99	dd 23 	inc ix	inc ix
4d9b	cd bb 50 	call $50bb	call $0000
4d9e	d8 	ret c	ret c
4d9f	04 	inc b	inc b
4da0	dd 23 	inc ix	inc ix
4da2	cd 4e 4f 	call $4f4e	call $0000
4da5	38 13 	jr c,$+$15	jr c,$+$00
4da7	0d 	dec c	dec c
4da8	0c 	inc c	inc c
4da9	20 0f 	jr nz,$+$11	jr nz,$+$00
4dab	e6 0f 	and $0f	and $00
4dad	d9 	exx	exx
4dae	06 00 	ld b,$00	ld b,$00
4db0	4f 	ld c,a	ld c,a
4db1	09 	add hl,bc	add hl,bc
4db2	d9 	exx	exx
4db3	30 e6 	jr nc,$-$18	jr nc,$-$00
4db5	23 	inc hl	inc hl
4db6	7c 	ld a,h	ld a,h
4db7	b5 	or l	or l
4db8	20 e1 	jr nz,$-$1d	jr nz,$-$00
4dba	0c 	inc c	inc c
4dbb	cd c1 4e 	call $4ec1	call $0000
4dbe	18 db 	jr $-$23	jr $-$00
4dc0	08 	ex af,af'	ex af,af'
4dc1	af 	xor a	xor a
4dc2	08 	ex af,af'	ex af,af'
4dc3	cb fc 	set 7,h	set 7,h
4dc5	cd c6 4e 	call $4ec6	call $0000
4dc8	b9 	cp c	cp c
4dc9	c8 	ret z	ret z
4dca	d2 c5 4d 	jp nc,$4dc5	jp nc,$0000
4dcd	c3 d4 4e 	jp $4ed4	jp $0000
4dd0	cd be 4e 	call $4ebe	call $0000
4dd3	cd d9 4d 	call $4dd9	call $0000
4dd6	cd be 4e 	call $4ebe	call $0000
4dd9	0d 	dec c	dec c
4dda	0c 	inc c	inc c
4ddb	c8 	ret z	ret z
4ddc	cb 7c 	bit 7,h	bit 7,h
4dde	f5 	push af	push af
4ddf	3e 9f 	ld a,$9f	ld a,$00
4de1	cd c0 4d 	call $4dc0	call $0000
4de4	f1 	pop af	pop af
4de5	0e 00 	ld c,$00	ld c,$00
4de7	c8 	ret z	ret z
4de8	b7 	or a	or a
4de9	d9 	exx	exx
4dea	d5 	push de	push de
4deb	eb 	ex de,hl	ex de,hl
4dec	21 00 00 	ld hl,$0000	ld hl,$0000
4def	ed 52 	sbc hl,de	sbc hl,de
4df1	d1 	pop de	pop de
4df2	d9 	exx	exx
4df3	d5 	push de	push de
4df4	eb 	ex de,hl	ex de,hl
4df5	21 00 00 	ld hl,$0000	ld hl,$0000
4df8	ed 52 	sbc hl,de	sbc hl,de
4dfa	d1 	pop de	pop de
4dfb	c9 	ret	ret
4dfc	d9 	exx	exx
4dfd	2f 	cpl	cpl
4dfe	e5 	push hl	push hl
4dff	b7 	or a	or a
4e00	ed 62 	sbc hl,hl	sbc hl,hl
4e02	ed 42 	sbc hl,bc	sbc hl,bc
4e04	44 	ld b,h	ld b,h
4e05	4d 	ld c,l	ld c,l
4e06	e1 	pop hl	pop hl
4e07	18 e1 	jr $-$1d	jr $-$00
4e09	3e 96 	ld a,$96	ld a,$00
4e0b	b9 	cp c	cp c
4e0c	3e 17 	ld a,$17	ld a,$00
4e0e	da 08 45 	jp c,$4508	jp c,$0000
4e11	cd f0 49 	call $49f0	call $0000
4e14	d9 	exx	exx
4e15	01 69 21 	ld bc,$2169	ld bc,$0000
4e18	d9 	exx	exx
4e19	cb fa 	set 7,d	set 7,d
4e1b	cb fc 	set 7,h	set 7,h
4e1d	79 	ld a,c	ld a,c
4e1e	0e 00 	ld c,$00	ld c,$00
4e20	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4e24	dd e5 	push ix	push ix
4e26	b8 	cp b	cp b
4e27	38 3a 	jr c,$+$3c	jr c,$+$00
4e29	d9 	exx	exx
4e2a	e3 	ex (sp),hl	ex (sp),hl
4e2b	ed 42 	sbc hl,bc	sbc hl,bc
4e2d	e3 	ex (sp),hl	ex (sp),hl
4e2e	ed 52 	sbc hl,de	sbc hl,de
4e30	d9 	exx	exx
4e31	ed 52 	sbc hl,de	sbc hl,de
4e33	30 09 	jr nc,$+$0b	jr nc,$+$00
4e35	d9 	exx	exx
4e36	e3 	ex (sp),hl	ex (sp),hl
4e37	09 	add hl,bc	add hl,bc
4e38	e3 	ex (sp),hl	ex (sp),hl
4e39	ed 5a 	adc hl,de	adc hl,de
4e3b	d9 	exx	exx
4e3c	ed 5a 	adc hl,de	adc hl,de
4e3e	3f 	ccf	ccf
4e3f	cb 11 	rl c	rl c
4e41	30 02 	jr nc,$+$04	jr nc,$+$00
4e43	cb f9 	set 7,c	set 7,c
4e45	3d 	dec a	dec a
4e46	b8 	cp b	cp b
4e47	38 19 	jr c,$+$1b	jr c,$+$00
4e49	e3 	ex (sp),hl	ex (sp),hl
4e4a	29 	add hl,hl	add hl,hl
4e4b	e3 	ex (sp),hl	ex (sp),hl
4e4c	d9 	exx	exx
4e4d	ed 6a 	adc hl,hl	adc hl,hl
4e4f	d9 	exx	exx
4e50	ed 6a 	adc hl,hl	adc hl,hl
4e52	30 d5 	jr nc,$-$29	jr nc,$-$00
4e54	b7 	or a	or a
4e55	d9 	exx	exx
4e56	e3 	ex (sp),hl	ex (sp),hl
4e57	ed 42 	sbc hl,bc	sbc hl,bc
4e59	e3 	ex (sp),hl	ex (sp),hl
4e5a	ed 52 	sbc hl,de	sbc hl,de
4e5c	d9 	exx	exx
4e5d	ed 52 	sbc hl,de	sbc hl,de
4e5f	b7 	or a	or a
4e60	18 dc 	jr $-$22	jr $-$00
4e62	3c 	inc a	inc a
4e63	59 	ld e,c	ld e,c
4e64	4f 	ld c,a	ld c,a
4e65	d9 	exx	exx
4e66	c1 	pop bc	pop bc
4e67	d9 	exx	exx
4e68	cb 7c 	bit 7,h	bit 7,h
4e6a	c0 	ret nz	ret nz
4e6b	d9 	exx	exx
4e6c	cb 21 	sla c	sla c
4e6e	cb 10 	rl b	rl b
4e70	ed 6a 	adc hl,hl	adc hl,hl
4e72	d9 	exx	exx
4e73	ed 6a 	adc hl,hl	adc hl,hl
4e75	0d 	dec c	dec c
4e76	c2 68 4e 	jp nz,$4e68	jp nz,$0000
4e79	c9 	ret	ret
4e7a	cb 7c 	bit 7,h	bit 7,h
4e7c	c0 	ret nz	ret nz
4e7d	d9 	exx	exx
4e7e	29 	add hl,hl	add hl,hl
4e7f	d9 	exx	exx
4e80	ed 6a 	adc hl,hl	adc hl,hl
4e82	0d 	dec c	dec c
4e83	c2 7a 4e 	jp nz,$4e7a	jp nz,$0000
4e86	c9 	ret	ret
4e87	08 	ex af,af'	ex af,af'
4e88	c6 2e 	add a,$2e	add a,$00
4e8a	08 	ex af,af'	ex af,af'
4e8b	cd be 4e 	call $4ebe	call $0000
4e8e	cd 94 4e 	call $4e94	call $0000
4e91	cd be 4e 	call $4ebe	call $0000
4e94	0d 	dec c	dec c
4e95	0c 	inc c	inc c
4e96	c0 	ret nz	ret nz
4e97	cd e3 4e 	call $4ee3	call $0000
4e9a	c8 	ret z	ret z
4e9b	7c 	ld a,h	ld a,h
4e9c	b7 	or a	or a
4e9d	fc e8 4d 	call m,$4de8	call m,$0000
4ea0	0e 9f 	ld c,$9f	ld c,$00
4ea2	cd 7a 4e 	call $4e7a	call $0000
4ea5	b7 	or a	or a
4ea6	f8 	ret m	ret m
4ea7	cb bc 	res 7,h	res 7,h
4ea9	c9 	ret	ret
4eaa	d9 	exx	exx
4eab	01 01 00 	ld bc,$0001	ld bc,$0000
4eae	09 	add hl,bc	add hl,bc
4eaf	d9 	exx	exx
4eb0	d0 	ret nc	ret nc
4eb1	c5 	push bc	push bc
4eb2	01 01 00 	ld bc,$0001	ld bc,$0000
4eb5	09 	add hl,bc	add hl,bc
4eb6	c1 	pop bc	pop bc
4eb7	c9 	ret	ret
4eb8	b7 	or a	or a
4eb9	d9 	exx	exx
4eba	cb c5 	set 0,l	set 0,l
4ebc	d9 	exx	exx
4ebd	c9 	ret	ret
4ebe	79 	ld a,c	ld a,c
4ebf	48 	ld c,b	ld c,b
4ec0	47 	ld b,a	ld b,a
4ec1	eb 	ex de,hl	ex de,hl
4ec2	d9 	exx	exx
4ec3	eb 	ex de,hl	ex de,hl
4ec4	d9 	exx	exx
4ec5	c9 	ret	ret
4ec6	cd 64 4f 	call $4f64	call $0000
4ec9	d9 	exx	exx
4eca	cb 18 	rr b	rr b
4ecc	cb 19 	rr c	rr c
4ece	08 	ex af,af'	ex af,af'
4ecf	b0 	or b	or b
4ed0	08 	ex af,af'	ex af,af'
4ed1	d9 	exx	exx
4ed2	0c 	inc c	inc c
4ed3	c0 	ret nz	ret nz
4ed4	3e 14 	ld a,$14	ld a,$00
4ed6	c3 08 45 	jp $4508	jp $0000
4ed9	cd e3 4e 	call $4ee3	call $0000
4edc	c8 	ret z	ret z
4edd	7c 	ld a,h	ld a,h
4ede	e6 80 	and $80	and $00
4ee0	f6 40 	or $40	or $00
4ee2	c9 	ret	ret
4ee3	7c 	ld a,h	ld a,h
4ee4	b5 	or l	or l
4ee5	d9 	exx	exx
4ee6	b4 	or h	or h
4ee7	b5 	or l	or l
4ee8	d9 	exx	exx
4ee9	c9 	ret	ret
4eea	78 	ld a,b	ld a,b
4eeb	b1 	or c	or c
4eec	20 0a 	jr nz,$+$0c	jr nz,$+$00
4eee	cd 00 4f 	call $4f00	call $0000
4ef1	3e 00 	ld a,$00	ld a,$00
4ef3	c8 	ret z	ret z
4ef4	3e 80 	ld a,$80	ld a,$00
4ef6	1f 	rra	rra
4ef7	c9 	ret	ret
4ef8	cd 8b 4e 	call $4e8b	call $0000
4efb	cd 0d 4f 	call $4f0d	call $0000
4efe	18 f1 	jr $-$0d	jr $-$00
4f00	cd 2c 4f 	call $4f2c	call $0000
4f03	3e 00 	ld a,$00	ld a,$00
4f05	d9 	exx	exx
4f06	67 	ld h,a	ld h,a
4f07	6f 	ld l,a	ld l,a
4f08	d9 	exx	exx
4f09	67 	ld h,a	ld h,a
4f0a	6f 	ld l,a	ld l,a
4f0b	4f 	ld c,a	ld c,a
4f0c	c9 	ret	ret
4f0d	cd 1f 4f 	call $4f1f	call $0000
4f10	18 f1 	jr $-$0d	jr $-$00
4f12	79 	ld a,c	ld a,c
4f13	b8 	cp b	cp b
4f14	c0 	ret nz	ret nz
4f15	ed 52 	sbc hl,de	sbc hl,de
4f17	19 	add hl,de	add hl,de
4f18	c0 	ret nz	ret nz
4f19	d9 	exx	exx
4f1a	ed 52 	sbc hl,de	sbc hl,de
4f1c	19 	add hl,de	add hl,de
4f1d	d9 	exx	exx
4f1e	c9 	ret	ret
4f1f	7c 	ld a,h	ld a,h
4f20	aa 	xor d	xor d
4f21	7c 	ld a,h	ld a,h
4f22	17 	rla	rla
4f23	f8 	ret m	ret m
4f24	30 ec 	jr nc,$-$12	jr nc,$-$00
4f26	cd 12 4f 	call $4f12	call $0000
4f29	c8 	ret z	ret z
4f2a	3f 	ccf	ccf
4f2b	c9 	ret	ret
4f2c	7c 	ld a,h	ld a,h
4f2d	aa 	xor d	xor d
4f2e	f2 15 4f 	jp p,$4f15	jp p,$0000
4f31	7c 	ld a,h	ld a,h
4f32	17 	rla	rla
4f33	c9 	ret	ret
4f34	05 	dec b	dec b
4f35	0c 	inc c	inc c
4f36	cd 70 4f 	call $4f70	call $0000
4f39	cd 63 4f 	call $4f63	call $0000
4f3c	cd 63 4f 	call $4f63	call $0000
4f3f	08 	ex af,af'	ex af,af'
4f40	d9 	exx	exx
4f41	19 	add hl,de	add hl,de
4f42	d9 	exx	exx
4f43	ed 5a 	adc hl,de	adc hl,de
4f45	c9 	ret	ret
4f46	d9 	exx	exx
4f47	b7 	or a	or a
4f48	ed 52 	sbc hl,de	sbc hl,de
4f4a	d9 	exx	exx
4f4b	ed 52 	sbc hl,de	sbc hl,de
4f4d	c9 	ret	ret
4f4e	cd 70 4f 	call $4f70	call $0000
4f51	cd 5d 4f 	call $4f5d	call $0000
4f54	d8 	ret c	ret c
4f55	cd 5d 4f 	call $4f5d	call $0000
4f58	d8 	ret c	ret c
4f59	cd 40 4f 	call $4f40	call $0000
4f5c	d8 	ret c	ret c
4f5d	d9 	exx	exx
4f5e	29 	add hl,hl	add hl,hl
4f5f	d9 	exx	exx
4f60	ed 6a 	adc hl,hl	adc hl,hl
4f62	c9 	ret	ret
4f63	0c 	inc c	inc c
4f64	cb 3c 	srl h	srl h
4f66	cb 1d 	rr l	rr l
4f68	d9 	exx	exx
4f69	cb 1c 	rr h	rr h
4f6b	cb 1d 	rr l	rr l
4f6d	d9 	exx	exx
4f6e	c9 	ret	ret
4f6f	41 	ld b,c	ld b,c
4f70	54 	ld d,h	ld d,h
4f71	5d 	ld e,l	ld e,l
4f72	d9 	exx	exx
4f73	54 	ld d,h	ld d,h
4f74	5d 	ld e,l	ld e,l
4f75	d9 	exx	exx
4f76	c9 	ret	ret
4f77	cd 6f 4f 	call $4f6f	call $0000
4f7a	cd ef 46 	call $46ef	call $0000
4f7d	dd e1 	pop ix	pop ix
4f7f	c5 	push bc	push bc
4f80	e5 	push hl	push hl
4f81	d9 	exx	exx
4f82	e5 	push hl	push hl
4f83	d9 	exx	exx
4f84	dd e9 	jp (ix)	jp (ix)
4f86	dd e1 	pop ix	pop ix
4f88	d9 	exx	exx
4f89	d1 	pop de	pop de
4f8a	d9 	exx	exx
4f8b	d1 	pop de	pop de
4f8c	79 	ld a,c	ld a,c
4f8d	c1 	pop bc	pop bc
4f8e	41 	ld b,c	ld b,c
4f8f	4f 	ld c,a	ld c,a
4f90	dd e9 	jp (ix)	jp (ix)
4f92	cd 7d 4f 	call $4f7d	call $0000
4f95	cd e5 49 	call $49e5	call $0000
4f98	cd 27 46 	call $4627	call $0000
4f9b	cd 86 4f 	call $4f86	call $0000
4f9e	cd 7d 4f 	call $4f7d	call $0000
4fa1	cd be 4e 	call $4ebe	call $0000
4fa4	cd e5 49 	call $49e5	call $0000
4fa7	cd 11 46 	call $4611	call $0000
4faa	cd 86 4f 	call $4f86	call $0000
4fad	c3 7f 46 	jp $467f	jp $0000
4fb0	dd 21 02 00 	ld ix,$0002	ld ix,$0000
4fb4	dd 39 	add ix,sp	add ix,sp
4fb6	dd e3 	ex (sp),ix	ex (sp),ix
4fb8	cd d3 19 	call $19d3	call $0000
4fbb	cd ef 46 	call $46ef	call $0000
4fbe	11 05 00 	ld de,$0005	ld de,$0000
4fc1	dd 19 	add ix,de	add ix,de
4fc3	cd d3 19 	call $19d3	call $0000
4fc6	dd e3 	ex (sp),ix	ex (sp),ix
4fc8	04 	inc b	inc b
4fc9	05 	dec b	dec b
4fca	fa 27 46 	jp m,$4627	jp m,$0000
4fcd	cd 27 46 	call $4627	call $0000
4fd0	cd d3 19 	call $19d3	call $0000
4fd3	dd e3 	ex (sp),ix	ex (sp),ix
4fd5	18 e4 	jr $-$1a	jr $-$00
4fd7	3c 	inc a	inc a
4fd8	08 	ex af,af'	ex af,af'
4fd9	e5 	push hl	push hl
4fda	d9 	exx	exx
4fdb	e5 	push hl	push hl
4fdc	d9 	exx	exx
4fdd	cd e5 49 	call $49e5	call $0000
4fe0	cd be 4e 	call $4ebe	call $0000
4fe3	af 	xor a	xor a
4fe4	08 	ex af,af'	ex af,af'
4fe5	3d 	dec a	dec a
4fe6	28 20 	jr z,$+$22	jr z,$+$00
4fe8	f2 ef 4f 	jp p,$4fef	jp p,$0000
4feb	b9 	cp c	cp c
4fec	38 1a 	jr c,$+$1c	jr c,$+$00
4fee	3c 	inc a	inc a
4fef	08 	ex af,af'	ex af,af'
4ff0	3c 	inc a	inc a
4ff1	cb fc 	set 7,h	set 7,h
4ff3	cd 36 4f 	call $4f36	call $0000
4ff6	30 05 	jr nc,$+$07	jr nc,$+$00
4ff8	08 	ex af,af'	ex af,af'
4ff9	cd 63 4f 	call $4f63	call $0000
4ffc	08 	ex af,af'	ex af,af'
4ffd	08 	ex af,af'	ex af,af'
4ffe	dc aa 4e 	call c,$4eaa	call c,$0000
5001	0c 	inc c	inc c
5002	fa e4 4f 	jp m,$4fe4	jp m,$0000
5005	c3 d4 4e 	jp $4ed4	jp $0000
5008	cd be 4e 	call $4ebe	call $0000
500b	cb ba 	res 7,d	res 7,d
500d	d9 	exx	exx
500e	e1 	pop hl	pop hl
500f	d9 	exx	exx
5010	e1 	pop hl	pop hl
5011	08 	ex af,af'	ex af,af'
5012	c9 	ret	ret
5013	b7 	or a	or a
5014	ed 42 	sbc hl,bc	sbc hl,bc
5016	d9 	exx	exx
5017	ed 42 	sbc hl,bc	sbc hl,bc
5019	d9 	exx	exx
501a	30 05 	jr nc,$+$07	jr nc,$+$00
501c	09 	add hl,bc	add hl,bc
501d	d9 	exx	exx
501e	ed 4a 	adc hl,bc	adc hl,bc
5020	d9 	exx	exx
5021	3f 	ccf	ccf
5022	cb 13 	rl e	rl e
5024	cb 12 	rl d	rl d
5026	d9 	exx	exx
5027	cb 13 	rl e	rl e
5029	cb 12 	rl d	rl d
502b	d9 	exx	exx
502c	3c 	inc a	inc a
502d	f0 	ret p	ret p
502e	ed 6a 	adc hl,hl	adc hl,hl
5030	d9 	exx	exx
5031	ed 6a 	adc hl,hl	adc hl,hl
5033	d9 	exx	exx
5034	30 de 	jr nc,$-$20	jr nc,$-$00
5036	b7 	or a	or a
5037	ed 42 	sbc hl,bc	sbc hl,bc
5039	d9 	exx	exx
503a	ed 42 	sbc hl,bc	sbc hl,bc
503c	d9 	exx	exx
503d	37 	scf	scf
503e	c3 22 50 	jp $5022	jp $0000
5041	b7 	or a	or a
5042	d9 	exx	exx
5043	cb 1a 	rr d	rr d
5045	cb 1b 	rr e	rr e
5047	d9 	exx	exx
5048	cb 1a 	rr d	rr d
504a	cb 1b 	rr e	rr e
504c	30 05 	jr nc,$+$07	jr nc,$+$00
504e	09 	add hl,bc	add hl,bc
504f	d9 	exx	exx
5050	ed 4a 	adc hl,bc	adc hl,bc
5052	d9 	exx	exx
5053	3c 	inc a	inc a
5054	f0 	ret p	ret p
5055	d9 	exx	exx
5056	cb 1c 	rr h	rr h
5058	cb 1d 	rr l	rr l
505a	d9 	exx	exx
505b	cb 1c 	rr h	rr h
505d	cb 1d 	rr l	rr l
505f	c3 42 50 	jp $5042	jp $0000
5062	ed 42 	sbc hl,bc	sbc hl,bc
5064	d9 	exx	exx
5065	ed 42 	sbc hl,bc	sbc hl,bc
5067	d9 	exx	exx
5068	0c 	inc c	inc c
5069	30 07 	jr nc,$+$09	jr nc,$+$00
506b	0d 	dec c	dec c
506c	09 	add hl,bc	add hl,bc
506d	d9 	exx	exx
506e	ed 4a 	adc hl,bc	adc hl,bc
5070	d9 	exx	exx
5071	0d 	dec c	dec c
5072	3c 	inc a	inc a
5073	f0 	ret p	ret p
5074	cb 21 	sla c	sla c
5076	cb 10 	rl b	rl b
5078	0c 	inc c	inc c
5079	d9 	exx	exx
507a	cb 11 	rl c	rl c
507c	cb 10 	rl b	rl b
507e	cd aa 50 	call $50aa	call $0000
5081	cd aa 50 	call $50aa	call $0000
5084	d9 	exx	exx
5085	d2 62 50 	jp nc,$5062	jp nc,$0000
5088	b7 	or a	or a
5089	ed 42 	sbc hl,bc	sbc hl,bc
508b	d9 	exx	exx
508c	ed 42 	sbc hl,bc	sbc hl,bc
508e	d9 	exx	exx
508f	0c 	inc c	inc c
5090	c3 72 50 	jp $5072	jp $0000
5093	29 	add hl,hl	add hl,hl
5094	d9 	exx	exx
5095	ed 6a 	adc hl,hl	adc hl,hl
5097	d9 	exx	exx
5098	38 ee 	jr c,$-$10	jr c,$-$00
509a	3c 	inc a	inc a
509b	0c 	inc c	inc c
509c	ed 42 	sbc hl,bc	sbc hl,bc
509e	d9 	exx	exx
509f	ed 42 	sbc hl,bc	sbc hl,bc
50a1	d9 	exx	exx
50a2	d0 	ret nc	ret nc
50a3	09 	add hl,bc	add hl,bc
50a4	d9 	exx	exx
50a5	ed 4a 	adc hl,bc	adc hl,bc
50a7	d9 	exx	exx
50a8	0d 	dec c	dec c
50a9	c9 	ret	ret
50aa	d9 	exx	exx
50ab	cb 23 	sla e	sla e
50ad	cb 12 	rl d	rl d
50af	d9 	exx	exx
50b0	cb 13 	rl e	rl e
50b2	cb 12 	rl d	rl d
50b4	d9 	exx	exx
50b5	ed 6a 	adc hl,hl	adc hl,hl
50b7	d9 	exx	exx
50b8	ed 6a 	adc hl,hl	adc hl,hl
50ba	c9 	ret	ret
50bb	dd 7e 00 	ld a,(ix)	ld a,(ix)
50be	fe 3a 	cp $3a	cp $00
50c0	3f 	ccf	ccf
50c1	d8 	ret c	ret c
50c2	fe 30 	cp $30	cp $00
50c4	c9 	ret	ret
50c5	dd 7e 00 	ld a,(ix)	ld a,(ix)
50c8	dd 23 	inc ix	inc ix
50ca	fe 20 	cp $20	cp $00
50cc	28 f7 	jr z,$-$07	jr z,$-$00
50ce	fe 2b 	cp $2b	cp $00
50d0	c8 	ret z	ret z
50d1	fe 2d 	cp $2d	cp $00
50d3	c8 	ret z	ret z
50d4	dd 2b 	dec ix	dec ix
50d6	c9 	ret	ret
50d7	08 	ex af,af'	ex af,af'
50d8	cb 7c 	bit 7,h	bit 7,h
50da	c4 e8 4d 	call nz,$4de8	call nz,$0000
50dd	cd be 4e 	call $4ebe	call $0000
50e0	cb 7c 	bit 7,h	bit 7,h
50e2	c4 e8 4d 	call nz,$4de8	call nz,$0000
50e5	44 	ld b,h	ld b,h
50e6	4d 	ld c,l	ld c,l
50e7	21 00 00 	ld hl,$0000	ld hl,$0000
50ea	d9 	exx	exx
50eb	44 	ld b,h	ld b,h
50ec	4d 	ld c,l	ld c,l
50ed	21 00 00 	ld hl,$0000	ld hl,$0000
50f0	c9 	ret	ret
50f1	ff 	rst $38	rst $00
50f2	ff 	rst $38	rst $00
50f3	ff 	rst $38	rst $00
50f4	ff 	rst $38	rst $00
50f5	ff 	rst $38	rst $00
50f6	ff 	rst $38	rst $00
50f7	ff 	rst $38	rst $00
50f8	ff 	rst $38	rst $00
50f9	ff 	rst $38	rst $00
50fa	ff 	rst $38	rst $00
50fb	ff 	rst $38	rst $00
50fc	ff 	rst $38	rst $00
50fd	ff 	rst $38	rst $00
50fe	ff 	rst $38	rst $00
50ff	ff 	rst $38	rst $00
5100	ff 	rst $38	rst $00
5101	ff 	rst $38	rst $00
5102	ff 	rst $38	rst $00
5103	ff 	rst $38	rst $00
5104	ff 	rst $38	rst $00
5105	ff 	rst $38	rst $00
5106	ff 	rst $38	rst $00
5107	ff 	rst $38	rst $00
5108	ff 	rst $38	rst $00
5109	ff 	rst $38	rst $00
510a	ff 	rst $38	rst $00
510b	ff 	rst $38	rst $00
510c	ff 	rst $38	rst $00
510d	ff 	rst $38	rst $00
510e	ff 	rst $38	rst $00
510f	ff 	rst $38	rst $00
5110	ff 	rst $38	rst $00
5111	ff 	rst $38	rst $00
5112	ff 	rst $38	rst $00
5113	ff 	rst $38	rst $00
5114	ff 	rst $38	rst $00
5115	ff 	rst $38	rst $00
5116	ff 	rst $38	rst $00
5117	ff 	rst $38	rst $00
5118
