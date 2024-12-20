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
009a	21 00 53 	ld hl,$5300	ld hl,$0000
009d	36 00 	ld (hl),$00	ld (hl),$00
009f	79 	ld a,c	ld a,c
00a0	fe 02 	cp $02	cp $00
00a2	28 24 	jr z,$+$26	jr z,$+$00
00a4	38 35 	jr c,$+$37	jr c,$+$00
00a6	cd 7e 45 	call $457e	call $0000
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
00cc	11 00 53 	ld de,$5300	ld de,$0000
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
00de	c3 9b 37 	jp $379b	jp $0000
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
01a0	cd b7 18 	call $18b7	call $0000
01a3	d9 	exx	exx
01a4	3e 16 	ld a,$16	ld a,$00
01a6	cd 97 05 	call $0597	call $0000
01a9	7d 	ld a,l	ld a,l
01aa	cd 97 05 	call $0597	call $0000
01ad	3e 08 	ld a,$08	ld a,$00
01af	49 cf 	rst.lis $08	rst.lis $00
01b1	5b dd cb 04 66 	bit.lil 4,(ix+$04)	bit.lil 4,(ix+$00)
01b6	28 f9 	jr z,$-$05	jr z,$-$00
01b8	dd e1 	pop ix	pop ix
01ba	c3 1d 25 	jp $251d	jp $0000
01bd	dd e5 	push ix	push ix
01bf	3e 08 	ld a,$08	ld a,$00
01c1	49 cf 	rst.lis $08	rst.lis $00
01c3	5b dd cb 04 8e 	res.lil 1,(ix+$04)	res.lil 1,(ix+$00)
01c8	3e 17 	ld a,$17	ld a,$00
01ca	cd 97 05 	call $0597	call $0000
01cd	3e 00 	ld a,$00	ld a,$00
01cf	cd 97 05 	call $0597	call $0000
01d2	3e 83 	ld a,$83	ld a,$00
01d4	cd 97 05 	call $0597	call $0000
01d7	7b 	ld a,e	ld a,e
01d8	cd 97 05 	call $0597	call $0000
01db	7a 	ld a,d	ld a,d
01dc	cd 97 05 	call $0597	call $0000
01df	7d 	ld a,l	ld a,l
01e0	cd 97 05 	call $0597	call $0000
01e3	7c 	ld a,h	ld a,h
01e4	cd 97 05 	call $0597	call $0000
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
0207	cd 97 05 	call $0597	call $0000
020a	3e 00 	ld a,$00	ld a,$00
020c	cd 97 05 	call $0597	call $0000
020f	3e 84 	ld a,$84	ld a,$00
0211	cd 97 05 	call $0597	call $0000
0214	7b 	ld a,e	ld a,e
0215	cd 97 05 	call $0597	call $0000
0218	7a 	ld a,d	ld a,d
0219	cd 97 05 	call $0597	call $0000
021c	7d 	ld a,l	ld a,l
021d	cd 97 05 	call $0597	call $0000
0220	7c 	ld a,h	ld a,h
0221	cd 97 05 	call $0597	call $0000
0224	5b dd cb 04 56 	bit.lil 2,(ix+$04)	bit.lil 2,(ix+$00)
0229	28 f9 	jr z,$-$05	jr z,$-$00
022b	5b dd 7e 16 	ld.lil a,(ix+$16)	ld.lil a,(ix+$00)
022f	dd e1 	pop ix	pop ix
0231	c9 	ret	ret
0232	cd b7 18 	call $18b7	call $0000
0235	d9 	exx	exx
0236	7d 	ld a,l	ld a,l
0237	32 00 53 	ld ($5300),a	ld ($0000),a
023a	cd 8f 45 	call $458f	call $0000
023d	fe 2c 	cp $2c	cp $00
023f	28 0e 	jr z,$+$10	jr z,$+$00
0241	3e 11 	ld a,$11	ld a,$00
0243	cd 97 05 	call $0597	call $0000
0246	3a 00 53 	ld a,($5300)	ld a,($0000)
0249	cd 97 05 	call $0597	call $0000
024c	c3 1d 25 	jp $251d	jp $0000
024f	cd 26 21 	call $2126	call $0000
0252	cd b7 18 	call $18b7	call $0000
0255	d9 	exx	exx
0256	7d 	ld a,l	ld a,l
0257	32 01 53 	ld ($5301),a	ld ($0000),a
025a	cd 8f 45 	call $458f	call $0000
025d	fe 2c 	cp $2c	cp $00
025f	28 23 	jr z,$+$25	jr z,$+$00
0261	3e 13 	ld a,$13	ld a,$00
0263	cd 97 05 	call $0597	call $0000
0266	3a 00 53 	ld a,($5300)	ld a,($0000)
0269	cd 97 05 	call $0597	call $0000
026c	3a 01 53 	ld a,($5301)	ld a,($0000)
026f	cd 97 05 	call $0597	call $0000
0272	3e 00 	ld a,$00	ld a,$00
0274	cd 97 05 	call $0597	call $0000
0277	3e 00 	ld a,$00	ld a,$00
0279	cd 97 05 	call $0597	call $0000
027c	3e 00 	ld a,$00	ld a,$00
027e	cd 97 05 	call $0597	call $0000
0281	c3 1d 25 	jp $251d	jp $0000
0284	cd 26 21 	call $2126	call $0000
0287	cd b7 18 	call $18b7	call $0000
028a	d9 	exx	exx
028b	7d 	ld a,l	ld a,l
028c	32 02 53 	ld ($5302),a	ld ($0000),a
028f	cd 26 21 	call $2126	call $0000
0292	cd b7 18 	call $18b7	call $0000
0295	d9 	exx	exx
0296	7d 	ld a,l	ld a,l
0297	32 03 53 	ld ($5303),a	ld ($0000),a
029a	3e 13 	ld a,$13	ld a,$00
029c	cd 97 05 	call $0597	call $0000
029f	3a 00 53 	ld a,($5300)	ld a,($0000)
02a2	cd 97 05 	call $0597	call $0000
02a5	3e ff 	ld a,$ff	ld a,$00
02a7	cd 97 05 	call $0597	call $0000
02aa	3a 01 53 	ld a,($5301)	ld a,($0000)
02ad	cd 97 05 	call $0597	call $0000
02b0	3a 02 53 	ld a,($5302)	ld a,($0000)
02b3	cd 97 05 	call $0597	call $0000
02b6	3a 03 53 	ld a,($5303)	ld a,($0000)
02b9	cd 97 05 	call $0597	call $0000
02bc	c3 1d 25 	jp $251d	jp $0000
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
0477	21 07 52 	ld hl,$5207	ld hl,$0000
047a	5b dd 7e 19 	ld.lil a,(ix+$19)	ld.lil a,(ix+$00)
047e	be 	cp (hl)	cp (hl)
047f	20 09 	jr nz,$+$0b	jr nz,$+$00
0481	af 	xor a	xor a
0482	32 06 52 	ld ($5206),a	ld ($0000),a
0485	32 05 52 	ld ($5205),a	ld ($0000),a
0488	5b c9 	ret.lil	ret.lil
048a	77 	ld (hl),a	ld (hl),a
048b	5b dd 7e 18 	ld.lil a,(ix+$18)	ld.lil a,(ix+$00)
048f	b7 	or a	or a
0490	28 ef 	jr z,$-$0f	jr z,$-$00
0492	32 05 52 	ld ($5205),a	ld ($0000),a
0495	5b dd 7e 05 	ld.lil a,(ix+$05)	ld.lil a,(ix+$00)
0499	32 06 52 	ld ($5206),a	ld ($0000),a
049c	fe 1b 	cp $1b	cp $00
049e	cc 18 06 	call z,$0618	call z,$0000
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
0586	32 00 52 	ld ($5200),a	ld ($0000),a
0589	21 00 56 	ld hl,$5600	ld hl,$0000
058c	11 00 ff 	ld de,$ff00	ld de,$0000
058f	5f 	ld e,a	ld e,a
0590	3a 00 53 	ld a,($5300)	ld a,($0000)
0593	b7 	or a	or a
0594	c9 	ret	ret
0595	3e 3e 	ld a,$3e	ld a,$00
0597	e5 	push hl	push hl
0598	21 fe 55 	ld hl,$55fe	ld hl,$0000
059b	cb 5e 	bit 3,(hl)	bit 3,(hl)
059d	20 0a 	jr nz,$+$0c	jr nz,$+$00
059f	2a 03 52 	ld hl,($5203)	ld hl,($0000)
05a2	2d 	dec l	dec l
05a3	28 17 	jr z,$+$19	jr z,$+$00
05a5	e1 	pop hl	pop hl
05a6	49 d7 	rst.lis $10	rst.lis $00
05a8	c9 	ret	ret
05a9	2a 01 52 	ld hl,($5201)	ld hl,($0000)
05ac	fe 0a 	cp $0a	cp $00
05ae	28 0a 	jr z,$+$0c	jr z,$+$00
05b0	fe 0d 	cp $0d	cp $00
05b2	20 01 	jr nz,$+$03	jr nz,$+$00
05b4	af 	xor a	xor a
05b5	77 	ld (hl),a	ld (hl),a
05b6	23 	inc hl	inc hl
05b7	22 01 52 	ld ($5201),hl	ld ($0000),hl
05ba	e1 	pop hl	pop hl
05bb	c9 	ret	ret
05bc	d5 	push de	push de
05bd	5c 	ld e,h	ld e,h
05be	cd 65 06 	call $0665	call $0000
05c1	d1 	pop de	pop de
05c2	e1 	pop hl	pop hl
05c3	c9 	ret	ret
05c4	cd 8f 45 	call $458f	call $0000
05c7	fe 28 	cp $28	cp $00
05c9	28 09 	jr z,$+$0b	jr z,$+$00
05cb	3e 00 	ld a,$00	ld a,$00
05cd	49 cf 	rst.lis $08	rst.lis $00
05cf	fe 1b 	cp $1b	cp $00
05d1	28 6a 	jr z,$+$6c	jr z,$+$00
05d3	c9 	ret	ret
05d4	fd 23 	inc iy	inc iy
05d6	cd b7 18 	call $18b7	call $0000
05d9	d9 	exx	exx
05da	e5 	push hl	push hl
05db	cd 26 21 	call $2126	call $0000
05de	cd b7 18 	call $18b7	call $0000
05e1	d9 	exx	exx
05e2	d1 	pop de	pop de
05e3	cd 32 21 	call $2132	call $0000
05e6	c3 bd 01 	jp $01bd	jp $0000
05e9	1e 01 	ld e,$01	ld e,$00
05eb	fd e5 	push iy	push iy
05ed	e5 	push hl	push hl
05ee	01 00 01 	ld bc,$0100	ld bc,$0000
05f1	3e 09 	ld a,$09	ld a,$00
05f3	49 cf 	rst.lis $08	rst.lis $00
05f5	e1 	pop hl	pop hl
05f6	fd e1 	pop iy	pop iy
05f8	f5 	push af	push af
05f9	cd 25 05 	call $0525	call $0000
05fc	cd 7f 41 	call $417f	call $0000
05ff	f1 	pop af	pop af
0600	fe 1b 	cp $1b	cp $00
0602	ca 3d 06 	jp z,$063d	jp z,$0000
0605	3a 00 52 	ld a,($5200)	ld a,($0000)
0608	cb bf 	res 7,a	res 7,a
060a	32 00 52 	ld ($5200),a	ld ($0000),a
060d	cd 0f 0b 	call $0b0f	call $0000
0610	af 	xor a	xor a
0611	32 05 52 	ld ($5205),a	ld ($0000),a
0614	32 06 52 	ld ($5206),a	ld ($0000),a
0617	c9 	ret	ret
0618	e5 	push hl	push hl
0619	21 00 52 	ld hl,$5200	ld hl,$0000
061c	cb 76 	bit 6,(hl)	bit 6,(hl)
061e	20 02 	jr nz,$+$04	jr nz,$+$00
0620	cb fe 	set 7,(hl)	set 7,(hl)
0622	e1 	pop hl	pop hl
0623	c9 	ret	ret
0624	cd 2d 06 	call $062d	call $0000
0627	c0 	ret nz	ret nz
0628	fe 1b 	cp $1b	cp $00
062a	28 ec 	jr z,$-$12	jr z,$-$00
062c	c9 	ret	ret
062d	3a 05 52 	ld a,($5205)	ld a,($0000)
0630	3d 	dec a	dec a
0631	3a 06 52 	ld a,($5206)	ld a,($0000)
0634	c9 	ret	ret
0635	cd 24 06 	call $0624	call $0000
0638	3a 00 52 	ld a,($5200)	ld a,($0000)
063b	b7 	or a	or a
063c	f0 	ret p	ret p
063d	21 00 52 	ld hl,$5200	ld hl,$0000
0640	cb be 	res 7,(hl)	res 7,(hl)
0642	c3 67 26 	jp $2667	jp $0000
0645	c9 	ret	ret
0646	0e 01 	ld c,$01	ld c,$00
0648	28 06 	jr z,$+$08	jr z,$+$00
064a	0e 32 	ld c,$32	ld c,$00
064c	38 02 	jr c,$+$04	jr c,$+$00
064e	0e 0a 	ld c,$0a	ld c,$00
0650	3e 0a 	ld a,$0a	ld a,$00
0652	49 cf 	rst.lis $08	rst.lis $00
0654	c9 	ret	ret
0655	c5 	push bc	push bc
0656	4b 	ld c,e	ld c,e
0657	3e 0b 	ld a,$0b	ld a,$00
0659	49 cf 	rst.lis $08	rst.lis $00
065b	c1 	pop bc	pop bc
065c	c9 	ret	ret
065d	c5 	push bc	push bc
065e	4b 	ld c,e	ld c,e
065f	3e 0c 	ld a,$0c	ld a,$00
0661	49 cf 	rst.lis $08	rst.lis $00
0663	c1 	pop bc	pop bc
0664	c9 	ret	ret
0665	c5 	push bc	push bc
0666	4b 	ld c,e	ld c,e
0667	47 	ld b,a	ld b,a
0668	3e 0d 	ld a,$0d	ld a,$00
066a	49 cf 	rst.lis $08	rst.lis $00
066c	c1 	pop bc	pop bc
066d	c9 	ret	ret
066e	c5 	push bc	push bc
066f	4b 	ld c,e	ld c,e
0670	3e 0e 	ld a,$0e	ld a,$00
0672	49 cf 	rst.lis $08	rst.lis $00
0674	c1 	pop bc	pop bc
0675	fe 01 	cp $01	cp $00
0677	c9 	ret	ret
0678	fd e5 	push iy	push iy
067a	4b 	ld c,e	ld c,e
067b	3e 19 	ld a,$19	ld a,$00
067d	49 cf 	rst.lis $08	rst.lis $00
067f	5b e5 	push.lil hl	push.lil hl
0681	5b fd e1 	pop.lil iy	pop.lil iy
0684	5b fd 6e 11 	ld.lil l,(iy+$11)	ld.lil l,(iy+$00)
0688	5b fd 66 12 	ld.lil h,(iy+$12)	ld.lil h,(iy+$00)
068c	5b fd 5e 13 	ld.lil e,(iy+$13)	ld.lil e,(iy+$00)
0690	5b fd 56 14 	ld.lil d,(iy+$14)	ld.lil d,(iy+$00)
0694	fd e1 	pop iy	pop iy
0696	c9 	ret	ret
0697	fd e5 	push iy	push iy
0699	4f 	ld c,a	ld c,a
069a	5b e5 	push.lil hl	push.lil hl
069c	5b 21 02 00 00 	ld.lil hl,$000002	ld.lil hl,$000000
06a1	5b 39 	add.lil hl,sp	add.lil hl,sp
06a3	5b 73 	ld.lil (hl),e	ld.lil (hl),e
06a5	5b e1 	pop.lil hl	pop.lil hl
06a7	5a 	ld e,d	ld e,d
06a8	3e 1c 	ld a,$1c	ld a,$00
06aa	49 cf 	rst.lis $08	rst.lis $00
06ac	fd e1 	pop iy	pop iy
06ae	c9 	ret	ret
06af	fd e5 	push iy	push iy
06b1	4b 	ld c,e	ld c,e
06b2	3e 19 	ld a,$19	ld a,$00
06b4	49 cf 	rst.lis $08	rst.lis $00
06b6	5b e5 	push.lil hl	push.lil hl
06b8	5b fd e1 	pop.lil iy	pop.lil iy
06bb	5b fd 6e 0b 	ld.lil l,(iy+$0b)	ld.lil l,(iy+$00)
06bf	5b fd 66 0c 	ld.lil h,(iy+$0c)	ld.lil h,(iy+$00)
06c3	5b fd 5e 0d 	ld.lil e,(iy+$0d)	ld.lil e,(iy+$00)
06c7	5b fd 56 0e 	ld.lil d,(iy+$0e)	ld.lil d,(iy+$00)
06cb	fd e1 	pop iy	pop iy
06cd	c9 	ret	ret
06ce	c5 	push bc	push bc
06cf	d5 	push de	push de
06d0	11 00 53 	ld de,$5300	ld de,$0000
06d3	cd 3d 05 	call $053d	call $0000
06d6	21 00 53 	ld hl,$5300	ld hl,$0000
06d9	cd 17 08 	call $0817	call $0000
06dc	cd 28 08 	call $0828	call $0000
06df	d1 	pop de	pop de
06e0	c1 	pop bc	pop bc
06e1	b7 	or a	or a
06e2	ca a9 07 	jp z,$07a9	jp z,$0000
06e5	af 	xor a	xor a
06e6	cd 46 06 	call $0646	call $0000
06e9	5f 	ld e,a	ld e,a
06ea	b7 	or a	or a
06eb	3e 04 	ld a,$04	ld a,$00
06ed	ca b1 07 	jp z,$07b1	jp z,$0000
06f0	cd c2 40 	call $40c2	call $0000
06f3	21 00 53 	ld hl,$5300	ld hl,$0000
06f6	cd 5d 06 	call $065d	call $0000
06f9	38 1c 	jr c,$+$1e	jr c,$+$00
06fb	fe 0a 	cp $0a	cp $00
06fd	28 18 	jr z,$+$1a	jr z,$+$00
06ff	fe 21 	cp $21	cp $00
0701	38 f3 	jr c,$-$0b	jr c,$-$00
0703	77 	ld (hl),a	ld (hl),a
0704	2c 	inc l	inc l
0705	cd 5d 06 	call $065d	call $0000
0708	38 26 	jr c,$+$28	jr c,$+$00
070a	fe 20 	cp $20	cp $00
070c	38 05 	jr c,$+$07	jr c,$+$00
070e	77 	ld (hl),a	ld (hl),a
070f	2c 	inc l	inc l
0710	ca 73 3f 	jp z,$3f73	jp z,$0000
0713	fe 0a 	cp $0a	cp $00
0715	20 ee 	jr nz,$-$10	jr nz,$-$00
0717	36 0d 	ld (hl),$0d	ld (hl),$00
0719	7d 	ld a,l	ld a,l
071a	fe 02 	cp $02	cp $00
071c	38 08 	jr c,$+$0a	jr c,$+$00
071e	d5 	push de	push de
071f	cd 3b 07 	call $073b	call $0000
0722	dc 9e 40 	call c,$409e	call c,$0000
0725	d1 	pop de	pop de
0726	cd 6e 06 	call $066e	call $0000
0729	20 c8 	jr nz,$-$36	jr nz,$-$00
072b	cd 55 06 	call $0655	call $0000
072e	37 	scf	scf
072f	c9 	ret	ret
0730	fe 20 	cp $20	cp $00
0732	38 05 	jr c,$+$07	jr c,$+$00
0734	77 	ld (hl),a	ld (hl),a
0735	2c 	inc l	inc l
0736	ca 73 3f 	jp z,$3f73	jp z,$0000
0739	18 dc 	jr $-$22	jr $-$00
073b	af 	xor a	xor a
073c	32 fb 55 	ld ($55fb),a	ld ($0000),a
073f	fd 21 00 53 	ld iy,$5300	ld iy,$0000
0743	cd 0e 44 	call $440e	call $0000
0746	cd 8f 45 	call $458f	call $0000
0749	7c 	ld a,h	ld a,h
074a	b5 	or l	or l
074b	28 00 	jr z,$+$02	jr z,$+$00
074d	11 00 54 	ld de,$5400	ld de,$0000
0750	0e 01 	ld c,$01	ld c,$00
0752	e5 	push hl	push hl
0753	cd 9c 44 	call $449c	call $0000
0756	e1 	pop hl	pop hl
0757	12 	ld (de),a	ld (de),a
0758	af 	xor a	xor a
0759	47 	ld b,a	ld b,a
075a	4b 	ld c,e	ld c,e
075b	13 	inc de	inc de
075c	12 	ld (de),a	ld (de),a
075d	7c 	ld a,h	ld a,h
075e	b5 	or l	or l
075f	fd 21 00 54 	ld iy,$5400	ld iy,$0000
0763	ca 1d 25 	jp z,$251d	jp z,$0000
0766	c5 	push bc	push bc
0767	cd c7 41 	call $41c7	call $0000
076a	cc 6d 40 	call z,$406d	call z,$0000
076d	c1 	pop bc	pop bc
076e	79 	ld a,c	ld a,c
076f	b7 	or a	or a
0770	c8 	ret z	ret z
0771	c6 04 	add a,$04	add a,$00
0773	4f 	ld c,a	ld c,a
0774	d5 	push de	push de
0775	c5 	push bc	push bc
0776	eb 	ex de,hl	ex de,hl
0777	c5 	push bc	push bc
0778	cd a9 40 	call $40a9	call $0000
077b	c1 	pop bc	pop bc
077c	e5 	push hl	push hl
077d	09 	add hl,bc	add hl,bc
077e	e5 	push hl	push hl
077f	24 	inc h	inc h
0780	af 	xor a	xor a
0781	ed 72 	sbc hl,sp	sbc hl,sp
0783	e1 	pop hl	pop hl
0784	d2 c8 3f 	jp nc,$3fc8	jp nc,$0000
0787	e3 	ex (sp),hl	ex (sp),hl
0788	e5 	push hl	push hl
0789	23 	inc hl	inc hl
078a	b7 	or a	or a
078b	ed 52 	sbc hl,de	sbc hl,de
078d	44 	ld b,h	ld b,h
078e	4d 	ld c,l	ld c,l
078f	e1 	pop hl	pop hl
0790	d1 	pop de	pop de
0791	28 02 	jr z,$+$04	jr z,$+$00
0793	ed b8 	lddr	lddr
0795	c1 	pop bc	pop bc
0796	d1 	pop de	pop de
0797	23 	inc hl	inc hl
0798	71 	ld (hl),c	ld (hl),c
0799	23 	inc hl	inc hl
079a	73 	ld (hl),e	ld (hl),e
079b	23 	inc hl	inc hl
079c	72 	ld (hl),d	ld (hl),d
079d	23 	inc hl	inc hl
079e	11 00 54 	ld de,$5400	ld de,$0000
07a1	eb 	ex de,hl	ex de,hl
07a2	0d 	dec c	dec c
07a3	0d 	dec c	dec c
07a4	0d 	dec c	dec c
07a5	ed b0 	ldir	ldir
07a7	37 	scf	scf
07a8	c9 	ret	ret
07a9	3e 01 	ld a,$01	ld a,$00
07ab	49 cf 	rst.lis $08	rst.lis $00
07ad	d0 	ret nc	ret nc
07ae	b7 	or a	or a
07af	37 	scf	scf
07b0	c8 	ret z	ret z
07b1	f5 	push af	push af
07b2	21 00 53 	ld hl,$5300	ld hl,$0000
07b5	01 00 01 	ld bc,$0100	ld bc,$0000
07b8	5f 	ld e,a	ld e,a
07b9	3e 0f 	ld a,$0f	ld a,$00
07bb	49 cf 	rst.lis $08	rst.lis $00
07bd	f1 	pop af	pop af
07be	e5 	push hl	push hl
07bf	c6 7f 	add a,$7f	add a,$00
07c1	c3 d9 3f 	jp $3fd9	jp $0000
07c4	c5 	push bc	push bc
07c5	d5 	push de	push de
07c6	11 00 53 	ld de,$5300	ld de,$0000
07c9	cd 3d 05 	call $053d	call $0000
07cc	21 00 53 	ld hl,$5300	ld hl,$0000
07cf	cd 17 08 	call $0817	call $0000
07d2	cd 28 08 	call $0828	call $0000
07d5	d1 	pop de	pop de
07d6	c1 	pop bc	pop bc
07d7	b7 	or a	or a
07d8	28 35 	jr z,$+$37	jr z,$+$00
07da	3a 03 52 	ld a,($5203)	ld a,($0000)
07dd	f5 	push af	push af
07de	af 	xor a	xor a
07df	3c 	inc a	inc a
07e0	32 03 52 	ld ($5203),a	ld ($0000),a
07e3	cd 46 06 	call $0646	call $0000
07e6	32 04 52 	ld ($5204),a	ld ($0000),a
07e9	dd 21 fe 55 	ld ix,$55fe	ld ix,$0000
07ed	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
07f0	d9 	exx	exx
07f1	01 00 00 	ld bc,$0000	ld bc,$0000
07f4	d9 	exx	exx
07f5	7e 	ld a,(hl)	ld a,(hl)
07f6	b7 	or a	or a
07f7	28 0a 	jr z,$+$0c	jr z,$+$00
07f9	23 	inc hl	inc hl
07fa	5e 	ld e,(hl)	ld e,(hl)
07fb	23 	inc hl	inc hl
07fc	56 	ld d,(hl)	ld d,(hl)
07fd	23 	inc hl	inc hl
07fe	cd e1 40 	call $40e1	call $0000
0801	18 f2 	jr $-$0c	jr $-$00
0803	3a 04 52 	ld a,($5204)	ld a,($0000)
0806	5f 	ld e,a	ld e,a
0807	cd 55 06 	call $0655	call $0000
080a	f1 	pop af	pop af
080b	32 03 52 	ld ($5203),a	ld ($0000),a
080e	c9 	ret	ret
080f	3e 02 	ld a,$02	ld a,$00
0811	49 cf 	rst.lis $08	rst.lis $00
0813	b7 	or a	or a
0814	c8 	ret z	ret z
0815	18 9a 	jr $-$64	jr $-$00
0817	e5 	push hl	push hl
0818	0e 2e 	ld c,$2e	ld c,$00
081a	cd 5d 05 	call $055d	call $0000
081d	b7 	or a	or a
081e	20 06 	jr nz,$+$08	jr nz,$+$00
0820	11 54 08 	ld de,$0854	ld de,$0000
0823	cd 73 05 	call $0573	call $0000
0826	e1 	pop hl	pop hl
0827	c9 	ret	ret
0828	e5 	push hl	push hl
0829	0e 2e 	ld c,$2e	ld c,$00
082b	cd 5d 05 	call $055d	call $0000
082e	11 54 08 	ld de,$0854	ld de,$0000
0831	e5 	push hl	push hl
0832	cd 65 05 	call $0565	call $0000
0835	e1 	pop hl	pop hl
0836	28 18 	jr z,$+$1a	jr z,$+$00
0838	1a 	ld a,(de)	ld a,(de)
0839	13 	inc de	inc de
083a	b7 	or a	or a
083b	20 fb 	jr nz,$-$03	jr nz,$-$00
083d	13 	inc de	inc de
083e	1a 	ld a,(de)	ld a,(de)
083f	b7 	or a	or a
0840	20 ef 	jr nz,$-$0f	jr nz,$-$00
0842	3e cc 	ld a,$cc	ld a,$00
0844	cd d9 3f 	call $3fd9	call $0000
0847	42 	ld b,d	ld b,d
0848	61 	ld h,c	ld h,c
0849	64 	ld h,h	ld h,h
084a	20 6e 	jr nz,$+$70	jr nz,$+$00
084c	61 	ld h,c	ld h,c
084d	6d 	ld l,l	ld l,l
084e	65 	ld h,l	ld h,l
084f	00 	nop	nop
0850	13 	inc de	inc de
0851	1a 	ld a,(de)	ld a,(de)
0852	e1 	pop hl	pop hl
0853	c9 	ret	ret
0854	2e 42 	ld l,$42	ld l,$00
0856	42 	ld b,d	ld b,d
0857	43 	ld b,e	ld b,e
0858	00 	nop	nop
0859	00 	nop	nop
085a	2e 54 	ld l,$54	ld l,$00
085c	58 	ld e,b	ld e,b
085d	54 	ld d,h	ld d,h
085e	00 	nop	nop
085f	01 2e 41 	ld bc,$412e	ld bc,$0000
0862	53 	ld d,e	ld d,e
0863	43 	ld b,e	ld b,e
0864	00 	nop	nop
0865	01 2e 42 	ld bc,$422e	ld bc,$0000
0868	41 	ld b,c	ld b,c
0869	53 	ld d,e	ld d,e
086a	00 	nop	nop
086b	01 00 fe 	ld bc,$fe00	ld bc,$0000
086e	01 28 1d 	ld bc,$1d28	ld bc,$0000
0871	fe 02 	cp $02	cp $00
0873	28 2f 	jr z,$+$31	jr z,$+$00
0875	fe 0e 	cp $0e	cp $00
0877	28 4f 	jr z,$+$51	jr z,$+$00
0879	fe 0f 	cp $0f	cp $00
087b	28 10 	jr z,$+$12	jr z,$+$00
087d	fe 07 	cp $07	cp $00
087f	ca 22 0b 	jp z,$0b22	jp z,$0000
0882	fe 08 	cp $08	cp $00
0884	28 07 	jr z,$+$09	jr z,$+$00
0886	fe 09 	cp $09	cp $00
0888	28 30 	jr z,$+$32	jr z,$+$00
088a	c3 f5 08 	jp $08f5	jp $0000
088d	c9 	ret	ret
088e	dd e5 	push ix	push ix
0890	3e 08 	ld a,$08	ld a,$00
0892	49 cf 	rst.lis $08	rst.lis $00
0894	06 04 	ld b,$04	ld b,$00
0896	5b dd 7e 00 	ld.lil a,(ix)	ld.lil a,(ix)
089a	77 	ld (hl),a	ld (hl),a
089b	23 	inc hl	inc hl
089c	5b dd 23 	inc.lil ix	inc.lil ix
089f	10 f5 	djnz $-$09	djnz $-$00
08a1	dd e1 	pop ix	pop ix
08a3	c9 	ret	ret
08a4	dd e5 	push ix	push ix
08a6	3e 08 	ld a,$08	ld a,$00
08a8	49 cf 	rst.lis $08	rst.lis $00
08aa	06 04 	ld b,$04	ld b,$00
08ac	7e 	ld a,(hl)	ld a,(hl)
08ad	5b dd 77 00 	ld.lil (ix),a	ld.lil (ix),a
08b1	23 	inc hl	inc hl
08b2	5b dd 23 	inc.lil ix	inc.lil ix
08b5	10 f5 	djnz $-$09	djnz $-$00
08b7	dd e1 	pop ix	pop ix
08b9	c9 	ret	ret
08ba	ed 5b 08 52 	ld de,($5208)	ld de,($0000)
08be	2a 0a 52 	ld hl,($520a)	ld hl,($0000)
08c1	cd fa 01 	call $01fa	call $0000
08c4	32 0c 52 	ld ($520c),a	ld ($0000),a
08c7	c9 	ret	ret
08c8	fd e5 	push iy	push iy
08ca	3e 12 	ld a,$12	ld a,$00
08cc	49 cf 	rst.lis $08	rst.lis $00
08ce	fd e1 	pop iy	pop iy
08d0	c9 	ret	ret
08d1	fe 0b 	cp $0b	cp $00
08d3	28 31 	jr z,$+$33	jr z,$+$00
08d5	fe 0c 	cp $0c	cp $00
08d7	28 54 	jr z,$+$56	jr z,$+$00
08d9	fe 13 	cp $13	cp $00
08db	28 77 	jr z,$+$79	jr z,$+$00
08dd	fe 76 	cp $76	cp $00
08df	28 7b 	jr z,$+$7d	jr z,$+$00
08e1	fe 81 	cp $81	cp $00
08e3	ca 84 09 	jp z,$0984	jp z,$0000
08e6	fe 86 	cp $86	cp $00
08e8	ca dd 09 	jp z,$09dd	jp z,$0000
08eb	fe 87 	cp $87	cp $00
08ed	ca 09 0a 	jp z,$0a09	jp z,$0000
08f0	fe a0 	cp $a0	cp $00
08f2	ca 1f 0a 	jp z,$0a1f	jp z,$0000
08f5	3e fe 	ld a,$fe	ld a,$00
08f7	cd d9 3f 	call $3fd9	call $0000
08fa	42 	ld b,d	ld b,d
08fb	61 	ld h,c	ld h,c
08fc	64 	ld h,h	ld h,h
08fd	20 63 	jr nz,$+$65	jr nz,$+$00
08ff	6f 	ld l,a	ld l,a
0900	6d 	ld l,l	ld l,l
0901	6d 	ld l,l	ld l,l
0902	61 	ld h,c	ld h,c
0903	6e 	ld l,(hl)	ld l,(hl)
0904	64 	ld h,h	ld h,h
0905	00 	nop	nop
0906	3e 17 	ld a,$17	ld a,$00
0908	cd 97 05 	call $0597	call $0000
090b	3e 00 	ld a,$00	ld a,$00
090d	cd 97 05 	call $0597	call $0000
0910	3e 88 	ld a,$88	ld a,$00
0912	cd 97 05 	call $0597	call $0000
0915	7d 	ld a,l	ld a,l
0916	cd 97 05 	call $0597	call $0000
0919	7c 	ld a,h	ld a,h
091a	cd 97 05 	call $0597	call $0000
091d	3e 00 	ld a,$00	ld a,$00
091f	cd 97 05 	call $0597	call $0000
0922	3e 00 	ld a,$00	ld a,$00
0924	cd 97 05 	call $0597	call $0000
0927	3e ff 	ld a,$ff	ld a,$00
0929	cd 97 05 	call $0597	call $0000
092c	c9 	ret	ret
092d	3e 17 	ld a,$17	ld a,$00
092f	cd 97 05 	call $0597	call $0000
0932	3e 00 	ld a,$00	ld a,$00
0934	cd 97 05 	call $0597	call $0000
0937	3e 88 	ld a,$88	ld a,$00
0939	cd 97 05 	call $0597	call $0000
093c	3e 00 	ld a,$00	ld a,$00
093e	cd 97 05 	call $0597	call $0000
0941	3e 00 	ld a,$00	ld a,$00
0943	cd 97 05 	call $0597	call $0000
0946	7d 	ld a,l	ld a,l
0947	cd 97 05 	call $0597	call $0000
094a	7c 	ld a,h	ld a,h
094b	cd 97 05 	call $0597	call $0000
094e	3e ff 	ld a,$ff	ld a,$00
0950	cd 97 05 	call $0597	call $0000
0953	c9 	ret	ret
0954	cd 0f 0b 	call $0b0f	call $0000
0957	2e 00 	ld l,$00	ld l,$00
0959	c3 d2 1b 	jp $1bd2	jp $0000
095c	3e 17 	ld a,$17	ld a,$00
095e	cd 97 05 	call $0597	call $0000
0961	3e 00 	ld a,$00	ld a,$00
0963	cd 97 05 	call $0597	call $0000
0966	3e 88 	ld a,$88	ld a,$00
0968	cd 97 05 	call $0597	call $0000
096b	3e 00 	ld a,$00	ld a,$00
096d	cd 97 05 	call $0597	call $0000
0970	3e 00 	ld a,$00	ld a,$00
0972	cd 97 05 	call $0597	call $0000
0975	3e 00 	ld a,$00	ld a,$00
0977	cd 97 05 	call $0597	call $0000
097a	3e 00 	ld a,$00	ld a,$00
097c	cd 97 05 	call $0597	call $0000
097f	7d 	ld a,l	ld a,l
0980	cd 97 05 	call $0597	call $0000
0983	c9 	ret	ret
0984	d9 	exx	exx
0985	cb 7c 	bit 7,h	bit 7,h
0987	d9 	exx	exx
0988	20 1c 	jr nz,$+$1e	jr nz,$+$00
098a	cd 2d 06 	call $062d	call $0000
098d	28 09 	jr z,$+$0b	jr z,$+$00
098f	cd 0f 0b 	call $0b0f	call $0000
0992	7c 	ld a,h	ld a,h
0993	b5 	or l	or l
0994	2b 	dec hl	dec hl
0995	20 ed 	jr nz,$-$11	jr nz,$-$00
0997	c9 	ret	ret
0998	21 05 52 	ld hl,$5205	ld hl,$0000
099b	36 00 	ld (hl),$00	ld (hl),$00
099d	fe 1b 	cp $1b	cp $00
099f	ca 18 06 	jp z,$0618	jp z,$0000
09a2	26 00 	ld h,$00	ld h,$00
09a4	6f 	ld l,a	ld l,a
09a5	c9 	ret	ret
09a6	3e 1e 	ld a,$1e	ld a,$00
09a8	49 cf 	rst.lis $08	rst.lis $00
09aa	23 	inc hl	inc hl
09ab	7d 	ld a,l	ld a,l
09ac	ed 44 	neg	neg
09ae	4f 	ld c,a	ld c,a
09af	3e 01 	ld a,$01	ld a,$00
09b1	fa c8 3f 	jp m,$3fc8	jp m,$0000
09b4	21 d5 09 	ld hl,$09d5	ld hl,$0000
09b7	11 00 00 	ld de,$0000	ld de,$0000
09ba	79 	ld a,c	ld a,c
09bb	e6 07 	and $07	and $00
09bd	5f 	ld e,a	ld e,a
09be	19 	add hl,de	add hl,de
09bf	46 	ld b,(hl)	ld b,(hl)
09c0	79 	ld a,c	ld a,c
09c1	e6 78 	and $78	and $00
09c3	0f 	rrca	rrca
09c4	0f 	rrca	rrca
09c5	0f 	rrca	rrca
09c6	5f 	ld e,a	ld e,a
09c7	5b dd 19 	add.lil ix,de	add.lil ix,de
09ca	5b dd 7e 00 	ld.lil a,(ix)	ld.lil a,(ix)
09ce	a0 	and b	and b
09cf	ca 7c 20 	jp z,$207c	jp z,$0000
09d2	c3 41 1c 	jp $1c41	jp $0000
09d5	01 02 04 	ld bc,$0402	ld bc,$0000
09d8	08 	ex af,af'	ex af,af'
09d9	10 20 	djnz $+$22	djnz $+$00
09db	40 80 	add.sis a,b	add.sis a,b
09dd	dd e5 	push ix	push ix
09df	3e 08 	ld a,$08	ld a,$00
09e1	49 cf 	rst.lis $08	rst.lis $00
09e3	5b dd cb 04 86 	res.lil 0,(ix+$04)	res.lil 0,(ix+$00)
09e8	3e 17 	ld a,$17	ld a,$00
09ea	cd 97 05 	call $0597	call $0000
09ed	3e 00 	ld a,$00	ld a,$00
09ef	cd 97 05 	call $0597	call $0000
09f2	3e 82 	ld a,$82	ld a,$00
09f4	cd 97 05 	call $0597	call $0000
09f7	5b dd cb 04 46 	bit.lil 0,(ix+$04)	bit.lil 0,(ix+$00)
09fc	28 f9 	jr z,$-$05	jr z,$-$00
09fe	5b dd 6e 07 	ld.lil l,(ix+$07)	ld.lil l,(ix+$00)
0a02	5b dd 66 08 	ld.lil h,(ix+$08)	ld.lil h,(ix+$00)
0a06	dd e1 	pop ix	pop ix
0a08	c9 	ret	ret
0a09	dd e5 	push ix	push ix
0a0b	cd 2d 0e 	call $0e2d	call $0000
0a0e	cd bd 01 	call $01bd	call $0000
0a11	6f 	ld l,a	ld l,a
0a12	3e 08 	ld a,$08	ld a,$00
0a14	49 cf 	rst.lis $08	rst.lis $00
0a16	5b dd 66 27 	ld.lil h,(ix+$27)	ld.lil h,(ix+$00)
0a1a	dd e1 	pop ix	pop ix
0a1c	c3 d4 1b 	jp $1bd4	jp $0000
0a1f	dd e5 	push ix	push ix
0a21	3e 08 	ld a,$08	ld a,$00
0a23	49 cf 	rst.lis $08	rst.lis $00
0a25	5b 01 00 00 00 	ld.lil bc,$000000	ld.lil bc,$000000
0a2a	4d 	ld c,l	ld c,l
0a2b	5b dd 09 	add.lil ix,bc	add.lil ix,bc
0a2e	5b dd 6e 00 	ld.lil l,(ix)	ld.lil l,(ix)
0a32	dd e1 	pop ix	pop ix
0a34	c3 d2 1b 	jp $1bd2	jp $0000
0a37	cd 91 0a 	call $0a91	call $0000
0a3a	fe 0d 	cp $0d	cp $00
0a3c	c8 	ret z	ret z
0a3d	fe 7c 	cp $7c	cp $00
0a3f	c8 	ret z	ret z
0a40	eb 	ex de,hl	ex de,hl
0a41	21 a0 0a 	ld hl,$0aa0	ld hl,$0000
0a44	1a 	ld a,(de)	ld a,(de)
0a45	cd 98 0a 	call $0a98	call $0000
0a48	be 	cp (hl)	cp (hl)
0a49	28 0b 	jr z,$+$0d	jr z,$+$00
0a4b	38 2e 	jr c,$+$30	jr c,$+$00
0a4d	cb 7e 	bit 7,(hl)	bit 7,(hl)
0a4f	23 	inc hl	inc hl
0a50	28 fb 	jr z,$-$03	jr z,$-$00
0a52	23 	inc hl	inc hl
0a53	23 	inc hl	inc hl
0a54	18 ee 	jr $-$10	jr $-$00
0a56	d5 	push de	push de
0a57	13 	inc de	inc de
0a58	23 	inc hl	inc hl
0a59	1a 	ld a,(de)	ld a,(de)
0a5a	cd 98 0a 	call $0a98	call $0000
0a5d	fe 2e 	cp $2e	cp $00
0a5f	28 0a 	jr z,$+$0c	jr z,$+$00
0a61	ae 	xor (hl)	xor (hl)
0a62	28 f3 	jr z,$-$0b	jr z,$-$00
0a64	fe 80 	cp $80	cp $00
0a66	28 03 	jr z,$+$05	jr z,$+$00
0a68	d1 	pop de	pop de
0a69	18 e2 	jr $-$1c	jr $-$00
0a6b	f1 	pop af	pop af
0a6c	13 	inc de	inc de
0a6d	cb 7e 	bit 7,(hl)	bit 7,(hl)
0a6f	23 	inc hl	inc hl
0a70	28 fb 	jr z,$-$03	jr z,$-$00
0a72	7e 	ld a,(hl)	ld a,(hl)
0a73	23 	inc hl	inc hl
0a74	66 	ld h,(hl)	ld h,(hl)
0a75	6f 	ld l,a	ld l,a
0a76	e5 	push hl	push hl
0a77	eb 	ex de,hl	ex de,hl
0a78	c3 91 0a 	jp $0a91	jp $0000
0a7b	eb 	ex de,hl	ex de,hl
0a7c	11 00 53 	ld de,$5300	ld de,$0000
0a7f	d5 	push de	push de
0a80	cd 4f 05 	call $054f	call $0000
0a83	e1 	pop hl	pop hl
0a84	fd e5 	push iy	push iy
0a86	3e 10 	ld a,$10	ld a,$00
0a88	49 cf 	rst.lis $08	rst.lis $00
0a8a	fd e1 	pop iy	pop iy
0a8c	b7 	or a	or a
0a8d	c8 	ret z	ret z
0a8e	c3 b1 07 	jp $07b1	jp $0000
0a91	7e 	ld a,(hl)	ld a,(hl)
0a92	fe 20 	cp $20	cp $00
0a94	c0 	ret nz	ret nz
0a95	23 	inc hl	inc hl
0a96	18 f9 	jr $-$05	jr $-$00
0a98	e6 7f 	and $7f	and $00
0a9a	fe 60 	cp $60	cp $00
0a9c	d8 	ret c	ret c
0a9d	e6 5f 	and $5f	and $00
0a9f	c9 	ret	ret
0aa0	42 	ld b,d	ld b,d
0aa1	59 	ld e,c	ld e,c
0aa2	c5 	push bc	push bc
0aa3	b0 	or b	or b
0aa4	0a 	ld a,(bc)	ld a,(bc)
0aa5	45 	ld b,l	ld b,l
0aa6	44 	ld b,h	ld b,h
0aa7	49 d4 bb 0a 	call.lis nc,$0abb	call.lis nc,$0000
0aab	46 	ld b,(hl)	ld b,(hl)
0aac	d8 	ret c	ret c
0aad	f7 	rst $30	rst $00
0aae	0a 	ld a,(bc)	ld a,(bc)
0aaf	ff 	rst $38	rst $00
0ab0	cd 48 04 	call $0448	call $0000
0ab3	5b dd e1 	pop.lil ix	pop.lil ix
0ab6	21 00 00 	ld hl,$0000	ld hl,$0000
0ab9	dd e9 	jp (ix)	jp (ix)
0abb	cd be 04 	call $04be	call $0000
0abe	eb 	ex de,hl	ex de,hl
0abf	cd c7 41 	call $41c7	call $0000
0ac2	3e 29 	ld a,$29	ld a,$00
0ac4	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
0ac7	23 	inc hl	inc hl
0ac8	5e 	ld e,(hl)	ld e,(hl)
0ac9	23 	inc hl	inc hl
0aca	56 	ld d,(hl)	ld d,(hl)
0acb	23 	inc hl	inc hl
0acc	dd 21 00 53 	ld ix,$5300	ld ix,$0000
0ad0	dd 22 01 52 	ld ($5201),ix	ld ($0000),ix
0ad4	dd 21 fe 55 	ld ix,$55fe	ld ix,$0000
0ad8	dd 7e 00 	ld a,(ix)	ld a,(ix)
0adb	f5 	push af	push af
0adc	dd 36 00 09 	ld (ix),$09	ld (ix),$00
0ae0	cd e1 40 	call $40e1	call $0000
0ae3	f1 	pop af	pop af
0ae4	dd 77 00 	ld (ix),a	ld (ix),a
0ae7	21 00 53 	ld hl,$5300	ld hl,$0000
0aea	5d 	ld e,l	ld e,l
0aeb	cd eb 05 	call $05eb	call $0000
0aee	cd 3b 07 	call $073b	call $0000
0af1	dc 9e 40 	call c,$409e	call c,$0000
0af4	c3 34 38 	jp $3834	jp $0000
0af7	cd be 04 	call $04be	call $0000
0afa	4b 	ld c,e	ld c,e
0afb	cd be 04 	call $04be	call $0000
0afe	7a 	ld a,d	ld a,d
0aff	b7 	or a	or a
0b00	28 03 	jr z,$+$05	jr z,$+$00
0b02	eb 	ex de,hl	ex de,hl
0b03	18 06 	jr $+$08	jr $+$00
0b05	43 	ld b,e	ld b,e
0b06	cd be 04 	call $04be	call $0000
0b09	68 	ld l,b	ld l,b
0b0a	63 	ld h,e	ld h,e
0b0b	79 	ld a,c	ld a,c
0b0c	c3 d1 08 	jp $08d1	jp $0000
0b0f	dd e5 	push ix	push ix
0b11	3e 08 	ld a,$08	ld a,$00
0b13	49 cf 	rst.lis $08	rst.lis $00
0b15	5b dd 7e 00 	ld.lil a,(ix)	ld.lil a,(ix)
0b19	5b dd be 00 	cp.lil (ix)	cp.lil (ix)
0b1d	28 fa 	jr z,$-$04	jr z,$-$00
0b1f	dd e1 	pop ix	pop ix
0b21	c9 	ret	ret
0b22	7e 	ld a,(hl)	ld a,(hl)
0b23	32 00 53 	ld ($5300),a	ld ($0000),a
0b26	af 	xor a	xor a
0b27	32 01 53 	ld ($5301),a	ld ($0000),a
0b2a	23 	inc hl	inc hl
0b2b	23 	inc hl	inc hl
0b2c	4e 	ld c,(hl)	ld c,(hl)
0b2d	06 06 	ld b,$06	ld b,$00
0b2f	ed 4c 	mlt bc	mlt bc
0b31	79 	ld a,c	ld a,c
0b32	32 02 53 	ld ($5302),a	ld ($0000),a
0b35	23 	inc hl	inc hl
0b36	23 	inc hl	inc hl
0b37	e5 	push hl	push hl
0b38	6e 	ld l,(hl)	ld l,(hl)
0b39	26 00 	ld h,$00	ld h,$00
0b3b	11 ad 0b 	ld de,$0bad	ld de,$0000
0b3e	29 	add hl,hl	add hl,hl
0b3f	19 	add hl,de	add hl,de
0b40	7e 	ld a,(hl)	ld a,(hl)
0b41	32 03 53 	ld ($5303),a	ld ($0000),a
0b44	23 	inc hl	inc hl
0b45	7e 	ld a,(hl)	ld a,(hl)
0b46	32 04 53 	ld ($5304),a	ld ($0000),a
0b49	e1 	pop hl	pop hl
0b4a	23 	inc hl	inc hl
0b4b	23 	inc hl	inc hl
0b4c	4e 	ld c,(hl)	ld c,(hl)
0b4d	06 32 	ld b,$32	ld b,$00
0b4f	ed 4c 	mlt bc	mlt bc
0b51	ed 43 05 53 	ld ($5305),bc	ld ($0000),bc
0b55	dd e5 	push ix	push ix
0b57	3e 08 	ld a,$08	ld a,$00
0b59	49 cf 	rst.lis $08	rst.lis $00
0b5b	5b dd cb 04 9e 	res.lil 3,(ix+$04)	res.lil 3,(ix+$00)
0b60	3e 17 	ld a,$17	ld a,$00
0b62	cd 97 05 	call $0597	call $0000
0b65	3e 00 	ld a,$00	ld a,$00
0b67	cd 97 05 	call $0597	call $0000
0b6a	3e 85 	ld a,$85	ld a,$00
0b6c	cd 97 05 	call $0597	call $0000
0b6f	3a 00 53 	ld a,($5300)	ld a,($0000)
0b72	cd 97 05 	call $0597	call $0000
0b75	3a 01 53 	ld a,($5301)	ld a,($0000)
0b78	cd 97 05 	call $0597	call $0000
0b7b	3a 02 53 	ld a,($5302)	ld a,($0000)
0b7e	cd 97 05 	call $0597	call $0000
0b81	3a 03 53 	ld a,($5303)	ld a,($0000)
0b84	cd 97 05 	call $0597	call $0000
0b87	3a 04 53 	ld a,($5304)	ld a,($0000)
0b8a	cd 97 05 	call $0597	call $0000
0b8d	3a 05 53 	ld a,($5305)	ld a,($0000)
0b90	cd 97 05 	call $0597	call $0000
0b93	3a 06 53 	ld a,($5306)	ld a,($0000)
0b96	cd 97 05 	call $0597	call $0000
0b99	5b dd cb 04 5e 	bit.lil 3,(ix+$04)	bit.lil 3,(ix+$00)
0b9e	28 f9 	jr z,$-$05	jr z,$-$00
0ba0	cd 38 06 	call $0638	call $0000
0ba3	5b dd 7e 0e 	ld.lil a,(ix+$0e)	ld.lil a,(ix+$00)
0ba7	a7 	and a	and a
0ba8	28 b1 	jr z,$-$4d	jr z,$-$00
0baa	dd e1 	pop ix	pop ix
0bac	c9 	ret	ret
0bad	75 	ld (hl),l	ld (hl),l
0bae	00 	nop	nop
0baf	76 	halt	halt
0bb0	00 	nop	nop
0bb1	78 	ld a,b	ld a,b
0bb2	00 	nop	nop
0bb3	7a 	ld a,d	ld a,d
0bb4	00 	nop	nop
0bb5	7b 	ld a,e	ld a,e
0bb6	00 	nop	nop
0bb7	83 	add a,e	add a,e
0bb8	00 	nop	nop
0bb9	85 	add a,l	add a,l
0bba	00 	nop	nop
0bbb	87 	add a,a	add a,a
0bbc	00 	nop	nop
0bbd	89 	adc a,c	adc a,c
0bbe	00 	nop	nop
0bbf	8b 	adc a,e	adc a,e
0bc0	00 	nop	nop
0bc1	8d 	adc a,l	adc a,l
0bc2	00 	nop	nop
0bc3	8f 	adc a,a	adc a,a
0bc4	00 	nop	nop
0bc5	91 	sub c	sub c
0bc6	00 	nop	nop
0bc7	93 	sub e	sub e
0bc8	00 	nop	nop
0bc9	95 	sub l	sub l
0bca	00 	nop	nop
0bcb	97 	sub a	sub a
0bcc	00 	nop	nop
0bcd	99 	sbc a,c	sbc a,c
0bce	00 	nop	nop
0bcf	9c 	sbc a,h	sbc a,h
0bd0	00 	nop	nop
0bd1	9e 	sbc a,(hl)	sbc a,(hl)
0bd2	00 	nop	nop
0bd3	a0 	and b	and b
0bd4	00 	nop	nop
0bd5	a2 	and d	and d
0bd6	00 	nop	nop
0bd7	a5 	and l	and l
0bd8	00 	nop	nop
0bd9	a7 	and a	and a
0bda	00 	nop	nop
0bdb	aa 	xor d	xor d
0bdc	00 	nop	nop
0bdd	ac 	xor h	xor h
0bde	00 	nop	nop
0bdf	af 	xor a	xor a
0be0	00 	nop	nop
0be1	b1 	or c	or c
0be2	00 	nop	nop
0be3	b4 	or h	or h
0be4	00 	nop	nop
0be5	b6 	or (hl)	or (hl)
0be6	00 	nop	nop
0be7	b9 	cp c	cp c
0be8	00 	nop	nop
0be9	bc 	cp h	cp h
0bea	00 	nop	nop
0beb	be 	cp (hl)	cp (hl)
0bec	00 	nop	nop
0bed	c1 	pop bc	pop bc
0bee	00 	nop	nop
0bef	c4 00 c7 	call nz,$c700	call nz,$0000
0bf2	00 	nop	nop
0bf3	ca 00 cd 	jp z,$cd00	jp z,$0000
0bf6	00 	nop	nop
0bf7	d0 	ret nc	ret nc
0bf8	00 	nop	nop
0bf9	d3 00 	out ($00),a	out ($00),a
0bfb	d6 00 	sub $00	sub $00
0bfd	d9 	exx	exx
0bfe	00 	nop	nop
0bff	dc 00 df 	call c,$df00	call c,$0000
0c02	00 	nop	nop
0c03	e2 00 e6 	jp po,$e600	jp po,$0000
0c06	00 	nop	nop
0c07	e9 	jp (hl)	jp (hl)
0c08	00 	nop	nop
0c09	ec 00 f0 	call pe,$f000	call pe,$0000
0c0c	00 	nop	nop
0c0d	f3 	di	di
0c0e	00 	nop	nop
0c0f	f7 	rst $30	rst $00
0c10	00 	nop	nop
0c11	fb 	ei	ei
0c12	00 	nop	nop
0c13	fe 00 	cp $00	cp $00
0c15	02 	ld (bc),a	ld (bc),a
0c16	01 06 01 	ld bc,$0106	ld bc,$0000
0c19	09 	add hl,bc	add hl,bc
0c1a	01 0d 01 	ld bc,$010d	ld bc,$0000
0c1d	11 01 15 	ld de,$1501	ld de,$0000
0c20	01 19 01 	ld bc,$0119	ld bc,$0000
0c23	1d 	dec e	dec e
0c24	01 21 01 	ld bc,$0121	ld bc,$0000
0c27	26 01 	ld h,$01	ld h,$00
0c29	2a 01 2e 	ld hl,($2e01)	ld hl,($0000)
0c2c	01 33 01 	ld bc,$0133	ld bc,$0000
0c2f	37 	scf	scf
0c30	01 3c 01 	ld bc,$013c	ld bc,$0000
0c33	40 01 45 01 	ld.sis bc,$0145	ld.sis bc,$0000
0c37	4a 	ld c,d	ld c,d
0c38	01 4e 01 	ld bc,$014e	ld bc,$0000
0c3b	53 	ld d,e	ld d,e
0c3c	01 58 01 	ld bc,$0158	ld bc,$0000
0c3f	5d 	ld e,l	ld e,l
0c40	01 62 01 	ld bc,$0162	ld bc,$0000
0c43	67 	ld h,a	ld h,a
0c44	01 6d 01 	ld bc,$016d	ld bc,$0000
0c47	72 	ld (hl),d	ld (hl),d
0c48	01 77 01 	ld bc,$0177	ld bc,$0000
0c4b	7d 	ld a,l	ld a,l
0c4c	01 82 01 	ld bc,$0182	ld bc,$0000
0c4f	88 	adc a,b	adc a,b
0c50	01 8e 01 	ld bc,$018e	ld bc,$0000
0c53	93 	sub e	sub e
0c54	01 99 01 	ld bc,$0199	ld bc,$0000
0c57	9f 	sbc a,a	sbc a,a
0c58	01 a5 01 	ld bc,$01a5	ld bc,$0000
0c5b	ab 	xor e	xor e
0c5c	01 b2 01 	ld bc,$01b2	ld bc,$0000
0c5f	b8 	cp b	cp b
0c60	01 be 01 	ld bc,$01be	ld bc,$0000
0c63	c5 	push bc	push bc
0c64	01 cb 01 	ld bc,$01cb	ld bc,$0000
0c67	d2 01 d9 	jp nc,$d901	jp nc,$0000
0c6a	01 e0 01 	ld bc,$01e0	ld bc,$0000
0c6d	e7 	rst $20	rst $00
0c6e	01 ee 01 	ld bc,$01ee	ld bc,$0000
0c71	f5 	push af	push af
0c72	01 fc 01 	ld bc,$01fc	ld bc,$0000
0c75	04 	inc b	inc b
0c76	02 	ld (bc),a	ld (bc),a
0c77	0b 	dec bc	dec bc
0c78	02 	ld (bc),a	ld (bc),a
0c79	13 	inc de	inc de
0c7a	02 	ld (bc),a	ld (bc),a
0c7b	1b 	dec de	dec de
0c7c	02 	ld (bc),a	ld (bc),a
0c7d	22 02 2a 	ld ($2a02),hl	ld ($0000),hl
0c80	02 	ld (bc),a	ld (bc),a
0c81	32 02 3b 	ld ($3b02),a	ld ($0000),a
0c84	02 	ld (bc),a	ld (bc),a
0c85	43 	ld b,e	ld b,e
0c86	02 	ld (bc),a	ld (bc),a
0c87	4b 	ld c,e	ld c,e
0c88	02 	ld (bc),a	ld (bc),a
0c89	54 	ld d,h	ld d,h
0c8a	02 	ld (bc),a	ld (bc),a
0c8b	5d 	ld e,l	ld e,l
0c8c	02 	ld (bc),a	ld (bc),a
0c8d	65 	ld h,l	ld h,l
0c8e	02 	ld (bc),a	ld (bc),a
0c8f	6e 	ld l,(hl)	ld l,(hl)
0c90	02 	ld (bc),a	ld (bc),a
0c91	77 	ld (hl),a	ld (hl),a
0c92	02 	ld (bc),a	ld (bc),a
0c93	81 	add a,c	add a,c
0c94	02 	ld (bc),a	ld (bc),a
0c95	8a 	adc a,d	adc a,d
0c96	02 	ld (bc),a	ld (bc),a
0c97	93 	sub e	sub e
0c98	02 	ld (bc),a	ld (bc),a
0c99	9d 	sbc a,l	sbc a,l
0c9a	02 	ld (bc),a	ld (bc),a
0c9b	a7 	and a	and a
0c9c	02 	ld (bc),a	ld (bc),a
0c9d	b1 	or c	or c
0c9e	02 	ld (bc),a	ld (bc),a
0c9f	bb 	cp e	cp e
0ca0	02 	ld (bc),a	ld (bc),a
0ca1	c5 	push bc	push bc
0ca2	02 	ld (bc),a	ld (bc),a
0ca3	cf 	rst $08	rst $00
0ca4	02 	ld (bc),a	ld (bc),a
0ca5	d9 	exx	exx
0ca6	02 	ld (bc),a	ld (bc),a
0ca7	e4 02 ef 	call po,$ef02	call po,$0000
0caa	02 	ld (bc),a	ld (bc),a
0cab	fa 02 05 	jp m,$0502	jp m,$0000
0cae	03 	inc bc	inc bc
0caf	10 03 	djnz $+$05	djnz $+$00
0cb1	1b 	dec de	dec de
0cb2	03 	inc bc	inc bc
0cb3	27 	daa	daa
0cb4	03 	inc bc	inc bc
0cb5	33 	inc sp	inc sp
0cb6	03 	inc bc	inc bc
0cb7	3f 	ccf	ccf
0cb8	03 	inc bc	inc bc
0cb9	4b 	ld c,e	ld c,e
0cba	03 	inc bc	inc bc
0cbb	57 	ld d,a	ld d,a
0cbc	03 	inc bc	inc bc
0cbd	63 	ld h,e	ld h,e
0cbe	03 	inc bc	inc bc
0cbf	70 	ld (hl),b	ld (hl),b
0cc0	03 	inc bc	inc bc
0cc1	7d 	ld a,l	ld a,l
0cc2	03 	inc bc	inc bc
0cc3	8a 	adc a,d	adc a,d
0cc4	03 	inc bc	inc bc
0cc5	97 	sub a	sub a
0cc6	03 	inc bc	inc bc
0cc7	a4 	and h	and h
0cc8	03 	inc bc	inc bc
0cc9	b2 	or d	or d
0cca	03 	inc bc	inc bc
0ccb	c0 	ret nz	ret nz
0ccc	03 	inc bc	inc bc
0ccd	ce 03 	adc a,$03	adc a,$00
0ccf	dc 03 ea 	call c,$ea03	call c,$0000
0cd2	03 	inc bc	inc bc
0cd3	f9 	ld sp,hl	ld sp,hl
0cd4	03 	inc bc	inc bc
0cd5	08 	ex af,af'	ex af,af'
0cd6	04 	inc b	inc b
0cd7	17 	rla	rla
0cd8	04 	inc b	inc b
0cd9	26 04 	ld h,$04	ld h,$00
0cdb	36 04 	ld (hl),$04	ld (hl),$00
0cdd	45 	ld b,l	ld b,l
0cde	04 	inc b	inc b
0cdf	55 	ld d,l	ld d,l
0ce0	04 	inc b	inc b
0ce1	65 	ld h,l	ld h,l
0ce2	04 	inc b	inc b
0ce3	76 	halt	halt
0ce4	04 	inc b	inc b
0ce5	86 	add a,(hl)	add a,(hl)
0ce6	04 	inc b	inc b
0ce7	97 	sub a	sub a
0ce8	04 	inc b	inc b
0ce9	a8 	xor b	xor b
0cea	04 	inc b	inc b
0ceb	ba 	cp d	cp d
0cec	04 	inc b	inc b
0ced	cb 04 	rlc h	rlc h
0cef	dd 04 	trap	trap
0cf1	ef 	rst $28	rst $00
0cf2	04 	inc b	inc b
0cf3	02 	ld (bc),a	ld (bc),a
0cf4	05 	dec b	dec b
0cf5	14 	inc d	inc d
0cf6	05 	dec b	dec b
0cf7	27 	daa	daa
0cf8	05 	dec b	dec b
0cf9	3a 05 4e 	ld a,($4e05)	ld a,($0000)
0cfc	05 	dec b	dec b
0cfd	62 	ld h,d	ld h,d
0cfe	05 	dec b	dec b
0cff	76 	halt	halt
0d00	05 	dec b	dec b
0d01	8a 	adc a,d	adc a,d
0d02	05 	dec b	dec b
0d03	9f 	sbc a,a	sbc a,a
0d04	05 	dec b	dec b
0d05	b3 	or e	or e
0d06	05 	dec b	dec b
0d07	c9 	ret	ret
0d08	05 	dec b	dec b
0d09	de 05 	sbc a,$05	sbc a,$00
0d0b	f4 05 0a 	call p,$0a05	call p,$0000
0d0e	06 21 	ld b,$21	ld b,$00
0d10	06 38 	ld b,$38	ld b,$00
0d12	06 4f 	ld b,$4f	ld b,$00
0d14	06 66 	ld b,$66	ld b,$00
0d16	06 7e 	ld b,$7e	ld b,$00
0d18	06 96 	ld b,$96	ld b,$00
0d1a	06 af 	ld b,$af	ld b,$00
0d1c	06 c8 	ld b,$c8	ld b,$00
0d1e	06 e1 	ld b,$e1	ld b,$00
0d20	06 fa 	ld b,$fa	ld b,$00
0d22	06 14 	ld b,$14	ld b,$00
0d24	07 	rlca	rlca
0d25	2f 	cpl	cpl
0d26	07 	rlca	rlca
0d27	4a 	ld c,d	ld c,d
0d28	07 	rlca	rlca
0d29	65 	ld h,l	ld h,l
0d2a	07 	rlca	rlca
0d2b	80 	add a,b	add a,b
0d2c	07 	rlca	rlca
0d2d	9c 	sbc a,h	sbc a,h
0d2e	07 	rlca	rlca
0d2f	b8 	cp b	cp b
0d30	07 	rlca	rlca
0d31	d5 	push de	push de
0d32	07 	rlca	rlca
0d33	f2 07 10 	jp p,$1007	jp p,$0000
0d36	08 	ex af,af'	ex af,af'
0d37	2d 	dec l	dec l
0d38	08 	ex af,af'	ex af,af'
0d39	4b 	ld c,e	ld c,e
0d3a	08 	ex af,af'	ex af,af'
0d3b	6a 	ld l,d	ld l,d
0d3c	08 	ex af,af'	ex af,af'
0d3d	8a 	adc a,d	adc a,d
0d3e	08 	ex af,af'	ex af,af'
0d3f	a9 	xor c	xor c
0d40	08 	ex af,af'	ex af,af'
0d41	ca 08 ea 	jp z,$ea08	jp z,$0000
0d44	08 	ex af,af'	ex af,af'
0d45	0c 	inc c	inc c
0d46	09 	add hl,bc	add hl,bc
0d47	2d 	dec l	dec l
0d48	09 	add hl,bc	add hl,bc
0d49	4f 	ld c,a	ld c,a
0d4a	09 	add hl,bc	add hl,bc
0d4b	72 	ld (hl),d	ld (hl),d
0d4c	09 	add hl,bc	add hl,bc
0d4d	95 	sub l	sub l
0d4e	09 	add hl,bc	add hl,bc
0d4f	b9 	cp c	cp c
0d50	09 	add hl,bc	add hl,bc
0d51	dd 09 	add ix,bc	add ix,bc
0d53	02 	ld (bc),a	ld (bc),a
0d54	0a 	ld a,(bc)	ld a,(bc)
0d55	27 	daa	daa
0d56	0a 	ld a,(bc)	ld a,(bc)
0d57	4d 	ld c,l	ld c,l
0d58	0a 	ld a,(bc)	ld a,(bc)
0d59	73 	ld (hl),e	ld (hl),e
0d5a	0a 	ld a,(bc)	ld a,(bc)
0d5b	9a 	sbc a,d	sbc a,d
0d5c	0a 	ld a,(bc)	ld a,(bc)
0d5d	c2 0a ea 	jp nz,$ea0a	jp nz,$0000
0d60	0a 	ld a,(bc)	ld a,(bc)
0d61	12 	ld (de),a	ld (de),a
0d62	0b 	dec bc	dec bc
0d63	3c 	inc a	inc a
0d64	0b 	dec bc	dec bc
0d65	66 	ld h,(hl)	ld h,(hl)
0d66	0b 	dec bc	dec bc
0d67	90 	sub b	sub b
0d68	0b 	dec bc	dec bc
0d69	bb 	cp e	cp e
0d6a	0b 	dec bc	dec bc
0d6b	e7 	rst $20	rst $00
0d6c	0b 	dec bc	dec bc
0d6d	13 	inc de	inc de
0d6e	0c 	inc c	inc c
0d6f	40 0c 	inc.sis c	inc.sis c
0d71	6e 	ld l,(hl)	ld l,(hl)
0d72	0c 	inc c	inc c
0d73	9c 	sbc a,h	sbc a,h
0d74	0c 	inc c	inc c
0d75	cb 0c 	rrc h	rrc h
0d77	fa 0c 2b 	jp m,$2b0c	jp m,$0000
0d7a	0d 	dec c	dec c
0d7b	5c 	ld e,h	ld e,h
0d7c	0d 	dec c	dec c
0d7d	8e 	adc a,(hl)	adc a,(hl)
0d7e	0d 	dec c	dec c
0d7f	c0 	ret nz	ret nz
0d80	0d 	dec c	dec c
0d81	f3 	di	di
0d82	0d 	dec c	dec c
0d83	27 	daa	daa
0d84	0e 5c 	ld c,$5c	ld c,$00
0d86	0e 91 	ld c,$91	ld c,$00
0d88	0e c8 	ld c,$c8	ld c,$00
0d8a	0e ff 	ld c,$ff	ld c,$00
0d8c	0e 36 	ld c,$36	ld c,$00
0d8e	0f 	rrca	rrca
0d8f	6f 	ld l,a	ld l,a
0d90	0f 	rrca	rrca
0d91	a9 	xor c	xor c
0d92	0f 	rrca	rrca
0d93	e3 	ex (sp),hl	ex (sp),hl
0d94	0f 	rrca	rrca
0d95	1e 10 	ld e,$10	ld e,$00
0d97	5a 	ld e,d	ld e,d
0d98	10 97 	djnz $-$67	djnz $-$00
0d9a	10 d5 	djnz $-$29	djnz $-$00
0d9c	10 13 	djnz $+$15	djnz $+$00
0d9e	11 53 11 	ld de,$1153	ld de,$0000
0da1	93 	sub e	sub e
0da2	11 d5 11 	ld de,$11d5	ld de,$0000
0da5	17 	rla	rla
0da6	12 	ld (de),a	ld (de),a
0da7	5b 12 	ld.lil (de),a	ld.lil (de),a
0da9	9f 	sbc a,a	sbc a,a
0daa	12 	ld (de),a	ld (de),a
0dab	e4 12 3e 	call po,$3e12	call po,$0000
0dae	01 21 08 	ld bc,$0821	ld bc,$0000
0db1	52 cd 6d 08 21 	call.sil $21086d	call.sil $000000
0db6	08 	ex af,af'	ex af,af'
0db7	52 5e 	ld.sil e,(hl)	ld.sil e,(hl)
0db9	23 	inc hl	inc hl
0dba	56 	ld d,(hl)	ld d,(hl)
0dbb	23 	inc hl	inc hl
0dbc	7e 	ld a,(hl)	ld a,(hl)
0dbd	23 	inc hl	inc hl
0dbe	66 	ld h,(hl)	ld h,(hl)
0dbf	6f 	ld l,a	ld l,a
0dc0	eb 	ex de,hl	ex de,hl
0dc1	c9 	ret	ret
0dc2	3e 0e 	ld a,$0e	ld a,$00
0dc4	21 08 52 	ld hl,$5208	ld hl,$0000
0dc7	36 00 	ld (hl),$00	ld (hl),$00
0dc9	cd 6d 08 	call $086d	call $0000
0dcc	21 08 52 	ld hl,$5208	ld hl,$0000
0dcf	11 00 53 	ld de,$5300	ld de,$0000
0dd2	7e 	ld a,(hl)	ld a,(hl)
0dd3	bb 	cp e	cp e
0dd4	c8 	ret z	ret z
0dd5	01 19 00 	ld bc,$0019	ld bc,$0000
0dd8	ed b0 	ldir	ldir
0dda	c9 	ret	ret
0ddb	dd e5 	push ix	push ix
0ddd	dd 21 08 52 	ld ix,$5208	ld ix,$0000
0de1	dd 75 00 	ld (ix),l	ld (ix),l
0de4	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
0de7	dd 73 02 	ld (ix+$02),e	ld (ix+$00),e
0dea	dd 72 03 	ld (ix+$03),d	ld (ix+$00),d
0ded	3e 02 	ld a,$02	ld a,$00
0def	21 08 52 	ld hl,$5208	ld hl,$0000
0df2	cd 6d 08 	call $086d	call $0000
0df5	dd e1 	pop ix	pop ix
0df7	c9 	ret	ret
0df8	7b 	ld a,e	ld a,e
0df9	fe 1a 	cp $1a	cp $00
0dfb	d0 	ret nc	ret nc
0dfc	06 00 	ld b,$00	ld b,$00
0dfe	4f 	ld c,a	ld c,a
0dff	11 09 52 	ld de,$5209	ld de,$0000
0e02	21 00 53 	ld hl,$5300	ld hl,$0000
0e05	ed b0 	ldir	ldir
0e07	21 08 52 	ld hl,$5208	ld hl,$0000
0e0a	77 	ld (hl),a	ld (hl),a
0e0b	3e 0f 	ld a,$0f	ld a,$00
0e0d	c3 6d 08 	jp $086d	jp $0000
0e10	3e 0c 	ld a,$0c	ld a,$00
0e12	c3 97 05 	jp $0597	jp $0000
0e15	3e 81 	ld a,$81	ld a,$00
0e17	cd d1 08 	call $08d1	call $0000
0e1a	7c 	ld a,h	ld a,h
0e1b	b7 	or a	or a
0e1c	c0 	ret nz	ret nz
0e1d	7d 	ld a,l	ld a,l
0e1e	37 	scf	scf
0e1f	c9 	ret	ret
0e20	3e 1f 	ld a,$1f	ld a,$00
0e22	cd 97 05 	call $0597	call $0000
0e25	7b 	ld a,e	ld a,e
0e26	cd 97 05 	call $0597	call $0000
0e29	7d 	ld a,l	ld a,l
0e2a	c3 97 05 	jp $0597	jp $0000
0e2d	3e 86 	ld a,$86	ld a,$00
0e2f	cd d1 08 	call $08d1	call $0000
0e32	5d 	ld e,l	ld e,l
0e33	6c 	ld l,h	ld l,h
0e34	16 00 	ld d,$00	ld d,$00
0e36	62 	ld h,d	ld h,d
0e37	c9 	ret	ret
0e38	cd b7 18 	call $18b7	call $0000
0e3b	d9 	exx	exx
0e3c	e5 	push hl	push hl
0e3d	cd 75 11 	call $1175	call $0000
0e40	d9 	exx	exx
0e41	d1 	pop de	pop de
0e42	cd 32 21 	call $2132	call $0000
0e45	dd 21 08 52 	ld ix,$5208	ld ix,$0000
0e49	dd 73 00 	ld (ix),e	ld (ix),e
0e4c	dd 72 01 	ld (ix+$01),d	ld (ix+$00),d
0e4f	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
0e52	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
0e55	21 08 52 	ld hl,$5208	ld hl,$0000
0e58	3e 09 	ld a,$09	ld a,$00
0e5a	cd 6d 08 	call $086d	call $0000
0e5d	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
0e60	6f 	ld l,a	ld l,a
0e61	c6 01 	add a,$01	add a,$00
0e63	9f 	sbc a,a	sbc a,a
0e64	67 	ld h,a	ld h,a
0e65	d9 	exx	exx
0e66	67 	ld h,a	ld h,a
0e67	6f 	ld l,a	ld l,a
0e68	af 	xor a	xor a
0e69	4f 	ld c,a	ld c,a
0e6a	c9 	ret	ret
0e6b	cd e4 18 	call $18e4	call $0000
0e6e	d9 	exx	exx
0e6f	3e 80 	ld a,$80	ld a,$00
0e71	cd d1 08 	call $08d1	call $0000
0e74	af 	xor a	xor a
0e75	18 ee 	jr $-$10	jr $-$00
0e77	3e 87 	ld a,$87	ld a,$00
0e79	cd d1 08 	call $08d1	call $0000
0e7c	6c 	ld l,h	ld l,h
0e7d	af 	xor a	xor a
0e7e	67 	ld h,a	ld h,a
0e7f	18 e4 	jr $-$1a	jr $-$00
0e81	3a fc 55 	ld a,($55fc)	ld a,($0000)
0e84	6f 	ld l,a	ld l,a
0e85	18 f6 	jr $-$08	jr $-$00
0e87	06 00 	ld b,$00	ld b,$00
0e89	dd 21 08 52 	ld ix,$5208	ld ix,$0000
0e8d	c5 	push bc	push bc
0e8e	dd e5 	push ix	push ix
0e90	cd b7 18 	call $18b7	call $0000
0e93	d9 	exx	exx
0e94	dd e1 	pop ix	pop ix
0e96	c1 	pop bc	pop bc
0e97	dd 75 00 	ld (ix),l	ld (ix),l
0e9a	78 	ld a,b	ld a,b
0e9b	fe 0d 	cp $0d	cp $00
0e9d	28 0b 	jr z,$+$0d	jr z,$+$00
0e9f	04 	inc b	inc b
0ea0	dd 23 	inc ix	inc ix
0ea2	c5 	push bc	push bc
0ea3	dd e5 	push ix	push ix
0ea5	cd 26 21 	call $2126	call $0000
0ea8	18 e6 	jr $-$18	jr $-$00
0eaa	21 08 52 	ld hl,$5208	ld hl,$0000
0ead	3e 08 	ld a,$08	ld a,$00
0eaf	cd 6d 08 	call $086d	call $0000
0eb2	c3 1d 25 	jp $251d	jp $0000
0eb5	06 00 	ld b,$00	ld b,$00
0eb7	dd 21 08 52 	ld ix,$5208	ld ix,$0000
0ebb	c5 	push bc	push bc
0ebc	dd e5 	push ix	push ix
0ebe	cd b7 18 	call $18b7	call $0000
0ec1	d9 	exx	exx
0ec2	dd e1 	pop ix	pop ix
0ec4	c1 	pop bc	pop bc
0ec5	dd 75 00 	ld (ix),l	ld (ix),l
0ec8	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
0ecb	dd 23 	inc ix	inc ix
0ecd	dd 23 	inc ix	inc ix
0ecf	04 	inc b	inc b
0ed0	04 	inc b	inc b
0ed1	78 	ld a,b	ld a,b
0ed2	fe 08 	cp $08	cp $00
0ed4	28 08 	jr z,$+$0a	jr z,$+$00
0ed6	c5 	push bc	push bc
0ed7	dd e5 	push ix	push ix
0ed9	cd 26 21 	call $2126	call $0000
0edc	18 e0 	jr $-$1e	jr $-$00
0ede	21 08 52 	ld hl,$5208	ld hl,$0000
0ee1	3e 07 	ld a,$07	ld a,$00
0ee3	cd 6d 08 	call $086d	call $0000
0ee6	c3 1d 25 	jp $251d	jp $0000
0ee9	cd b7 18 	call $18b7	call $0000
0eec	af 	xor a	xor a
0eed	32 fb 55 	ld ($55fb),a	ld ($0000),a
0ef0	d9 	exx	exx
0ef1	65 	ld h,l	ld h,l
0ef2	2e 16 	ld l,$16	ld l,$00
0ef4	cd 5c 11 	call $115c	call $0000
0ef7	18 72 	jr $+$74	jr $+$00
0ef9	3e 10 	ld a,$10	ld a,$00
0efb	cd 97 05 	call $0597	call $0000
0efe	18 6b 	jr $+$6d	jr $+$00
0f00	cd b7 18 	call $18b7	call $0000
0f03	d9 	exx	exx
0f04	e5 	push hl	push hl
0f05	cd 75 11 	call $1175	call $0000
0f08	d9 	exx	exx
0f09	d1 	pop de	pop de
0f0a	0e 1d 	ld c,$1d	ld c,$00
0f0c	cd 50 11 	call $1150	call $0000
0f0f	18 5a 	jr $+$5c	jr $+$00
0f11	cd b7 18 	call $18b7	call $0000
0f14	d9 	exx	exx
0f15	fd 7e 00 	ld a,(iy)	ld a,(iy)
0f18	fe 2c 	cp $2c	cp $00
0f1a	28 08 	jr z,$+$0a	jr z,$+$00
0f1c	65 	ld h,l	ld h,l
0f1d	2e 11 	ld l,$11	ld l,$00
0f1f	cd 5c 11 	call $115c	call $0000
0f22	18 47 	jr $+$49	jr $+$00
0f24	e5 	push hl	push hl
0f25	cd 75 11 	call $1175	call $0000
0f28	d9 	exx	exx
0f29	eb 	ex de,hl	ex de,hl
0f2a	21 00 00 	ld hl,$0000	ld hl,$0000
0f2d	fd 7e 00 	ld a,(iy)	ld a,(iy)
0f30	fe 2c 	cp $2c	cp $00
0f32	20 15 	jr nz,$+$17	jr nz,$+$00
0f34	d5 	push de	push de
0f35	cd 75 11 	call $1175	call $0000
0f38	d9 	exx	exx
0f39	e5 	push hl	push hl
0f3a	cd 75 11 	call $1175	call $0000
0f3d	d9 	exx	exx
0f3e	d1 	pop de	pop de
0f3f	c1 	pop bc	pop bc
0f40	7d 	ld a,l	ld a,l
0f41	e1 	pop hl	pop hl
0f42	51 	ld d,c	ld d,c
0f43	4d 	ld c,l	ld c,l
0f44	6b 	ld l,e	ld l,e
0f45	67 	ld h,a	ld h,a
0f46	1e 10 	ld e,$10	ld e,$00
0f48	c5 	push bc	push bc
0f49	c1 	pop bc	pop bc
0f4a	06 13 	ld b,$13	ld b,$00
0f4c	cd 4c 11 	call $114c	call $0000
0f4f	18 1a 	jr $+$1c	jr $+$00
0f51	cd b7 18 	call $18b7	call $0000
0f54	d9 	exx	exx
0f55	1e 00 	ld e,$00	ld e,$00
0f57	fd 7e 00 	ld a,(iy)	ld a,(iy)
0f5a	fe 2c 	cp $2c	cp $00
0f5c	20 06 	jr nz,$+$08	jr nz,$+$00
0f5e	e5 	push hl	push hl
0f5f	cd 75 11 	call $1175	call $0000
0f62	d9 	exx	exx
0f63	d1 	pop de	pop de
0f64	65 	ld h,l	ld h,l
0f65	6b 	ld l,e	ld l,e
0f66	16 12 	ld d,$12	ld d,$00
0f68	cd 58 11 	call $1158	call $0000
0f6b	c3 1d 25 	jp $251d	jp $0000
0f6e	0e 01 	ld c,$01	ld c,$00
0f70	18 02 	jr $+$04	jr $+$00
0f72	0e 00 	ld c,$00	ld c,$00
0f74	3e 17 	ld a,$17	ld a,$00
0f76	cd 97 05 	call $0597	call $0000
0f79	3e 01 	ld a,$01	ld a,$00
0f7b	cd 97 05 	call $0597	call $0000
0f7e	79 	ld a,c	ld a,c
0f7f	06 08 	ld b,$08	ld b,$00
0f81	cd 97 05 	call $0597	call $0000
0f84	af 	xor a	xor a
0f85	10 fa 	djnz $-$04	djnz $-$00
0f87	18 e2 	jr $-$1c	jr $-$00
0f89	cd b7 18 	call $18b7	call $0000
0f8c	d9 	exx	exx
0f8d	e5 	push hl	push hl
0f8e	cd 64 11 	call $1164	call $0000
0f91	e3 	ex (sp),hl	ex (sp),hl
0f92	c5 	push bc	push bc
0f93	eb 	ex de,hl	ex de,hl
0f94	0e 04 	ld c,$04	ld c,$00
0f96	cd 4a 11 	call $114a	call $0000
0f99	d1 	pop de	pop de
0f9a	e1 	pop hl	pop hl
0f9b	0e 05 	ld c,$05	ld c,$00
0f9d	18 2a 	jr $+$2c	jr $+$00
0f9f	fe 03 	cp $03	cp $00
0fa1	f5 	push af	push af
0fa2	20 02 	jr nz,$+$04	jr nz,$+$00
0fa4	fd 23 	inc iy	inc iy
0fa6	cd b7 18 	call $18b7	call $0000
0fa9	d9 	exx	exx
0faa	e5 	push hl	push hl
0fab	cd 75 11 	call $1175	call $0000
0fae	d9 	exx	exx
0faf	e5 	push hl	push hl
0fb0	cd 75 11 	call $1175	call $0000
0fb3	d9 	exx	exx
0fb4	c1 	pop bc	pop bc
0fb5	d1 	pop de	pop de
0fb6	e5 	push hl	push hl
0fb7	69 	ld l,c	ld l,c
0fb8	60 	ld h,b	ld h,b
0fb9	0e 04 	ld c,$04	ld c,$00
0fbb	cd 4a 11 	call $114a	call $0000
0fbe	d1 	pop de	pop de
0fbf	21 00 00 	ld hl,$0000	ld hl,$0000
0fc2	f1 	pop af	pop af
0fc3	0e 91 	ld c,$91	ld c,$00
0fc5	20 02 	jr nz,$+$04	jr nz,$+$00
0fc7	0e 99 	ld c,$99	ld c,$00
0fc9	18 6c 	jr $+$6e	jr $+$00
0fcb	fe 03 	cp $03	cp $00
0fcd	f5 	push af	push af
0fce	20 02 	jr nz,$+$04	jr nz,$+$00
0fd0	fd 23 	inc iy	inc iy
0fd2	cd b7 18 	call $18b7	call $0000
0fd5	d9 	exx	exx
0fd6	e5 	push hl	push hl
0fd7	cd 64 11 	call $1164	call $0000
0fda	e3 	ex (sp),hl	ex (sp),hl
0fdb	c5 	push bc	push bc
0fdc	eb 	ex de,hl	ex de,hl
0fdd	0e 04 	ld c,$04	ld c,$00
0fdf	cd 4a 11 	call $114a	call $0000
0fe2	d1 	pop de	pop de
0fe3	d5 	push de	push de
0fe4	21 00 00 	ld hl,$0000	ld hl,$0000
0fe7	4d 	ld c,l	ld c,l
0fe8	cd 4a 11 	call $114a	call $0000
0feb	d1 	pop de	pop de
0fec	af 	xor a	xor a
0fed	6f 	ld l,a	ld l,a
0fee	67 	ld h,a	ld h,a
0fef	ed 52 	sbc hl,de	sbc hl,de
0ff1	eb 	ex de,hl	ex de,hl
0ff2	e1 	pop hl	pop hl
0ff3	f1 	pop af	pop af
0ff4	0e c1 	ld c,$c1	ld c,$00
0ff6	20 3f 	jr nz,$+$41	jr nz,$+$00
0ff8	0e c9 	ld c,$c9	ld c,$00
0ffa	18 3b 	jr $+$3d	jr $+$00
0ffc	0e 04 	ld c,$04	ld c,$00
0ffe	18 23 	jr $+$25	jr $+$00
1000	0e 05 	ld c,$05	ld c,$00
1002	18 1f 	jr $+$21	jr $+$00
1004	0e 85 	ld c,$85	ld c,$00
1006	18 1b 	jr $+$1d	jr $+$00
1008	0e 45 	ld c,$45	ld c,$00
100a	fe 0f 	cp $0f	cp $00
100c	28 15 	jr z,$+$17	jr z,$+$00
100e	cd b7 18 	call $18b7	call $0000
1011	d9 	exx	exx
1012	e5 	push hl	push hl
1013	cd 75 11 	call $1175	call $0000
1016	d9 	exx	exx
1017	fd 7e 00 	ld a,(iy)	ld a,(iy)
101a	fe 2c 	cp $2c	cp $00
101c	28 12 	jr z,$+$14	jr z,$+$00
101e	d1 	pop de	pop de
101f	0e 45 	ld c,$45	ld c,$00
1021	18 14 	jr $+$16	jr $+$00
1023	fe 0f 	cp $0f	cp $00
1025	20 04 	jr nz,$+$06	jr nz,$+$00
1027	fd 23 	inc iy	inc iy
1029	cb 91 	res 2,c	res 2,c
102b	c5 	push bc	push bc
102c	cd b7 18 	call $18b7	call $0000
102f	d9 	exx	exx
1030	e5 	push hl	push hl
1031	cd 75 11 	call $1175	call $0000
1034	d9 	exx	exx
1035	d1 	pop de	pop de
1036	c1 	pop bc	pop bc
1037	cd 4a 11 	call $114a	call $0000
103a	c3 1d 25 	jp $251d	jp $0000
103d	fe 03 	cp $03	cp $00
103f	f5 	push af	push af
1040	20 02 	jr nz,$+$04	jr nz,$+$00
1042	fd 23 	inc iy	inc iy
1044	cd b7 18 	call $18b7	call $0000
1047	d9 	exx	exx
1048	e5 	push hl	push hl
1049	cd 75 11 	call $1175	call $0000
104c	d9 	exx	exx
104d	e5 	push hl	push hl
104e	cd 75 11 	call $1175	call $0000
1051	d9 	exx	exx
1052	e5 	push hl	push hl
1053	fd 7e 00 	ld a,(iy)	ld a,(iy)
1056	fe 2c 	cp $2c	cp $00
1058	20 04 	jr nz,$+$06	jr nz,$+$00
105a	cd 75 11 	call $1175	call $0000
105d	d9 	exx	exx
105e	c1 	pop bc	pop bc
105f	d1 	pop de	pop de
1060	e3 	ex (sp),hl	ex (sp),hl
1061	c5 	push bc	push bc
1062	eb 	ex de,hl	ex de,hl
1063	0e 04 	ld c,$04	ld c,$00
1065	cd 4a 11 	call $114a	call $0000
1068	fd 7e 00 	ld a,(iy)	ld a,(iy)
106b	fe b8 	cp $b8	cp $00
106d	28 09 	jr z,$+$0b	jr z,$+$00
106f	d1 	pop de	pop de
1070	e1 	pop hl	pop hl
1071	f1 	pop af	pop af
1072	20 22 	jr nz,$+$24	jr nz,$+$00
1074	0e 61 	ld c,$61	ld c,$00
1076	18 bf 	jr $-$3f	jr $-$00
1078	fd 23 	inc iy	inc iy
107a	cd b7 18 	call $18b7	call $0000
107d	d9 	exx	exx
107e	e5 	push hl	push hl
107f	cd 75 11 	call $1175	call $0000
1082	d9 	exx	exx
1083	c1 	pop bc	pop bc
1084	d1 	pop de	pop de
1085	e3 	ex (sp),hl	ex (sp),hl
1086	c5 	push bc	push bc
1087	0e 00 	ld c,$00	ld c,$00
1089	cd 4a 11 	call $114a	call $0000
108c	d1 	pop de	pop de
108d	e1 	pop hl	pop hl
108e	f1 	pop af	pop af
108f	0e be 	ld c,$be	ld c,$00
1091	20 01 	jr nz,$+$03	jr nz,$+$00
1093	0d 	dec c	dec c
1094	18 a1 	jr $-$5d	jr $-$00
1096	0e 09 	ld c,$09	ld c,$00
1098	e5 	push hl	push hl
1099	21 00 00 	ld hl,$0000	ld hl,$0000
109c	cd 4a 11 	call $114a	call $0000
109f	e1 	pop hl	pop hl
10a0	d5 	push de	push de
10a1	11 00 00 	ld de,$0000	ld de,$0000
10a4	cd 4a 11 	call $114a	call $0000
10a7	d1 	pop de	pop de
10a8	e5 	push hl	push hl
10a9	af 	xor a	xor a
10aa	6f 	ld l,a	ld l,a
10ab	67 	ld h,a	ld h,a
10ac	ed 52 	sbc hl,de	sbc hl,de
10ae	eb 	ex de,hl	ex de,hl
10af	6f 	ld l,a	ld l,a
10b0	67 	ld h,a	ld h,a
10b1	cd 4a 11 	call $114a	call $0000
10b4	d1 	pop de	pop de
10b5	af 	xor a	xor a
10b6	6f 	ld l,a	ld l,a
10b7	67 	ld h,a	ld h,a
10b8	ed 52 	sbc hl,de	sbc hl,de
10ba	5f 	ld e,a	ld e,a
10bb	57 	ld d,a	ld d,a
10bc	18 d6 	jr $-$28	jr $-$00
10be	3e 80 	ld a,$80	ld a,$00
10c0	21 09 00 	ld hl,$0009	ld hl,$0000
10c3	cd d1 08 	call $08d1	call $0000
10c6	e5 	push hl	push hl
10c7	3e 80 	ld a,$80	ld a,$00
10c9	21 08 00 	ld hl,$0008	ld hl,$0000
10cc	cd d1 08 	call $08d1	call $0000
10cf	e5 	push hl	push hl
10d0	3e 80 	ld a,$80	ld a,$00
10d2	21 07 00 	ld hl,$0007	ld hl,$0000
10d5	cd d1 08 	call $08d1	call $0000
10d8	e5 	push hl	push hl
10d9	cd 5a 26 	call $265a	call $0000
10dc	e1 	pop hl	pop hl
10dd	cd 7b 11 	call $117b	call $0000
10e0	cd 26 21 	call $2126	call $0000
10e3	cd 8f 45 	call $458f	call $0000
10e6	cd 5a 26 	call $265a	call $0000
10e9	e1 	pop hl	pop hl
10ea	cd 7b 11 	call $117b	call $0000
10ed	cd 26 21 	call $2126	call $0000
10f0	cd 8f 45 	call $458f	call $0000
10f3	cd 5a 26 	call $265a	call $0000
10f6	e1 	pop hl	pop hl
10f7	cd 7b 11 	call $117b	call $0000
10fa	c3 1d 25 	jp $251d	jp $0000
10fd	cd ba 35 	call $35ba	call $0000
1100	28 f8 	jr z,$-$06	jr z,$-$00
1102	cd b7 18 	call $18b7	call $0000
1105	d9 	exx	exx
1106	44 	ld b,h	ld b,h
1107	4d 	ld c,l	ld c,l
1108	cd ad 0d 	call $0dad	call $0000
110b	09 	add hl,bc	add hl,bc
110c	01 00 00 	ld bc,$0000	ld bc,$0000
110f	eb 	ex de,hl	ex de,hl
1110	ed 4a 	adc hl,bc	adc hl,bc
1112	eb 	ex de,hl	ex de,hl
1113	cd 35 06 	call $0635	call $0000
1116	d5 	push de	push de
1117	e5 	push hl	push hl
1118	cd ad 0d 	call $0dad	call $0000
111b	c1 	pop bc	pop bc
111c	b7 	or a	or a
111d	ed 42 	sbc hl,bc	sbc hl,bc
111f	60 	ld h,b	ld h,b
1120	69 	ld l,c	ld l,c
1121	eb 	ex de,hl	ex de,hl
1122	c1 	pop bc	pop bc
1123	ed 42 	sbc hl,bc	sbc hl,bc
1125	30 d3 	jr nc,$-$2b	jr nc,$-$00
1127	eb 	ex de,hl	ex de,hl
1128	50 	ld d,b	ld d,b
1129	59 	ld e,c	ld e,c
112a	18 e7 	jr $-$17	jr $-$00
112c	e1 	pop hl	pop hl
112d	21 3f 11 	ld hl,$113f	ld hl,$0000
1130	e5 	push hl	push hl
1131	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
1134	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
1137	dd 66 64 	ld h,(ix+$64)	ld h,(ix+$00)
113a	dd 6e 60 	ld l,(ix+$60)	ld l,(ix+$00)
113d	fd e9 	jp (iy)	jp (iy)
113f	f5 	push af	push af
1140	7d 	ld a,l	ld a,l
1141	6c 	ld l,h	ld l,h
1142	d9 	exx	exx
1143	c1 	pop bc	pop bc
1144	67 	ld h,a	ld h,a
1145	68 	ld l,b	ld l,b
1146	79 	ld a,c	ld a,c
1147	d9 	exx	exx
1148	67 	ld h,a	ld h,a
1149	c9 	ret	ret
114a	06 19 	ld b,$19	ld b,$00
114c	78 	ld a,b	ld a,b
114d	cd 97 05 	call $0597	call $0000
1150	79 	ld a,c	ld a,c
1151	cd 97 05 	call $0597	call $0000
1154	7b 	ld a,e	ld a,e
1155	cd 97 05 	call $0597	call $0000
1158	7a 	ld a,d	ld a,d
1159	cd 97 05 	call $0597	call $0000
115c	7d 	ld a,l	ld a,l
115d	cd 97 05 	call $0597	call $0000
1160	7c 	ld a,h	ld a,h
1161	c3 97 05 	jp $0597	jp $0000
1164	cd 75 11 	call $1175	call $0000
1167	d9 	exx	exx
1168	e5 	push hl	push hl
1169	cd 75 11 	call $1175	call $0000
116c	d9 	exx	exx
116d	e5 	push hl	push hl
116e	cd 75 11 	call $1175	call $0000
1171	d9 	exx	exx
1172	c1 	pop bc	pop bc
1173	d1 	pop de	pop de
1174	c9 	ret	ret
1175	cd 26 21 	call $2126	call $0000
1178	c3 b7 18 	jp $18b7	jp $0000
117b	cb 7f 	bit 7,a	bit 7,a
117d	20 0c 	jr nz,$+$0e	jr nz,$+$00
117f	cb 77 	bit 6,a	bit 6,a
1181	20 08 	jr nz,$+$0a	jr nz,$+$00
1183	d9 	exx	exx
1184	21 00 00 	ld hl,$0000	ld hl,$0000
1187	4d 	ld c,l	ld c,l
1188	c3 74 32 	jp $3274	jp $0000
118b	3e 32 	ld a,$32	ld a,$00
118d	cd d9 3f 	call $3fd9	call $0000
1190	13 	inc de	inc de
1191	04 	inc b	inc b
1192	20 15 	jr nz,$+$17	jr nz,$+$00
1194	00 	nop	nop
1195	af 	xor a	xor a
1196	cd d9 3f 	call $3fd9	call $0000
1199	53 	ld d,e	ld d,e
119a	6f 	ld l,a	ld l,a
119b	72 	ld (hl),d	ld (hl),d
119c	72 	ld (hl),d	ld (hl),d
119d	79 	ld a,c	ld a,c
119e	00 	nop	nop
119f	cd 27 15 	call $1527	call $0000
11a2	fd 23 	inc iy	inc iy
11a4	fe 3a 	cp $3a	cp $00
11a6	28 f7 	jr z,$-$07	jr z,$-$00
11a8	fe 5d 	cp $5d	cp $00
11aa	c8 	ret z	ret z
11ab	fe 0d 	cp $0d	cp $00
11ad	c8 	ret z	ret z
11ae	fd 2b 	dec iy	dec iy
11b0	dd 2a 40 55 	ld ix,($5540)	ld ix,($0000)
11b4	21 fe 55 	ld hl,$55fe	ld hl,$0000
11b7	cb 76 	bit 6,(hl)	bit 6,(hl)
11b9	28 04 	jr z,$+$06	jr z,$+$00
11bb	dd 2a 3c 55 	ld ix,($553c)	ld ix,($0000)
11bf	dd e5 	push ix	push ix
11c1	fd e5 	push iy	push iy
11c3	cd 53 12 	call $1253	call $0000
11c6	c1 	pop bc	pop bc
11c7	d1 	pop de	pop de
11c8	d8 	ret c	ret c
11c9	cd 27 15 	call $1527	call $0000
11cc	37 	scf	scf
11cd	c0 	ret nz	ret nz
11ce	fd 2b 	dec iy	dec iy
11d0	fd 23 	inc iy	inc iy
11d2	fd 7e 00 	ld a,(iy)	ld a,(iy)
11d5	cd 4b 15 	call $154b	call $0000
11d8	20 f6 	jr nz,$-$08	jr nz,$-$00
11da	3a fe 55 	ld a,($55fe)	ld a,($0000)
11dd	dd e5 	push ix	push ix
11df	e1 	pop hl	pop hl
11e0	b7 	or a	or a
11e1	ed 52 	sbc hl,de	sbc hl,de
11e3	eb 	ex de,hl	ex de,hl
11e4	e5 	push hl	push hl
11e5	2a 40 55 	ld hl,($5540)	ld hl,($0000)
11e8	e5 	push hl	push hl
11e9	19 	add hl,de	add hl,de
11ea	22 40 55 	ld ($5540),hl	ld ($0000),hl
11ed	cb 77 	bit 6,a	bit 6,a
11ef	28 07 	jr z,$+$09	jr z,$+$00
11f1	2a 3c 55 	ld hl,($553c)	ld hl,($0000)
11f4	19 	add hl,de	add hl,de
11f5	22 3c 55 	ld ($553c),hl	ld ($0000),hl
11f8	e1 	pop hl	pop hl
11f9	dd e1 	pop ix	pop ix
11fb	cb 67 	bit 4,a	bit 4,a
11fd	28 a0 	jr z,$-$5e	jr z,$-$00
11ff	7c 	ld a,h	ld a,h
1200	cd 3f 12 	call $123f	call $0000
1203	7d 	ld a,l	ld a,l
1204	cd 38 12 	call $1238	call $0000
1207	af 	xor a	xor a
1208	bb 	cp e	cp e
1209	28 15 	jr z,$+$17	jr z,$+$00
120b	3a fb 55 	ld a,($55fb)	ld a,($0000)
120e	fe 11 	cp $11	cp $00
1210	3e 05 	ld a,$05	ld a,$00
1212	d4 01 36 	call nc,$3601	call nc,$0000
1215	dd 7e 00 	ld a,(ix)	ld a,(ix)
1218	cd 38 12 	call $1238	call $0000
121b	dd 23 	inc ix	inc ix
121d	1d 	dec e	dec e
121e	20 eb 	jr nz,$-$13	jr nz,$-$00
1220	3e 12 	ld a,$12	ld a,$00
1222	cd 01 36 	call $3601	call $0000
1225	fd e5 	push iy	push iy
1227	e1 	pop hl	pop hl
1228	ed 42 	sbc hl,bc	sbc hl,bc
122a	0a 	ld a,(bc)	ld a,(bc)
122b	cd 9f 41 	call $419f	call $0000
122e	03 	inc bc	inc bc
122f	2d 	dec l	dec l
1230	20 f8 	jr nz,$-$06	jr nz,$-$00
1232	cd 7f 41 	call $417f	call $0000
1235	c3 9f 11 	jp $119f	jp $0000
1238	cd 3f 12 	call $123f	call $0000
123b	3e 20 	ld a,$20	ld a,$00
123d	18 11 	jr $+$13	jr $+$00
123f	f5 	push af	push af
1240	0f 	rrca	rrca
1241	0f 	rrca	rrca
1242	0f 	rrca	rrca
1243	0f 	rrca	rrca
1244	cd 48 12 	call $1248	call $0000
1247	f1 	pop af	pop af
1248	e6 0f 	and $0f	and $00
124a	c6 90 	add a,$90	add a,$00
124c	27 	daa	daa
124d	ce 40 	adc a,$40	adc a,$00
124f	27 	daa	daa
1250	c3 9f 41 	jp $419f	jp $0000
1253	fe 2e 	cp $2e	cp $00
1255	20 28 	jr nz,$+$2a	jr nz,$+$00
1257	fd 23 	inc iy	inc iy
1259	dd e5 	push ix	push ix
125b	cd 5a 26 	call $265a	call $0000
125e	f5 	push af	push af
125f	cd 7c 20 	call $207c	call $0000
1262	d9 	exx	exx
1263	2a 40 55 	ld hl,($5540)	ld hl,($0000)
1266	d9 	exx	exx
1267	3a fe 55 	ld a,($55fe)	ld a,($0000)
126a	e6 20 	and $20	and $00
126c	20 0b 	jr nz,$+$0d	jr nz,$+$00
126e	dd 7e 00 	ld a,(ix)	ld a,(ix)
1271	dd b6 01 	or (ix+$01)	or (ix+$00)
1274	3e 03 	ld a,$03	ld a,$00
1276	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
1279	f1 	pop af	pop af
127a	cd 74 32 	call $3274	call $0000
127d	dd e1 	pop ix	pop ix
127f	cd 27 15 	call $1527	call $0000
1282	c8 	ret z	ret z
1283	fe d6 	cp $d6	cp $00
1285	0e c4 	ld c,$c4	ld c,$00
1287	fd 23 	inc iy	inc iy
1289	ca 76 13 	jp z,$1376	jp z,$0000
128c	fd 2b 	dec iy	dec iy
128e	21 51 15 	ld hl,$1551	ld hl,$0000
1291	cd de 14 	call $14de	call $0000
1294	d8 	ret c	ret c
1295	48 	ld c,b	ld c,b
1296	16 00 	ld d,$00	ld d,$00
1298	d6 27 	sub $27	sub $00
129a	30 07 	jr nc,$+$09	jr nc,$+$00
129c	fe e8 	cp $e8	cp $00
129e	d4 44 14 	call nc,$1444	call nc,$0000
12a1	18 68 	jr $+$6a	jr $+$00
12a3	d6 0a 	sub $0a	sub $00
12a5	30 0f 	jr nc,$+$11	jr nc,$+$00
12a7	fe f9 	cp $f9	cp $00
12a9	dc ce 14 	call c,$14ce	call c,$0000
12ac	d8 	ret c	ret c
12ad	cd a3 14 	call $14a3	call $0000
12b0	d8 	ret c	ret c
12b1	cd 48 14 	call $1448	call $0000
12b4	18 55 	jr $+$57	jr $+$00
12b6	d6 03 	sub $03	sub $00
12b8	30 06 	jr nc,$+$08	jr nc,$+$00
12ba	cd c2 14 	call $14c2	call $0000
12bd	d8 	ret c	ret c
12be	18 4b 	jr $+$4d	jr $+$00
12c0	d6 0a 	sub $0a	sub $00
12c2	30 32 	jr nc,$+$34	jr nc,$+$00
12c4	fe fd 	cp $fd	cp $00
12c6	06 07 	ld b,$07	ld b,$00
12c8	d4 56 14 	call nc,$1456	call nc,$0000
12cb	78 	ld a,b	ld a,b
12cc	fe 07 	cp $07	cp $00
12ce	20 10 	jr nz,$+$12	jr nz,$+$00
12d0	cd a3 14 	call $14a3	call $0000
12d3	79 	ld a,c	ld a,c
12d4	30 28 	jr nc,$+$2a	jr nc,$+$00
12d6	ee 46 	xor $46	xor $00
12d8	cd 4a 14 	call $144a	call $0000
12db	cd 86 14 	call $1486	call $0000
12de	18 78 	jr $+$7a	jr $+$00
12e0	e6 3f 	and $3f	and $00
12e2	fe 0c 	cp $0c	cp $00
12e4	37 	scf	scf
12e5	c0 	ret nz	ret nz
12e6	79 	ld a,c	ld a,c
12e7	fe 80 	cp $80	cp $00
12e9	0e 09 	ld c,$09	ld c,$00
12eb	28 cd 	jr z,$-$31	jr z,$-$00
12ed	ee 1c 	xor $1c	xor $00
12ef	0f 	rrca	rrca
12f0	4f 	ld c,a	ld c,a
12f1	cd 44 14 	call $1444	call $0000
12f4	18 c4 	jr $-$3a	jr $-$00
12f6	d6 02 	sub $02	sub $00
12f8	30 14 	jr nc,$+$16	jr nc,$+$00
12fa	cd a9 14 	call $14a9	call $0000
12fd	79 	ld a,c	ld a,c
12fe	d2 4a 14 	jp nc,$144a	jp nc,$0000
1301	ee 64 	xor $64	xor $00
1303	07 	rlca	rlca
1304	07 	rlca	rlca
1305	07 	rlca	rlca
1306	4f 	ld c,a	ld c,a
1307	cd c6 14 	call $14c6	call $0000
130a	d8 	ret c	ret c
130b	79 	ld a,c	ld a,c
130c	18 7f 	jr $+$81	jr $+$00
130e	d6 02 	sub $02	sub $00
1310	30 21 	jr nc,$+$23	jr nc,$+$00
1312	fe ff 	cp $ff	cp $00
1314	cc 39 14 	call z,$1439	call z,$0000
1317	08 	ex af,af'	ex af,af'
1318	cd a9 14 	call $14a9	call $0000
131b	d8 	ret c	ret c
131c	08 	ex af,af'	ex af,af'
131d	dc 39 14 	call c,$1439	call c,$0000
1320	24 	inc h	inc h
1321	28 e8 	jr z,$-$16	jr z,$-$00
1323	78 	ld a,b	ld a,b
1324	fe 07 	cp $07	cp $00
1326	37 	scf	scf
1327	c0 	ret nz	ret nz
1328	79 	ld a,c	ld a,c
1329	ee 03 	xor $03	xor $00
132b	07 	rlca	rlca
132c	07 	rlca	rlca
132d	07 	rlca	rlca
132e	cd 76 14 	call $1476	call $0000
1331	18 25 	jr $+$27	jr $+$00
1333	d6 02 	sub $02	sub $00
1335	30 24 	jr nc,$+$26	jr nc,$+$00
1337	fe ff 	cp $ff	cp $00
1339	c4 af 14 	call nz,$14af	call nz,$0000
133c	79 	ld a,c	ld a,c
133d	30 02 	jr nc,$+$04	jr nc,$+$00
133f	3e 18 	ld a,$18	ld a,$00
1341	cd 76 14 	call $1476	call $0000
1344	cd 86 14 	call $1486	call $0000
1347	ed 5b 40 55 	ld de,($5540)	ld de,($0000)
134b	13 	inc de	inc de
134c	37 	scf	scf
134d	ed 52 	sbc hl,de	sbc hl,de
134f	7d 	ld a,l	ld a,l
1350	17 	rla	rla
1351	9f 	sbc a,a	sbc a,a
1352	bc 	cp h	cp h
1353	3e 01 	ld a,$01	ld a,$00
1355	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
1358	7d 	ld a,l	ld a,l
1359	18 32 	jr $+$34	jr $+$00
135b	47 	ld b,a	ld b,a
135c	20 16 	jr nz,$+$18	jr nz,$+$00
135e	cd af 14 	call $14af	call $0000
1361	79 	ld a,c	ld a,c
1362	30 0b 	jr nc,$+$0d	jr nc,$+$00
1364	78 	ld a,b	ld a,b
1365	e6 3f 	and $3f	and $00
1367	fe 06 	cp $06	cp $00
1369	3e e9 	ld a,$e9	ld a,$00
136b	28 20 	jr z,$+$22	jr z,$+$00
136d	3e c3 	ld a,$c3	ld a,$00
136f	cd 76 14 	call $1476	call $0000
1372	18 05 	jr $+$07	jr $+$00
1374	10 0c 	djnz $+$0e	djnz $+$00
1376	cd 91 13 	call $1391	call $0000
1379	cd 86 14 	call $1486	call $0000
137c	cd 58 13 	call $1358	call $0000
137f	7c 	ld a,h	ld a,h
1380	18 0b 	jr $+$0d	jr $+$00
1382	10 0b 	djnz $+$0d	djnz $+$00
1384	cd 86 14 	call $1486	call $0000
1387	a1 	and c	and c
1388	b4 	or h	or h
1389	20 c8 	jr nz,$-$36	jr nz,$-$00
138b	7d 	ld a,l	ld a,l
138c	b1 	or c	or c
138d	18 78 	jr $+$7a	jr $+$00
138f	10 0a 	djnz $+$0c	djnz $+$00
1391	cd af 14 	call $14af	call $0000
1394	79 	ld a,c	ld a,c
1395	30 70 	jr nc,$+$72	jr nc,$+$00
1397	f6 09 	or $09	or $00
1399	18 6c 	jr $+$6e	jr $+$00
139b	10 6c 	djnz $+$6e	djnz $+$00
139d	cd db 14 	call $14db	call $0000
13a0	30 5f 	jr nc,$+$61	jr nc,$+$00
13a2	cd a9 14 	call $14a9	call $0000
13a5	08 	ex af,af'	ex af,af'
13a6	cd 27 15 	call $1527	call $0000
13a9	fe 28 	cp $28	cp $00
13ab	28 1d 	jr z,$+$1f	jr z,$+$00
13ad	08 	ex af,af'	ex af,af'
13ae	d2 d0 12 	jp nc,$12d0	jp nc,$0000
13b1	0e 01 	ld c,$01	ld c,$00
13b3	cd c6 14 	call $14c6	call $0000
13b6	d8 	ret c	ret c
13b7	3e 0e 	ld a,$0e	ld a,$00
13b9	b8 	cp b	cp b
13ba	47 	ld b,a	ld b,a
13bb	cc c2 14 	call z,$14c2	call z,$0000
13be	78 	ld a,b	ld a,b
13bf	e6 3f 	and $3f	and $00
13c1	fe 0c 	cp $0c	cp $00
13c3	79 	ld a,c	ld a,c
13c4	20 a9 	jr nz,$-$55	jr nz,$-$00
13c6	3e f9 	ld a,$f9	ld a,$00
13c8	18 3d 	jr $+$3f	jr $+$00
13ca	08 	ex af,af'	ex af,af'
13cb	c5 	push bc	push bc
13cc	d4 a3 14 	call nc,$14a3	call nc,$0000
13cf	79 	ld a,c	ld a,c
13d0	c1 	pop bc	pop bc
13d1	30 77 	jr nc,$+$79	jr nc,$+$00
13d3	0e 0a 	ld c,$0a	ld c,$00
13d5	cd c6 14 	call $14c6	call $0000
13d8	cd 20 14 	call $1420	call $0000
13db	30 92 	jr nc,$-$6c	jr nc,$-$00
13dd	cd 86 14 	call $1486	call $0000
13e0	0e 02 	ld c,$02	ld c,$00
13e2	cd c2 14 	call $14c2	call $0000
13e5	cd 20 14 	call $1420	call $0000
13e8	d8 	ret c	ret c
13e9	cd 76 14 	call $1476	call $0000
13ec	18 8e 	jr $-$70	jr $-$00
13ee	05 	dec b	dec b
13ef	ca db 12 	jp z,$12db	jp z,$0000
13f2	10 85 	djnz $-$79	djnz $-$00
13f4	cd 86 14 	call $1486	call $0000
13f7	21 fe 55 	ld hl,$55fe	ld hl,$0000
13fa	4f 	ld c,a	ld c,a
13fb	ed 6f 	rld	rld
13fd	79 	ld a,c	ld a,c
13fe	ed 67 	rrd	rrd
1400	c9 	ret	ret
1401	fe 04 	cp $04	cp $00
1403	dc 44 14 	call c,$1444	call c,$0000
1406	78 	ld a,b	ld a,b
1407	18 6d 	jr $+$6f	jr $+$00
1409	10 e3 	djnz $-$1b	djnz $-$00
140b	dd e5 	push ix	push ix
140d	cd c0 18 	call $18c0	call $0000
1410	dd e1 	pop ix	pop ix
1412	21 00 53 	ld hl,$5300	ld hl,$0000
1415	af 	xor a	xor a
1416	bb 	cp e	cp e
1417	c8 	ret z	ret z
1418	7e 	ld a,(hl)	ld a,(hl)
1419	23 	inc hl	inc hl
141a	cd 76 14 	call $1476	call $0000
141d	1d 	dec e	dec e
141e	18 f5 	jr $-$09	jr $-$00
1420	78 	ld a,b	ld a,b
1421	38 0e 	jr c,$+$10	jr c,$+$00
1423	78 	ld a,b	ld a,b
1424	e6 3f 	and $3f	and $00
1426	fe 0c 	cp $0c	cp $00
1428	79 	ld a,c	ld a,c
1429	c8 	ret z	ret z
142a	cd 44 14 	call $1444	call $0000
142d	79 	ld a,c	ld a,c
142e	f6 43 	or $43	or $00
1430	c9 	ret	ret
1431	fe 07 	cp $07	cp $00
1433	37 	scf	scf
1434	c0 	ret nz	ret nz
1435	79 	ld a,c	ld a,c
1436	f6 30 	or $30	or $00
1438	c9 	ret	ret
1439	c5 	push bc	push bc
143a	cd 56 14 	call $1456	call $0000
143d	cb 68 	bit 5,b	bit 5,b
143f	c1 	pop bc	pop bc
1440	28 44 	jr z,$+$46	jr z,$+$00
1442	26 ff 	ld h,$ff	ld h,$00
1444	3e ed 	ld a,$ed	ld a,$00
1446	18 2e 	jr $+$30	jr $+$00
1448	3e cb 	ld a,$cb	ld a,$00
144a	fe 76 	cp $76	cp $00
144c	37 	scf	scf
144d	c8 	ret z	ret z
144e	cd 76 14 	call $1476	call $0000
1451	14 	inc d	inc d
1452	f0 	ret p	ret p
1453	7b 	ld a,e	ld a,e
1454	18 20 	jr $+$22	jr $+$00
1456	e5 	push hl	push hl
1457	21 98 16 	ld hl,$1698	ld hl,$0000
145a	cd de 14 	call $14de	call $0000
145d	e1 	pop hl	pop hl
145e	d8 	ret c	ret c
145f	cb 78 	bit 7,b	bit 7,b
1461	c8 	ret z	ret z
1462	cb 58 	bit 3,b	bit 3,b
1464	e5 	push hl	push hl
1465	cc 7d 14 	call z,$147d	call z,$0000
1468	5d 	ld e,l	ld e,l
1469	e1 	pop hl	pop hl
146a	3e dd 	ld a,$dd	ld a,$00
146c	cb 70 	bit 6,b	bit 6,b
146e	28 02 	jr z,$+$04	jr z,$+$00
1470	3e fd 	ld a,$fd	ld a,$00
1472	b7 	or a	or a
1473	14 	inc d	inc d
1474	57 	ld d,a	ld d,a
1475	f8 	ret m	ret m
1476	dd 77 00 	ld (ix),a	ld (ix),a
1479	dd 23 	inc ix	inc ix
147b	b7 	or a	or a
147c	c9 	ret	ret
147d	fd 7e 00 	ld a,(iy)	ld a,(iy)
1480	fe 29 	cp $29	cp $00
1482	21 00 00 	ld hl,$0000	ld hl,$0000
1485	c8 	ret z	ret z
1486	cd 27 15 	call $1527	call $0000
1489	c5 	push bc	push bc
148a	d5 	push de	push de
148b	dd e5 	push ix	push ix
148d	cd b7 18 	call $18b7	call $0000
1490	dd e1 	pop ix	pop ix
1492	d9 	exx	exx
1493	d1 	pop de	pop de
1494	c1 	pop bc	pop bc
1495	7d 	ld a,l	ld a,l
1496	b7 	or a	or a
1497	c9 	ret	ret
1498	cd 56 14 	call $1456	call $0000
149b	d8 	ret c	ret c
149c	78 	ld a,b	ld a,b
149d	e6 3f 	and $3f	and $00
149f	fe 08 	cp $08	cp $00
14a1	3f 	ccf	ccf
14a2	c9 	ret	ret
14a3	cd 98 14 	call $1498	call $0000
14a6	d8 	ret c	ret c
14a7	18 2f 	jr $+$31	jr $+$00
14a9	cd 98 14 	call $1498	call $0000
14ac	d8 	ret c	ret c
14ad	18 26 	jr $+$28	jr $+$00
14af	cd 56 14 	call $1456	call $0000
14b2	d8 	ret c	ret c
14b3	78 	ld a,b	ld a,b
14b4	e6 1f 	and $1f	and $00
14b6	d6 10 	sub $10	sub $00
14b8	30 1b 	jr nc,$+$1d	jr nc,$+$00
14ba	fe f1 	cp $f1	cp $00
14bc	37 	scf	scf
14bd	c0 	ret nz	ret nz
14be	3e 03 	ld a,$03	ld a,$00
14c0	18 13 	jr $+$15	jr $+$00
14c2	cd 56 14 	call $1456	call $0000
14c5	d8 	ret c	ret c
14c6	78 	ld a,b	ld a,b
14c7	e6 0f 	and $0f	and $00
14c9	d6 08 	sub $08	sub $00
14cb	d8 	ret c	ret c
14cc	18 07 	jr $+$09	jr $+$00
14ce	cd 86 14 	call $1486	call $0000
14d1	fe 08 	cp $08	cp $00
14d3	3f 	ccf	ccf
14d4	d8 	ret c	ret c
14d5	07 	rlca	rlca
14d6	07 	rlca	rlca
14d7	07 	rlca	rlca
14d8	b1 	or c	or c
14d9	4f 	ld c,a	ld c,a
14da	c9 	ret	ret
14db	21 dd 16 	ld hl,$16dd	ld hl,$0000
14de	cd 27 15 	call $1527	call $0000
14e1	06 00 	ld b,$00	ld b,$00
14e3	37 	scf	scf
14e4	c8 	ret z	ret z
14e5	fe dd 	cp $dd	cp $00
14e7	28 04 	jr z,$+$06	jr z,$+$00
14e9	fe 85 	cp $85	cp $00
14eb	3f 	ccf	ccf
14ec	d8 	ret c	ret c
14ed	7e 	ld a,(hl)	ld a,(hl)
14ee	b7 	or a	or a
14ef	28 f0 	jr z,$-$0e	jr z,$-$00
14f1	fd ae 00 	xor (iy)	xor (iy)
14f4	e6 5f 	and $5f	and $00
14f6	28 09 	jr z,$+$0b	jr z,$+$00
14f8	cb 7e 	bit 7,(hl)	bit 7,(hl)
14fa	23 	inc hl	inc hl
14fb	28 fb 	jr z,$-$03	jr z,$-$00
14fd	23 	inc hl	inc hl
14fe	04 	inc b	inc b
14ff	18 ec 	jr $-$12	jr $-$00
1501	fd e5 	push iy	push iy
1503	cb 7e 	bit 7,(hl)	bit 7,(hl)
1505	fd 23 	inc iy	inc iy
1507	23 	inc hl	inc hl
1508	20 10 	jr nz,$+$12	jr nz,$+$00
150a	be 	cp (hl)	cp (hl)
150b	cc 26 15 	call z,$1526	call z,$0000
150e	7e 	ld a,(hl)	ld a,(hl)
150f	fd ae 00 	xor (iy)	xor (iy)
1512	e6 5f 	and $5f	and $00
1514	28 ed 	jr z,$-$11	jr z,$-$00
1516	fd e1 	pop iy	pop iy
1518	18 de 	jr $-$20	jr $-$00
151a	cd 39 15 	call $1539	call $0000
151d	c4 33 15 	call nz,$1533	call nz,$0000
1520	20 f4 	jr nz,$-$0a	jr nz,$-$00
1522	78 	ld a,b	ld a,b
1523	46 	ld b,(hl)	ld b,(hl)
1524	e1 	pop hl	pop hl
1525	c9 	ret	ret
1526	23 	inc hl	inc hl
1527	cd 39 15 	call $1539	call $0000
152a	c0 	ret nz	ret nz
152b	cd 45 15 	call $1545	call $0000
152e	c8 	ret z	ret z
152f	fd 23 	inc iy	inc iy
1531	18 f4 	jr $-$0a	jr $-$00
1533	fe 2b 	cp $2b	cp $00
1535	c8 	ret z	ret z
1536	fe 2d 	cp $2d	cp $00
1538	c9 	ret	ret
1539	fd 7e 00 	ld a,(iy)	ld a,(iy)
153c	fe 20 	cp $20	cp $00
153e	c8 	ret z	ret z
153f	fe 2c 	cp $2c	cp $00
1541	c8 	ret z	ret z
1542	fe 29 	cp $29	cp $00
1544	c8 	ret z	ret z
1545	fe 3b 	cp $3b	cp $00
1547	c8 	ret z	ret z
1548	fe 5c 	cp $5c	cp $00
154a	c8 	ret z	ret z
154b	fe 3a 	cp $3a	cp $00
154d	d0 	ret nc	ret nc
154e	fe 0d 	cp $0d	cp $00
1550	c9 	ret	ret
1551	4e 	ld c,(hl)	ld c,(hl)
1552	4f 	ld c,a	ld c,a
1553	d0 	ret nc	ret nc
1554	00 	nop	nop
1555	52 4c 	ld.sil c,h	ld.sil c,h
1557	43 	ld b,e	ld b,e
1558	c1 	pop bc	pop bc
1559	07 	rlca	rlca
155a	45 	ld b,l	ld b,l
155b	58 	ld e,b	ld e,b
155c	00 	nop	nop
155d	41 	ld b,c	ld b,c
155e	46 	ld b,(hl)	ld b,(hl)
155f	00 	nop	nop
1560	41 	ld b,c	ld b,c
1561	46 	ld b,(hl)	ld b,(hl)
1562	a7 	and a	and a
1563	08 	ex af,af'	ex af,af'
1564	52 	noni.sil	noni.sil
1565	52 43 	ld.sil b,e	ld.sil b,e
1567	c1 	pop bc	pop bc
1568	0f 	rrca	rrca
1569	52 4c 	ld.sil c,h	ld.sil c,h
156b	c1 	pop bc	pop bc
156c	17 	rla	rla
156d	52 	noni.sil	noni.sil
156e	52 c1 	pop.sil bc	pop.sil bc
1570	1f 	rra	rra
1571	44 	ld b,h	ld b,h
1572	41 	ld b,c	ld b,c
1573	c1 	pop bc	pop bc
1574	27 	daa	daa
1575	43 	ld b,e	ld b,e
1576	50 	ld d,b	ld d,b
1577	cc 2f 53 	call z,$532f	call z,$0000
157a	43 	ld b,e	ld b,e
157b	c6 37 	add a,$37	add a,$00
157d	43 	ld b,e	ld b,e
157e	43 	ld b,e	ld b,e
157f	c6 3f 	add a,$3f	add a,$00
1581	48 	ld c,b	ld c,b
1582	41 	ld b,c	ld b,c
1583	4c 	ld c,h	ld c,h
1584	d4 76 45 	call nc,$4576	call nc,$0000
1587	58 	ld e,b	ld e,b
1588	d8 	ret c	ret c
1589	d9 	exx	exx
158a	45 	ld b,l	ld b,l
158b	58 	ld e,b	ld e,b
158c	00 	nop	nop
158d	44 	ld b,h	ld b,h
158e	45 	ld b,l	ld b,l
158f	00 	nop	nop
1590	48 	ld c,b	ld c,b
1591	cc eb 44 	call z,$44eb	call z,$0000
1594	c9 	ret	ret
1595	f3 	di	di
1596	45 	ld b,l	ld b,l
1597	c9 	ret	ret
1598	fb 	ei	ei
1599	4e 	ld c,(hl)	ld c,(hl)
159a	45 	ld b,l	ld b,l
159b	c7 	rst $00	rst $00
159c	44 	ld b,h	ld b,h
159d	49 4d 	ld.lis c,l	ld.lis c,l
159f	00 	nop	nop
15a0	b0 	or b	or b
15a1	46 	ld b,(hl)	ld b,(hl)
15a2	52 45 	ld.sil b,l	ld.sil b,l
15a4	54 	ld d,h	ld d,h
15a5	ce 45 	adc a,$45	adc a,$00
15a7	52 45 	ld.sil b,l	ld.sil b,l
15a9	54 	ld d,h	ld d,h
15aa	c9 	ret	ret
15ab	4d 	ld c,l	ld c,l
15ac	49 4d 	ld.lis c,l	ld.lis c,l
15ae	00 	nop	nop
15af	b1 	or c	or c
15b0	56 	ld d,(hl)	ld d,(hl)
15b1	49 4d 	ld.lis c,l	ld.lis c,l
15b3	00 	nop	nop
15b4	b2 	or d	or d
15b5	5e 	ld e,(hl)	ld e,(hl)
15b6	52 	noni.sil	noni.sil
15b7	52 c4 67 52 4c 	call.sil nz,$4c5267	call.sil nz,$000000
15bc	c4 6f 4c 	call nz,$4c6f	call nz,$0000
15bf	44 	ld b,h	ld b,h
15c0	c9 	ret	ret
15c1	a0 	and b	and b
15c2	43 	ld b,e	ld b,e
15c3	50 	ld d,b	ld d,b
15c4	c9 	ret	ret
15c5	a1 	and c	and c
15c6	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
15c8	c9 	ret	ret
15c9	a2 	and d	and d
15ca	4f 	ld c,a	ld c,a
15cb	55 	ld d,l	ld d,l
15cc	54 	ld d,h	ld d,h
15cd	c9 	ret	ret
15ce	a3 	and e	and e
15cf	4c 	ld c,h	ld c,h
15d0	44 	ld b,h	ld b,h
15d1	c4 a8 43 	call nz,$43a8	call nz,$0000
15d4	50 	ld d,b	ld d,b
15d5	c4 a9 49 	call nz,$49a9	call nz,$0000
15d8	4e 	ld c,(hl)	ld c,(hl)
15d9	c4 aa 4f 	call nz,$4faa	call nz,$0000
15dc	55 	ld d,l	ld d,l
15dd	54 	ld d,h	ld d,h
15de	c4 ab 4c 	call nz,$4cab	call nz,$0000
15e1	44 	ld b,h	ld b,h
15e2	49 d2 b0 43 	jp.lis nc,$43b0	jp.lis nc,$0000
15e6	50 	ld d,b	ld d,b
15e7	49 d2 b1 49 	jp.lis nc,$49b1	jp.lis nc,$0000
15eb	4e 	ld c,(hl)	ld c,(hl)
15ec	49 d2 b2 4f 	jp.lis nc,$4fb2	jp.lis nc,$0000
15f0	54 	ld d,h	ld d,h
15f1	49 d2 b3 4c 	jp.lis nc,$4cb3	jp.lis nc,$0000
15f5	44 	ld b,h	ld b,h
15f6	44 	ld b,h	ld b,h
15f7	d2 b8 43 	jp nc,$43b8	jp nc,$0000
15fa	50 	ld d,b	ld d,b
15fb	44 	ld b,h	ld b,h
15fc	d2 b9 49 	jp nc,$49b9	jp nc,$0000
15ff	4e 	ld c,(hl)	ld c,(hl)
1600	44 	ld b,h	ld b,h
1601	d2 ba 4f 	jp nc,$4fba	jp nc,$0000
1604	54 	ld d,h	ld d,h
1605	44 	ld b,h	ld b,h
1606	d2 bb 42 	jp nc,$42bb	jp nc,$0000
1609	49 d4 40 52 	call.lis nc,$5240	call.lis nc,$0000
160d	45 	ld b,l	ld b,l
160e	d3 80 	out ($80),a	out ($00),a
1610	53 	ld d,e	ld d,e
1611	45 	ld b,l	ld b,l
1612	d4 c0 52 	call nc,$52c0	call nc,$0000
1615	4c 	ld c,h	ld c,h
1616	c3 00 52 	jp $5200	jp $0000
1619	52 c3 08 52 cc 	jp.sil $cc5208	jp.sil $000000
161e	10 52 	djnz $+$54	djnz $+$00
1620	d2 18 53 	jp nc,$5318	jp nc,$0000
1623	4c 	ld c,h	ld c,h
1624	c1 	pop bc	pop bc
1625	20 53 	jr nz,$+$55	jr nz,$+$00
1627	52 c1 	pop.sil bc	pop.sil bc
1629	28 53 	jr z,$+$55	jr z,$+$00
162b	52 cc 38 50 4f 	call.sil z,$4f5038	call.sil z,$000000
1630	d0 	ret nc	ret nc
1631	c1 	pop bc	pop bc
1632	50 	ld d,b	ld d,b
1633	55 	ld d,l	ld d,l
1634	53 	ld d,e	ld d,e
1635	c8 	ret z	ret z
1636	c5 	push bc	push bc
1637	45 	ld b,l	ld b,l
1638	58 	ld e,b	ld e,b
1639	00 	nop	nop
163a	28 53 	jr z,$+$55	jr z,$+$00
163c	d0 	ret nc	ret nc
163d	e3 	ex (sp),hl	ex (sp),hl
163e	53 	ld d,e	ld d,e
163f	55 	ld d,l	ld d,l
1640	c2 90 41 	jp nz,$4190	jp nz,$0000
1643	4e 	ld c,(hl)	ld c,(hl)
1644	c4 a0 58 	call nz,$58a0	call nz,$0000
1647	4f 	ld c,a	ld c,a
1648	d2 a8 4f 	jp nc,$4fa8	jp nc,$0000
164b	d2 b0 43 	jp nc,$43b0	jp nc,$0000
164e	d0 	ret nc	ret nc
164f	b8 	cp b	cp b
1650	80 	add a,b	add a,b
1651	a0 	and b	and b
1652	84 	add a,h	add a,h
1653	b0 	or b	or b
1654	41 	ld b,c	ld b,c
1655	44 	ld b,h	ld b,h
1656	c4 80 41 	call nz,$4180	call nz,$0000
1659	44 	ld b,h	ld b,h
165a	c3 88 53 	jp $5388	jp $0000
165d	42 	ld b,d	ld b,d
165e	c3 98 49 	jp $4998	jp $0000
1661	4e 	ld c,(hl)	ld c,(hl)
1662	c3 04 44 	jp $4404	jp $0000
1665	45 	ld b,l	ld b,l
1666	c3 05 49 	jp $4905	jp $0000
1669	ce 40 	adc a,$40	adc a,$00
166b	4f 	ld c,a	ld c,a
166c	55 	ld d,l	ld d,l
166d	d4 41 4a 	call nc,$4a41	call nc,$0000
1670	d2 20 44 	jp nc,$4420	jp nc,$0000
1673	4a 	ld c,d	ld c,d
1674	4e 	ld c,(hl)	ld c,(hl)
1675	da 10 4a 	jp c,$4a10	jp c,$0000
1678	d0 	ret nc	ret nc
1679	c2 43 41 	jp nz,$4143	jp nz,$0000
167c	4c 	ld c,h	ld c,h
167d	cc c4 52 	call z,$52c4	call z,$0000
1680	53 	ld d,e	ld d,e
1681	d4 c7 52 	call nc,$52c7	call nc,$0000
1684	45 	ld b,l	ld b,l
1685	d4 c0 4c 	call nc,$4cc0	call nc,$0000
1688	c4 40 5d 	call nz,$5d40	call nz,$0000
168b	cd 00 5d 	call $5d00	call $0000
168e	c2 00 4f 	jp nz,$4f00	jp nz,$0000
1691	50 	ld d,b	ld d,b
1692	d4 00 5d 	call nc,$5d00	call nc,$0000
1695	d7 	rst $10	rst $00
1696	00 	nop	nop
1697	00 	nop	nop
1698	c2 00 c3 	jp nz,$c300	jp nz,$0000
169b	01 c4 02 	ld bc,$02c4	ld bc,$0000
169e	c5 	push bc	push bc
169f	03 	inc bc	inc bc
16a0	c8 	ret z	ret z
16a1	04 	inc b	inc b
16a2	cc 05 28 	call z,$2805	call z,$0000
16a5	48 	ld c,b	ld c,b
16a6	cc 06 c1 	call z,$c106	call z,$0000
16a9	07 	rlca	rlca
16aa	28 49 	jr z,$+$4b	jr z,$+$00
16ac	d8 	ret c	ret c
16ad	86 	add a,(hl)	add a,(hl)
16ae	28 49 	jr z,$+$4b	jr z,$+$00
16b0	d9 	exx	exx
16b1	c6 42 	add a,$42	add a,$00
16b3	c3 08 44 	jp $4408	jp $0000
16b6	c5 	push bc	push bc
16b7	0a 	ld a,(bc)	ld a,(bc)
16b8	48 	ld c,b	ld c,b
16b9	cc 0c 49 	call z,$490c	call z,$0000
16bc	d8 	ret c	ret c
16bd	8c 	adc a,h	adc a,h
16be	49 d9 	exx.lis	exx.lis
16c0	cc 41 c6 	call z,$c641	call z,$0000
16c3	0e 53 	ld c,$53	ld c,$00
16c5	d0 	ret nc	ret nc
16c6	0e 4e 	ld c,$4e	ld c,$00
16c8	da 10 da 	jp c,$da10	jp c,$0000
16cb	11 4e c3 	ld de,$c34e	ld de,$0000
16ce	12 	ld (de),a	ld (de),a
16cf	50 	ld d,b	ld d,b
16d0	cf 	rst $08	rst $00
16d1	14 	inc d	inc d
16d2	50 	ld d,b	ld d,b
16d3	c5 	push bc	push bc
16d4	15 	dec d	dec d
16d5	d0 	ret nc	ret nc
16d6	16 cd 	ld d,$cd	ld d,$00
16d8	17 	rla	rla
16d9	28 c3 	jr z,$-$3b	jr z,$-$00
16db	20 00 	jr nz,$+$02	jr nz,$+$00
16dd	49 00 	nop.lis	nop.lis
16df	c1 	pop bc	pop bc
16e0	47 	ld b,a	ld b,a
16e1	52 00 	nop.sil	nop.sil
16e3	c1 	pop bc	pop bc
16e4	4f 	ld c,a	ld c,a
16e5	41 	ld b,c	ld b,c
16e6	00 	nop	nop
16e7	c9 	ret	ret
16e8	57 	ld d,a	ld d,a
16e9	41 	ld b,c	ld b,c
16ea	00 	nop	nop
16eb	d2 5f 28 	jp nc,$285f	jp nc,$0000
16ee	42 	ld b,d	ld b,d
16ef	43 	ld b,e	ld b,e
16f0	00 	nop	nop
16f1	c1 	pop bc	pop bc
16f2	02 	ld (bc),a	ld (bc),a
16f3	28 44 	jr z,$+$46	jr z,$+$00
16f5	45 	ld b,l	ld b,l
16f6	00 	nop	nop
16f7	c1 	pop bc	pop bc
16f8	12 	ld (de),a	ld (de),a
16f9	41 	ld b,c	ld b,c
16fa	00 	nop	nop
16fb	28 42 	jr z,$+$44	jr z,$+$00
16fd	c3 0a 41 	jp $410a	jp $0000
1700	00 	nop	nop
1701	28 44 	jr z,$+$46	jr z,$+$00
1703	c5 	push bc	push bc
1704	1a 	ld a,(de)	ld a,(de)
1705	00 	nop	nop
1706	e4 1f df 	call po,$df1f	call po,$0000
1709	1b 	dec de	dec de
170a	fc 1b b1 	call m,$b11b	call m,$0000
170d	1b 	dec de	dec de
170e	04 	inc b	inc b
170f	1c 	inc e	inc e
1710	a7 	and a	and a
1711	1b 	dec de	dec de
1712	ac 	xor h	xor h
1713	1b 	dec de	dec de
1714	50 	ld d,b	ld d,b
1715	1c 	inc e	inc e
1716	8c 	adc a,h	adc a,h
1717	1c 	inc e	inc e
1718	6b 	ld l,e	ld l,e
1719	0e 94 	ld c,$94	ld c,$00
171b	1b 	dec de	dec de
171c	84 	add a,h	add a,h
171d	1c 	inc e	inc e
171e	88 	adc a,b	adc a,b
171f	1c 	inc e	inc e
1720	70 	ld (hl),b	ld (hl),b
1721	1b 	dec de	dec de
1722	70 	ld (hl),b	ld (hl),b
1723	1c 	inc e	inc e
1724	cf 	rst $08	rst $00
1725	1b 	dec de	dec de
1726	58 	ld e,b	ld e,b
1727	1c 	inc e	inc e
1728	c5 	push bc	push bc
1729	1b 	dec de	dec de
172a	ca 1b b0 	jp z,$b01b	jp z,$0000
172d	1c 	inc e	inc e
172e	78 	ld a,b	ld a,b
172f	1c 	inc e	inc e
1730	f4 1b 7c 	call p,$7c1b	call p,$0000
1733	20 67 	jr nz,$+$69	jr nz,$+$00
1735	2a 7e 1b 	ld hl,($1b7e)	ld hl,($0000)
1738	79 	ld a,c	ld a,c
1739	1b 	dec de	dec de
173a	29 	add hl,hl	add hl,hl
173b	1e 64 	ld e,$64	ld e,$00
173d	1c 	inc e	inc e
173e	a1 	and c	and c
173f	1b 	dec de	dec de
1740	7c 	ld a,h	ld a,h
1741	1c 	inc e	inc e
1742	80 	add a,b	add a,b
1743	1c 	inc e	inc e
1744	54 	ld d,h	ld d,h
1745	1c 	inc e	inc e
1746	dc 1b da 	call c,$da1b	call c,$0000
1749	1b 	dec de	dec de
174a	4c 	ld c,h	ld c,h
174b	1c 	inc e	inc e
174c	38 0e 	jr c,$+$10	jr c,$+$00
174e	59 	ld e,c	ld e,c
174f	1b 	dec de	dec de
1750	5c 	ld e,h	ld e,h
1751	1c 	inc e	inc e
1752	dd 1c 	trap	trap
1754	60 	ld h,b	ld h,b
1755	1c 	inc e	inc e
1756	74 	ld (hl),h	ld (hl),h
1757	1c 	inc e	inc e
1758	68 	ld l,b	ld l,b
1759	1c 	inc e	inc e
175a	6c 	ld l,h	ld l,h
175b	1c 	inc e	inc e
175c	b6 	or (hl)	or (hl)
175d	1b 	dec de	dec de
175e	41 	ld b,c	ld b,c
175f	1c 	inc e	inc e
1760	c3 30 a3 	jp $a330	jp $0000
1763	1c 	inc e	inc e
1764	5f 	ld e,a	ld e,a
1765	1b 	dec de	dec de
1766	aa 	xor d	xor d
1767	1e b1 	ld e,$b1	ld e,$00
1769	1e 12 	ld e,$12	ld e,$00
176b	1f 	rra	rra
176c	52 1f 	rra.sil	rra.sil
176e	22 1f 80 	ld ($801f),hl	ld ($0000),hl
1771	1f 	rra	rra
1772	3c 	inc a	inc a
1773	20 aa 	jr nz,$-$54	jr nz,$-$00
1775	1f 	rra	rra
1776	64 	ld h,h	ld h,h
1777	1b 	dec de	dec de
1778	6d 	ld l,l	ld l,l
1779	1d 	dec e	dec e
177a	2f 	cpl	cpl
177b	1c 	inc e	inc e
177c	37 	scf	scf
177d	1c 	inc e	inc e
177e	29 	add hl,hl	add hl,hl
177f	1c 	inc e	inc e
1780	1c 	inc e	inc e
1781	1c 	inc e	inc e
1782	3d 	dec a	dec a
1783	1c 	inc e	inc e
1784	22 1c cd 	ld ($cd1c),hl	ld ($0000),hl
1787	9b 	sbc a,e	sbc a,e
1788	17 	rla	rla
1789	fe 82 	cp $82	cp $00
178b	28 03 	jr z,$+$05	jr z,$+$00
178d	fe 84 	cp $84	cp $00
178f	c0 	ret nz	ret nz
1790	cd f7 20 	call $20f7	call $0000
1793	cd 9b 17 	call $179b	call $0000
1796	cd 07 21 	call $2107	call $0000
1799	18 ee 	jr $-$10	jr $-$00
179b	cd ac 17 	call $17ac	call $0000
179e	fe 80 	cp $80	cp $00
17a0	c0 	ret nz	ret nz
17a1	cd f7 20 	call $20f7	call $0000
17a4	cd ac 17 	call $17ac	call $0000
17a7	cd 07 21 	call $2107	call $0000
17aa	18 f2 	jr $-$0c	jr $-$00
17ac	cd 24 18 	call $1824	call $0000
17af	cd ee 20 	call $20ee	call $0000
17b2	c0 	ret nz	ret nz
17b3	47 	ld b,a	ld b,a
17b4	fd 23 	inc iy	inc iy
17b6	cd 8f 45 	call $458f	call $0000
17b9	cd ee 20 	call $20ee	call $0000
17bc	20 07 	jr nz,$+$09	jr nz,$+$00
17be	fd 23 	inc iy	inc iy
17c0	b8 	cp b	cp b
17c1	28 1c 	jr z,$+$1e	jr z,$+$00
17c3	80 	add a,b	add a,b
17c4	47 	ld b,a	ld b,a
17c5	78 	ld a,b	ld a,b
17c6	08 	ex af,af'	ex af,af'
17c7	fa f7 17 	jp m,$17f7	jp m,$0000
17ca	08 	ex af,af'	ex af,af'
17cb	d6 04 	sub $04	sub $00
17cd	fe 3a 	cp $3a	cp $00
17cf	20 02 	jr nz,$+$04	jr nz,$+$00
17d1	c6 02 	add a,$02	add a,$00
17d3	e6 0f 	and $0f	and $00
17d5	cd fb 20 	call $20fb	call $0000
17d8	cd 24 18 	call $1824	call $0000
17db	cd 07 21 	call $2107	call $0000
17de	c9 	ret	ret
17df	fe 3d 	cp $3d	cp $00
17e1	28 e2 	jr z,$-$1c	jr z,$-$00
17e3	cd 8f 45 	call $458f	call $0000
17e6	cd ee 20 	call $20ee	call $0000
17e9	20 07 	jr nz,$+$09	jr nz,$+$00
17eb	b8 	cp b	cp b
17ec	c2 64 26 	jp nz,$2664	jp nz,$0000
17ef	fd 23 	inc iy	inc iy
17f1	04 	inc b	inc b
17f2	78 	ld a,b	ld a,b
17f3	d6 12 	sub $12	sub $00
17f5	18 de 	jr $-$20	jr $-$00
17f7	08 	ex af,af'	ex af,af'
17f8	3d 	dec a	dec a
17f9	e6 07 	and $07	and $00
17fb	cd 9d 20 	call $209d	call $0000
17fe	f5 	push af	push af
17ff	cd 24 18 	call $1824	call $0000
1802	08 	ex af,af'	ex af,af'
1803	f2 f2 18 	jp p,$18f2	jp p,$0000
1806	f1 	pop af	pop af
1807	4b 	ld c,e	ld c,e
1808	d1 	pop de	pop de
1809	21 00 00 	ld hl,$0000	ld hl,$0000
180c	39 	add hl,sp	add hl,sp
180d	43 	ld b,e	ld b,e
180e	d5 	push de	push de
180f	11 00 53 	ld de,$5300	ld de,$0000
1812	eb 	ex de,hl	ex de,hl
1813	cd 3f 21 	call $213f	call $0000
1816	d1 	pop de	pop de
1817	eb 	ex de,hl	ex de,hl
1818	26 00 	ld h,$00	ld h,$00
181a	39 	add hl,sp	add hl,sp
181b	f9 	ld sp,hl	ld sp,hl
181c	eb 	ex de,hl	ex de,hl
181d	af 	xor a	xor a
181e	4f 	ld c,a	ld c,a
181f	08 	ex af,af'	ex af,af'
1820	fd 7e 00 	ld a,(iy)	ld a,(iy)
1823	c9 	ret	ret
1824	cd 72 18 	call $1872	call $0000
1827	fe 2d 	cp $2d	cp $00
1829	28 08 	jr z,$+$0a	jr z,$+$00
182b	fe 2b 	cp $2b	cp $00
182d	c0 	ret nz	ret nz
182e	08 	ex af,af'	ex af,af'
182f	fa 3e 18 	jp m,$183e	jp m,$0000
1832	08 	ex af,af'	ex af,af'
1833	cd f7 20 	call $20f7	call $0000
1836	cd 72 18 	call $1872	call $0000
1839	cd 07 21 	call $2107	call $0000
183c	18 e9 	jr $-$15	jr $-$00
183e	08 	ex af,af'	ex af,af'
183f	fd 23 	inc iy	inc iy
1841	cd 9d 20 	call $209d	call $0000
1844	cd 72 18 	call $1872	call $0000
1847	08 	ex af,af'	ex af,af'
1848	f2 f2 18 	jp p,$18f2	jp p,$0000
184b	4b 	ld c,e	ld c,e
184c	d1 	pop de	pop de
184d	d5 	push de	push de
184e	21 00 53 	ld hl,$5300	ld hl,$0000
1851	54 	ld d,h	ld d,h
1852	79 	ld a,c	ld a,c
1853	b7 	or a	or a
1854	28 0e 	jr z,$+$10	jr z,$+$00
1856	45 	ld b,l	ld b,l
1857	6f 	ld l,a	ld l,a
1858	83 	add a,e	add a,e
1859	5f 	ld e,a	ld e,a
185a	3e 13 	ld a,$13	ld a,$00
185c	38 6b 	jr c,$+$6d	jr c,$+$00
185e	d5 	push de	push de
185f	1d 	dec e	dec e
1860	2d 	dec l	dec l
1861	ed b8 	lddr	lddr
1863	d1 	pop de	pop de
1864	d9 	exx	exx
1865	c1 	pop bc	pop bc
1866	cd bb 20 	call $20bb	call $0000
1869	d9 	exx	exx
186a	f6 80 	or $80	or $00
186c	08 	ex af,af'	ex af,af'
186d	fd 7e 00 	ld a,(iy)	ld a,(iy)
1870	18 b5 	jr $-$49	jr $-$00
1872	cd 98 18 	call $1898	call $0000
1875	fe 2a 	cp $2a	cp $00
1877	28 0b 	jr z,$+$0d	jr z,$+$00
1879	fe 2f 	cp $2f	cp $00
187b	28 07 	jr z,$+$09	jr z,$+$00
187d	fe 83 	cp $83	cp $00
187f	28 03 	jr z,$+$05	jr z,$+$00
1881	fe 81 	cp $81	cp $00
1883	c0 	ret nz	ret nz
1884	cd f7 20 	call $20f7	call $0000
1887	cd 98 18 	call $1898	call $0000
188a	cd 07 21 	call $2107	call $0000
188d	18 e6 	jr $-$18	jr $-$00
188f	7b 	ld a,e	ld a,e
1890	fe 2b 	cp $2b	cp $00
1892	28 de 	jr z,$-$20	jr z,$-$00
1894	fe 2d 	cp $2d	cp $00
1896	28 da 	jr z,$-$24	jr z,$-$00
1898	cd 54 19 	call $1954	call $0000
189b	b7 	or a	or a
189c	08 	ex af,af'	ex af,af'
189d	cd 8f 45 	call $458f	call $0000
18a0	fe 5e 	cp $5e	cp $00
18a2	c0 	ret nz	ret nz
18a3	cd f7 20 	call $20f7	call $0000
18a6	cd 54 19 	call $1954	call $0000
18a9	b7 	or a	or a
18aa	08 	ex af,af'	ex af,af'
18ab	cd 07 21 	call $2107	call $0000
18ae	18 ed 	jr $-$11	jr $-$00
18b0	cd 86 17 	call $1786	call $0000
18b3	08 	ex af,af'	ex af,af'
18b4	f0 	ret p	ret p
18b5	18 3b 	jr $+$3d	jr $+$00
18b7	cd 86 17 	call $1786	call $0000
18ba	08 	ex af,af'	ex af,af'
18bb	f2 9b 1c 	jp p,$1c9b	jp p,$0000
18be	18 32 	jr $+$34	jr $+$00
18c0	cd 86 17 	call $1786	call $0000
18c3	08 	ex af,af'	ex af,af'
18c4	f8 	ret m	ret m
18c5	18 2b 	jr $+$2d	jr $+$00
18c7	3e 1c 	ld a,$1c	ld a,$00
18c9	c3 c8 3f 	jp $3fc8	jp $0000
18cc	d9 	exx	exx
18cd	7c 	ld a,h	ld a,h
18ce	2f 	cpl	cpl
18cf	67 	ld h,a	ld h,a
18d0	7d 	ld a,l	ld a,l
18d1	2f 	cpl	cpl
18d2	6f 	ld l,a	ld l,a
18d3	d9 	exx	exx
18d4	7c 	ld a,h	ld a,h
18d5	2f 	cpl	cpl
18d6	67 	ld h,a	ld h,a
18d7	7d 	ld a,l	ld a,l
18d8	2f 	cpl	cpl
18d9	6f 	ld l,a	ld l,a
18da	d9 	exx	exx
18db	23 	inc hl	inc hl
18dc	7c 	ld a,h	ld a,h
18dd	b5 	or l	or l
18de	d9 	exx	exx
18df	3e 00 	ld a,$00	ld a,$00
18e1	c0 	ret nz	ret nz
18e2	23 	inc hl	inc hl
18e3	c9 	ret	ret
18e4	cd 54 19 	call $1954	call $0000
18e7	b7 	or a	or a
18e8	f2 9b 1c 	jp p,$1c9b	jp p,$0000
18eb	18 05 	jr $+$07	jr $+$00
18ed	cd 54 19 	call $1954	call $0000
18f0	b7 	or a	or a
18f1	f8 	ret m	ret m
18f2	3e 06 	ld a,$06	ld a,$00
18f4	18 d3 	jr $-$2b	jr $-$00
18f6	cd 86 17 	call $1786	call $0000
18f9	cd 32 21 	call $2132	call $0000
18fc	08 	ex af,af'	ex af,af'
18fd	c9 	ret	ret
18fe	cd 54 19 	call $1954	call $0000
1901	b7 	or a	or a
1902	f0 	ret p	ret p
1903	18 ed 	jr $-$11	jr $-$00
1905	cd 7c 20 	call $207c	call $0000
1908	cd db 20 	call $20db	call $0000
190b	38 ba 	jr c,$-$44	jr c,$-$00
190d	fd 23 	inc iy	inc iy
190f	e6 0f 	and $0f	and $00
1911	06 04 	ld b,$04	ld b,$00
1913	d9 	exx	exx
1914	29 	add hl,hl	add hl,hl
1915	d9 	exx	exx
1916	ed 6a 	adc hl,hl	adc hl,hl
1918	10 f9 	djnz $-$05	djnz $-$00
191a	d9 	exx	exx
191b	b5 	or l	or l
191c	6f 	ld l,a	ld l,a
191d	d9 	exx	exx
191e	cd db 20 	call $20db	call $0000
1921	30 ea 	jr nc,$-$14	jr nc,$-$00
1923	af 	xor a	xor a
1924	c9 	ret	ret
1925	cd 7c 20 	call $207c	call $0000
1928	cd ce 20 	call $20ce	call $0000
192b	38 9a 	jr c,$-$64	jr c,$-$00
192d	fd 23 	inc iy	inc iy
192f	cb 1f 	rr a	rr a
1931	d9 	exx	exx
1932	ed 6a 	adc hl,hl	adc hl,hl
1934	d9 	exx	exx
1935	ed 6a 	adc hl,hl	adc hl,hl
1937	cd ce 20 	call $20ce	call $0000
193a	30 f1 	jr nc,$-$0d	jr nc,$-$00
193c	af 	xor a	xor a
193d	c9 	ret	ret
193e	cd fe 18 	call $18fe	call $0000
1941	0d 	dec c	dec c
1942	0c 	inc c	inc c
1943	28 87 	jr z,$-$77	jr z,$-$00
1945	7c 	ld a,h	ld a,h
1946	ee 80 	xor $80	xor $00
1948	67 	ld h,a	ld h,a
1949	af 	xor a	xor a
194a	c9 	ret	ret
194b	cd 5a 26 	call $265a	call $0000
194e	e5 	push hl	push hl
194f	d9 	exx	exx
1950	e1 	pop hl	pop hl
1951	c3 d4 1b 	jp $1bd4	jp $0000
1954	cd 0a 33 	call $330a	call $0000
1957	cd 8f 45 	call $458f	call $0000
195a	fd 23 	inc iy	inc iy
195c	fe 8d 	cp $8d	cp $00
195e	38 08 	jr c,$+$0a	jr c,$+$00
1960	fe c7 	cp $c7	cp $00
1962	da 45 21 	jp c,$2145	jp c,$0000
1965	c3 b4 1a 	jp $1ab4	jp $0000
1968	fe 3a 	cp $3a	cp $00
196a	30 25 	jr nc,$+$27	jr nc,$+$00
196c	fe 30 	cp $30	cp $00
196e	30 7b 	jr nc,$+$7d	jr nc,$+$00
1970	fe 28 	cp $28	cp $00
1972	28 82 	jr z,$-$7c	jr z,$-$00
1974	fe 2d 	cp $2d	cp $00
1976	28 c6 	jr z,$-$38	jr z,$-$00
1978	fe 2b 	cp $2b	cp $00
197a	28 82 	jr z,$-$7c	jr z,$-$00
197c	fe 2e 	cp $2e	cp $00
197e	28 6b 	jr z,$+$6d	jr z,$+$00
1980	fe 26 	cp $26	cp $00
1982	28 81 	jr z,$-$7d	jr z,$-$00
1984	fe 25 	cp $25	cp $00
1986	28 9d 	jr z,$-$61	jr z,$-$00
1988	fe 22 	cp $22	cp $00
198a	28 72 	jr z,$+$74	jr z,$+$00
198c	fe 0a 	cp $0a	cp $00
198e	ca 54 1b 	jp z,$1b54	jp z,$0000
1991	fe 83 	cp $83	cp $00
1993	ca d1 1d 	jp z,$1dd1	jp z,$0000
1996	fe 5e 	cp $5e	cp $00
1998	28 b1 	jr z,$-$4d	jr z,$-$00
199a	fd 2b 	dec iy	dec iy
199c	cd 67 42 	call $4267	call $0000
199f	20 2f 	jr nz,$+$31	jr nz,$+$00
19a1	cb 77 	bit 6,a	bit 6,a
19a3	20 7e 	jr nz,$+$80	jr nz,$+$00
19a5	b7 	or a	or a
19a6	fa 92 1a 	jp m,$1a92	jp m,$0000
19a9	cb 57 	bit 2,a	bit 2,a
19ab	0e 00 	ld c,$00	ld c,$00
19ad	28 16 	jr z,$+$18	jr z,$+$00
19af	cb 47 	bit 0,a	bit 0,a
19b1	28 03 	jr z,$+$05	jr z,$+$00
19b3	dd 4e 04 	ld c,(ix+$04)	ld c,(ix+$00)
19b6	d9 	exx	exx
19b7	dd 6e 00 	ld l,(ix)	ld l,(ix)
19ba	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
19bd	d9 	exx	exx
19be	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
19c1	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
19c4	c9 	ret	ret
19c5	21 00 00 	ld hl,$0000	ld hl,$0000
19c8	d9 	exx	exx
19c9	26 00 	ld h,$00	ld h,$00
19cb	dd 6e 00 	ld l,(ix)	ld l,(ix)
19ce	d9 	exx	exx
19cf	c9 	ret	ret
19d0	da 64 26 	jp c,$2664	jp c,$0000
19d3	3a fe 55 	ld a,($55fe)	ld a,($0000)
19d6	cb 6f 	bit 5,a	bit 5,a
19d8	3e 1a 	ld a,$1a	ld a,$00
19da	20 36 	jr nz,$+$38	jr nz,$+$00
19dc	fd 23 	inc iy	inc iy
19de	cd 73 44 	call $4473	call $0000
19e1	30 f9 	jr nc,$-$05	jr nc,$-$00
19e3	dd 21 40 55 	ld ix,$5540	ld ix,$0000
19e7	af 	xor a	xor a
19e8	4f 	ld c,a	ld c,a
19e9	18 cb 	jr $-$33	jr $-$00
19eb	fd 2b 	dec iy	dec iy
19ed	fd e5 	push iy	push iy
19ef	dd e1 	pop ix	pop ix
19f1	3e 24 	ld a,$24	ld a,$00
19f3	cd 99 45 	call $4599	call $0000
19f6	38 1a 	jr c,$+$1c	jr c,$+$00
19f8	dd e5 	push ix	push ix
19fa	fd e1 	pop iy	pop iy
19fc	af 	xor a	xor a
19fd	c9 	ret	ret
19fe	11 00 53 	ld de,$5300	ld de,$0000
1a01	fd 7e 00 	ld a,(iy)	ld a,(iy)
1a04	fd 23 	inc iy	inc iy
1a06	fe 22 	cp $22	cp $00
1a08	28 0b 	jr z,$+$0d	jr z,$+$00
1a0a	12 	ld (de),a	ld (de),a
1a0b	1c 	inc e	inc e
1a0c	fe 0d 	cp $0d	cp $00
1a0e	20 f1 	jr nz,$-$0d	jr nz,$-$00
1a10	3e 09 	ld a,$09	ld a,$00
1a12	c3 c8 3f 	jp $3fc8	jp $0000
1a15	fd 7e 00 	ld a,(iy)	ld a,(iy)
1a18	fe 22 	cp $22	cp $00
1a1a	fd 23 	inc iy	inc iy
1a1c	28 ec 	jr z,$-$12	jr z,$-$00
1a1e	fd 2b 	dec iy	dec iy
1a20	3e 80 	ld a,$80	ld a,$00
1a22	c9 	ret	ret
1a23	3e 0e 	ld a,$0e	ld a,$00
1a25	c3 c8 3f 	jp $3fc8	jp $0000
1a28	7e 	ld a,(hl)	ld a,(hl)
1a29	23 	inc hl	inc hl
1a2a	b7 	or a	or a
1a2b	28 f6 	jr z,$-$08	jr z,$-$00
1a2d	11 01 00 	ld de,$0001	ld de,$0000
1a30	4e 	ld c,(hl)	ld c,(hl)
1a31	23 	inc hl	inc hl
1a32	46 	ld b,(hl)	ld b,(hl)
1a33	23 	inc hl	inc hl
1a34	eb 	ex de,hl	ex de,hl
1a35	f5 	push af	push af
1a36	d5 	push de	push de
1a37	cd 41 37 	call $3741	call $0000
1a3a	d1 	pop de	pop de
1a3b	f1 	pop af	pop af
1a3c	eb 	ex de,hl	ex de,hl
1a3d	3d 	dec a	dec a
1a3e	20 f0 	jr nz,$-$0e	jr nz,$-$00
1a40	c9 	ret	ret
1a41	cd 8f 45 	call $458f	call $0000
1a44	cd 67 42 	call $4267	call $0000
1a47	20 87 	jr nz,$-$77	jr nz,$-$00
1a49	cb 77 	bit 6,a	bit 6,a
1a4b	37 	scf	scf
1a4c	28 82 	jr z,$-$7c	jr z,$-$00
1a4e	e6 8f 	and $8f	and $00
1a50	47 	ld b,a	ld b,a
1a51	7e 	ld a,(hl)	ld a,(hl)
1a52	23 	inc hl	inc hl
1a53	66 	ld h,(hl)	ld h,(hl)
1a54	6f 	ld l,a	ld l,a
1a55	e6 fe 	and $fe	and $00
1a57	b4 	or h	or h
1a58	28 c9 	jr z,$-$35	jr z,$-$00
1a5a	c9 	ret	ret
1a5b	cd 8f 45 	call $458f	call $0000
1a5e	fe 28 	cp $28	cp $00
1a60	20 df 	jr nz,$-$1f	jr nz,$-$00
1a62	fd 23 	inc iy	inc iy
1a64	cd 41 1a 	call $1a41	call $0000
1a67	cd 32 21 	call $2132	call $0000
1a6a	c9 	ret	ret
1a6b	cb 57 	bit 2,a	bit 2,a
1a6d	06 00 	ld b,$00	ld b,$00
1a6f	28 16 	jr z,$+$18	jr z,$+$00
1a71	cb 47 	bit 0,a	bit 0,a
1a73	28 03 	jr z,$+$05	jr z,$+$00
1a75	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
1a78	d9 	exx	exx
1a79	dd 5e 00 	ld e,(ix)	ld e,(ix)
1a7c	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
1a7f	d9 	exx	exx
1a80	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
1a83	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
1a86	c9 	ret	ret
1a87	11 00 00 	ld de,$0000	ld de,$0000
1a8a	d9 	exx	exx
1a8b	16 00 	ld d,$00	ld d,$00
1a8d	dd 5e 00 	ld e,(ix)	ld e,(ix)
1a90	d9 	exx	exx
1a91	c9 	ret	ret
1a92	11 00 53 	ld de,$5300	ld de,$0000
1a95	1f 	rra	rra
1a96	30 10 	jr nc,$+$12	jr nc,$+$00
1a98	cd b6 19 	call $19b6	call $0000
1a9b	d9 	exx	exx
1a9c	7d 	ld a,l	ld a,l
1a9d	d9 	exx	exx
1a9e	b7 	or a	or a
1a9f	4f 	ld c,a	ld c,a
1aa0	3e 80 	ld a,$80	ld a,$00
1aa2	c8 	ret z	ret z
1aa3	06 00 	ld b,$00	ld b,$00
1aa5	ed b0 	ldir	ldir
1aa7	c9 	ret	ret
1aa8	7e 	ld a,(hl)	ld a,(hl)
1aa9	12 	ld (de),a	ld (de),a
1aaa	23 	inc hl	inc hl
1aab	fe 0d 	cp $0d	cp $00
1aad	3e 80 	ld a,$80	ld a,$00
1aaf	c8 	ret z	ret z
1ab0	1c 	inc e	inc e
1ab1	20 f5 	jr nz,$-$09	jr nz,$-$00
1ab3	c9 	ret	ret
1ab4	fe eb 	cp $eb	cp $00
1ab6	ca 77 0e 	jp z,$0e77	jp z,$0000
1ab9	fe fe 	cp $fe	cp $00
1abb	ca 81 0e 	jp z,$0e81	jp z,$0000
1abe	fe f6 	cp $f6	cp $00
1ac0	28 11 	jr z,$+$13	jr z,$+$00
1ac2	fe e0 	cp $e0	cp $00
1ac4	28 07 	jr z,$+$09	jr z,$+$00
1ac6	fe de 	cp $de	cp $00
1ac8	28 44 	jr z,$+$46	jr z,$+$00
1aca	c3 64 26 	jp $2664	jp $0000
1acd	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
1ad0	c3 d4 1b 	jp $1bd4	jp $0000
1ad3	fd 7e 00 	ld a,(iy)	ld a,(iy)
1ad6	fe 24 	cp $24	cp $00
1ad8	20 f0 	jr nz,$-$0e	jr nz,$-$00
1ada	fd 23 	inc iy	inc iy
1adc	2a ee 55 	ld hl,($55ee)	ld hl,($0000)
1adf	11 00 53 	ld de,$5300	ld de,$0000
1ae2	7e 	ld a,(hl)	ld a,(hl)
1ae3	b7 	or a	or a
1ae4	28 c7 	jr z,$-$37	jr z,$-$00
1ae6	ed a0 	ldi	ldi
1ae8	fe a0 	cp $a0	cp $00
1aea	ea e2 1a 	jp pe,$1ae2	jp pe,$0000
1aed	fe 0a 	cp $0a	cp $00
1aef	28 f1 	jr z,$-$0d	jr z,$-$00
1af1	1d 	dec e	dec e
1af2	e5 	push hl	push hl
1af3	21 08 39 	ld hl,$3908	ld hl,$0000
1af6	01 5b 03 	ld bc,$035b	ld bc,$0000
1af9	ed b1 	cpir	cpir
1afb	06 a0 	ld b,$a0	ld b,$00
1afd	fe 91 	cp $91	cp $00
1aff	ea 03 1b 	jp pe,$1b03	jp pe,$0000
1b02	04 	inc b	inc b
1b03	7e 	ld a,(hl)	ld a,(hl)
1b04	ed a0 	ldi	ldi
1b06	b8 	cp b	cp b
1b07	ea 03 1b 	jp pe,$1b03	jp pe,$0000
1b0a	e1 	pop hl	pop hl
1b0b	1d 	dec e	dec e
1b0c	18 d4 	jr $-$2a	jr $-$00
1b0e	cd 8f 45 	call $458f	call $0000
1b11	fe 28 	cp $28	cp $00
1b13	20 09 	jr nz,$+$0b	jr nz,$+$00
1b15	fd 23 	inc iy	inc iy
1b17	cd 1e 1b 	call $1b1e	call $0000
1b1a	cd 32 21 	call $2132	call $0000
1b1d	c9 	ret	ret
1b1e	cd 41 1a 	call $1a41	call $0000
1b21	e5 	push hl	push hl
1b22	cd 8f 45 	call $458f	call $0000
1b25	1e 00 	ld e,$00	ld e,$00
1b27	fe 2c 	cp $2c	cp $00
1b29	20 0b 	jr nz,$+$0d	jr nz,$+$00
1b2b	fd 23 	inc iy	inc iy
1b2d	cd b7 18 	call $18b7	call $0000
1b30	d9 	exx	exx
1b31	eb 	ex de,hl	ex de,hl
1b32	1c 	inc e	inc e
1b33	1d 	dec e	dec e
1b34	28 19 	jr z,$+$1b	jr z,$+$00
1b36	e1 	pop hl	pop hl
1b37	7e 	ld a,(hl)	ld a,(hl)
1b38	23 	inc hl	inc hl
1b39	bb 	cp e	cp e
1b3a	38 13 	jr c,$+$15	jr c,$+$00
1b3c	1d 	dec e	dec e
1b3d	fa 4a 1b 	jp m,$1b4a	jp m,$0000
1b40	19 	add hl,de	add hl,de
1b41	19 	add hl,de	add hl,de
1b42	7e 	ld a,(hl)	ld a,(hl)
1b43	23 	inc hl	inc hl
1b44	66 	ld h,(hl)	ld h,(hl)
1b45	6f 	ld l,a	ld l,a
1b46	2b 	dec hl	dec hl
1b47	c3 d4 1b 	jp $1bd4	jp $0000
1b4a	6f 	ld l,a	ld l,a
1b4b	26 00 	ld h,$00	ld h,$00
1b4d	18 f8 	jr $-$06	jr $-$00
1b4f	3e 0f 	ld a,$0f	ld a,$00
1b51	c3 c8 3f 	jp $3fc8	jp $0000
1b54	cd 95 11 	call $1195	call $0000
1b57	18 7b 	jr $+$7d	jr $+$00
1b59	cd 2d 0e 	call $0e2d	call $0000
1b5c	eb 	ex de,hl	ex de,hl
1b5d	18 75 	jr $+$77	jr $+$00
1b5f	cd 2d 0e 	call $0e2d	call $0000
1b62	18 70 	jr $+$72	jr $+$00
1b64	cd 55 37 	call $3755	call $0000
1b67	cd 6e 06 	call $066e	call $0000
1b6a	ca 41 1c 	jp z,$1c41	jp z,$0000
1b6d	c3 7c 20 	jp $207c	jp $0000
1b70	cd 55 37 	call $3755	call $0000
1b73	cd 5d 06 	call $065d	call $0000
1b76	6f 	ld l,a	ld l,a
1b77	18 59 	jr $+$5b	jr $+$00
1b79	cd 12 1f 	call $1f12	call $0000
1b7c	18 19 	jr $+$1b	jr $+$00
1b7e	cd 8f 45 	call $458f	call $0000
1b81	fe 28 	cp $28	cp $00
1b83	20 0a 	jr nz,$+$0c	jr nz,$+$00
1b85	cd e4 18 	call $18e4	call $0000
1b88	d9 	exx	exx
1b89	44 	ld b,h	ld b,h
1b8a	4d 	ld c,l	ld c,l
1b8b	ed 68 	in l,(bc)	in l,(bc)
1b8d	18 43 	jr $+$45	jr $+$00
1b8f	cd b1 1e 	call $1eb1	call $0000
1b92	18 08 	jr $+$0a	jr $+$00
1b94	cd ed 18 	call $18ed	call $0000
1b97	af 	xor a	xor a
1b98	bb 	cp e	cp e
1b99	ca 41 1c 	jp z,$1c41	jp z,$0000
1b9c	2a 00 53 	ld hl,($5300)	ld hl,($0000)
1b9f	18 31 	jr $+$33	jr $+$00
1ba1	cd ed 18 	call $18ed	call $0000
1ba4	eb 	ex de,hl	ex de,hl
1ba5	18 2b 	jr $+$2d	jr $+$00
1ba7	2a de 55 	ld hl,($55de)	ld hl,($0000)
1baa	18 28 	jr $+$2a	jr $+$00
1bac	2a e2 55 	ld hl,($55e2)	ld hl,($0000)
1baf	18 23 	jr $+$25	jr $+$00
1bb1	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
1bb4	18 1e 	jr $+$20	jr $+$00
1bb6	fd 7e 00 	ld a,(iy)	ld a,(iy)
1bb9	fd 23 	inc iy	inc iy
1bbb	fe 50 	cp $50	cp $00
1bbd	c2 64 26 	jp nz,$2664	jp nz,$0000
1bc0	cd a9 40 	call $40a9	call $0000
1bc3	18 0f 	jr $+$11	jr $+$00
1bc5	2a f2 55 	ld hl,($55f2)	ld hl,($0000)
1bc8	18 0a 	jr $+$0c	jr $+$00
1bca	2a fd 55 	ld hl,($55fd)	ld hl,($0000)
1bcd	18 03 	jr $+$05	jr $+$00
1bcf	2a fb 55 	ld hl,($55fb)	ld hl,($0000)
1bd2	26 00 	ld h,$00	ld h,$00
1bd4	d9 	exx	exx
1bd5	af 	xor a	xor a
1bd6	4f 	ld c,a	ld c,a
1bd7	67 	ld h,a	ld h,a
1bd8	6f 	ld l,a	ld l,a
1bd9	c9 	ret	ret
1bda	af 	xor a	xor a
1bdb	21 3e 02 	ld hl,$023e	ld hl,$0000
1bde	21 3e 01 	ld hl,$013e	ld hl,$0000
1be1	f5 	push af	push af
1be2	cd ed 18 	call $18ed	call $0000
1be5	3e 0d 	ld a,$0d	ld a,$00
1be7	12 	ld (de),a	ld (de),a
1be8	f1 	pop af	pop af
1be9	c6 ff 	add a,$ff	add a,$00
1beb	21 00 53 	ld hl,$5300	ld hl,$0000
1bee	cd 46 06 	call $0646	call $0000
1bf1	6f 	ld l,a	ld l,a
1bf2	18 de 	jr $-$20	jr $-$00
1bf4	cd 55 37 	call $3755	call $0000
1bf7	cd af 06 	call $06af	call $0000
1bfa	18 12 	jr $+$14	jr $+$00
1bfc	cd 55 37 	call $3755	call $0000
1bff	cd 78 06 	call $0678	call $0000
1c02	18 0a 	jr $+$0c	jr $+$00
1c04	fd 7e 00 	ld a,(iy)	ld a,(iy)
1c07	fe 24 	cp $24	cp $00
1c09	28 09 	jr z,$+$0b	jr z,$+$00
1c0b	cd ad 0d 	call $0dad	call $0000
1c0e	d5 	push de	push de
1c0f	d9 	exx	exx
1c10	e1 	pop hl	pop hl
1c11	af 	xor a	xor a
1c12	4f 	ld c,a	ld c,a
1c13	c9 	ret	ret
1c14	fd 23 	inc iy	inc iy
1c16	cd c2 0d 	call $0dc2	call $0000
1c19	3e 80 	ld a,$80	ld a,$00
1c1b	c9 	ret	ret
1c1c	cd 79 20 	call $2079	call $0000
1c1f	d0 	ret nc	ret nc
1c20	18 1f 	jr $+$21	jr $+$00
1c22	cd 79 20 	call $2079	call $0000
1c25	c8 	ret z	ret z
1c26	d8 	ret c	ret c
1c27	18 18 	jr $+$1a	jr $+$00
1c29	cd 79 20 	call $2079	call $0000
1c2c	d8 	ret c	ret c
1c2d	18 12 	jr $+$14	jr $+$00
1c2f	cd 79 20 	call $2079	call $0000
1c32	28 0d 	jr z,$+$0f	jr z,$+$00
1c34	d0 	ret nc	ret nc
1c35	18 0a 	jr $+$0c	jr $+$00
1c37	cd 79 20 	call $2079	call $0000
1c3a	c8 	ret z	ret z
1c3b	18 04 	jr $+$06	jr $+$00
1c3d	cd 79 20 	call $2079	call $0000
1c40	c0 	ret nz	ret nz
1c41	3e ff 	ld a,$ff	ld a,$00
1c43	d9 	exx	exx
1c44	67 	ld h,a	ld h,a
1c45	6f 	ld l,a	ld l,a
1c46	d9 	exx	exx
1c47	67 	ld h,a	ld h,a
1c48	6f 	ld l,a	ld l,a
1c49	3c 	inc a	inc a
1c4a	4f 	ld c,a	ld c,a
1c4b	c9 	ret	ret
1c4c	3e 23 	ld a,$23	ld a,$00
1c4e	18 43 	jr $+$45	jr $+$00
1c50	3e 10 	ld a,$10	ld a,$00
1c52	18 3a 	jr $+$3c	jr $+$00
1c54	3e 1a 	ld a,$1a	ld a,$00
1c56	18 36 	jr $+$38	jr $+$00
1c58	3e 15 	ld a,$15	ld a,$00
1c5a	18 32 	jr $+$34	jr $+$00
1c5c	3e 1b 	ld a,$1b	ld a,$00
1c5e	18 2e 	jr $+$30	jr $+$00
1c60	3e 1c 	ld a,$1c	ld a,$00
1c62	18 2a 	jr $+$2c	jr $+$00
1c64	3e 17 	ld a,$17	ld a,$00
1c66	18 26 	jr $+$28	jr $+$00
1c68	3e 1e 	ld a,$1e	ld a,$00
1c6a	18 22 	jr $+$24	jr $+$00
1c6c	3e 1f 	ld a,$1f	ld a,$00
1c6e	18 1e 	jr $+$20	jr $+$00
1c70	3e 14 	ld a,$14	ld a,$00
1c72	18 1a 	jr $+$1c	jr $+$00
1c74	3e 1d 	ld a,$1d	ld a,$00
1c76	18 16 	jr $+$18	jr $+$00
1c78	3e 16 	ld a,$16	ld a,$00
1c7a	18 12 	jr $+$14	jr $+$00
1c7c	3e 18 	ld a,$18	ld a,$00
1c7e	18 0e 	jr $+$10	jr $+$00
1c80	3e 19 	ld a,$19	ld a,$00
1c82	18 0a 	jr $+$0c	jr $+$00
1c84	3e 12 	ld a,$12	ld a,$00
1c86	18 06 	jr $+$08	jr $+$00
1c88	3e 13 	ld a,$13	ld a,$00
1c8a	18 02 	jr $+$04	jr $+$00
1c8c	3e 11 	ld a,$11	ld a,$00
1c8e	f5 	push af	push af
1c8f	cd fe 18 	call $18fe	call $0000
1c92	f1 	pop af	pop af
1c93	cd 99 45 	call $4599	call $0000
1c96	da c8 3f 	jp c,$3fc8	jp c,$0000
1c99	af 	xor a	xor a
1c9a	c9 	ret	ret
1c9b	3e 26 	ld a,$26	ld a,$00
1c9d	18 f4 	jr $-$0a	jr $-$00
1c9f	3e 27 	ld a,$27	ld a,$00
1ca1	18 f0 	jr $-$0e	jr $-$00
1ca3	cd ed 18 	call $18ed	call $0000
1ca6	af 	xor a	xor a
1ca7	12 	ld (de),a	ld (de),a
1ca8	dd 21 00 53 	ld ix,$5300	ld ix,$0000
1cac	3e 24 	ld a,$24	ld a,$00
1cae	18 e3 	jr $-$1b	jr $-$00
1cb0	cd ed 18 	call $18ed	call $0000
1cb3	3e 0d 	ld a,$0d	ld a,$00
1cb5	12 	ld (de),a	ld (de),a
1cb6	fd e5 	push iy	push iy
1cb8	11 00 53 	ld de,$5300	ld de,$0000
1cbb	fd 21 00 53 	ld iy,$5300	ld iy,$0000
1cbf	0e 00 	ld c,$00	ld c,$00
1cc1	cd 9c 44 	call $449c	call $0000
1cc4	12 	ld (de),a	ld (de),a
1cc5	13 	inc de	inc de
1cc6	af 	xor a	xor a
1cc7	cd 9d 20 	call $209d	call $0000
1cca	fd 21 02 00 	ld iy,$0002	ld iy,$0000
1cce	fd 39 	add iy,sp	add iy,sp
1cd0	cd 86 17 	call $1786	call $0000
1cd3	fd e1 	pop iy	pop iy
1cd5	fd 39 	add iy,sp	add iy,sp
1cd7	fd f9 	ld sp,iy	ld sp,iy
1cd9	fd e1 	pop iy	pop iy
1cdb	08 	ex af,af'	ex af,af'
1cdc	c9 	ret	ret
1cdd	dd 21 f6 55 	ld ix,$55f6	ld ix,$0000
1ce1	cd 8f 45 	call $458f	call $0000
1ce4	fe 28 	cp $28	cp $00
1ce6	28 1c 	jr z,$+$1e	jr z,$+$00
1ce8	cd b3 19 	call $19b3	call $0000
1ceb	cb 19 	rr c	rr c
1ced	06 20 	ld b,$20	ld b,$00
1cef	d9 	exx	exx
1cf0	ed 6a 	adc hl,hl	adc hl,hl
1cf2	d9 	exx	exx
1cf3	ed 6a 	adc hl,hl	adc hl,hl
1cf5	cb 5d 	bit 3,l	bit 3,l
1cf7	28 01 	jr z,$+$03	jr z,$+$00
1cf9	3f 	ccf	ccf
1cfa	10 f3 	djnz $-$0b	djnz $-$00
1cfc	cb 11 	rl c	rl c
1cfe	cd 8a 32 	call $328a	call $0000
1d01	af 	xor a	xor a
1d02	4f 	ld c,a	ld c,a
1d03	c9 	ret	ret
1d04	cd e4 18 	call $18e4	call $0000
1d07	dd 21 f6 55 	ld ix,$55f6	ld ix,$0000
1d0b	cb 7c 	bit 7,h	bit 7,h
1d0d	37 	scf	scf
1d0e	20 ec 	jr nz,$-$12	jr nz,$-$00
1d10	cd dd 1f 	call $1fdd	call $0000
1d13	f5 	push af	push af
1d14	41 	ld b,c	ld b,c
1d15	eb 	ex de,hl	ex de,hl
1d16	d9 	exx	exx
1d17	eb 	ex de,hl	ex de,hl
1d18	cd b3 19 	call $19b3	call $0000
1d1b	c4 eb 1c 	call nz,$1ceb	call nz,$0000
1d1e	d9 	exx	exx
1d1f	0e 7f 	ld c,$7f	ld c,$00
1d21	cb 7c 	bit 7,h	bit 7,h
1d23	20 08 	jr nz,$+$0a	jr nz,$+$00
1d25	d9 	exx	exx
1d26	29 	add hl,hl	add hl,hl
1d27	d9 	exx	exx
1d28	ed 6a 	adc hl,hl	adc hl,hl
1d2a	0d 	dec c	dec c
1d2b	20 f4 	jr nz,$-$0a	jr nz,$-$00
1d2d	cb bc 	res 7,h	res 7,h
1d2f	f1 	pop af	pop af
1d30	c8 	ret z	ret z
1d31	d9 	exx	exx
1d32	7b 	ld a,e	ld a,e
1d33	3d 	dec a	dec a
1d34	b2 	or d	or d
1d35	d9 	exx	exx
1d36	b3 	or e	or e
1d37	b2 	or d	or d
1d38	c8 	ret z	ret z
1d39	06 00 	ld b,$00	ld b,$00
1d3b	3e 0a 	ld a,$0a	ld a,$00
1d3d	cd 99 45 	call $4599	call $0000
1d40	da c8 3f 	jp c,$3fc8	jp c,$0000
1d43	cd 9b 1c 	call $1c9b	call $0000
1d46	c3 da 18 	jp $18da	jp $0000
1d49	fd 23 	inc iy	inc iy
1d4b	cd 5b 1a 	call $1a5b	call $0000
1d4e	cb 78 	bit 7,b	bit 7,b
1d50	ca f2 18 	jp z,$18f2	jp z,$0000
1d53	cd 28 1a 	call $1a28	call $0000
1d56	e5 	push hl	push hl
1d57	dd e1 	pop ix	pop ix
1d59	af 	xor a	xor a
1d5a	67 	ld h,a	ld h,a
1d5b	6f 	ld l,a	ld l,a
1d5c	47 	ld b,a	ld b,a
1d5d	dd 4e 00 	ld c,(ix)	ld c,(ix)
1d60	09 	add hl,bc	add hl,bc
1d61	0e 04 	ld c,$04	ld c,$00
1d63	dd 09 	add ix,bc	add ix,bc
1d65	1b 	dec de	dec de
1d66	7a 	ld a,d	ld a,d
1d67	b3 	or e	or e
1d68	20 f3 	jr nz,$-$0b	jr nz,$-$00
1d6a	c3 d4 1b 	jp $1bd4	jp $0000
1d6d	cd 8f 45 	call $458f	call $0000
1d70	fe a9 	cp $a9	cp $00
1d72	28 d5 	jr z,$-$29	jr z,$-$00
1d74	cd 5b 1a 	call $1a5b	call $0000
1d77	cb 78 	bit 7,b	bit 7,b
1d79	20 27 	jr nz,$+$29	jr nz,$+$00
1d7b	c5 	push bc	push bc
1d7c	cd 28 1a 	call $1a28	call $0000
1d7f	e5 	push hl	push hl
1d80	dd e1 	pop ix	pop ix
1d82	cd 7c 20 	call $207c	call $0000
1d85	f1 	pop af	pop af
1d86	d5 	push de	push de
1d87	f5 	push af	push af
1d88	cd 6b 1a 	call $1a6b	call $0000
1d8b	3e 0b 	ld a,$0b	ld a,$00
1d8d	cd 99 45 	call $4599	call $0000
1d90	da c8 3f 	jp c,$3fc8	jp c,$0000
1d93	f1 	pop af	pop af
1d94	16 00 	ld d,$00	ld d,$00
1d96	5f 	ld e,a	ld e,a
1d97	dd 19 	add ix,de	add ix,de
1d99	d1 	pop de	pop de
1d9a	1b 	dec de	dec de
1d9b	47 	ld b,a	ld b,a
1d9c	7a 	ld a,d	ld a,d
1d9d	b3 	or e	or e
1d9e	78 	ld a,b	ld a,b
1d9f	20 e5 	jr nz,$-$19	jr nz,$-$00
1da1	c9 	ret	ret
1da2	cd 28 1a 	call $1a28	call $0000
1da5	e5 	push hl	push hl
1da6	dd e1 	pop ix	pop ix
1da8	eb 	ex de,hl	ex de,hl
1da9	11 00 53 	ld de,$5300	ld de,$0000
1dac	06 00 	ld b,$00	ld b,$00
1dae	e5 	push hl	push hl
1daf	dd 4e 00 	ld c,(ix)	ld c,(ix)
1db2	79 	ld a,c	ld a,c
1db3	b7 	or a	or a
1db4	28 0e 	jr z,$+$10	jr z,$+$00
1db6	83 	add a,e	add a,e
1db7	3e 13 	ld a,$13	ld a,$00
1db9	da c8 3f 	jp c,$3fc8	jp c,$0000
1dbc	dd 6e 02 	ld l,(ix+$02)	ld l,(ix+$00)
1dbf	dd 66 03 	ld h,(ix+$03)	ld h,(ix+$00)
1dc2	ed b0 	ldir	ldir
1dc4	e1 	pop hl	pop hl
1dc5	0e 04 	ld c,$04	ld c,$00
1dc7	dd 09 	add ix,bc	add ix,bc
1dc9	2b 	dec hl	dec hl
1dca	7c 	ld a,h	ld a,h
1dcb	b5 	or l	or l
1dcc	20 e0 	jr nz,$-$1e	jr nz,$-$00
1dce	f6 80 	or $80	or $00
1dd0	c9 	ret	ret
1dd1	cd 5b 1a 	call $1a5b	call $0000
1dd4	cb 78 	bit 7,b	bit 7,b
1dd6	c2 f2 18 	jp nz,$18f2	jp nz,$0000
1dd9	c5 	push bc	push bc
1dda	cd 28 1a 	call $1a28	call $0000
1ddd	e5 	push hl	push hl
1dde	dd e1 	pop ix	pop ix
1de0	cd 7c 20 	call $207c	call $0000
1de3	f1 	pop af	pop af
1de4	d5 	push de	push de
1de5	f5 	push af	push af
1de6	c5 	push bc	push bc
1de7	e5 	push hl	push hl
1de8	d9 	exx	exx
1de9	e5 	push hl	push hl
1dea	d9 	exx	exx
1deb	cd a9 19 	call $19a9	call $0000
1dee	af 	xor a	xor a
1def	47 	ld b,a	ld b,a
1df0	57 	ld d,a	ld d,a
1df1	5f 	ld e,a	ld e,a
1df2	d9 	exx	exx
1df3	57 	ld d,a	ld d,a
1df4	1e 02 	ld e,$02	ld e,$00
1df6	d9 	exx	exx
1df7	3e 0e 	ld a,$0e	ld a,$00
1df9	dd e5 	push ix	push ix
1dfb	cd 99 45 	call $4599	call $0000
1dfe	dd e1 	pop ix	pop ix
1e00	da c8 3f 	jp c,$3fc8	jp c,$0000
1e03	d9 	exx	exx
1e04	eb 	ex de,hl	ex de,hl
1e05	e1 	pop hl	pop hl
1e06	d9 	exx	exx
1e07	eb 	ex de,hl	ex de,hl
1e08	e1 	pop hl	pop hl
1e09	79 	ld a,c	ld a,c
1e0a	c1 	pop bc	pop bc
1e0b	47 	ld b,a	ld b,a
1e0c	3e 0b 	ld a,$0b	ld a,$00
1e0e	cd 99 45 	call $4599	call $0000
1e11	da c8 3f 	jp c,$3fc8	jp c,$0000
1e14	f1 	pop af	pop af
1e15	16 00 	ld d,$00	ld d,$00
1e17	5f 	ld e,a	ld e,a
1e18	dd 19 	add ix,de	add ix,de
1e1a	d1 	pop de	pop de
1e1b	1b 	dec de	dec de
1e1c	47 	ld b,a	ld b,a
1e1d	7a 	ld a,d	ld a,d
1e1e	b3 	or e	or e
1e1f	78 	ld a,b	ld a,b
1e20	20 c2 	jr nz,$-$3c	jr nz,$-$00
1e22	3e 1e 	ld a,$1e	ld a,$00
1e24	cd 99 45 	call $4599	call $0000
1e27	af 	xor a	xor a
1e28	c9 	ret	ret
1e29	cd c0 18 	call $18c0	call $0000
1e2c	cd 26 21 	call $2126	call $0000
1e2f	cd 9d 20 	call $209d	call $0000
1e32	cd c0 18 	call $18c0	call $0000
1e35	c1 	pop bc	pop bc
1e36	21 00 00 	ld hl,$0000	ld hl,$0000
1e39	39 	add hl,sp	add hl,sp
1e3a	c5 	push bc	push bc
1e3b	43 	ld b,e	ld b,e
1e3c	cd 8f 45 	call $458f	call $0000
1e3f	fe 2c 	cp $2c	cp $00
1e41	3e 00 	ld a,$00	ld a,$00
1e43	20 17 	jr nz,$+$19	jr nz,$+$00
1e45	fd 23 	inc iy	inc iy
1e47	c5 	push bc	push bc
1e48	e5 	push hl	push hl
1e49	cd 9d 20 	call $209d	call $0000
1e4c	cd b7 18 	call $18b7	call $0000
1e4f	c1 	pop bc	pop bc
1e50	cd bb 20 	call $20bb	call $0000
1e53	e1 	pop hl	pop hl
1e54	c1 	pop bc	pop bc
1e55	d9 	exx	exx
1e56	7d 	ld a,l	ld a,l
1e57	d9 	exx	exx
1e58	b7 	or a	or a
1e59	28 01 	jr z,$+$03	jr z,$+$00
1e5b	3d 	dec a	dec a
1e5c	11 00 53 	ld de,$5300	ld de,$0000
1e5f	cd 76 1e 	call $1e76	call $0000
1e62	d1 	pop de	pop de
1e63	28 03 	jr z,$+$05	jr z,$+$00
1e65	ed 62 	sbc hl,hl	sbc hl,hl
1e67	39 	add hl,sp	add hl,sp
1e68	ed 72 	sbc hl,sp	sbc hl,sp
1e6a	eb 	ex de,hl	ex de,hl
1e6b	26 00 	ld h,$00	ld h,$00
1e6d	39 	add hl,sp	add hl,sp
1e6e	f9 	ld sp,hl	ld sp,hl
1e6f	eb 	ex de,hl	ex de,hl
1e70	cd 32 21 	call $2132	call $0000
1e73	c3 d4 1b 	jp $1bd4	jp $0000
1e76	c5 	push bc	push bc
1e77	06 00 	ld b,$00	ld b,$00
1e79	4f 	ld c,a	ld c,a
1e7a	09 	add hl,bc	add hl,bc
1e7b	c1 	pop bc	pop bc
1e7c	91 	sub c	sub c
1e7d	30 28 	jr nc,$+$2a	jr nc,$+$00
1e7f	ed 44 	neg	neg
1e81	4f 	ld c,a	ld c,a
1e82	1a 	ld a,(de)	ld a,(de)
1e83	c5 	push bc	push bc
1e84	06 00 	ld b,$00	ld b,$00
1e86	ed b1 	cpir	cpir
1e88	79 	ld a,c	ld a,c
1e89	c1 	pop bc	pop bc
1e8a	20 1b 	jr nz,$+$1d	jr nz,$+$00
1e8c	4f 	ld c,a	ld c,a
1e8d	05 	dec b	dec b
1e8e	b8 	cp b	cp b
1e8f	04 	inc b	inc b
1e90	38 15 	jr c,$+$17	jr c,$+$00
1e92	c5 	push bc	push bc
1e93	d5 	push de	push de
1e94	e5 	push hl	push hl
1e95	05 	dec b	dec b
1e96	28 08 	jr z,$+$0a	jr z,$+$00
1e98	13 	inc de	inc de
1e99	1a 	ld a,(de)	ld a,(de)
1e9a	be 	cp (hl)	cp (hl)
1e9b	20 03 	jr nz,$+$05	jr nz,$+$00
1e9d	23 	inc hl	inc hl
1e9e	10 f8 	djnz $-$06	djnz $-$00
1ea0	e1 	pop hl	pop hl
1ea1	d1 	pop de	pop de
1ea2	c1 	pop bc	pop bc
1ea3	20 dd 	jr nz,$-$21	jr nz,$-$00
1ea5	af 	xor a	xor a
1ea6	c9 	ret	ret
1ea7	f6 ff 	or $ff	or $00
1ea9	c9 	ret	ret
1eaa	cd e4 18 	call $18e4	call $0000
1ead	d9 	exx	exx
1eae	7d 	ld a,l	ld a,l
1eaf	18 0a 	jr $+$0c	jr $+$00
1eb1	cd 8f 45 	call $458f	call $0000
1eb4	fe 23 	cp $23	cp $00
1eb6	28 06 	jr z,$+$08	jr z,$+$00
1eb8	cd c4 05 	call $05c4	call $0000
1ebb	37 	scf	scf
1ebc	18 5b 	jr $+$5d	jr $+$00
1ebe	cd 5f 37 	call $375f	call $0000
1ec1	cd 8f 45 	call $458f	call $0000
1ec4	fe 0f 	cp $0f	cp $00
1ec6	28 04 	jr z,$+$06	jr z,$+$00
1ec8	fe b8 	cp $b8	cp $00
1eca	20 0c 	jr nz,$+$0e	jr nz,$+$00
1ecc	fd 23 	inc iy	inc iy
1ece	f5 	push af	push af
1ecf	d5 	push de	push de
1ed0	cd e4 18 	call $18e4	call $0000
1ed3	d9 	exx	exx
1ed4	44 	ld b,h	ld b,h
1ed5	4d 	ld c,l	ld c,l
1ed6	d1 	pop de	pop de
1ed7	f1 	pop af	pop af
1ed8	21 00 53 	ld hl,$5300	ld hl,$0000
1edb	fe b8 	cp $b8	cp $00
1edd	28 08 	jr z,$+$0a	jr z,$+$00
1edf	51 	ld d,c	ld d,c
1ee0	01 00 01 	ld bc,$0100	ld bc,$0000
1ee3	fe 0f 	cp $0f	cp $00
1ee5	28 04 	jr z,$+$06	jr z,$+$00
1ee7	16 00 	ld d,$00	ld d,$00
1ee9	cb c8 	set 1,b	set 1,b
1eeb	c5 	push bc	push bc
1eec	cd 5d 06 	call $065d	call $0000
1eef	c1 	pop bc	pop bc
1ef0	38 1c 	jr c,$+$1e	jr c,$+$00
1ef2	cb 48 	bit 1,b	bit 1,b
1ef4	28 13 	jr z,$+$15	jr z,$+$00
1ef6	b9 	cp c	cp c
1ef7	28 15 	jr z,$+$17	jr z,$+$00
1ef9	cb 78 	bit 7,b	bit 7,b
1efb	20 08 	jr nz,$+$0a	jr nz,$+$00
1efd	cb 40 	bit 0,b	bit 0,b
1eff	28 08 	jr z,$+$0a	jr z,$+$00
1f01	fe 0a 	cp $0a	cp $00
1f03	28 09 	jr z,$+$0b	jr z,$+$00
1f05	fe 0d 	cp $0d	cp $00
1f07	28 05 	jr z,$+$07	jr z,$+$00
1f09	77 	ld (hl),a	ld (hl),a
1f0a	2c 	inc l	inc l
1f0b	15 	dec d	dec d
1f0c	20 dd 	jr nz,$-$21	jr nz,$-$00
1f0e	eb 	ex de,hl	ex de,hl
1f0f	3e 80 	ld a,$80	ld a,$00
1f11	c9 	ret	ret
1f12	cd e4 18 	call $18e4	call $0000
1f15	d9 	exx	exx
1f16	cd 15 0e 	call $0e15	call $0000
1f19	11 00 53 	ld de,$5300	ld de,$0000
1f1c	12 	ld (de),a	ld (de),a
1f1d	3e 80 	ld a,$80	ld a,$00
1f1f	d0 	ret nc	ret nc
1f20	1c 	inc e	inc e
1f21	c9 	ret	ret
1f22	cd c0 18 	call $18c0	call $0000
1f25	cd 26 21 	call $2126	call $0000
1f28	cd 9d 20 	call $209d	call $0000
1f2b	cd b7 18 	call $18b7	call $0000
1f2e	c1 	pop bc	pop bc
1f2f	cd bb 20 	call $20bb	call $0000
1f32	d9 	exx	exx
1f33	7d 	ld a,l	ld a,l
1f34	d9 	exx	exx
1f35	b7 	or a	or a
1f36	28 0d 	jr z,$+$0f	jr z,$+$00
1f38	3d 	dec a	dec a
1f39	6f 	ld l,a	ld l,a
1f3a	93 	sub e	sub e
1f3b	1e 00 	ld e,$00	ld e,$00
1f3d	30 06 	jr nc,$+$08	jr nc,$+$00
1f3f	ed 44 	neg	neg
1f41	4f 	ld c,a	ld c,a
1f42	cd a1 1f 	call $1fa1	call $0000
1f45	cd 8f 45 	call $458f	call $0000
1f48	fe 2c 	cp $2c	cp $00
1f4a	28 1a 	jr z,$+$1c	jr z,$+$00
1f4c	cd 32 21 	call $2132	call $0000
1f4f	3e 80 	ld a,$80	ld a,$00
1f51	c9 	ret	ret
1f52	cd c0 18 	call $18c0	call $0000
1f55	cd 8f 45 	call $458f	call $0000
1f58	fe 2c 	cp $2c	cp $00
1f5a	28 0a 	jr z,$+$0c	jr z,$+$00
1f5c	cd 32 21 	call $2132	call $0000
1f5f	7b 	ld a,e	ld a,e
1f60	b7 	or a	or a
1f61	28 1a 	jr z,$+$1c	jr z,$+$00
1f63	1d 	dec e	dec e
1f64	18 17 	jr $+$19	jr $+$00
1f66	fd 23 	inc iy	inc iy
1f68	cd 9d 20 	call $209d	call $0000
1f6b	cd b7 18 	call $18b7	call $0000
1f6e	c1 	pop bc	pop bc
1f6f	cd bb 20 	call $20bb	call $0000
1f72	cd 32 21 	call $2132	call $0000
1f75	d9 	exx	exx
1f76	7d 	ld a,l	ld a,l
1f77	d9 	exx	exx
1f78	bb 	cp e	cp e
1f79	30 02 	jr nc,$+$04	jr nc,$+$00
1f7b	6b 	ld l,e	ld l,e
1f7c	5f 	ld e,a	ld e,a
1f7d	3e 80 	ld a,$80	ld a,$00
1f7f	c9 	ret	ret
1f80	cd c0 18 	call $18c0	call $0000
1f83	cd 8f 45 	call $458f	call $0000
1f86	fe 2c 	cp $2c	cp $00
1f88	28 0c 	jr z,$+$0e	jr z,$+$00
1f8a	cd 32 21 	call $2132	call $0000
1f8d	7b 	ld a,e	ld a,e
1f8e	b7 	or a	or a
1f8f	28 ec 	jr z,$-$12	jr z,$-$00
1f91	3d 	dec a	dec a
1f92	0e 01 	ld c,$01	ld c,$00
1f94	18 0a 	jr $+$0c	jr $+$00
1f96	cd 66 1f 	call $1f66	call $0000
1f99	d0 	ret nc	ret nc
1f9a	1c 	inc e	inc e
1f9b	1d 	dec e	dec e
1f9c	c8 	ret z	ret z
1f9d	4b 	ld c,e	ld c,e
1f9e	7d 	ld a,l	ld a,l
1f9f	93 	sub e	sub e
1fa0	6f 	ld l,a	ld l,a
1fa1	06 00 	ld b,$00	ld b,$00
1fa3	62 	ld h,d	ld h,d
1fa4	58 	ld e,b	ld e,b
1fa5	ed b0 	ldir	ldir
1fa7	3e 80 	ld a,$80	ld a,$00
1fa9	c9 	ret	ret
1faa	cd b7 18 	call $18b7	call $0000
1fad	cd 26 21 	call $2126	call $0000
1fb0	d9 	exx	exx
1fb1	7d 	ld a,l	ld a,l
1fb2	d9 	exx	exx
1fb3	f5 	push af	push af
1fb4	cd c0 18 	call $18c0	call $0000
1fb7	cd 32 21 	call $2132	call $0000
1fba	f1 	pop af	pop af
1fbb	b7 	or a	or a
1fbc	28 be 	jr z,$-$40	jr z,$-$00
1fbe	3d 	dec a	dec a
1fbf	4f 	ld c,a	ld c,a
1fc0	3e 80 	ld a,$80	ld a,$00
1fc2	c8 	ret z	ret z
1fc3	1c 	inc e	inc e
1fc4	1d 	dec e	dec e
1fc5	c8 	ret z	ret z
1fc6	43 	ld b,e	ld b,e
1fc7	62 	ld h,d	ld h,d
1fc8	2e 00 	ld l,$00	ld l,$00
1fca	c5 	push bc	push bc
1fcb	7e 	ld a,(hl)	ld a,(hl)
1fcc	23 	inc hl	inc hl
1fcd	12 	ld (de),a	ld (de),a
1fce	1c 	inc e	inc e
1fcf	3e 13 	ld a,$13	ld a,$00
1fd1	ca c8 3f 	jp z,$3fc8	jp z,$0000
1fd4	10 f5 	djnz $-$09	djnz $-$00
1fd6	c1 	pop bc	pop bc
1fd7	0d 	dec c	dec c
1fd8	20 f0 	jr nz,$-$0e	jr nz,$-$00
1fda	3e 80 	ld a,$80	ld a,$00
1fdc	c9 	ret	ret
1fdd	7c 	ld a,h	ld a,h
1fde	b5 	or l	or l
1fdf	d9 	exx	exx
1fe0	b4 	or h	or h
1fe1	b5 	or l	or l
1fe2	d9 	exx	exx
1fe3	c9 	ret	ret
1fe4	d9 	exx	exx
1fe5	fd 7e 00 	ld a,(iy)	ld a,(iy)
1fe8	fd 23 	inc iy	inc iy
1fea	17 	rla	rla
1feb	17 	rla	rla
1fec	67 	ld h,a	ld h,a
1fed	e6 c0 	and $c0	and $00
1fef	fd ae 00 	xor (iy)	xor (iy)
1ff2	fd 23 	inc iy	inc iy
1ff4	6f 	ld l,a	ld l,a
1ff5	7c 	ld a,h	ld a,h
1ff6	17 	rla	rla
1ff7	17 	rla	rla
1ff8	e6 c0 	and $c0	and $00
1ffa	fd ae 00 	xor (iy)	xor (iy)
1ffd	fd 23 	inc iy	inc iy
1fff	67 	ld h,a	ld h,a
2000	d9 	exx	exx
2001	af 	xor a	xor a
2002	4f 	ld c,a	ld c,a
2003	67 	ld h,a	ld h,a
2004	6f 	ld l,a	ld l,a
2005	c9 	ret	ret
2006	fd 23 	inc iy	inc iy
2008	cd fe 18 	call $18fe	call $0000
200b	cd 11 20 	call $2011	call $0000
200e	3e 80 	ld a,$80	ld a,$00
2010	c9 	ret	ret
2011	cd 9b 1c 	call $1c9b	call $0000
2014	01 08 00 	ld bc,$0008	ld bc,$0000
2017	11 00 53 	ld de,$5300	ld de,$0000
201a	c5 	push bc	push bc
201b	06 04 	ld b,$04	ld b,$00
201d	af 	xor a	xor a
201e	d9 	exx	exx
201f	29 	add hl,hl	add hl,hl
2020	d9 	exx	exx
2021	ed 6a 	adc hl,hl	adc hl,hl
2023	17 	rla	rla
2024	10 f8 	djnz $-$06	djnz $-$00
2026	c1 	pop bc	pop bc
2027	0d 	dec c	dec c
2028	f8 	ret m	ret m
2029	28 06 	jr z,$+$08	jr z,$+$00
202b	b7 	or a	or a
202c	20 03 	jr nz,$+$05	jr nz,$+$00
202e	b8 	cp b	cp b
202f	28 e9 	jr z,$-$15	jr z,$-$00
2031	c6 90 	add a,$90	add a,$00
2033	27 	daa	daa
2034	ce 40 	adc a,$40	adc a,$00
2036	27 	daa	daa
2037	12 	ld (de),a	ld (de),a
2038	13 	inc de	inc de
2039	47 	ld b,a	ld b,a
203a	18 de 	jr $-$20	jr $-$00
203c	cd 8f 45 	call $458f	call $0000
203f	fe 7e 	cp $7e	cp $00
2041	28 c3 	jr z,$-$3b	jr z,$-$00
2043	cd fe 18 	call $18fe	call $0000
2046	dd 21 00 55 	ld ix,$5500	ld ix,$0000
204a	dd 7e 03 	ld a,(ix+$03)	ld a,(ix+$00)
204d	b7 	or a	or a
204e	dd 21 76 20 	ld ix,$2076	ld ix,$0000
2052	28 04 	jr z,$+$06	jr z,$+$00
2054	dd 21 00 55 	ld ix,$5500	ld ix,$0000
2058	11 00 53 	ld de,$5300	ld de,$0000
205b	3e 25 	ld a,$25	ld a,$00
205d	cd 99 45 	call $4599	call $0000
2060	da c8 3f 	jp c,$3fc8	jp c,$0000
2063	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
2067	3e 80 	ld a,$80	ld a,$00
2069	c8 	ret z	ret z
206a	79 	ld a,c	ld a,c
206b	c6 04 	add a,$04	add a,$00
206d	bb 	cp e	cp e
206e	28 f7 	jr z,$-$07	jr z,$-$00
2070	eb 	ex de,hl	ex de,hl
2071	36 20 	ld (hl),$20	ld (hl),$00
2073	23 	inc hl	inc hl
2074	eb 	ex de,hl	ex de,hl
2075	18 f6 	jr $-$08	jr $-$00
2077	09 	add hl,bc	add hl,bc
2078	00 	nop	nop
2079	cd 86 20 	call $2086	call $0000
207c	3e 00 	ld a,$00	ld a,$00
207e	d9 	exx	exx
207f	67 	ld h,a	ld h,a
2080	6f 	ld l,a	ld l,a
2081	d9 	exx	exx
2082	67 	ld h,a	ld h,a
2083	6f 	ld l,a	ld l,a
2084	4f 	ld c,a	ld c,a
2085	c9 	ret	ret
2086	04 	inc b	inc b
2087	0c 	inc c	inc c
2088	05 	dec b	dec b
2089	28 0a 	jr z,$+$0c	jr z,$+$00
208b	0d 	dec c	dec c
208c	28 0c 	jr z,$+$0e	jr z,$+$00
208e	1a 	ld a,(de)	ld a,(de)
208f	be 	cp (hl)	cp (hl)
2090	c0 	ret nz	ret nz
2091	13 	inc de	inc de
2092	23 	inc hl	inc hl
2093	18 f3 	jr $-$0b	jr $-$00
2095	b7 	or a	or a
2096	0d 	dec c	dec c
2097	c8 	ret z	ret z
2098	37 	scf	scf
2099	c9 	ret	ret
209a	b7 	or a	or a
209b	0c 	inc c	inc c
209c	c9 	ret	ret
209d	21 00 53 	ld hl,$5300	ld hl,$0000
20a0	cd 0a 33 	call $330a	call $0000
20a3	dd e1 	pop ix	pop ix
20a5	b7 	or a	or a
20a6	54 	ld d,h	ld d,h
20a7	4b 	ld c,e	ld c,e
20a8	ed 52 	sbc hl,de	sbc hl,de
20aa	39 	add hl,sp	add hl,sp
20ab	f9 	ld sp,hl	ld sp,hl
20ac	47 	ld b,a	ld b,a
20ad	c5 	push bc	push bc
20ae	28 09 	jr z,$+$0b	jr z,$+$00
20b0	eb 	ex de,hl	ex de,hl
20b1	06 00 	ld b,$00	ld b,$00
20b3	68 	ld l,b	ld l,b
20b4	ed b0 	ldir	ldir
20b6	cd 0a 33 	call $330a	call $0000
20b9	dd e9 	jp (ix)	jp (ix)
20bb	dd e1 	pop ix	pop ix
20bd	21 00 00 	ld hl,$0000	ld hl,$0000
20c0	44 	ld b,h	ld b,h
20c1	39 	add hl,sp	add hl,sp
20c2	11 00 53 	ld de,$5300	ld de,$0000
20c5	0c 	inc c	inc c
20c6	0d 	dec c	dec c
20c7	28 02 	jr z,$+$04	jr z,$+$00
20c9	ed b0 	ldir	ldir
20cb	f9 	ld sp,hl	ld sp,hl
20cc	dd e9 	jp (ix)	jp (ix)
20ce	fd 7e 00 	ld a,(iy)	ld a,(iy)
20d1	fe 30 	cp $30	cp $00
20d3	d8 	ret c	ret c
20d4	fe 32 	cp $32	cp $00
20d6	3f 	ccf	ccf
20d7	d8 	ret c	ret c
20d8	d6 30 	sub $30	sub $00
20da	c9 	ret	ret
20db	fd 7e 00 	ld a,(iy)	ld a,(iy)
20de	fe 30 	cp $30	cp $00
20e0	d8 	ret c	ret c
20e1	fe 3a 	cp $3a	cp $00
20e3	3f 	ccf	ccf
20e4	d0 	ret nc	ret nc
20e5	fe 41 	cp $41	cp $00
20e7	d8 	ret c	ret c
20e8	d6 37 	sub $37	sub $00
20ea	fe 10 	cp $10	cp $00
20ec	3f 	ccf	ccf
20ed	c9 	ret	ret
20ee	fe 3e 	cp $3e	cp $00
20f0	d0 	ret nc	ret nc
20f1	fe 3d 	cp $3d	cp $00
20f3	d0 	ret nc	ret nc
20f4	fe 3c 	cp $3c	cp $00
20f6	c9 	ret	ret
20f7	fd 23 	inc iy	inc iy
20f9	e6 0f 	and $0f	and $00
20fb	08 	ex af,af'	ex af,af'
20fc	fa f2 18 	jp m,$18f2	jp m,$0000
20ff	08 	ex af,af'	ex af,af'
2100	e3 	ex (sp),hl	ex (sp),hl
2101	d9 	exx	exx
2102	e5 	push hl	push hl
2103	d9 	exx	exx
2104	f5 	push af	push af
2105	c5 	push bc	push bc
2106	e9 	jp (hl)	jp (hl)
2107	08 	ex af,af'	ex af,af'
2108	fa f2 18 	jp m,$18f2	jp m,$0000
210b	d9 	exx	exx
210c	c1 	pop bc	pop bc
210d	d9 	exx	exx
210e	79 	ld a,c	ld a,c
210f	c1 	pop bc	pop bc
2110	47 	ld b,a	ld b,a
2111	f1 	pop af	pop af
2112	d9 	exx	exx
2113	eb 	ex de,hl	ex de,hl
2114	e1 	pop hl	pop hl
2115	d9 	exx	exx
2116	eb 	ex de,hl	ex de,hl
2117	e1 	pop hl	pop hl
2118	d9 	exx	exx
2119	c5 	push bc	push bc
211a	d9 	exx	exx
211b	cd 99 45 	call $4599	call $0000
211e	38 1c 	jr c,$+$1e	jr c,$+$00
2120	af 	xor a	xor a
2121	08 	ex af,af'	ex af,af'
2122	fd 7e 00 	ld a,(iy)	ld a,(iy)
2125	c9 	ret	ret
2126	cd 8f 45 	call $458f	call $0000
2129	fd 23 	inc iy	inc iy
212b	fe 2c 	cp $2c	cp $00
212d	c8 	ret z	ret z
212e	3e 05 	ld a,$05	ld a,$00
2130	18 0a 	jr $+$0c	jr $+$00
2132	cd 8f 45 	call $458f	call $0000
2135	fd 23 	inc iy	inc iy
2137	fe 29 	cp $29	cp $00
2139	c8 	ret z	ret z
213a	3e 1b 	ld a,$1b	ld a,$00
213c	c3 c8 3f 	jp $3fc8	jp $0000
213f	e5 	push hl	push hl
2140	21 7a 17 	ld hl,$177a	ld hl,$0000
2143	18 06 	jr $+$08	jr $+$00
2145	e5 	push hl	push hl
2146	d6 8d 	sub $8d	sub $00
2148	21 06 17 	ld hl,$1706	ld hl,$0000
214b	c5 	push bc	push bc
214c	87 	add a,a	add a,a
214d	4f 	ld c,a	ld c,a
214e	06 00 	ld b,$00	ld b,$00
2150	09 	add hl,bc	add hl,bc
2151	7e 	ld a,(hl)	ld a,(hl)
2152	23 	inc hl	inc hl
2153	66 	ld h,(hl)	ld h,(hl)
2154	6f 	ld l,a	ld l,a
2155	c1 	pop bc	pop bc
2156	e3 	ex (sp),hl	ex (sp),hl
2157	c9 	ret	ret
2158	7a 	ld a,d	ld a,d
2159	d5 	push de	push de
215a	e5 	push hl	push hl
215b	dd e3 	ex (sp),ix	ex (sp),ix
215d	b7 	or a	or a
215e	fa 6f 21 	jp m,$216f	jp m,$0000
2161	cd a9 19 	call $19a9	call $0000
2164	dd e3 	ex (sp),ix	ex (sp),ix
2166	cd 52 32 	call $3252	call $0000
2169	e1 	pop hl	pop hl
216a	d1 	pop de	pop de
216b	4a 	ld c,d	ld c,d
216c	06 00 	ld b,$00	ld b,$00
216e	c9 	ret	ret
216f	d5 	push de	push de
2170	cd 92 1a 	call $1a92	call $0000
2173	e1 	pop hl	pop hl
2174	dd e3 	ex (sp),ix	ex (sp),ix
2176	cd 9c 32 	call $329c	call $0000
2179	e1 	pop hl	pop hl
217a	d1 	pop de	pop de
217b	01 04 00 	ld bc,$0004	ld bc,$0000
217e	c9 	ret	ret
217f	cb b2 	res 6,d	res 6,d
2181	d5 	push de	push de
2182	cd 51 1a 	call $1a51	call $0000
2185	cd 28 1a 	call $1a28	call $0000
2188	c1 	pop bc	pop bc
2189	78 	ld a,b	ld a,b
218a	d5 	push de	push de
218b	c5 	push bc	push bc
218c	e5 	push hl	push hl
218d	cd 31 37 	call $3731	call $0000
2190	42 	ld b,d	ld b,d
2191	4b 	ld c,e	ld c,e
2192	dd e1 	pop ix	pop ix
2194	d1 	pop de	pop de
2195	af 	xor a	xor a
2196	ed 62 	sbc hl,hl	sbc hl,hl
2198	39 	add hl,sp	add hl,sp
2199	ed 42 	sbc hl,bc	sbc hl,bc
219b	38 9f 	jr c,$-$5f	jr c,$-$00
219d	c5 	push bc	push bc
219e	ed 4b e0 55 	ld bc,($55e0)	ld bc,($0000)
21a2	04 	inc b	inc b
21a3	ed 42 	sbc hl,bc	sbc hl,bc
21a5	09 	add hl,bc	add hl,bc
21a6	c1 	pop bc	pop bc
21a7	38 93 	jr c,$-$6b	jr c,$-$00
21a9	f9 	ld sp,hl	ld sp,hl
21aa	36 00 	ld (hl),$00	ld (hl),$00
21ac	23 	inc hl	inc hl
21ad	0b 	dec bc	dec bc
21ae	78 	ld a,b	ld a,b
21af	b1 	or c	or c
21b0	20 f8 	jr nz,$-$06	jr nz,$-$00
21b2	4e 	ld c,(hl)	ld c,(hl)
21b3	23 	inc hl	inc hl
21b4	46 	ld b,(hl)	ld b,(hl)
21b5	67 	ld h,a	ld h,a
21b6	6f 	ld l,a	ld l,a
21b7	39 	add hl,sp	add hl,sp
21b8	cd c0 21 	call $21c0	call $0000
21bb	f9 	ld sp,hl	ld sp,hl
21bc	c1 	pop bc	pop bc
21bd	c3 1d 25 	jp $251d	jp $0000
21c0	3e 3d 	ld a,$3d	ld a,$00
21c2	fd 2b 	dec iy	dec iy
21c4	fd 23 	inc iy	inc iy
21c6	d5 	push de	push de
21c7	c5 	push bc	push bc
21c8	e5 	push hl	push hl
21c9	dd e5 	push ix	push ix
21cb	5f 	ld e,a	ld e,a
21cc	cd 3a 22 	call $223a	call $0000
21cf	dd e1 	pop ix	pop ix
21d1	e1 	pop hl	pop hl
21d2	c1 	pop bc	pop bc
21d3	d1 	pop de	pop de
21d4	cd 8f 45 	call $458f	call $0000
21d7	fe 2c 	cp $2c	cp $00
21d9	28 13 	jr z,$+$15	jr z,$+$00
21db	cd ba 35 	call $35ba	call $0000
21de	20 e4 	jr nz,$-$1a	jr nz,$-$00
21e0	c5 	push bc	push bc
21e1	cd 58 21 	call $2158	call $0000
21e4	09 	add hl,bc	add hl,bc
21e5	dd 09 	add ix,bc	add ix,bc
21e7	c1 	pop bc	pop bc
21e8	0b 	dec bc	dec bc
21e9	78 	ld a,b	ld a,b
21ea	b1 	or c	or c
21eb	20 f3 	jr nz,$-$0b	jr nz,$-$00
21ed	c9 	ret	ret
21ee	c5 	push bc	push bc
21ef	cd 58 21 	call $2158	call $0000
21f2	fd 23 	inc iy	inc iy
21f4	09 	add hl,bc	add hl,bc
21f5	dd 09 	add ix,bc	add ix,bc
21f7	c1 	pop bc	pop bc
21f8	0b 	dec bc	dec bc
21f9	78 	ld a,b	ld a,b
21fa	b1 	or c	or c
21fb	c8 	ret z	ret z
21fc	c5 	push bc	push bc
21fd	d5 	push de	push de
21fe	e5 	push hl	push hl
21ff	dd e5 	push ix	push ix
2201	cb 7a 	bit 7,d	bit 7,d
2203	20 0e 	jr nz,$+$10	jr nz,$+$00
2205	d5 	push de	push de
2206	cd b0 18 	call $18b0	call $0000
2209	d1 	pop de	pop de
220a	dd e1 	pop ix	pop ix
220c	dd e5 	push ix	push ix
220e	cd 52 32 	call $3252	call $0000
2211	18 0c 	jr $+$0e	jr $+$00
2213	d5 	push de	push de
2214	cd c0 18 	call $18c0	call $0000
2217	e1 	pop hl	pop hl
2218	dd e1 	pop ix	pop ix
221a	dd e5 	push ix	push ix
221c	cd 9c 32 	call $329c	call $0000
221f	dd e1 	pop ix	pop ix
2221	e1 	pop hl	pop hl
2222	d1 	pop de	pop de
2223	01 04 00 	ld bc,$0004	ld bc,$0000
2226	cb 7a 	bit 7,d	bit 7,d
2228	20 01 	jr nz,$+$03	jr nz,$+$00
222a	4a 	ld c,d	ld c,d
222b	cd 8f 45 	call $458f	call $0000
222e	fe 2c 	cp $2c	cp $00
2230	28 c0 	jr z,$-$3e	jr z,$-$00
2232	d1 	pop de	pop de
2233	09 	add hl,bc	add hl,bc
2234	1b 	dec de	dec de
2235	7a 	ld a,d	ld a,d
2236	b3 	or e	or e
2237	20 fa 	jr nz,$-$04	jr nz,$-$00
2239	c9 	ret	ret
223a	cd 8f 45 	call $458f	call $0000
223d	e5 	push hl	push hl
223e	c5 	push bc	push bc
223f	fd e5 	push iy	push iy
2241	d5 	push de	push de
2242	fe 2d 	cp $2d	cp $00
2244	20 0c 	jr nz,$+$0e	jr nz,$+$00
2246	7b 	ld a,e	ld a,e
2247	fe 3d 	cp $3d	cp $00
2249	20 07 	jr nz,$+$09	jr nz,$+$00
224b	fd 23 	inc iy	inc iy
224d	cd 8f 45 	call $458f	call $0000
2250	1e 2d 	ld e,$2d	ld e,$00
2252	d5 	push de	push de
2253	cd 67 42 	call $4267	call $0000
2256	d1 	pop de	pop de
2257	20 56 	jr nz,$+$58	jr nz,$+$00
2259	cb 77 	bit 6,a	bit 6,a
225b	28 52 	jr z,$+$54	jr z,$+$00
225d	c1 	pop bc	pop bc
225e	c1 	pop bc	pop bc
225f	cb b7 	res 6,a	res 6,a
2261	ba 	cp d	cp d
2262	c2 f2 18 	jp nz,$18f2	jp nz,$0000
2265	d5 	push de	push de
2266	cd 51 1a 	call $1a51	call $0000
2269	cd 28 1a 	call $1a28	call $0000
226c	42 	ld b,d	ld b,d
226d	4b 	ld c,e	ld c,e
226e	d1 	pop de	pop de
226f	e3 	ex (sp),hl	ex (sp),hl
2270	cd 8f 45 	call $458f	call $0000
2273	dd e1 	pop ix	pop ix
2275	fe 2e 	cp $2e	cp $00
2277	ca 07 23 	jp z,$2307	jp z,$0000
227a	b7 	or a	or a
227b	ed 42 	sbc hl,bc	sbc hl,bc
227d	c2 f2 18 	jp nz,$18f2	jp nz,$0000
2280	e1 	pop hl	pop hl
2281	cb 7a 	bit 7,d	bit 7,d
2283	20 1d 	jr nz,$+$1f	jr nz,$+$00
2285	c5 	push bc	push bc
2286	e5 	push hl	push hl
2287	7a 	ld a,d	ld a,d
2288	cd a9 19 	call $19a9	call $0000
228b	dd e3 	ex (sp),ix	ex (sp),ix
228d	d5 	push de	push de
228e	cd 52 32 	call $3252	call $0000
2291	d1 	pop de	pop de
2292	dd e3 	ex (sp),ix	ex (sp),ix
2294	e1 	pop hl	pop hl
2295	4a 	ld c,d	ld c,d
2296	06 00 	ld b,$00	ld b,$00
2298	dd 09 	add ix,bc	add ix,bc
229a	09 	add hl,bc	add hl,bc
229b	c1 	pop bc	pop bc
229c	0b 	dec bc	dec bc
229d	78 	ld a,b	ld a,b
229e	b1 	or c	or c
229f	20 e4 	jr nz,$-$1a	jr nz,$-$00
22a1	c9 	ret	ret
22a2	eb 	ex de,hl	ex de,hl
22a3	60 	ld h,b	ld h,b
22a4	69 	ld l,c	ld l,c
22a5	29 	add hl,hl	add hl,hl
22a6	29 	add hl,hl	add hl,hl
22a7	44 	ld b,h	ld b,h
22a8	4d 	ld c,l	ld c,l
22a9	dd e5 	push ix	push ix
22ab	e1 	pop hl	pop hl
22ac	ed b0 	ldir	ldir
22ae	c9 	ret	ret
22af	d1 	pop de	pop de
22b0	fd e1 	pop iy	pop iy
22b2	cb 7a 	bit 7,d	bit 7,d
22b4	20 28 	jr nz,$+$2a	jr nz,$+$00
22b6	d5 	push de	push de
22b7	cd 8f 18 	call $188f	call $0000
22ba	79 	ld a,c	ld a,c
22bb	d1 	pop de	pop de
22bc	c1 	pop bc	pop bc
22bd	dd e1 	pop ix	pop ix
22bf	e5 	push hl	push hl
22c0	c5 	push bc	push bc
22c1	d5 	push de	push de
22c2	d9 	exx	exx
22c3	e5 	push hl	push hl
22c4	d9 	exx	exx
22c5	f5 	push af	push af
22c6	4f 	ld c,a	ld c,a
22c7	cd 52 32 	call $3252	call $0000
22ca	f1 	pop af	pop af
22cb	d9 	exx	exx
22cc	e1 	pop hl	pop hl
22cd	d9 	exx	exx
22ce	d1 	pop de	pop de
22cf	4a 	ld c,d	ld c,d
22d0	06 00 	ld b,$00	ld b,$00
22d2	dd 09 	add ix,bc	add ix,bc
22d4	c1 	pop bc	pop bc
22d5	0b 	dec bc	dec bc
22d6	ed 62 	sbc hl,hl	sbc hl,hl
22d8	ed 42 	sbc hl,bc	sbc hl,bc
22da	e1 	pop hl	pop hl
22db	20 e2 	jr nz,$-$1c	jr nz,$-$00
22dd	c9 	ret	ret
22de	cd c0 18 	call $18c0	call $0000
22e1	7b 	ld a,e	ld a,e
22e2	b7 	or a	or a
22e3	28 0b 	jr z,$+$0d	jr z,$+$00
22e5	21 00 53 	ld hl,$5300	ld hl,$0000
22e8	11 00 54 	ld de,$5400	ld de,$0000
22eb	4f 	ld c,a	ld c,a
22ec	06 00 	ld b,$00	ld b,$00
22ee	ed b0 	ldir	ldir
22f0	c1 	pop bc	pop bc
22f1	dd e1 	pop ix	pop ix
22f3	d9 	exx	exx
22f4	6f 	ld l,a	ld l,a
22f5	d9 	exx	exx
22f6	11 04 00 	ld de,$0004	ld de,$0000
22f9	21 00 54 	ld hl,$5400	ld hl,$0000
22fc	cd 8d 32 	call $328d	call $0000
22ff	dd 19 	add ix,de	add ix,de
2301	0b 	dec bc	dec bc
2302	78 	ld a,b	ld a,b
2303	b1 	or c	or c
2304	20 f6 	jr nz,$-$08	jr nz,$-$00
2306	c9 	ret	ret
2307	fd 23 	inc iy	inc iy
2309	7a 	ld a,d	ld a,d
230a	b7 	or a	or a
230b	fa f2 18 	jp m,$18f2	jp m,$0000
230e	eb 	ex de,hl	ex de,hl
230f	e1 	pop hl	pop hl
2310	d5 	push de	push de
2311	e5 	push hl	push hl
2312	dd e5 	push ix	push ix
2314	f5 	push af	push af
2315	cd 41 1a 	call $1a41	call $0000
2318	cd 28 1a 	call $1a28	call $0000
231b	f1 	pop af	pop af
231c	eb 	ex de,hl	ex de,hl
231d	dd 6e 00 	ld l,(ix)	ld l,(ix)
2320	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
2323	6e 	ld l,(hl)	ld l,(hl)
2324	2d 	dec l	dec l
2325	eb 	ex de,hl	ex de,hl
2326	dd e1 	pop ix	pop ix
2328	c1 	pop bc	pop bc
2329	d1 	pop de	pop de
232a	fd e5 	push iy	push iy
232c	c5 	push bc	push bc
232d	e5 	push hl	push hl
232e	fd e1 	pop iy	pop iy
2330	21 01 00 	ld hl,$0001	ld hl,$0000
2333	28 06 	jr z,$+$08	jr z,$+$00
2335	fd 66 ff 	ld h,(iy-$01)	ld h,(iy-$00)
2338	fd 6e fe 	ld l,(iy-$02)	ld l,(iy-$00)
233b	d5 	push de	push de
233c	eb 	ex de,hl	ex de,hl
233d	cd 31 37 	call $3731	call $0000
2340	eb 	ex de,hl	ex de,hl
2341	d1 	pop de	pop de
2342	dd 46 ff 	ld b,(ix-$01)	ld b,(ix-$00)
2345	dd 4e fe 	ld c,(ix-$02)	ld c,(ix-$00)
2348	c5 	push bc	push bc
2349	d5 	push de	push de
234a	e5 	push hl	push hl
234b	dd e5 	push ix	push ix
234d	fd e5 	push iy	push iy
234f	50 	ld d,b	ld d,b
2350	59 	ld e,c	ld e,c
2351	f5 	push af	push af
2352	cd 7c 20 	call $207c	call $0000
2355	f1 	pop af	pop af
2356	d5 	push de	push de
2357	c5 	push bc	push bc
2358	e5 	push hl	push hl
2359	d9 	exx	exx
235a	e5 	push hl	push hl
235b	d9 	exx	exx
235c	cd a9 19 	call $19a9	call $0000
235f	dd e5 	push ix	push ix
2361	fd e3 	ex (sp),iy	ex (sp),iy
2363	dd e1 	pop ix	pop ix
2365	cd 6b 1a 	call $1a6b	call $0000
2368	dd e5 	push ix	push ix
236a	fd e3 	ex (sp),iy	ex (sp),iy
236c	dd e1 	pop ix	pop ix
236e	f5 	push af	push af
236f	3e 0a 	ld a,$0a	ld a,$00
2371	cd 99 45 	call $4599	call $0000
2374	da c8 3f 	jp c,$3fc8	jp c,$0000
2377	f1 	pop af	pop af
2378	d9 	exx	exx
2379	eb 	ex de,hl	ex de,hl
237a	e1 	pop hl	pop hl
237b	d9 	exx	exx
237c	eb 	ex de,hl	ex de,hl
237d	e1 	pop hl	pop hl
237e	08 	ex af,af'	ex af,af'
237f	79 	ld a,c	ld a,c
2380	c1 	pop bc	pop bc
2381	47 	ld b,a	ld b,a
2382	08 	ex af,af'	ex af,af'
2383	f5 	push af	push af
2384	3e 0b 	ld a,$0b	ld a,$00
2386	cd 99 45 	call $4599	call $0000
2389	da c8 3f 	jp c,$3fc8	jp c,$0000
238c	f1 	pop af	pop af
238d	d1 	pop de	pop de
238e	d9 	exx	exx
238f	4f 	ld c,a	ld c,a
2390	06 00 	ld b,$00	ld b,$00
2392	dd 09 	add ix,bc	add ix,bc
2394	d1 	pop de	pop de
2395	c1 	pop bc	pop bc
2396	e3 	ex (sp),hl	ex (sp),hl
2397	eb 	ex de,hl	ex de,hl
2398	fd 19 	add iy,de	add iy,de
239a	eb 	ex de,hl	ex de,hl
239b	e3 	ex (sp),hl	ex (sp),hl
239c	c5 	push bc	push bc
239d	d5 	push de	push de
239e	d9 	exx	exx
239f	1b 	dec de	dec de
23a0	1c 	inc e	inc e
23a1	1d 	dec e	dec e
23a2	20 b2 	jr nz,$-$4c	jr nz,$-$00
23a4	14 	inc d	inc d
23a5	15 	dec d	dec d
23a6	20 ae 	jr nz,$-$50	jr nz,$-$00
23a8	fd e1 	pop iy	pop iy
23aa	dd e1 	pop ix	pop ix
23ac	d9 	exx	exx
23ad	08 	ex af,af'	ex af,af'
23ae	f1 	pop af	pop af
23af	c1 	pop bc	pop bc
23b0	d1 	pop de	pop de
23b1	dd e3 	ex (sp),ix	ex (sp),ix
23b3	d5 	push de	push de
23b4	c5 	push bc	push bc
23b5	f5 	push af	push af
23b6	08 	ex af,af'	ex af,af'
23b7	d9 	exx	exx
23b8	f5 	push af	push af
23b9	d5 	push de	push de
23ba	cd 74 32 	call $3274	call $0000
23bd	d1 	pop de	pop de
23be	f1 	pop af	pop af
23bf	4f 	ld c,a	ld c,a
23c0	06 00 	ld b,$00	ld b,$00
23c2	dd 09 	add ix,bc	add ix,bc
23c4	d9 	exx	exx
23c5	08 	ex af,af'	ex af,af'
23c6	f1 	pop af	pop af
23c7	c1 	pop bc	pop bc
23c8	d1 	pop de	pop de
23c9	dd e3 	ex (sp),ix	ex (sp),ix
23cb	d5 	push de	push de
23cc	c5 	push bc	push bc
23cd	f5 	push af	push af
23ce	08 	ex af,af'	ex af,af'
23cf	d9 	exx	exx
23d0	e1 	pop hl	pop hl
23d1	d1 	pop de	pop de
23d2	c1 	pop bc	pop bc
23d3	1b 	dec de	dec de
23d4	c5 	push bc	push bc
23d5	d5 	push de	push de
23d6	e5 	push hl	push hl
23d7	4f 	ld c,a	ld c,a
23d8	06 00 	ld b,$00	ld b,$00
23da	fd 09 	add iy,bc	add iy,bc
23dc	f5 	push af	push af
23dd	e5 	push hl	push hl
23de	cd 31 37 	call $3731	call $0000
23e1	c1 	pop bc	pop bc
23e2	cd 14 24 	call $2414	call $0000
23e5	f1 	pop af	pop af
23e6	b7 	or a	or a
23e7	01 00 00 	ld bc,$0000	ld bc,$0000
23ea	ed 42 	sbc hl,bc	sbc hl,bc
23ec	e1 	pop hl	pop hl
23ed	d1 	pop de	pop de
23ee	c1 	pop bc	pop bc
23ef	20 15 	jr nz,$+$17	jr nz,$+$00
23f1	d5 	push de	push de
23f2	e5 	push hl	push hl
23f3	eb 	ex de,hl	ex de,hl
23f4	fd e5 	push iy	push iy
23f6	e1 	pop hl	pop hl
23f7	b7 	or a	or a
23f8	ed 52 	sbc hl,de	sbc hl,de
23fa	e5 	push hl	push hl
23fb	fd e1 	pop iy	pop iy
23fd	50 	ld d,b	ld d,b
23fe	59 	ld e,c	ld e,c
23ff	cd 31 37 	call $3731	call $0000
2402	dd 19 	add ix,de	add ix,de
2404	e1 	pop hl	pop hl
2405	d1 	pop de	pop de
2406	1c 	inc e	inc e
2407	1d 	dec e	dec e
2408	c2 48 23 	jp nz,$2348	jp nz,$0000
240b	14 	inc d	inc d
240c	15 	dec d	dec d
240d	c2 48 23 	jp nz,$2348	jp nz,$0000
2410	e1 	pop hl	pop hl
2411	fd e1 	pop iy	pop iy
2413	c9 	ret	ret
2414	af 	xor a	xor a
2415	67 	ld h,a	ld h,a
2416	6f 	ld l,a	ld l,a
2417	3e 11 	ld a,$11	ld a,$00
2419	ed 42 	sbc hl,bc	sbc hl,bc
241b	30 01 	jr nc,$+$03	jr nc,$+$00
241d	09 	add hl,bc	add hl,bc
241e	3f 	ccf	ccf
241f	cb 13 	rl e	rl e
2421	cb 12 	rl d	rl d
2423	3d 	dec a	dec a
2424	c8 	ret z	ret z
2425	ed 6a 	adc hl,hl	adc hl,hl
2427	18 f0 	jr $-$0e	jr $-$00
2429	fb 	ei	ei
242a	30 0f 	jr nc,$+$11	jr nc,$+$00
242c	31 05 31 	ld sp,$3105	ld sp,$0000
242f	64 	ld h,h	ld h,h
2430	26 64 	ld h,$64	ld h,$00
2432	26 64 	ld h,$64	ld h,$00
2434	26 64 	ld h,$64	ld h,$00
2436	26 aa 	ld h,$aa	ld h,$00
2438	2e db 	ld l,$db	ld l,$00
243a	2d 	dec l	dec l
243b	64 	ld h,h	ld h,h
243c	26 64 	ld h,$64	ld h,$00
243e	26 1d 	ld h,$1d	ld h,$00
2440	25 	dec h	dec h
2441	64 	ld h,h	ld h,h
2442	26 1d 	ld h,$1d	ld h,$00
2444	25 	dec h	dec h
2445	c7 	rst $00	rst $00
2446	2e 85 	ld l,$85	ld l,$00
2448	2f 	cpl	cpl
2449	99 	sbc a,c	sbc a,c
244a	2f 	cpl	cpl
244b	a7 	and a	and a
244c	2f 	cpl	cpl
244d	c6 2f 	add a,$2f	add a,$00
244f	d8 	ret c	ret c
2450	2f 	cpl	cpl
2451	b5 	or l	or l
2452	0e 57 	ld c,$57	ld c,$00
2454	30 90 	jr nc,$-$6e	jr nc,$-$00
2456	30 d0 	jr nc,$-$2e	jr nc,$-$00
2458	24 	inc h	inc h
2459	1a 	ld a,(de)	ld a,(de)
245a	2f 	cpl	cpl
245b	4f 	ld c,a	ld c,a
245c	30 f9 	jr nc,$-$05	jr nc,$-$00
245e	0e f9 	ld c,$f9	ld c,$00
2460	2e b5 	ld l,$b5	ld l,$00
2462	25 	dec h	dec h
2463	b5 	or l	or l
2464	25 	dec h	dec h
2465	c2 26 00 	jp nz,$0026	jp nz,$0000
2468	10 57 	djnz $+$59	djnz $+$00
246a	25 	dec h	dec h
246b	01 2c 87 	ld bc,$872c	ld bc,$0000
246e	0e 98 	ld c,$98	ld c,$00
2470	29 	add hl,hl	add hl,hl
2471	4f 	ld c,a	ld c,a
2472	29 	add hl,hl	add hl,hl
2473	38 29 	jr c,$+$2b	jr c,$+$00
2475	51 	ld d,c	ld d,c
2476	0f 	rrca	rrca
2477	4d 	ld c,l	ld c,l
2478	2d 	dec l	dec l
2479	66 	ld h,(hl)	ld h,(hl)
247a	2c 	inc l	inc l
247b	25 	dec h	dec h
247c	26 97 	ld h,$97	ld h,$00
247e	2b 	dec hl	dec hl
247f	e9 	jp (hl)	jp (hl)
2480	0e fc 	ld c,$fc	ld c,$00
2482	0f 	rrca	rrca
2483	e5 	push hl	push hl
2484	29 	add hl,hl	add hl,hl
2485	be 	cp (hl)	cp (hl)
2486	28 20 	jr z,$+$22	jr z,$+$00
2488	30 08 	jr nc,$+$0a	jr nc,$+$00
248a	10 ca 	djnz $-$34	djnz $-$00
248c	27 	daa	daa
248d	6b 	ld l,e	ld l,e
248e	2a 04 2d 	ld hl,($2d04)	ld hl,($0000)
2491	b5 	or l	or l
2492	25 	dec h	dec h
2493	69 	ld l,c	ld l,c
2494	29 	add hl,hl	add hl,hl
2495	15 	dec d	dec d
2496	2f 	cpl	cpl
2497	40 2f 	cpl.sis	cpl.sis
2499	5a 	ld e,d	ld e,d
249a	29 	add hl,hl	add hl,hl
249b	cb 24 	sla h	sla h
249d	02 	ld (bc),a	ld (bc),a
249e	2f 	cpl	cpl
249f	11 0f 07 	ld de,$070f	ld de,$0000
24a2	30 71 	jr nc,$+$73	jr nc,$+$00
24a4	29 	add hl,hl	add hl,hl
24a5	fd 2f 8c 	ld (iy-$74),hl	ld (iy-$00),hl
24a8	25 	dec h	dec h
24a9	b5 	or l	or l
24aa	25 	dec h	dec h
24ab	9f 	sbc a,a	sbc a,a
24ac	0f 	rrca	rrca
24ad	cb 0f 	rrc a	rrc a
24af	04 	inc b	inc b
24b0	10 be 	djnz $-$40	djnz $-$00
24b2	10 00 	djnz $+$02	djnz $+$00
24b4	0f 	rrca	rrca
24b5	b0 	or b	or b
24b6	0a 	ld a,(bc)	ld a,(bc)
24b7	3d 	dec a	dec a
24b8	10 e2 	djnz $-$1c	djnz $-$00
24ba	25 	dec h	dec h
24bb	95 	sub l	sub l
24bc	11 95 11 	ld de,$1195	ld de,$0000
24bf	fd 10 	trap	trap
24c1	64 	ld h,h	ld h,h
24c2	26 b5 	ld h,$b5	ld h,$00
24c4	25 	dec h	dec h
24c5	21 32 64 	ld hl,$6432	ld hl,$0000
24c8	26 a7 	ld h,$a7	ld h,$00
24ca	31 cd ba 	ld sp,$bacd	ld sp,$0000
24cd	35 	dec (hl)	dec (hl)
24ce	28 0d 	jr z,$+$0f	jr z,$+$00
24d0	cd c0 18 	call $18c0	call $0000
24d3	3e 0d 	ld a,$0d	ld a,$00
24d5	12 	ld (de),a	ld (de),a
24d6	ed 7b e2 55 	ld sp,($55e2)	ld sp,($0000)
24da	cd 84 40 	call $4084	call $0000
24dd	ed 7b e2 55 	ld sp,($55e2)	ld sp,($0000)
24e1	dd 21 f6 55 	ld ix,$55f6	ld ix,$0000
24e5	ed 5f 	ld a,r	ld a,r
24e7	28 fc 	jr z,$-$02	jr z,$-$00
24e9	07 	rlca	rlca
24ea	07 	rlca	rlca
24eb	dd 77 03 	ld (ix+$03),a	ld (ix+$00),a
24ee	9f 	sbc a,a	sbc a,a
24ef	dd 77 04 	ld (ix+$04),a	ld (ix+$00),a
24f2	cd c7 40 	call $40c7	call $0000
24f5	21 00 00 	ld hl,$0000	ld hl,$0000
24f8	22 ea 55 	ld ($55ea),hl	ld ($0000),hl
24fb	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
24fe	cd 7d 36 	call $367d	call $0000
2501	22 f0 55 	ld ($55f0),hl	ld ($0000),hl
2504	fd 2a dc 55 	ld iy,($55dc)	ld iy,($0000)
2508	cd 5f 25 	call $255f	call $0000
250b	fd 7e 00 	ld a,(iy)	ld a,(iy)
250e	fe 8b 	cp $8b	cp $00
2510	ca b4 2d 	jp z,$2db4	jp z,$0000
2513	fe c9 	cp $c9	cp $00
2515	ca c7 2d 	jp z,$2dc7	jp z,$0000
2518	fe cc 	cp $cc	cp $00
251a	ca c7 2d 	jp z,$2dc7	jp z,$0000
251d	fd 22 f4 55 	ld ($55f4),iy	ld ($0000),iy
2521	cd 35 06 	call $0635	call $0000
2524	cd 8f 45 	call $458f	call $0000
2527	fd 23 	inc iy	inc iy
2529	fe 3a 	cp $3a	cp $00
252b	28 f7 	jr z,$-$07	jr z,$-$00
252d	fe 0d 	cp $0d	cp $00
252f	28 d7 	jr z,$-$27	jr z,$-$00
2531	fe 91 	cp $91	cp $00
2533	ea 17 26 	jp pe,$2617	jp pe,$0000
2536	d6 c0 	sub $c0	sub $00
2538	fa 9a 25 	jp m,$259a	jp m,$0000
253b	87 	add a,a	add a,a
253c	4f 	ld c,a	ld c,a
253d	06 00 	ld b,$00	ld b,$00
253f	21 29 24 	ld hl,$2429	ld hl,$0000
2542	09 	add hl,bc	add hl,bc
2543	7e 	ld a,(hl)	ld a,(hl)
2544	23 	inc hl	inc hl
2545	66 	ld h,(hl)	ld h,(hl)
2546	6f 	ld l,a	ld l,a
2547	cd 8f 45 	call $458f	call $0000
254a	e9 	jp (hl)	jp (hl)
254b	fd e5 	push iy	push iy
254d	e1 	pop hl	pop hl
254e	ed 4b dc 55 	ld bc,($55dc)	ld bc,($0000)
2552	ed 42 	sbc hl,bc	sbc hl,bc
2554	da 34 38 	jp c,$3834	jp c,$0000
2557	1e 00 	ld e,$00	ld e,$00
2559	cd 55 06 	call $0655	call $0000
255c	c3 33 38 	jp $3833	jp $0000
255f	fd 7e 00 	ld a,(iy)	ld a,(iy)
2562	01 03 00 	ld bc,$0003	ld bc,$0000
2565	fd 09 	add iy,bc	add iy,bc
2567	b7 	or a	or a
2568	28 e1 	jr z,$-$1d	jr z,$-$00
256a	2a e6 55 	ld hl,($55e6)	ld hl,($0000)
256d	7c 	ld a,h	ld a,h
256e	b5 	or l	or l
256f	c8 	ret z	ret z
2570	fd 56 ff 	ld d,(iy-$01)	ld d,(iy-$00)
2573	fd 5e fe 	ld e,(iy-$02)	ld e,(iy-$00)
2576	ed 52 	sbc hl,de	sbc hl,de
2578	d8 	ret c	ret c
2579	eb 	ex de,hl	ex de,hl
257a	3e 5b 	ld a,$5b	ld a,$00
257c	cd 86 41 	call $4186	call $0000
257f	cd 16 42 	call $4216	call $0000
2582	3e 5d 	ld a,$5d	ld a,$00
2584	cd 86 41 	call $4186	call $0000
2587	3e 20 	ld a,$20	ld a,$00
2589	c3 86 41 	jp $4186	jp $0000
258c	cd c0 18 	call $18c0	call $0000
258f	3e 0d 	ld a,$0d	ld a,$00
2591	12 	ld (de),a	ld (de),a
2592	21 00 53 	ld hl,$5300	ld hl,$0000
2595	cd 37 0a 	call $0a37	call $0000
2598	18 83 	jr $-$7b	jr $-$00
259a	fe cb 	cp $cb	cp $00
259c	28 17 	jr z,$+$19	jr z,$+$00
259e	fe c5 	cp $c5	cp $00
25a0	28 21 	jr z,$+$23	jr z,$+$00
25a2	fe c6 	cp $c6	cp $00
25a4	ca 89 0f 	jp z,$0f89	jp z,$0000
25a7	fe c7 	cp $c7	cp $00
25a9	ca 72 0f 	jp z,$0f72	jp z,$0000
25ac	c3 64 26 	jp $2664	jp $0000
25af	fd e5 	push iy	push iy
25b1	e1 	pop hl	pop hl
25b2	cd 37 0a 	call $0a37	call $0000
25b5	fd e5 	push iy	push iy
25b7	e1 	pop hl	pop hl
25b8	3e 0d 	ld a,$0d	ld a,$00
25ba	47 	ld b,a	ld b,a
25bb	ed b1 	cpir	cpir
25bd	e5 	push hl	push hl
25be	fd e1 	pop iy	pop iy
25c0	c3 08 25 	jp $2508	jp $0000
25c3	cd b7 18 	call $18b7	call $0000
25c6	d9 	exx	exx
25c7	e5 	push hl	push hl
25c8	d9 	exx	exx
25c9	cd 26 21 	call $2126	call $0000
25cc	cd c0 18 	call $18c0	call $0000
25cf	e1 	pop hl	pop hl
25d0	af 	xor a	xor a
25d1	12 	ld (de),a	ld (de),a
25d2	7d 	ld a,l	ld a,l
25d3	21 00 53 	ld hl,$5300	ld hl,$0000
25d6	11 00 54 	ld de,$5400	ld de,$0000
25d9	d5 	push de	push de
25da	01 00 01 	ld bc,$0100	ld bc,$0000
25dd	ed b0 	ldir	ldir
25df	c3 d9 3f 	jp $3fd9	jp $0000
25e2	cd 67 42 	call $4267	call $0000
25e5	20 0b 	jr nz,$+$0d	jr nz,$+$00
25e7	f5 	push af	push af
25e8	e5 	push hl	push hl
25e9	cd 26 21 	call $2126	call $0000
25ec	cd 8f 45 	call $458f	call $0000
25ef	cd 67 42 	call $4267	call $0000
25f2	20 6d 	jr nz,$+$6f	jr nz,$+$00
25f4	d1 	pop de	pop de
25f5	c1 	pop bc	pop bc
25f6	b8 	cp b	cp b
25f7	20 74 	jr nz,$+$76	jr nz,$+$00
25f9	e6 0f 	and $0f	and $00
25fb	28 70 	jr z,$+$72	jr z,$+$00
25fd	78 	ld a,b	ld a,b
25fe	e6 c0 	and $c0	and $00
2600	28 0a 	jr z,$+$0c	jr z,$+$00
2602	06 02 	ld b,$02	ld b,$00
2604	f2 0c 26 	jp p,$260c	jp p,$0000
2607	ea 0c 26 	jp pe,$260c	jp pe,$0000
260a	06 04 	ld b,$04	ld b,$00
260c	4e 	ld c,(hl)	ld c,(hl)
260d	1a 	ld a,(de)	ld a,(de)
260e	77 	ld (hl),a	ld (hl),a
260f	79 	ld a,c	ld a,c
2610	12 	ld (de),a	ld (de),a
2611	13 	inc de	inc de
2612	23 	inc hl	inc hl
2613	10 f7 	djnz $-$07	djnz $-$00
2615	18 28 	jr $+$2a	jr $+$00
2617	fe 2a 	cp $2a	cp $00
2619	28 94 	jr z,$-$6a	jr z,$-$00
261b	fe 3d 	cp $3d	cp $00
261d	28 71 	jr z,$+$73	jr z,$+$00
261f	fe 5b 	cp $5b	cp $00
2621	28 52 	jr z,$+$54	jr z,$+$00
2623	fd 2b 	dec iy	dec iy
2625	cd 33 32 	call $3233	call $0000
2628	ca 1d 25 	jp z,$251d	jp z,$0000
262b	38 37 	jr c,$+$39	jr c,$+$00
262d	f2 7f 21 	jp p,$217f	jp p,$0000
2630	ea 7f 21 	jp pe,$217f	jp pe,$0000
2633	7a 	ld a,d	ld a,d
2634	d5 	push de	push de
2635	e5 	push hl	push hl
2636	cd c0 18 	call $18c0	call $0000
2639	dd e1 	pop ix	pop ix
263b	e1 	pop hl	pop hl
263c	cd 9c 32 	call $329c	call $0000
263f	c3 1d 25 	jp $251d	jp $0000
2642	cd 67 42 	call $4267	call $0000
2645	20 1a 	jr nz,$+$1c	jr nz,$+$00
2647	47 	ld b,a	ld b,a
2648	e6 c0 	and $c0	and $00
264a	f2 6d 26 	jp p,$266d	jp p,$0000
264d	ea 6a 26 	jp pe,$266a	jp pe,$0000
2650	cb 40 	bit 0,b	bit 0,b
2652	28 19 	jr z,$+$1b	jr z,$+$00
2654	cd 8f 45 	call $458f	call $0000
2657	fe 2c 	cp $2c	cp $00
2659	c9 	ret	ret
265a	cd 67 42 	call $4267	call $0000
265d	c8 	ret z	ret z
265e	d2 51 42 	jp nc,$4251	jp nc,$0000
2661	3e 1a 	ld a,$1a	ld a,$00
2663	21 3e 10 	ld hl,$103e	ld hl,$0000
2666	21 3e 11 	ld hl,$113e	ld hl,$0000
2669	21 3e 0e 	ld hl,$0e3e	ld hl,$0000
266c	21 3e 06 	ld hl,$063e	ld hl,$0000
266f	c3 c8 3f 	jp $3fc8	jp $0000
2672	cd 5f 25 	call $255f	call $0000
2675	fd 22 f4 55 	ld ($55f4),iy	ld ($0000),iy
2679	cd 35 06 	call $0635	call $0000
267c	cd 9f 11 	call $119f	call $0000
267f	38 e3 	jr c,$-$1b	jr c,$-$00
2681	fe 0d 	cp $0d	cp $00
2683	28 ed 	jr z,$-$11	jr z,$-$00
2685	21 fe 55 	ld hl,$55fe	ld hl,$0000
2688	7e 	ld a,(hl)	ld a,(hl)
2689	e6 0f 	and $0f	and $00
268b	f6 30 	or $30	or $00
268d	77 	ld (hl),a	ld (hl),a
268e	18 af 	jr $-$4f	jr $-$00
2690	cd 86 17 	call $1786	call $0000
2693	08 	ex af,af'	ex af,af'
2694	87 	add a,a	add a,a
2695	7b 	ld a,e	ld a,e
2696	38 01 	jr c,$+$03	jr c,$+$00
2698	79 	ld a,c	ld a,c
2699	08 	ex af,af'	ex af,af'
269a	e5 	push hl	push hl
269b	d9 	exx	exx
269c	c1 	pop bc	pop bc
269d	eb 	ex de,hl	ex de,hl
269e	d9 	exx	exx
269f	c1 	pop bc	pop bc
26a0	21 6b 2a 	ld hl,$2a6b	ld hl,$0000
26a3	af 	xor a	xor a
26a4	ed 42 	sbc hl,bc	sbc hl,bc
26a6	28 0a 	jr z,$+$0c	jr z,$+$00
26a8	c5 	push bc	push bc
26a9	cd b5 34 	call $34b5	call $0000
26ac	20 f1 	jr nz,$-$0d	jr nz,$-$00
26ae	3e 07 	ld a,$07	ld a,$00
26b0	18 bd 	jr $-$41	jr $-$00
26b2	fd e1 	pop iy	pop iy
26b4	fd 22 f4 55 	ld ($55f4),iy	ld ($0000),iy
26b8	d9 	exx	exx
26b9	eb 	ex de,hl	ex de,hl
26ba	c5 	push bc	push bc
26bb	d9 	exx	exx
26bc	e1 	pop hl	pop hl
26bd	08 	ex af,af'	ex af,af'
26be	5f 	ld e,a	ld e,a
26bf	4f 	ld c,a	ld c,a
26c0	1f 	rra	rra
26c1	c9 	ret	ret
26c2	fd e5 	push iy	push iy
26c4	fe 21 	cp $21	cp $00
26c6	ca 93 27 	jp z,$2793	jp z,$0000
26c9	cd 34 43 	call $4334	call $0000
26cc	da 7d 27 	jp c,$277d	jp c,$0000
26cf	c4 c0 43 	call nz,$43c0	call nz,$0000
26d2	fd 7e 00 	ld a,(iy)	ld a,(iy)
26d5	fe 28 	cp $28	cp $00
26d7	c2 93 27 	jp nz,$2793	jp nz,$0000
26da	e5 	push hl	push hl
26db	dd e1 	pop ix	pop ix
26dd	7e 	ld a,(hl)	ld a,(hl)
26de	e6 fe 	and $fe	and $00
26e0	23 	inc hl	inc hl
26e1	b6 	or (hl)	or (hl)
26e2	c2 93 27 	jp nz,$2793	jp nz,$0000
26e5	c1 	pop bc	pop bc
26e6	7a 	ld a,d	ld a,d
26e7	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
26ea	e5 	push hl	push hl
26eb	dd e3 	ex (sp),ix	ex (sp),ix
26ed	e5 	push hl	push hl
26ee	f5 	push af	push af
26ef	11 01 00 	ld de,$0001	ld de,$0000
26f2	42 	ld b,d	ld b,d
26f3	fd 23 	inc iy	inc iy
26f5	c5 	push bc	push bc
26f6	d5 	push de	push de
26f7	dd e5 	push ix	push ix
26f9	cd b7 18 	call $18b7	call $0000
26fc	cb 7c 	bit 7,h	bit 7,h
26fe	20 7d 	jr nz,$+$7f	jr nz,$+$00
2700	d9 	exx	exx
2701	23 	inc hl	inc hl
2702	dd e1 	pop ix	pop ix
2704	dd 23 	inc ix	inc ix
2706	dd 75 00 	ld (ix),l	ld (ix),l
2709	dd 23 	inc ix	inc ix
270b	dd 74 00 	ld (ix),h	ld (ix),h
270e	c1 	pop bc	pop bc
270f	cd 41 37 	call $3741	call $0000
2712	38 6c 	jr c,$+$6e	jr c,$+$00
2714	eb 	ex de,hl	ex de,hl
2715	c1 	pop bc	pop bc
2716	04 	inc b	inc b
2717	fd 7e 00 	ld a,(iy)	ld a,(iy)
271a	fe 2c 	cp $2c	cp $00
271c	28 d5 	jr z,$-$29	jr z,$-$00
271e	dd 23 	inc ix	inc ix
2720	cd 32 21 	call $2132	call $0000
2723	f1 	pop af	pop af
2724	cd 31 37 	call $3731	call $0000
2727	38 57 	jr c,$+$59	jr c,$+$00
2729	e1 	pop hl	pop hl
272a	70 	ld (hl),b	ld (hl),b
272b	dd e3 	ex (sp),ix	ex (sp),ix
272d	e1 	pop hl	pop hl
272e	e6 80 	and $80	and $00
2730	dd b6 00 	or (ix)	or (ix)
2733	e5 	push hl	push hl
2734	24 	inc h	inc h
2735	19 	add hl,de	add hl,de
2736	38 48 	jr c,$+$4a	jr c,$+$00
2738	ed 72 	sbc hl,sp	sbc hl,sp
273a	30 44 	jr nc,$+$46	jr nc,$+$00
273c	e1 	pop hl	pop hl
273d	e5 	push hl	push hl
273e	ed 4b e0 55 	ld bc,($55e0)	ld bc,($0000)
2742	b7 	or a	or a
2743	ed 42 	sbc hl,bc	sbc hl,bc
2745	44 	ld b,h	ld b,h
2746	4d 	ld c,l	ld c,l
2747	e1 	pop hl	pop hl
2748	ed 42 	sbc hl,bc	sbc hl,bc
274a	cb 47 	bit 0,a	bit 0,a
274c	28 12 	jr z,$+$14	jr z,$+$00
274e	21 00 00 	ld hl,$0000	ld hl,$0000
2751	ed 52 	sbc hl,de	sbc hl,de
2753	b7 	or a	or a
2754	ed 42 	sbc hl,bc	sbc hl,bc
2756	39 	add hl,sp	add hl,sp
2757	28 07 	jr z,$+$09	jr z,$+$00
2759	f9 	ld sp,hl	ld sp,hl
275a	d5 	push de	push de
275b	c5 	push bc	push bc
275c	f5 	push af	push af
275d	cd 60 27 	call $2760	call $0000
2760	dd 75 00 	ld (ix),l	ld (ix),l
2763	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
2766	78 	ld a,b	ld a,b
2767	b1 	or c	or c
2768	28 09 	jr z,$+$0b	jr z,$+$00
276a	d5 	push de	push de
276b	eb 	ex de,hl	ex de,hl
276c	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
276f	ed b0 	ldir	ldir
2771	eb 	ex de,hl	ex de,hl
2772	d1 	pop de	pop de
2773	7a 	ld a,d	ld a,d
2774	b3 	or e	or e
2775	28 0e 	jr z,$+$10	jr z,$+$00
2777	36 00 	ld (hl),$00	ld (hl),$00
2779	23 	inc hl	inc hl
277a	1b 	dec de	dec de
277b	18 f6 	jr $-$08	jr $-$00
277d	3e 0a 	ld a,$0a	ld a,$00
277f	21 3e 0b 	ld hl,$0b3e	ld hl,$0000
2782	c3 c8 3f 	jp $3fc8	jp $0000
2785	ed 72 	sbc hl,sp	sbc hl,sp
2787	30 04 	jr nc,$+$06	jr nc,$+$00
2789	39 	add hl,sp	add hl,sp
278a	22 e0 55 	ld ($55e0),hl	ld ($0000),hl
278d	cd 84 45 	call $4584	call $0000
2790	c3 c2 26 	jp $26c2	jp $0000
2793	fd e1 	pop iy	pop iy
2795	cd 5a 26 	call $265a	call $0000
2798	b7 	or a	or a
2799	28 e2 	jr z,$-$1c	jr z,$-$00
279b	fa 7d 27 	jp m,$277d	jp m,$0000
279e	cb 77 	bit 6,a	bit 6,a
27a0	20 db 	jr nz,$-$23	jr nz,$-$00
27a2	47 	ld b,a	ld b,a
27a3	cd 8f 45 	call $458f	call $0000
27a6	fe ea 	cp $ea	cp $00
27a8	3e 00 	ld a,$00	ld a,$00
27aa	20 03 	jr nz,$+$05	jr nz,$+$00
27ac	fd 23 	inc iy	inc iy
27ae	3c 	inc a	inc a
27af	f5 	push af	push af
27b0	78 	ld a,b	ld a,b
27b1	d9 	exx	exx
27b2	21 00 00 	ld hl,$0000	ld hl,$0000
27b5	4c 	ld c,h	ld c,h
27b6	cd 74 32 	call $3274	call $0000
27b9	dd e5 	push ix	push ix
27bb	cd b7 18 	call $18b7	call $0000
27be	dd e1 	pop ix	pop ix
27c0	d9 	exx	exx
27c1	23 	inc hl	inc hl
27c2	eb 	ex de,hl	ex de,hl
27c3	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
27c6	f1 	pop af	pop af
27c7	c3 33 27 	jp $2733	jp $0000
27ca	fe 23 	cp $23	cp $00
27cc	20 64 	jr nz,$+$66	jr nz,$+$00
27ce	cd 5f 37 	call $375f	call $0000
27d1	cd 84 45 	call $4584	call $0000
27d4	d5 	push de	push de
27d5	cd 86 17 	call $1786	call $0000
27d8	08 	ex af,af'	ex af,af'
27d9	fa f9 27 	jp m,$27f9	jp m,$0000
27dc	d1 	pop de	pop de
27dd	c5 	push bc	push bc
27de	d9 	exx	exx
27df	7d 	ld a,l	ld a,l
27e0	d9 	exx	exx
27e1	cd 65 06 	call $0665	call $0000
27e4	d9 	exx	exx
27e5	7c 	ld a,h	ld a,h
27e6	d9 	exx	exx
27e7	cd 65 06 	call $0665	call $0000
27ea	7d 	ld a,l	ld a,l
27eb	cd 65 06 	call $0665	call $0000
27ee	7c 	ld a,h	ld a,h
27ef	cd 65 06 	call $0665	call $0000
27f2	c1 	pop bc	pop bc
27f3	79 	ld a,c	ld a,c
27f4	cd 65 06 	call $0665	call $0000
27f7	18 d8 	jr $-$26	jr $-$00
27f9	4b 	ld c,e	ld c,e
27fa	d1 	pop de	pop de
27fb	21 00 53 	ld hl,$5300	ld hl,$0000
27fe	0c 	inc c	inc c
27ff	0d 	dec c	dec c
2800	28 09 	jr z,$+$0b	jr z,$+$00
2802	7e 	ld a,(hl)	ld a,(hl)
2803	23 	inc hl	inc hl
2804	c5 	push bc	push bc
2805	cd 65 06 	call $0665	call $0000
2808	c1 	pop bc	pop bc
2809	18 f4 	jr $-$0a	jr $-$00
280b	3e 0d 	ld a,$0d	ld a,$00
280d	cd 65 06 	call $0665	call $0000
2810	18 bf 	jr $-$3f	jr $-$00
2812	06 02 	ld b,$02	ld b,$00
2814	18 22 	jr $+$24	jr $+$00
2816	01 00 01 	ld bc,$0100	ld bc,$0000
2819	18 1d 	jr $+$1f	jr $+$00
281b	21 00 55 	ld hl,$5500	ld hl,$0000
281e	af 	xor a	xor a
281f	be 	cp (hl)	cp (hl)
2820	28 10 	jr z,$+$12	jr z,$+$00
2822	3a fb 55 	ld a,($55fb)	ld a,($0000)
2825	b7 	or a	or a
2826	28 0a 	jr z,$+$0c	jr z,$+$00
2828	96 	sub (hl)	sub (hl)
2829	28 07 	jr z,$+$09	jr z,$+$00
282b	30 fb 	jr nc,$-$03	jr nc,$-$00
282d	ed 44 	neg	neg
282f	cd 27 36 	call $3627	call $0000
2832	3a 00 55 	ld a,($5500)	ld a,($0000)
2835	4f 	ld c,a	ld c,a
2836	06 00 	ld b,$00	ld b,$00
2838	cd ba 35 	call $35ba	call $0000
283b	28 38 	jr z,$+$3a	jr z,$+$00
283d	cb 80 	res 0,b	res 0,b
283f	fd 23 	inc iy	inc iy
2841	fe 7e 	cp $7e	cp $00
2843	28 cd 	jr z,$-$31	jr z,$-$00
2845	fe 3b 	cp $3b	cp $00
2847	28 cd 	jr z,$-$31	jr z,$-$00
2849	fe 2c 	cp $2c	cp $00
284b	28 ce 	jr z,$-$30	jr z,$-$00
284d	cd e0 35 	call $35e0	call $0000
2850	28 e6 	jr z,$-$18	jr z,$-$00
2852	fd 2b 	dec iy	dec iy
2854	c5 	push bc	push bc
2855	cd 86 17 	call $1786	call $0000
2858	08 	ex af,af'	ex af,af'
2859	fa 6f 28 	jp m,$286f	jp m,$0000
285c	d1 	pop de	pop de
285d	d5 	push de	push de
285e	cb 4a 	bit 1,d	bit 1,d
2860	f5 	push af	push af
2861	cc 54 20 	call z,$2054	call z,$0000
2864	f1 	pop af	pop af
2865	c4 11 20 	call nz,$2011	call nz,$0000
2868	c1 	pop bc	pop bc
2869	c5 	push bc	push bc
286a	79 	ld a,c	ld a,c
286b	93 	sub e	sub e
286c	d4 27 36 	call nc,$3627	call nc,$0000
286f	c1 	pop bc	pop bc
2870	cd 35 36 	call $3635	call $0000
2873	18 c3 	jr $-$3b	jr $-$00
2875	cb 40 	bit 0,b	bit 0,b
2877	cc 7f 41 	call z,$417f	call z,$0000
287a	18 3f 	jr $+$41	jr $+$00
287c	fd 23 	inc iy	inc iy
287e	cd 8f 45 	call $458f	call $0000
2881	21 00 00 	ld hl,$0000	ld hl,$0000
2884	fe ea 	cp $ea	cp $00
2886	20 1d 	jr nz,$+$1f	jr nz,$+$00
2888	fd 23 	inc iy	inc iy
288a	2a ea 55 	ld hl,($55ea)	ld hl,($0000)
288d	e5 	push hl	push hl
288e	2a ec 55 	ld hl,($55ec)	ld hl,($0000)
2891	e5 	push hl	push hl
2892	21 00 04 	ld hl,$0400	ld hl,$0000
2895	e5 	push hl	push hl
2896	21 ea 55 	ld hl,$55ea	ld hl,$0000
2899	e5 	push hl	push hl
289a	21 ae 35 	ld hl,$35ae	ld hl,$0000
289d	e5 	push hl	push hl
289e	21 00 00 	ld hl,$0000	ld hl,$0000
28a1	39 	add hl,sp	add hl,sp
28a2	cd 8f 45 	call $458f	call $0000
28a5	22 ec 55 	ld ($55ec),hl	ld ($0000),hl
28a8	fd 22 ea 55 	ld ($55ea),iy	ld ($0000),iy
28ac	fe 87 	cp $87	cp $00
28ae	c2 b5 25 	jp nz,$25b5	jp nz,$0000
28b1	fd 23 	inc iy	inc iy
28b3	ed 62 	sbc hl,hl	sbc hl,hl
28b5	22 ec 55 	ld ($55ec),hl	ld ($0000),hl
28b8	22 ea 55 	ld ($55ea),hl	ld ($0000),hl
28bb	c3 1d 25 	jp $251d	jp $0000
28be	cd ba 35 	call $35ba	call $0000
28c1	ca 6e 0f 	jp z,$0f6e	jp z,$0000
28c4	fe 85 	cp $85	cp $00
28c6	28 b4 	jr z,$-$4a	jr z,$-$00
28c8	cd b7 18 	call $18b7	call $0000
28cb	fd 7e 00 	ld a,(iy)	ld a,(iy)
28ce	fd 23 	inc iy	inc iy
28d0	1e 2c 	ld e,$2c	ld e,$00
28d2	fe e5 	cp $e5	cp $00
28d4	28 0b 	jr z,$+$0d	jr z,$+$00
28d6	fe e4 	cp $e4	cp $00
28d8	28 07 	jr z,$+$09	jr z,$+$00
28da	1e f2 	ld e,$f2	ld e,$00
28dc	bb 	cp e	cp e
28dd	3e 27 	ld a,$27	ld a,$00
28df	20 4f 	jr nz,$+$51	jr nz,$+$00
28e1	57 	ld d,a	ld d,a
28e2	d9 	exx	exx
28e3	e5 	push hl	push hl
28e4	d9 	exx	exx
28e5	c1 	pop bc	pop bc
28e6	78 	ld a,b	ld a,b
28e7	b4 	or h	or h
28e8	b5 	or l	or l
28e9	20 32 	jr nz,$+$34	jr nz,$+$00
28eb	b1 	or c	or c
28ec	28 2f 	jr z,$+$31	jr z,$+$00
28ee	0d 	dec c	dec c
28ef	28 11 	jr z,$+$13	jr z,$+$00
28f1	cd ba 35 	call $35ba	call $0000
28f4	28 27 	jr z,$+$29	jr z,$+$00
28f6	fd 23 	inc iy	inc iy
28f8	fe 22 	cp $22	cp $00
28fa	28 1a 	jr z,$+$1c	jr z,$+$00
28fc	bb 	cp e	cp e
28fd	20 f2 	jr nz,$-$0c	jr nz,$-$00
28ff	0d 	dec c	dec c
2900	20 ef 	jr nz,$-$0f	jr nz,$-$00
2902	7b 	ld a,e	ld a,e
2903	fe f2 	cp $f2	cp $00
2905	28 2c 	jr z,$+$2e	jr z,$+$00
2907	d5 	push de	push de
2908	cd e4 18 	call $18e4	call $0000
290b	d1 	pop de	pop de
290c	7a 	ld a,d	ld a,d
290d	fe e5 	cp $e5	cp $00
290f	28 30 	jr z,$+$32	jr z,$+$00
2911	cd c6 35 	call $35c6	call $0000
2914	18 3c 	jr $+$3e	jr $+$00
2916	cd 1d 37 	call $371d	call $0000
2919	fd 23 	inc iy	inc iy
291b	18 d4 	jr $-$2a	jr $-$00
291d	fd 7e 00 	ld a,(iy)	ld a,(iy)
2920	fd 23 	inc iy	inc iy
2922	fe 8b 	cp $8b	cp $00
2924	ca 66 2d 	jp z,$2d66	jp z,$0000
2927	fe 0d 	cp $0d	cp $00
2929	20 f2 	jr nz,$-$0c	jr nz,$-$00
292b	3e 28 	ld a,$28	ld a,$00
292d	21 3e 22 	ld hl,$223e	ld hl,$0000
2930	c3 c8 3f 	jp $3fc8	jp $0000
2933	3e ee 	ld a,$ee	ld a,$00
2935	c3 6b 2a 	jp $2a6b	jp $0000
2938	cd e4 18 	call $18e4	call $0000
293b	cd ba 35 	call $35ba	call $0000
293e	c2 64 26 	jp nz,$2664	jp nz,$0000
2941	d9 	exx	exx
2942	cd c7 41 	call $41c7	call $0000
2945	e5 	push hl	push hl
2946	fd e1 	pop iy	pop iy
2948	ca 08 25 	jp z,$2508	jp z,$0000
294b	3e 29 	ld a,$29	ld a,$00
294d	18 e1 	jr $-$1d	jr $-$00
294f	cd e4 18 	call $18e4	call $0000
2952	fd e5 	push iy	push iy
2954	cd 0a 33 	call $330a	call $0000
2957	cd 3b 29 	call $293b	call $0000
295a	d1 	pop de	pop de
295b	21 5a 29 	ld hl,$295a	ld hl,$0000
295e	b7 	or a	or a
295f	ed 52 	sbc hl,de	sbc hl,de
2961	fd e1 	pop iy	pop iy
2963	28 30 	jr z,$+$32	jr z,$+$00
2965	3e 26 	ld a,$26	ld a,$00
2967	18 c7 	jr $-$37	jr $-$00
2969	fd e5 	push iy	push iy
296b	cd 0a 33 	call $330a	call $0000
296e	cd 1d 25 	call $251d	call $0000
2971	c1 	pop bc	pop bc
2972	c5 	push bc	push bc
2973	21 71 29 	ld hl,$2971	ld hl,$0000
2976	b7 	or a	or a
2977	ed 42 	sbc hl,bc	sbc hl,bc
2979	28 0b 	jr z,$+$0d	jr z,$+$00
297b	3e 03 	ld a,$03	ld a,$00
297d	cd b5 34 	call $34b5	call $0000
2980	20 ef 	jr nz,$-$0f	jr nz,$-$00
2982	3e 2b 	ld a,$2b	ld a,$00
2984	18 aa 	jr $-$54	jr $-$00
2986	cd b7 18 	call $18b7	call $0000
2989	cd dd 1f 	call $1fdd	call $0000
298c	c1 	pop bc	pop bc
298d	d1 	pop de	pop de
298e	20 05 	jr nz,$+$07	jr nz,$+$00
2990	d5 	push de	push de
2991	c5 	push bc	push bc
2992	d5 	push de	push de
2993	fd e1 	pop iy	pop iy
2995	c3 1d 25 	jp $251d	jp $0000
2998	cd 33 32 	call $3233	call $0000
299b	20 91 	jr nz,$-$6d	jr nz,$-$00
299d	f5 	push af	push af
299e	fd 7e 00 	ld a,(iy)	ld a,(iy)
29a1	fe b8 	cp $b8	cp $00
29a3	3e 24 	ld a,$24	ld a,$00
29a5	20 89 	jr nz,$-$75	jr nz,$-$00
29a7	fd 23 	inc iy	inc iy
29a9	dd e5 	push ix	push ix
29ab	cd b0 18 	call $18b0	call $0000
29ae	dd e1 	pop ix	pop ix
29b0	f1 	pop af	pop af
29b1	47 	ld b,a	ld b,a
29b2	c5 	push bc	push bc
29b3	e5 	push hl	push hl
29b4	21 00 00 	ld hl,$0000	ld hl,$0000
29b7	4c 	ld c,h	ld c,h
29b8	d9 	exx	exx
29b9	e5 	push hl	push hl
29ba	21 01 00 	ld hl,$0001	ld hl,$0000
29bd	d9 	exx	exx
29be	fd 7e 00 	ld a,(iy)	ld a,(iy)
29c1	fe 88 	cp $88	cp $00
29c3	20 09 	jr nz,$+$0b	jr nz,$+$00
29c5	fd 23 	inc iy	inc iy
29c7	dd e5 	push ix	push ix
29c9	cd b0 18 	call $18b0	call $0000
29cc	dd e1 	pop ix	pop ix
29ce	06 08 	ld b,$08	ld b,$00
29d0	cb 7c 	bit 7,h	bit 7,h
29d2	20 02 	jr nz,$+$04	jr nz,$+$00
29d4	06 0c 	ld b,$0c	ld b,$00
29d6	c5 	push bc	push bc
29d7	e5 	push hl	push hl
29d8	d9 	exx	exx
29d9	e5 	push hl	push hl
29da	d9 	exx	exx
29db	fd e5 	push iy	push iy
29dd	dd e5 	push ix	push ix
29df	cd 0a 33 	call $330a	call $0000
29e2	cd 1d 25 	call $251d	call $0000
29e5	c1 	pop bc	pop bc
29e6	21 e5 29 	ld hl,$29e5	ld hl,$0000
29e9	b7 	or a	or a
29ea	ed 42 	sbc hl,bc	sbc hl,bc
29ec	28 0c 	jr z,$+$0e	jr z,$+$00
29ee	c5 	push bc	push bc
29ef	3e 03 	ld a,$03	ld a,$00
29f1	cd b5 34 	call $34b5	call $0000
29f4	20 ef 	jr nz,$-$0f	jr nz,$-$00
29f6	3e 20 	ld a,$20	ld a,$00
29f8	18 6a 	jr $+$6c	jr $+$00
29fa	cd ba 35 	call $35ba	call $0000
29fd	e1 	pop hl	pop hl
29fe	e5 	push hl	push hl
29ff	c5 	push bc	push bc
2a00	e5 	push hl	push hl
2a01	c4 67 42 	call nz,$4267	call nz,$0000
2a04	d1 	pop de	pop de
2a05	eb 	ex de,hl	ex de,hl
2a06	b7 	or a	or a
2a07	ed 52 	sbc hl,de	sbc hl,de
2a09	20 47 	jr nz,$+$49	jr nz,$+$00
2a0b	d5 	push de	push de
2a0c	dd 21 08 00 	ld ix,$0008	ld ix,$0000
2a10	dd 39 	add ix,sp	add ix,sp
2a12	cd 75 1a 	call $1a75	call $0000
2a15	dd 7e 0b 	ld a,(ix+$0b)	ld a,(ix+$00)
2a18	dd e1 	pop ix	pop ix
2a1a	cd a9 19 	call $19a9	call $0000
2a1d	f5 	push af	push af
2a1e	3e 0b 	ld a,$0b	ld a,$00
2a20	cd 99 45 	call $4599	call $0000
2a23	38 3f 	jr c,$+$41	jr c,$+$00
2a25	f1 	pop af	pop af
2a26	cd 74 32 	call $3274	call $0000
2a29	dd 21 0c 00 	ld ix,$000c	ld ix,$0000
2a2d	dd 39 	add ix,sp	add ix,sp
2a2f	cd 75 1a 	call $1a75	call $0000
2a32	dd 7e ff 	ld a,(ix-$01)	ld a,(ix-$00)
2a35	cd 99 45 	call $4599	call $0000
2a38	38 2a 	jr c,$+$2c	jr c,$+$00
2a3a	24 	inc h	inc h
2a3b	20 0a 	jr nz,$+$0c	jr nz,$+$00
2a3d	21 12 00 	ld hl,$0012	ld hl,$0000
2a40	39 	add hl,sp	add hl,sp
2a41	f9 	ld sp,hl	ld sp,hl
2a42	cd 84 45 	call $4584	call $0000
2a45	18 9e 	jr $-$60	jr $-$00
2a47	c1 	pop bc	pop bc
2a48	d1 	pop de	pop de
2a49	fd e1 	pop iy	pop iy
2a4b	fd e5 	push iy	push iy
2a4d	d5 	push de	push de
2a4e	c5 	push bc	push bc
2a4f	c3 1d 25 	jp $251d	jp $0000
2a52	21 12 00 	ld hl,$0012	ld hl,$0000
2a55	39 	add hl,sp	add hl,sp
2a56	f9 	ld sp,hl	ld sp,hl
2a57	c1 	pop bc	pop bc
2a58	21 e5 29 	ld hl,$29e5	ld hl,$0000
2a5b	ed 42 	sbc hl,bc	sbc hl,bc
2a5d	e1 	pop hl	pop hl
2a5e	e5 	push hl	push hl
2a5f	c5 	push bc	push bc
2a60	28 a5 	jr z,$-$59	jr z,$-$00
2a62	3e 21 	ld a,$21	ld a,$00
2a64	c3 c8 3f 	jp $3fc8	jp $0000
2a67	f5 	push af	push af
2a68	cd 6f 2a 	call $2a6f	call $0000
2a6b	f5 	push af	push af
2a6c	cd 6f 2a 	call $2a6f	call $0000
2a6f	cd 0a 33 	call $330a	call $0000
2a72	fd 2b 	dec iy	dec iy
2a74	fd e5 	push iy	push iy
2a76	cd 1a 43 	call $431a	call $0000
2a79	c1 	pop bc	pop bc
2a7a	28 39 	jr z,$+$3b	jr z,$+$00
2a7c	3e 1e 	ld a,$1e	ld a,$00
2a7e	38 e4 	jr c,$-$1a	jr c,$-$00
2a80	c5 	push bc	push bc
2a81	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
2a84	3e dd 	ld a,$dd	ld a,$00
2a86	cd 7f 36 	call $367f	call $0000
2a89	38 21 	jr c,$+$23	jr c,$+$00
2a8b	e5 	push hl	push hl
2a8c	fd e1 	pop iy	pop iy
2a8e	fd 23 	inc iy	inc iy
2a90	cd 8f 45 	call $458f	call $0000
2a93	cd 1a 43 	call $431a	call $0000
2a96	fd e5 	push iy	push iy
2a98	d1 	pop de	pop de
2a99	38 09 	jr c,$+$0b	jr c,$+$00
2a9b	c4 c0 43 	call nz,$43c0	call nz,$0000
2a9e	fd e5 	push iy	push iy
2aa0	d1 	pop de	pop de
2aa1	73 	ld (hl),e	ld (hl),e
2aa2	23 	inc hl	inc hl
2aa3	72 	ld (hl),d	ld (hl),d
2aa4	eb 	ex de,hl	ex de,hl
2aa5	3e 0d 	ld a,$0d	ld a,$00
2aa7	47 	ld b,a	ld b,a
2aa8	ed b1 	cpir	cpir
2aaa	18 d8 	jr $-$26	jr $-$00
2aac	fd e1 	pop iy	pop iy
2aae	cd 1a 43 	call $431a	call $0000
2ab1	3e 1d 	ld a,$1d	ld a,$00
2ab3	20 af 	jr nz,$-$4f	jr nz,$-$00
2ab5	5e 	ld e,(hl)	ld e,(hl)
2ab6	23 	inc hl	inc hl
2ab7	56 	ld d,(hl)	ld d,(hl)
2ab8	21 02 00 	ld hl,$0002	ld hl,$0000
2abb	39 	add hl,sp	add hl,sp
2abc	cd 8f 45 	call $458f	call $0000
2abf	d5 	push de	push de
2ac0	fd e3 	ex (sp),iy	ex (sp),iy
2ac2	d1 	pop de	pop de
2ac3	fe 28 	cp $28	cp $00
2ac5	c2 69 2b 	jp nz,$2b69	jp nz,$0000
2ac8	cd 8f 45 	call $458f	call $0000
2acb	fe 28 	cp $28	cp $00
2acd	c2 64 26 	jp nz,$2664	jp nz,$0000
2ad0	fd e5 	push iy	push iy
2ad2	c1 	pop bc	pop bc
2ad3	d9 	exx	exx
2ad4	08 	ex af,af'	ex af,af'
2ad5	af 	xor a	xor a
2ad6	08 	ex af,af'	ex af,af'
2ad7	cd 42 35 	call $3542	call $0000
2ada	08 	ex af,af'	ex af,af'
2adb	b7 	or a	or a
2adc	28 16 	jr z,$+$18	jr z,$+$00
2ade	e5 	push hl	push hl
2adf	ed 44 	neg	neg
2ae1	6f 	ld l,a	ld l,a
2ae2	ed 44 	neg	neg
2ae4	26 ff 	ld h,$ff	ld h,$00
2ae6	29 	add hl,hl	add hl,hl
2ae7	29 	add hl,hl	add hl,hl
2ae8	29 	add hl,hl	add hl,hl
2ae9	e3 	ex (sp),hl	ex (sp),hl
2aea	dd e1 	pop ix	pop ix
2aec	dd 39 	add ix,sp	add ix,sp
2aee	dd f9 	ld sp,ix	ld sp,ix
2af0	f5 	push af	push af
2af1	cd f4 2a 	call $2af4	call $0000
2af4	08 	ex af,af'	ex af,af'
2af5	cd 32 21 	call $2132	call $0000
2af8	d9 	exx	exx
2af9	c5 	push bc	push bc
2afa	fd e1 	pop iy	pop iy
2afc	e5 	push hl	push hl
2afd	cd 51 33 	call $3351	call $0000
2b00	e1 	pop hl	pop hl
2b01	e3 	ex (sp),hl	ex (sp),hl
2b02	b7 	or a	or a
2b03	01 f4 2a 	ld bc,$2af4	ld bc,$0000
2b06	ed 42 	sbc hl,bc	sbc hl,bc
2b08	09 	add hl,bc	add hl,bc
2b09	e3 	ex (sp),hl	ex (sp),hl
2b0a	20 5d 	jr nz,$+$5f	jr nz,$+$00
2b0c	d5 	push de	push de
2b0d	e5 	push hl	push hl
2b0e	21 07 00 	ld hl,$0007	ld hl,$0000
2b11	39 	add hl,sp	add hl,sp
2b12	7e 	ld a,(hl)	ld a,(hl)
2b13	23 	inc hl	inc hl
2b14	e5 	push hl	push hl
2b15	dd e1 	pop ix	pop ix
2b17	5f 	ld e,a	ld e,a
2b18	16 00 	ld d,$00	ld d,$00
2b1a	eb 	ex de,hl	ex de,hl
2b1b	29 	add hl,hl	add hl,hl
2b1c	29 	add hl,hl	add hl,hl
2b1d	29 	add hl,hl	add hl,hl
2b1e	19 	add hl,de	add hl,de
2b1f	23 	inc hl	inc hl
2b20	23 	inc hl	inc hl
2b21	5e 	ld e,(hl)	ld e,(hl)
2b22	23 	inc hl	inc hl
2b23	56 	ld d,(hl)	ld d,(hl)
2b24	23 	inc hl	inc hl
2b25	4e 	ld c,(hl)	ld c,(hl)
2b26	23 	inc hl	inc hl
2b27	46 	ld b,(hl)	ld b,(hl)
2b28	c5 	push bc	push bc
2b29	e5 	push hl	push hl
2b2a	dd e5 	push ix	push ix
2b2c	47 	ld b,a	ld b,a
2b2d	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
2b30	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
2b33	b7 	or a	or a
2b34	ed 52 	sbc hl,de	sbc hl,de
2b36	28 09 	jr z,$+$0b	jr z,$+$00
2b38	eb 	ex de,hl	ex de,hl
2b39	11 08 00 	ld de,$0008	ld de,$0000
2b3c	dd 19 	add ix,de	add ix,de
2b3e	eb 	ex de,hl	ex de,hl
2b3f	10 ec 	djnz $-$12	djnz $-$00
2b41	dd e1 	pop ix	pop ix
2b43	e1 	pop hl	pop hl
2b44	c1 	pop bc	pop bc
2b45	20 02 	jr nz,$+$04	jr nz,$+$00
2b47	cb e6 	set 4,(hl)	set 4,(hl)
2b49	11 03 00 	ld de,$0003	ld de,$0000
2b4c	cb 70 	bit 6,b	bit 6,b
2b4e	20 08 	jr nz,$+$0a	jr nz,$+$00
2b50	1e 05 	ld e,$05	ld e,$00
2b52	cb 78 	bit 7,b	bit 7,b
2b54	28 02 	jr z,$+$04	jr z,$+$00
2b56	59 	ld e,c	ld e,c
2b57	13 	inc de	inc de
2b58	19 	add hl,de	add hl,de
2b59	4e 	ld c,(hl)	ld c,(hl)
2b5a	23 	inc hl	inc hl
2b5b	46 	ld b,(hl)	ld b,(hl)
2b5c	23 	inc hl	inc hl
2b5d	eb 	ex de,hl	ex de,hl
2b5e	21 ae 35 	ld hl,$35ae	ld hl,$0000
2b61	b7 	or a	or a
2b62	ed 42 	sbc hl,bc	sbc hl,bc
2b64	eb 	ex de,hl	ex de,hl
2b65	28 ba 	jr z,$-$44	jr z,$-$00
2b67	e1 	pop hl	pop hl
2b68	d1 	pop de	pop de
2b69	73 	ld (hl),e	ld (hl),e
2b6a	23 	inc hl	inc hl
2b6b	7e 	ld a,(hl)	ld a,(hl)
2b6c	72 	ld (hl),d	ld (hl),d
2b6d	fe ee 	cp $ee	cp $00
2b6f	20 0c 	jr nz,$+$0e	jr nz,$+$00
2b71	d5 	push de	push de
2b72	fd e3 	ex (sp),iy	ex (sp),iy
2b74	cd c6 35 	call $35c6	call $0000
2b77	fd e3 	ex (sp),iy	ex (sp),iy
2b79	d1 	pop de	pop de
2b7a	72 	ld (hl),d	ld (hl),d
2b7b	2b 	dec hl	dec hl
2b7c	73 	ld (hl),e	ld (hl),e
2b7d	c3 1d 25 	jp $251d	jp $0000
2b80	fd 23 	inc iy	inc iy
2b82	18 f9 	jr $-$05	jr $-$00
2b84	fd 23 	inc iy	inc iy
2b86	2a f0 55 	ld hl,($55f0)	ld hl,($0000)
2b89	e5 	push hl	push hl
2b8a	3e 40 	ld a,$40	ld a,$00
2b8c	f5 	push af	push af
2b8d	21 f0 55 	ld hl,$55f0	ld hl,$0000
2b90	e5 	push hl	push hl
2b91	21 ae 35 	ld hl,$35ae	ld hl,$0000
2b94	e5 	push hl	push hl
2b95	18 e6 	jr $-$18	jr $-$00
2b97	fe 85 	cp $85	cp $00
2b99	28 e5 	jr z,$-$19	jr z,$-$00
2b9b	fe dc 	cp $dc	cp $00
2b9d	28 e5 	jr z,$-$19	jr z,$-$00
2b9f	c1 	pop bc	pop bc
2ba0	c5 	push bc	push bc
2ba1	21 6b 2a 	ld hl,$2a6b	ld hl,$0000
2ba4	b7 	or a	or a
2ba5	ed 42 	sbc hl,bc	sbc hl,bc
2ba7	28 23 	jr z,$+$25	jr z,$+$00
2ba9	21 6f 2a 	ld hl,$2a6f	ld hl,$0000
2bac	b7 	or a	or a
2bad	ed 42 	sbc hl,bc	sbc hl,bc
2baf	28 1b 	jr z,$+$1d	jr z,$+$00
2bb1	21 ae 35 	ld hl,$35ae	ld hl,$0000
2bb4	b7 	or a	or a
2bb5	ed 42 	sbc hl,bc	sbc hl,bc
2bb7	28 13 	jr z,$+$15	jr z,$+$00
2bb9	21 60 27 	ld hl,$2760	ld hl,$0000
2bbc	b7 	or a	or a
2bbd	ed 42 	sbc hl,bc	sbc hl,bc
2bbf	28 0b 	jr z,$+$0d	jr z,$+$00
2bc1	21 f4 2a 	ld hl,$2af4	ld hl,$0000
2bc4	b7 	or a	or a
2bc5	ed 42 	sbc hl,bc	sbc hl,bc
2bc7	3e 0c 	ld a,$0c	ld a,$00
2bc9	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
2bcc	fd e5 	push iy	push iy
2bce	c1 	pop bc	pop bc
2bcf	d9 	exx	exx
2bd0	fd 2b 	dec iy	dec iy
2bd2	cd 42 35 	call $3542	call $0000
2bd5	d9 	exx	exx
2bd6	c5 	push bc	push bc
2bd7	fd e1 	pop iy	pop iy
2bd9	cd 67 42 	call $4267	call $0000
2bdc	c2 64 26 	jp nz,$2664	jp nz,$0000
2bdf	cb 77 	bit 6,a	bit 6,a
2be1	20 14 	jr nz,$+$16	jr nz,$+$00
2be3	b7 	or a	or a
2be4	08 	ex af,af'	ex af,af'
2be5	cd 7c 20 	call $207c	call $0000
2be8	08 	ex af,af'	ex af,af'
2be9	f5 	push af	push af
2bea	f4 74 32 	call p,$3274	call p,$0000
2bed	f1 	pop af	pop af
2bee	59 	ld e,c	ld e,c
2bef	fc c5 32 	call m,$32c5	call m,$0000
2bf2	cd 84 45 	call $4584	call $0000
2bf5	18 e2 	jr $-$1c	jr $-$00
2bf7	dd 36 00 01 	ld (ix),$01	ld (ix),$00
2bfb	dd 36 01 00 	ld (ix+$01),$00	ld (ix+$00),$00
2bff	18 f1 	jr $-$0d	jr $-$00
2c01	c1 	pop bc	pop bc
2c02	21 6f 2a 	ld hl,$2a6f	ld hl,$0000
2c05	af 	xor a	xor a
2c06	ed 42 	sbc hl,bc	sbc hl,bc
2c08	28 0b 	jr z,$+$0d	jr z,$+$00
2c0a	c5 	push bc	push bc
2c0b	cd b5 34 	call $34b5	call $0000
2c0e	20 f1 	jr nz,$-$0d	jr nz,$-$00
2c10	3e 0d 	ld a,$0d	ld a,$00
2c12	c3 c8 3f 	jp $3fc8	jp $0000
2c15	fd e1 	pop iy	pop iy
2c17	c3 1d 25 	jp $251d	jp $0000
2c1a	cd 5f 37 	call $375f	call $0000
2c1d	cd 84 45 	call $4584	call $0000
2c20	d5 	push de	push de
2c21	cd 5a 26 	call $265a	call $0000
2c24	d1 	pop de	pop de
2c25	f5 	push af	push af
2c26	e5 	push hl	push hl
2c27	b7 	or a	or a
2c28	fa 4d 2c 	jp m,$2c4d	jp m,$0000
2c2b	cd 5d 06 	call $065d	call $0000
2c2e	d9 	exx	exx
2c2f	6f 	ld l,a	ld l,a
2c30	d9 	exx	exx
2c31	cd 5d 06 	call $065d	call $0000
2c34	d9 	exx	exx
2c35	67 	ld h,a	ld h,a
2c36	d9 	exx	exx
2c37	cd 5d 06 	call $065d	call $0000
2c3a	6f 	ld l,a	ld l,a
2c3b	cd 5d 06 	call $065d	call $0000
2c3e	67 	ld h,a	ld h,a
2c3f	cd 5d 06 	call $065d	call $0000
2c42	4f 	ld c,a	ld c,a
2c43	dd e1 	pop ix	pop ix
2c45	f1 	pop af	pop af
2c46	d5 	push de	push de
2c47	cd 74 32 	call $3274	call $0000
2c4a	d1 	pop de	pop de
2c4b	18 d0 	jr $-$2e	jr $-$00
2c4d	21 00 53 	ld hl,$5300	ld hl,$0000
2c50	cd 5d 06 	call $065d	call $0000
2c53	fe 0d 	cp $0d	cp $00
2c55	28 04 	jr z,$+$06	jr z,$+$00
2c57	77 	ld (hl),a	ld (hl),a
2c58	2c 	inc l	inc l
2c59	20 f5 	jr nz,$-$09	jr nz,$-$00
2c5b	dd e1 	pop ix	pop ix
2c5d	f1 	pop af	pop af
2c5e	d5 	push de	push de
2c5f	eb 	ex de,hl	ex de,hl
2c60	cd c2 32 	call $32c2	call $0000
2c63	d1 	pop de	pop de
2c64	18 b7 	jr $-$47	jr $-$00
2c66	fe 23 	cp $23	cp $00
2c68	28 b0 	jr z,$-$4e	jr z,$-$00
2c6a	0e 00 	ld c,$00	ld c,$00
2c6c	fe 86 	cp $86	cp $00
2c6e	20 04 	jr nz,$+$06	jr nz,$+$00
2c70	fd 23 	inc iy	inc iy
2c72	0e 80 	ld c,$80	ld c,$00
2c74	21 00 54 	ld hl,$5400	ld hl,$0000
2c77	36 0d 	ld (hl),$0d	ld (hl),$00
2c79	cd ba 35 	call $35ba	call $0000
2c7c	28 99 	jr z,$-$65	jr z,$-$00
2c7e	fd 23 	inc iy	inc iy
2c80	fe 2c 	cp $2c	cp $00
2c82	28 51 	jr z,$+$53	jr z,$+$00
2c84	fe 3b 	cp $3b	cp $00
2c86	28 4d 	jr z,$+$4f	jr z,$+$00
2c88	e5 	push hl	push hl
2c89	fe 22 	cp $22	cp $00
2c8b	20 0a 	jr nz,$+$0c	jr nz,$+$00
2c8d	c5 	push bc	push bc
2c8e	cd fe 19 	call $19fe	call $0000
2c91	c1 	pop bc	pop bc
2c92	cd 35 36 	call $3635	call $0000
2c95	18 05 	jr $+$07	jr $+$00
2c97	cd e0 35 	call $35e0	call $0000
2c9a	20 05 	jr nz,$+$07	jr nz,$+$00
2c9c	e1 	pop hl	pop hl
2c9d	cb c1 	set 0,c	set 0,c
2c9f	18 d3 	jr $-$2b	jr $-$00
2ca1	fd 2b 	dec iy	dec iy
2ca3	c5 	push bc	push bc
2ca4	cd 5a 26 	call $265a	call $0000
2ca7	c1 	pop bc	pop bc
2ca8	e1 	pop hl	pop hl
2ca9	f5 	push af	push af
2caa	7e 	ld a,(hl)	ld a,(hl)
2cab	23 	inc hl	inc hl
2cac	fe 0d 	cp $0d	cp $00
2cae	cc d9 2c 	call z,$2cd9	call z,$0000
2cb1	cb 79 	bit 7,c	bit 7,c
2cb3	f5 	push af	push af
2cb4	c4 53 36 	call nz,$3653	call nz,$0000
2cb7	f1 	pop af	pop af
2cb8	cc 42 36 	call z,$3642	call z,$0000
2cbb	f1 	pop af	pop af
2cbc	c5 	push bc	push bc
2cbd	e5 	push hl	push hl
2cbe	b7 	or a	or a
2cbf	fa d0 2c 	jp m,$2cd0	jp m,$0000
2cc2	f5 	push af	push af
2cc3	dd e5 	push ix	push ix
2cc5	cd a6 1c 	call $1ca6	call $0000
2cc8	dd e1 	pop ix	pop ix
2cca	f1 	pop af	pop af
2ccb	cd 74 32 	call $3274	call $0000
2cce	18 03 	jr $+$05	jr $+$00
2cd0	cd c2 32 	call $32c2	call $0000
2cd3	e1 	pop hl	pop hl
2cd4	c1 	pop bc	pop bc
2cd5	cb 81 	res 0,c	res 0,c
2cd7	18 a0 	jr $-$5e	jr $-$00
2cd9	cb 41 	bit 0,c	bit 0,c
2cdb	20 0a 	jr nz,$+$0c	jr nz,$+$00
2cdd	3e 3f 	ld a,$3f	ld a,$00
2cdf	cd 86 41 	call $4186	call $0000
2ce2	3e 20 	ld a,$20	ld a,$00
2ce4	cd 86 41 	call $4186	call $0000
2ce7	21 00 54 	ld hl,$5400	ld hl,$0000
2cea	c5 	push bc	push bc
2ceb	e5 	push hl	push hl
2cec	dd e5 	push ix	push ix
2cee	cd e9 05 	call $05e9	call $0000
2cf1	dd e1 	pop ix	pop ix
2cf3	e1 	pop hl	pop hl
2cf4	c1 	pop bc	pop bc
2cf5	47 	ld b,a	ld b,a
2cf6	af 	xor a	xor a
2cf7	32 fb 55 	ld ($55fb),a	ld ($0000),a
2cfa	b8 	cp b	cp b
2cfb	c8 	ret z	ret z
2cfc	7e 	ld a,(hl)	ld a,(hl)
2cfd	fe 0d 	cp $0d	cp $00
2cff	c8 	ret z	ret z
2d00	23 	inc hl	inc hl
2d01	10 f9 	djnz $-$05	djnz $-$00
2d03	c9 	ret	ret
2d04	fe 23 	cp $23	cp $00
2d06	ca 1a 2c 	jp z,$2c1a	jp z,$0000
2d09	2a f0 55 	ld hl,($55f0)	ld hl,($0000)
2d0c	7e 	ld a,(hl)	ld a,(hl)
2d0d	fe 3a 	cp $3a	cp $00
2d0f	cc fc 2c 	call z,$2cfc	call z,$0000
2d12	23 	inc hl	inc hl
2d13	fe 0d 	cp $0d	cp $00
2d15	cc 44 2d 	call z,$2d44	call z,$0000
2d18	e5 	push hl	push hl
2d19	cd 5a 26 	call $265a	call $0000
2d1c	e1 	pop hl	pop hl
2d1d	b7 	or a	or a
2d1e	fa 34 2d 	jp m,$2d34	jp m,$0000
2d21	e5 	push hl	push hl
2d22	fd e3 	ex (sp),iy	ex (sp),iy
2d24	f5 	push af	push af
2d25	dd e5 	push ix	push ix
2d27	cd b0 18 	call $18b0	call $0000
2d2a	dd e1 	pop ix	pop ix
2d2c	f1 	pop af	pop af
2d2d	cd 74 32 	call $3274	call $0000
2d30	fd e3 	ex (sp),iy	ex (sp),iy
2d32	18 07 	jr $+$09	jr $+$00
2d34	cd 42 36 	call $3642	call $0000
2d37	e5 	push hl	push hl
2d38	cd c2 32 	call $32c2	call $0000
2d3b	e1 	pop hl	pop hl
2d3c	22 f0 55 	ld ($55f0),hl	ld ($0000),hl
2d3f	cd 84 45 	call $4584	call $0000
2d42	18 c8 	jr $-$36	jr $-$00
2d44	cd 7d 36 	call $367d	call $0000
2d47	23 	inc hl	inc hl
2d48	d0 	ret nc	ret nc
2d49	3e 2a 	ld a,$2a	ld a,$00
2d4b	18 64 	jr $+$66	jr $+$00
2d4d	cd b7 18 	call $18b7	call $0000
2d50	cd dd 1f 	call $1fdd	call $0000
2d53	28 2a 	jr z,$+$2c	jr z,$+$00
2d55	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d58	fe 8c 	cp $8c	cp $00
2d5a	c2 1d 25 	jp nz,$251d	jp nz,$0000
2d5d	fd 23 	inc iy	inc iy
2d5f	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d62	fe 3b 	cp $3b	cp $00
2d64	28 f7 	jr z,$-$07	jr z,$-$00
2d66	cd 8f 45 	call $458f	call $0000
2d69	fe 8d 	cp $8d	cp $00
2d6b	c2 1d 25 	jp nz,$251d	jp nz,$0000
2d6e	c3 38 29 	jp $2938	jp $0000
2d71	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d74	fd 23 	inc iy	inc iy
2d76	fe 3b 	cp $3b	cp $00
2d78	20 0a 	jr nz,$+$0c	jr nz,$+$00
2d7a	18 1e 	jr $+$20	jr $+$00
2d7c	cd 1d 37 	call $371d	call $0000
2d7f	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d82	fd 23 	inc iy	inc iy
2d84	fe 22 	cp $22	cp $00
2d86	28 f4 	jr z,$-$0a	jr z,$-$00
2d88	fe f4 	cp $f4	cp $00
2d8a	ca b5 25 	jp z,$25b5	jp z,$0000
2d8d	fe 0d 	cp $0d	cp $00
2d8f	ca 08 25 	jp z,$2508	jp z,$0000
2d92	fe 8b 	cp $8b	cp $00
2d94	28 d0 	jr z,$-$2e	jr z,$-$00
2d96	fe 8c 	cp $8c	cp $00
2d98	20 e5 	jr nz,$-$19	jr nz,$-$00
2d9a	fd 7e 00 	ld a,(iy)	ld a,(iy)
2d9d	fe 0d 	cp $0d	cp $00
2d9f	20 d0 	jr nz,$-$2e	jr nz,$-$00
2da1	01 8b 00 	ld bc,$008b	ld bc,$0000
2da4	11 8c cd 	ld de,$cd8c	ld de,$0000
2da7	fd 23 	inc iy	inc iy
2da9	cd 95 36 	call $3695	call $0000
2dac	ca 24 25 	jp z,$2524	jp z,$0000
2daf	3e 31 	ld a,$31	ld a,$00
2db1	c3 c8 3f 	jp $3fc8	jp $0000
2db4	01 fd ff 	ld bc,$fffd	ld bc,$0000
2db7	fd 09 	add iy,bc	add iy,bc
2db9	01 cd 00 	ld bc,$00cd	ld bc,$0000
2dbc	11 8c cd 	ld de,$cd8c	ld de,$0000
2dbf	cd 95 36 	call $3695	call $0000
2dc2	20 eb 	jr nz,$-$13	jr nz,$-$00
2dc4	c3 1d 25 	jp $251d	jp $0000
2dc7	01 fd ff 	ld bc,$fffd	ld bc,$0000
2dca	fd 09 	add iy,bc	add iy,bc
2dcc	01 cb 00 	ld bc,$00cb	ld bc,$0000
2dcf	11 ca cb 	ld de,$cbca	ld de,$0000
2dd2	cd 95 36 	call $3695	call $0000
2dd5	28 ed 	jr z,$-$11	jr z,$-$00
2dd7	3e 2f 	ld a,$2f	ld a,$00
2dd9	18 d6 	jr $-$28	jr $-$00
2ddb	cd 86 17 	call $1786	call $0000
2dde	08 	ex af,af'	ex af,af'
2ddf	06 00 	ld b,$00	ld b,$00
2de1	f2 ea 2d 	jp p,$2dea	jp p,$0000
2de4	cd 9d 20 	call $209d	call $0000
2de7	c1 	pop bc	pop bc
2de8	06 01 	ld b,$01	ld b,$00
2dea	fd 7e 00 	ld a,(iy)	ld a,(iy)
2ded	fd 23 	inc iy	inc iy
2def	fe ca 	cp $ca	cp $00
2df1	3e 25 	ld a,$25	ld a,$00
2df3	20 bc 	jr nz,$-$42	jr nz,$-$00
2df5	fd 7e 00 	ld a,(iy)	ld a,(iy)
2df8	fd 23 	inc iy	inc iy
2dfa	fe 0d 	cp $0d	cp $00
2dfc	3e 30 	ld a,$30	ld a,$00
2dfe	20 b1 	jr nz,$-$4d	jr nz,$-$00
2e00	af 	xor a	xor a
2e01	d9 	exx	exx
2e02	e5 	push hl	push hl
2e03	d9 	exx	exx
2e04	e5 	push hl	push hl
2e05	c5 	push bc	push bc
2e06	6f 	ld l,a	ld l,a
2e07	01 c9 cc 	ld bc,$ccc9	ld bc,$0000
2e0a	11 ca cb 	ld de,$cbca	ld de,$0000
2e0d	cd 97 36 	call $3697	call $0000
2e10	c1 	pop bc	pop bc
2e11	e1 	pop hl	pop hl
2e12	d9 	exx	exx
2e13	e1 	pop hl	pop hl
2e14	d9 	exx	exx
2e15	3e 2f 	ld a,$2f	ld a,$00
2e17	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
2e1a	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
2e1d	fe cb 	cp $cb	cp $00
2e1f	28 56 	jr z,$+$58	jr z,$+$00
2e21	fe cc 	cp $cc	cp $00
2e23	28 52 	jr z,$+$54	jr z,$+$00
2e25	cb 40 	bit 0,b	bit 0,b
2e27	20 69 	jr nz,$+$6b	jr nz,$+$00
2e29	c5 	push bc	push bc
2e2a	e5 	push hl	push hl
2e2b	d9 	exx	exx
2e2c	e5 	push hl	push hl
2e2d	d9 	exx	exx
2e2e	cd b0 18 	call $18b0	call $0000
2e31	dd 21 00 00 	ld ix,$0000	ld ix,$0000
2e35	dd 39 	add ix,sp	add ix,sp
2e37	d9 	exx	exx
2e38	dd 5e 00 	ld e,(ix)	ld e,(ix)
2e3b	dd 56 01 	ld d,(ix+$01)	ld d,(ix+$00)
2e3e	d9 	exx	exx
2e3f	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
2e42	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
2e45	dd 46 04 	ld b,(ix+$04)	ld b,(ix+$00)
2e48	3e 09 	ld a,$09	ld a,$00
2e4a	cd 99 45 	call $4599	call $0000
2e4d	7d 	ld a,l	ld a,l
2e4e	b7 	or a	or a
2e4f	d9 	exx	exx
2e50	e1 	pop hl	pop hl
2e51	d9 	exx	exx
2e52	e1 	pop hl	pop hl
2e53	c1 	pop bc	pop bc
2e54	20 2c 	jr nz,$+$2e	jr nz,$+$00
2e56	fd 7e 00 	ld a,(iy)	ld a,(iy)
2e59	fd 23 	inc iy	inc iy
2e5b	fe 2c 	cp $2c	cp $00
2e5d	28 c6 	jr z,$-$38	jr z,$-$00
2e5f	d9 	exx	exx
2e60	fd e5 	push iy	push iy
2e62	e3 	ex (sp),hl	ex (sp),hl
2e63	3e 0d 	ld a,$0d	ld a,$00
2e65	47 	ld b,a	ld b,a
2e66	ed b1 	cpir	cpir
2e68	e3 	ex (sp),hl	ex (sp),hl
2e69	fd e1 	pop iy	pop iy
2e6b	d9 	exx	exx
2e6c	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
2e6f	fe ca 	cp $ca	cp $00
2e71	20 8d 	jr nz,$-$71	jr nz,$-$00
2e73	3e 01 	ld a,$01	ld a,$00
2e75	18 8a 	jr $-$74	jr $-$00
2e77	cb 40 	bit 0,b	bit 0,b
2e79	28 49 	jr z,$+$4b	jr z,$+$00
2e7b	26 00 	ld h,$00	ld h,$00
2e7d	69 	ld l,c	ld l,c
2e7e	39 	add hl,sp	add hl,sp
2e7f	f9 	ld sp,hl	ld sp,hl
2e80	18 42 	jr $+$44	jr $+$00
2e82	cd 8f 45 	call $458f	call $0000
2e85	fe 2c 	cp $2c	cp $00
2e87	20 ee 	jr nz,$-$10	jr nz,$-$00
2e89	fd 23 	inc iy	inc iy
2e8b	c5 	push bc	push bc
2e8c	cd 86 17 	call $1786	call $0000
2e8f	c1 	pop bc	pop bc
2e90	18 f0 	jr $-$0e	jr $-$00
2e92	c5 	push bc	push bc
2e93	cd c0 18 	call $18c0	call $0000
2e96	c1 	pop bc	pop bc
2e97	21 00 00 	ld hl,$0000	ld hl,$0000
2e9a	39 	add hl,sp	add hl,sp
2e9b	43 	ld b,e	ld b,e
2e9c	11 00 53 	ld de,$5300	ld de,$0000
2e9f	c5 	push bc	push bc
2ea0	cd 79 20 	call $2079	call $0000
2ea3	c1 	pop bc	pop bc
2ea4	06 01 	ld b,$01	ld b,$00
2ea6	20 ae 	jr nz,$-$50	jr nz,$-$00
2ea8	18 d8 	jr $-$26	jr $-$00
2eaa	fd e5 	push iy	push iy
2eac	cd 0a 33 	call $330a	call $0000
2eaf	cd b2 2e 	call $2eb2	call $0000
2eb2	cd b7 18 	call $18b7	call $0000
2eb5	cd dd 1f 	call $1fdd	call $0000
2eb8	20 0a 	jr nz,$+$0c	jr nz,$+$00
2eba	c1 	pop bc	pop bc
2ebb	c1 	pop bc	pop bc
2ebc	01 c7 ce 	ld bc,$cec7	ld bc,$0000
2ebf	16 01 	ld d,$01	ld d,$00
2ec1	cd d4 36 	call $36d4	call $0000
2ec4	c3 1d 25 	jp $251d	jp $0000
2ec7	c1 	pop bc	pop bc
2ec8	d1 	pop de	pop de
2ec9	d5 	push de	push de
2eca	c5 	push bc	push bc
2ecb	b7 	or a	or a
2ecc	21 b2 2e 	ld hl,$2eb2	ld hl,$0000
2ecf	ed 42 	sbc hl,bc	sbc hl,bc
2ed1	28 0b 	jr z,$+$0d	jr z,$+$00
2ed3	3e 03 	ld a,$03	ld a,$00
2ed5	cd b5 34 	call $34b5	call $0000
2ed8	20 ed 	jr nz,$-$11	jr nz,$-$00
2eda	3e 2e 	ld a,$2e	ld a,$00
2edc	18 4f 	jr $+$51	jr $+$00
2ede	fd e5 	push iy	push iy
2ee0	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2ee4	fd 19 	add iy,de	add iy,de
2ee6	cd b7 18 	call $18b7	call $0000
2ee9	cd dd 1f 	call $1fdd	call $0000
2eec	d1 	pop de	pop de
2eed	20 d5 	jr nz,$-$29	jr nz,$-$00
2eef	c1 	pop bc	pop bc
2ef0	c1 	pop bc	pop bc
2ef1	fd 21 00 00 	ld iy,$0000	ld iy,$0000
2ef5	fd 19 	add iy,de	add iy,de
2ef7	18 cb 	jr $-$33	jr $-$00
2ef9	cd 10 0e 	call $0e10	call $0000
2efc	af 	xor a	xor a
2efd	32 fb 55 	ld ($55fb),a	ld ($0000),a
2f00	18 c2 	jr $-$3c	jr $-$00
2f02	cd 7e 45 	call $457e	call $0000
2f05	0d 	dec c	dec c
2f06	0a 	ld a,(bc)	ld a,(bc)
2f07	fa 00 cd 	jp m,$cd00	jp m,$0000
2f0a	df 	rst $18	rst $00
2f0b	41 	ld b,c	ld b,c
2f0c	cd 06 42 	call $4206	call $0000
2f0f	cd 7f 41 	call $417f	call $0000
2f12	c3 34 38 	jp $3834	jp $0000
2f15	cd 69 45 	call $4569	call $0000
2f18	18 aa 	jr $-$54	jr $-$00
2f1a	cd c7 40 	call $40c7	call $0000
2f1d	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
2f20	18 3b 	jr $+$3d	jr $+$00
2f22	fd 23 	inc iy	inc iy
2f24	3e 02 	ld a,$02	ld a,$00
2f26	cd b5 34 	call $34b5	call $0000
2f29	20 99 	jr nz,$-$65	jr nz,$-$00
2f2b	3e 35 	ld a,$35	ld a,$00
2f2d	c3 c8 3f 	jp $3fc8	jp $0000
2f30	fd 23 	inc iy	inc iy
2f32	3e 01 	ld a,$01	ld a,$00
2f34	cd b5 34 	call $34b5	call $0000
2f37	20 8b 	jr nz,$-$73	jr nz,$-$00
2f39	3e 36 	ld a,$36	ld a,$00
2f3b	21 3e 29 	ld hl,$293e	ld hl,$0000
2f3e	18 ed 	jr $-$11	jr $-$00
2f40	fe 85 	cp $85	cp $00
2f42	28 de 	jr z,$-$20	jr z,$-$00
2f44	fe dc 	cp $dc	cp $00
2f46	28 e8 	jr z,$-$16	jr z,$-$00
2f48	fe 2b 	cp $2b	cp $00
2f4a	28 1a 	jr z,$+$1c	jr z,$+$00
2f4c	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
2f4f	cd ba 35 	call $35ba	call $0000
2f52	28 09 	jr z,$+$0b	jr z,$+$00
2f54	cd e4 18 	call $18e4	call $0000
2f57	d9 	exx	exx
2f58	cd c7 41 	call $41c7	call $0000
2f5b	20 df 	jr nz,$-$1f	jr nz,$-$00
2f5d	cd 7d 36 	call $367d	call $0000
2f60	22 f0 55 	ld ($55f0),hl	ld ($0000),hl
2f63	c3 1d 25 	jp $251d	jp $0000
2f66	cd b7 18 	call $18b7	call $0000
2f69	d9 	exx	exx
2f6a	eb 	ex de,hl	ex de,hl
2f6b	fd e5 	push iy	push iy
2f6d	e1 	pop hl	pop hl
2f6e	3e 0d 	ld a,$0d	ld a,$00
2f70	47 	ld b,a	ld b,a
2f71	ed b1 	cpir	cpir
2f73	1d 	dec e	dec e
2f74	28 e7 	jr z,$-$17	jr z,$-$00
2f76	fa 5d 2f 	jp m,$2f5d	jp m,$0000
2f79	af 	xor a	xor a
2f7a	47 	ld b,a	ld b,a
2f7b	4e 	ld c,(hl)	ld c,(hl)
2f7c	b9 	cp c	cp c
2f7d	28 bd 	jr z,$-$41	jr z,$-$00
2f7f	09 	add hl,bc	add hl,bc
2f80	1d 	dec e	dec e
2f81	20 f8 	jr nz,$-$06	jr nz,$-$00
2f83	18 d8 	jr $-$26	jr $-$00
2f85	cd 55 37 	call $3755	call $0000
2f88	cd d3 35 	call $35d3	call $0000
2f8b	7b 	ld a,e	ld a,e
2f8c	f5 	push af	push af
2f8d	cd b7 18 	call $18b7	call $0000
2f90	e5 	push hl	push hl
2f91	d9 	exx	exx
2f92	d1 	pop de	pop de
2f93	f1 	pop af	pop af
2f94	cd 97 06 	call $0697	call $0000
2f97	18 61 	jr $+$63	jr $+$00
2f99	cd d3 35 	call $35d3	call $0000
2f9c	cd b7 18 	call $18b7	call $0000
2f9f	d9 	exx	exx
2fa0	2e 00 	ld l,$00	ld l,$00
2fa2	22 dc 55 	ld ($55dc),hl	ld ($0000),hl
2fa5	18 53 	jr $+$55	jr $+$00
2fa7	fe 24 	cp $24	cp $00
2fa9	28 0e 	jr z,$+$10	jr z,$+$00
2fab	cd d3 35 	call $35d3	call $0000
2fae	cd b7 18 	call $18b7	call $0000
2fb1	e5 	push hl	push hl
2fb2	d9 	exx	exx
2fb3	d1 	pop de	pop de
2fb4	cd db 0d 	call $0ddb	call $0000
2fb7	18 41 	jr $+$43	jr $+$00
2fb9	fd 23 	inc iy	inc iy
2fbb	cd d3 35 	call $35d3	call $0000
2fbe	cd c0 18 	call $18c0	call $0000
2fc1	cd f8 0d 	call $0df8	call $0000
2fc4	18 34 	jr $+$36	jr $+$00
2fc6	cd d3 35 	call $35d3	call $0000
2fc9	cd b7 18 	call $18b7	call $0000
2fcc	cd c7 40 	call $40c7	call $0000
2fcf	d9 	exx	exx
2fd0	22 de 55 	ld ($55de),hl	ld ($0000),hl
2fd3	22 e0 55 	ld ($55e0),hl	ld ($0000),hl
2fd6	18 22 	jr $+$24	jr $+$00
2fd8	cd d3 35 	call $35d3	call $0000
2fdb	cd b7 18 	call $18b7	call $0000
2fde	d9 	exx	exx
2fdf	ed 5b e0 55 	ld de,($55e0)	ld de,($0000)
2fe3	14 	inc d	inc d
2fe4	af 	xor a	xor a
2fe5	ed 52 	sbc hl,de	sbc hl,de
2fe7	19 	add hl,de	add hl,de
2fe8	da c8 3f 	jp c,$3fc8	jp c,$0000
2feb	ed 5b e2 55 	ld de,($55e2)	ld de,($0000)
2fef	22 e2 55 	ld ($55e2),hl	ld ($0000),hl
2ff2	eb 	ex de,hl	ex de,hl
2ff3	ed 72 	sbc hl,sp	sbc hl,sp
2ff5	c2 1d 25 	jp nz,$251d	jp nz,$0000
2ff8	eb 	ex de,hl	ex de,hl
2ff9	f9 	ld sp,hl	ld sp,hl
2ffa	c3 1d 25 	jp $251d	jp $0000
2ffd	cd b7 18 	call $18b7	call $0000
3000	d9 	exx	exx
3001	7d 	ld a,l	ld a,l
3002	32 fc 55 	ld ($55fc),a	ld ($0000),a
3005	18 f3 	jr $-$0b	jr $-$00
3007	fd 23 	inc iy	inc iy
3009	21 00 00 	ld hl,$0000	ld hl,$0000
300c	fe ee 	cp $ee	cp $00
300e	28 0a 	jr z,$+$0c	jr z,$+$00
3010	fe 87 	cp $87	cp $00
3012	28 07 	jr z,$+$09	jr z,$+$00
3014	fd 2b 	dec iy	dec iy
3016	cd b7 18 	call $18b7	call $0000
3019	d9 	exx	exx
301a	2b 	dec hl	dec hl
301b	22 e6 55 	ld ($55e6),hl	ld ($0000),hl
301e	18 da 	jr $-$24	jr $-$00
3020	cd b7 18 	call $18b7	call $0000
3023	d9 	exx	exx
3024	7d 	ld a,l	ld a,l
3025	06 01 	ld b,$01	ld b,$00
3027	cd 97 05 	call $0597	call $0000
302a	10 fb 	djnz $-$03	djnz $-$00
302c	fd 7e 00 	ld a,(iy)	ld a,(iy)
302f	fe 7c 	cp $7c	cp $00
3031	28 15 	jr z,$+$17	jr z,$+$00
3033	fe 2c 	cp $2c	cp $00
3035	28 08 	jr z,$+$0a	jr z,$+$00
3037	fe 3b 	cp $3b	cp $00
3039	20 06 	jr nz,$+$08	jr nz,$+$00
303b	7c 	ld a,h	ld a,h
303c	cd 97 05 	call $0597	call $0000
303f	fd 23 	inc iy	inc iy
3041	cd ba 35 	call $35ba	call $0000
3044	20 da 	jr nz,$-$24	jr nz,$-$00
3046	18 b2 	jr $-$4c	jr $-$00
3048	fd 23 	inc iy	inc iy
304a	af 	xor a	xor a
304b	06 09 	ld b,$09	ld b,$00
304d	18 d8 	jr $-$26	jr $-$00
304f	cd 55 37 	call $3755	call $0000
3052	cd 55 06 	call $0655	call $0000
3055	18 a3 	jr $-$5b	jr $-$00
3057	cd 55 37 	call $3755	call $0000
305a	d5 	push de	push de
305b	cd 26 21 	call $2126	call $0000
305e	cd 86 17 	call $1786	call $0000
3061	08 	ex af,af'	ex af,af'
3062	fa 70 30 	jp m,$3070	jp m,$0000
3065	cd 9b 1c 	call $1c9b	call $0000
3068	d9 	exx	exx
3069	7d 	ld a,l	ld a,l
306a	d1 	pop de	pop de
306b	cd 65 06 	call $0665	call $0000
306e	18 8a 	jr $-$74	jr $-$00
3070	7b 	ld a,e	ld a,e
3071	d1 	pop de	pop de
3072	57 	ld d,a	ld d,a
3073	21 00 53 	ld hl,$5300	ld hl,$0000
3076	7e 	ld a,(hl)	ld a,(hl)
3077	23 	inc hl	inc hl
3078	cd 65 06 	call $0665	call $0000
307b	15 	dec d	dec d
307c	20 f8 	jr nz,$-$06	jr nz,$-$00
307e	cd 8f 45 	call $458f	call $0000
3081	fe 3b 	cp $3b	cp $00
3083	fd 23 	inc iy	inc iy
3085	28 e7 	jr z,$-$17	jr z,$-$00
3087	3e 0a 	ld a,$0a	ld a,$00
3089	cd 65 06 	call $0665	call $0000
308c	fd 2b 	dec iy	dec iy
308e	18 de 	jr $-$20	jr $-$00
3090	cd b7 18 	call $18b7	call $0000
3093	d9 	exx	exx
3094	e5 	push hl	push hl
3095	06 00 	ld b,$00	ld b,$00
3097	11 00 54 	ld de,$5400	ld de,$0000
309a	cd 8f 45 	call $458f	call $0000
309d	fe 2c 	cp $2c	cp $00
309f	20 17 	jr nz,$+$19	jr nz,$+$00
30a1	fd 23 	inc iy	inc iy
30a3	04 	inc b	inc b
30a4	cd 8f 45 	call $458f	call $0000
30a7	c5 	push bc	push bc
30a8	d5 	push de	push de
30a9	cd 5a 26 	call $265a	call $0000
30ac	d1 	pop de	pop de
30ad	c1 	pop bc	pop bc
30ae	13 	inc de	inc de
30af	12 	ld (de),a	ld (de),a
30b0	13 	inc de	inc de
30b1	eb 	ex de,hl	ex de,hl
30b2	73 	ld (hl),e	ld (hl),e
30b3	23 	inc hl	inc hl
30b4	72 	ld (hl),d	ld (hl),d
30b5	eb 	ex de,hl	ex de,hl
30b6	18 e2 	jr $-$1c	jr $-$00
30b8	78 	ld a,b	ld a,b
30b9	32 00 54 	ld ($5400),a	ld ($0000),a
30bc	e1 	pop hl	pop hl
30bd	cd c7 30 	call $30c7	call $0000
30c0	c3 1d 25 	jp $251d	jp $0000
30c3	cd e4 18 	call $18e4	call $0000
30c6	d9 	exx	exx
30c7	e5 	push hl	push hl
30c8	fd e3 	ex (sp),iy	ex (sp),iy
30ca	24 	inc h	inc h
30cb	21 f6 30 	ld hl,$30f6	ld hl,$0000
30ce	e5 	push hl	push hl
30cf	dd 21 00 55 	ld ix,$5500	ld ix,$0000
30d3	cc 2c 11 	call z,$112c	call z,$0000
30d6	dd 4e 18 	ld c,(ix+$18)	ld c,(ix+$00)
30d9	c5 	push bc	push bc
30da	f1 	pop af	pop af
30db	dd 7e 04 	ld a,(ix+$04)	ld a,(ix+$00)
30de	dd 46 08 	ld b,(ix+$08)	ld b,(ix+$00)
30e1	dd 4e 0c 	ld c,(ix+$0c)	ld c,(ix+$00)
30e4	dd 56 10 	ld d,(ix+$10)	ld d,(ix+$00)
30e7	dd 5e 14 	ld e,(ix+$14)	ld e,(ix+$00)
30ea	dd 66 20 	ld h,(ix+$20)	ld h,(ix+$00)
30ed	dd 6e 30 	ld l,(ix+$30)	ld l,(ix+$00)
30f0	dd 21 00 54 	ld ix,$5400	ld ix,$0000
30f4	fd e9 	jp (iy)	jp (iy)
30f6	fd e1 	pop iy	pop iy
30f8	af 	xor a	xor a
30f9	4f 	ld c,a	ld c,a
30fa	c9 	ret	ret
30fb	cd 42 26 	call $2642	call $0000
30fe	21 00 ff 	ld hl,$ff00	ld hl,$0000
3101	20 48 	jr nz,$+$4a	jr nz,$+$00
3103	18 26 	jr $+$28	jr $+$00
3105	cd 42 26 	call $2642	call $0000
3108	21 ff ff 	ld hl,$ffff	ld hl,$0000
310b	20 3e 	jr nz,$+$40	jr nz,$+$00
310d	18 1c 	jr $+$1e	jr $+$00
310f	cd 42 26 	call $2642	call $0000
3112	3e 05 	ld a,$05	ld a,$00
3114	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
3117	fd 23 	inc iy	inc iy
3119	dd e5 	push ix	push ix
311b	cd b7 18 	call $18b7	call $0000
311e	dd e1 	pop ix	pop ix
3120	d9 	exx	exx
3121	cd 8f 45 	call $458f	call $0000
3124	2d 	dec l	dec l
3125	26 fe 	ld h,$fe	ld h,$00
3127	fe 2c 	cp $2c	cp $00
3129	20 20 	jr nz,$+$22	jr nz,$+$00
312b	fd 23 	inc iy	inc iy
312d	e5 	push hl	push hl
312e	dd e5 	push ix	push ix
3130	cd b7 18 	call $18b7	call $0000
3133	dd e1 	pop ix	pop ix
3135	d9 	exx	exx
3136	7d 	ld a,l	ld a,l
3137	e1 	pop hl	pop hl
3138	b7 	or a	or a
3139	28 0d 	jr z,$+$0f	jr z,$+$00
313b	3d 	dec a	dec a
313c	85 	add a,l	add a,l
313d	67 	ld h,a	ld h,a
313e	30 0b 	jr nc,$+$0d	jr nc,$+$00
3140	7d 	ld a,l	ld a,l
3141	3c 	inc a	inc a
3142	28 07 	jr z,$+$09	jr z,$+$00
3144	26 fe 	ld h,$fe	ld h,$00
3146	18 03 	jr $+$05	jr $+$00
3148	21 01 00 	ld hl,$0001	ld hl,$0000
314b	cd 32 21 	call $2132	call $0000
314e	cd d3 35 	call $35d3	call $0000
3151	e5 	push hl	push hl
3152	dd e5 	push ix	push ix
3154	cd c0 18 	call $18c0	call $0000
3157	dd e1 	pop ix	pop ix
3159	e1 	pop hl	pop hl
315a	4b 	ld c,e	ld c,e
315b	dd 46 00 	ld b,(ix)	ld b,(ix)
315e	dd 5e 02 	ld e,(ix+$02)	ld e,(ix+$00)
3161	dd 56 03 	ld d,(ix+$03)	ld d,(ix+$00)
3164	7d 	ld a,l	ld a,l
3165	3c 	inc a	inc a
3166	20 0f 	jr nz,$+$11	jr nz,$+$00
3168	24 	inc h	inc h
3169	24 	inc h	inc h
316a	79 	ld a,c	ld a,c
316b	bc 	cp h	cp h
316c	30 01 	jr nc,$+$03	jr nc,$+$00
316e	67 	ld h,a	ld h,a
316f	78 	ld a,b	ld a,b
3170	94 	sub h	sub h
3171	30 01 	jr nc,$+$03	jr nc,$+$00
3173	af 	xor a	xor a
3174	6f 	ld l,a	ld l,a
3175	18 12 	jr $+$14	jr $+$00
3177	7c 	ld a,h	ld a,h
3178	3c 	inc a	inc a
3179	20 06 	jr nz,$+$08	jr nz,$+$00
317b	78 	ld a,b	ld a,b
317c	d6 02 	sub $02	sub $00
317e	38 24 	jr c,$+$26	jr c,$+$00
3180	67 	ld h,a	ld h,a
3181	7d 	ld a,l	ld a,l
3182	b8 	cp b	cp b
3183	30 1f 	jr nc,$+$21	jr nc,$+$00
3185	7c 	ld a,h	ld a,h
3186	b8 	cp b	cp b
3187	38 03 	jr c,$+$05	jr c,$+$00
3189	78 	ld a,b	ld a,b
318a	3d 	dec a	dec a
318b	67 	ld h,a	ld h,a
318c	7c 	ld a,h	ld a,h
318d	95 	sub l	sub l
318e	38 14 	jr c,$+$16	jr c,$+$00
3190	3c 	inc a	inc a
3191	b9 	cp c	cp c
3192	38 01 	jr c,$+$03	jr c,$+$00
3194	79 	ld a,c	ld a,c
3195	06 00 	ld b,$00	ld b,$00
3197	60 	ld h,b	ld h,b
3198	4f 	ld c,a	ld c,a
3199	b7 	or a	or a
319a	28 08 	jr z,$+$0a	jr z,$+$00
319c	eb 	ex de,hl	ex de,hl
319d	19 	add hl,de	add hl,de
319e	eb 	ex de,hl	ex de,hl
319f	21 00 53 	ld hl,$5300	ld hl,$0000
31a2	ed b0 	ldir	ldir
31a4	c3 1d 25 	jp $251d	jp $0000
31a7	fd 23 	inc iy	inc iy
31a9	fe e3 	cp $e3	cp $00
31ab	20 0c 	jr nz,$+$0e	jr nz,$+$00
31ad	dd 21 00 00 	ld ix,$0000	ld ix,$0000
31b1	cd ba 35 	call $35ba	call $0000
31b4	c4 67 42 	call nz,$4267	call nz,$0000
31b7	3e e3 	ld a,$e3	ld a,$00
31b9	16 01 	ld d,$01	ld d,$00
31bb	5f 	ld e,a	ld e,a
31bc	7b 	ld a,e	ld a,e
31bd	c1 	pop bc	pop bc
31be	21 e5 29 	ld hl,$29e5	ld hl,$0000
31c1	b7 	or a	or a
31c2	ed 42 	sbc hl,bc	sbc hl,bc
31c4	28 25 	jr z,$+$27	jr z,$+$00
31c6	21 71 29 	ld hl,$2971	ld hl,$0000
31c9	b7 	or a	or a
31ca	ed 42 	sbc hl,bc	sbc hl,bc
31cc	28 38 	jr z,$+$3a	jr z,$+$00
31ce	21 b2 2e 	ld hl,$2eb2	ld hl,$0000
31d1	b7 	or a	or a
31d2	ed 42 	sbc hl,bc	sbc hl,bc
31d4	28 3a 	jr z,$+$3c	jr z,$+$00
31d6	c5 	push bc	push bc
31d7	dd e5 	push ix	push ix
31d9	c1 	pop bc	pop bc
31da	d9 	exx	exx
31db	3e 03 	ld a,$03	ld a,$00
31dd	cd b5 34 	call $34b5	call $0000
31e0	d9 	exx	exx
31e1	c5 	push bc	push bc
31e2	dd e1 	pop ix	pop ix
31e4	20 d6 	jr nz,$-$28	jr nz,$-$00
31e6	3e 2c 	ld a,$2c	ld a,$00
31e8	c3 c8 3f 	jp $3fc8	jp $0000
31eb	c1 	pop bc	pop bc
31ec	21 0e 00 	ld hl,$000e	ld hl,$0000
31ef	39 	add hl,sp	add hl,sp
31f0	f9 	ld sp,hl	ld sp,hl
31f1	fe e3 	cp $e3	cp $00
31f3	20 c7 	jr nz,$-$37	jr nz,$-$00
31f5	dd e5 	push ix	push ix
31f7	e1 	pop hl	pop hl
31f8	7c 	ld a,h	ld a,h
31f9	b5 	or l	or l
31fa	28 02 	jr z,$+$04	jr z,$+$00
31fc	ed 42 	sbc hl,bc	sbc hl,bc
31fe	01 e3 ed 	ld bc,$ede3	ld bc,$0000
3201	28 15 	jr z,$+$17	jr z,$+$00
3203	14 	inc d	inc d
3204	18 b6 	jr $-$48	jr $-$00
3206	c1 	pop bc	pop bc
3207	fe f5 	cp $f5	cp $00
3209	20 b1 	jr nz,$-$4d	jr nz,$-$00
320b	01 f5 fd 	ld bc,$fdf5	ld bc,$0000
320e	18 08 	jr $+$0a	jr $+$00
3210	c1 	pop bc	pop bc
3211	fe c7 	cp $c7	cp $00
3213	20 a7 	jr nz,$-$57	jr nz,$-$00
3215	01 c7 ce 	ld bc,$cec7	ld bc,$0000
3218	cd d4 36 	call $36d4	call $0000
321b	cd c6 35 	call $35c6	call $0000
321e	c3 1d 25 	jp $251d	jp $0000
3221	cd b7 18 	call $18b7	call $0000
3224	d9 	exx	exx
3225	e5 	push hl	push hl
3226	cd 26 21 	call $2126	call $0000
3229	cd b7 18 	call $18b7	call $0000
322c	d9 	exx	exx
322d	c1 	pop bc	pop bc
322e	ed 69 	out (bc),l	out (bc),l
3230	c3 1d 25 	jp $251d	jp $0000
3233	cd 67 42 	call $4267	call $0000
3236	d8 	ret c	ret c
3237	c4 51 42 	call nz,$4251	call nz,$0000
323a	57 	ld d,a	ld d,a
323b	cd 8f 45 	call $458f	call $0000
323e	fd 23 	inc iy	inc iy
3240	5f 	ld e,a	ld e,a
3241	fe 3d 	cp $3d	cp $00
3243	c4 d3 35 	call nz,$35d3	call nz,$0000
3246	7a 	ld a,d	ld a,d
3247	e6 c0 	and $c0	and $00
3249	c0 	ret nz	ret nz
324a	d5 	push de	push de
324b	e5 	push hl	push hl
324c	cd b0 18 	call $18b0	call $0000
324f	dd e1 	pop ix	pop ix
3251	d1 	pop de	pop de
3252	7b 	ld a,e	ld a,e
3253	fe 3d 	cp $3d	cp $00
3255	28 1c 	jr z,$+$1e	jr z,$+$00
3257	d5 	push de	push de
3258	d9 	exx	exx
3259	eb 	ex de,hl	ex de,hl
325a	d9 	exx	exx
325b	eb 	ex de,hl	ex de,hl
325c	41 	ld b,c	ld b,c
325d	e3 	ex (sp),hl	ex (sp),hl
325e	7c 	ld a,h	ld a,h
325f	e3 	ex (sp),hl	ex (sp),hl
3260	cd a9 19 	call $19a9	call $0000
3263	e3 	ex (sp),hl	ex (sp),hl
3264	7d 	ld a,l	ld a,l
3265	e3 	ex (sp),hl	ex (sp),hl
3266	e6 0f 	and $0f	and $00
3268	dd e5 	push ix	push ix
326a	cd 99 45 	call $4599	call $0000
326d	dd e1 	pop ix	pop ix
326f	d1 	pop de	pop de
3270	da c8 3f 	jp c,$3fc8	jp c,$0000
3273	7a 	ld a,d	ld a,d
3274	fe 05 	cp $05	cp $00
3276	28 12 	jr z,$+$14	jr z,$+$00
3278	f5 	push af	push af
3279	0c 	inc c	inc c
327a	0d 	dec c	dec c
327b	c4 9b 1c 	call nz,$1c9b	call nz,$0000
327e	f1 	pop af	pop af
327f	fe 04 	cp $04	cp $00
3281	28 0a 	jr z,$+$0c	jr z,$+$00
3283	bf 	cp a	cp a
3284	d9 	exx	exx
3285	dd 75 00 	ld (ix),l	ld (ix),l
3288	d9 	exx	exx
3289	c9 	ret	ret
328a	dd 71 04 	ld (ix+$04),c	ld (ix+$00),c
328d	d9 	exx	exx
328e	dd 75 00 	ld (ix),l	ld (ix),l
3291	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
3294	d9 	exx	exx
3295	dd 75 02 	ld (ix+$02),l	ld (ix+$00),l
3298	dd 74 03 	ld (ix+$03),h	ld (ix+$00),h
329b	c9 	ret	ret
329c	7d 	ld a,l	ld a,l
329d	fe 2b 	cp $2b	cp $00
329f	7c 	ld a,h	ld a,h
32a0	20 20 	jr nz,$+$22	jr nz,$+$00
32a2	fd e5 	push iy	push iy
32a4	dd e5 	push ix	push ix
32a6	fd e1 	pop iy	pop iy
32a8	cd 9d 20 	call $209d	call $0000
32ab	fd e5 	push iy	push iy
32ad	dd e1 	pop ix	pop ix
32af	cd 92 1a 	call $1a92	call $0000
32b2	c1 	pop bc	pop bc
32b3	78 	ld a,b	ld a,b
32b4	0c 	inc c	inc c
32b5	0d 	dec c	dec c
32b6	28 08 	jr z,$+$0a	jr z,$+$00
32b8	21 00 00 	ld hl,$0000	ld hl,$0000
32bb	44 	ld b,h	ld b,h
32bc	39 	add hl,sp	add hl,sp
32bd	ed b0 	ldir	ldir
32bf	f9 	ld sp,hl	ld sp,hl
32c0	fd e1 	pop iy	pop iy
32c2	21 00 53 	ld hl,$5300	ld hl,$0000
32c5	1f 	rra	rra
32c6	30 4f 	jr nc,$+$51	jr nc,$+$00
32c8	e5 	push hl	push hl
32c9	cd b6 19 	call $19b6	call $0000
32cc	7b 	ld a,e	ld a,e
32cd	d9 	exx	exx
32ce	6f 	ld l,a	ld l,a
32cf	7c 	ld a,h	ld a,h
32d0	d9 	exx	exx
32d1	bb 	cp e	cp e
32d2	30 24 	jr nc,$+$26	jr nc,$+$00
32d4	d9 	exx	exx
32d5	65 	ld h,l	ld h,l
32d6	d9 	exx	exx
32d7	e5 	push hl	push hl
32d8	06 00 	ld b,$00	ld b,$00
32da	4f 	ld c,a	ld c,a
32db	09 	add hl,bc	add hl,bc
32dc	ed 4b e0 55 	ld bc,($55e0)	ld bc,($0000)
32e0	ed 42 	sbc hl,bc	sbc hl,bc
32e2	e1 	pop hl	pop hl
32e3	28 12 	jr z,$+$14	jr z,$+$00
32e5	60 	ld h,b	ld h,b
32e6	69 	ld l,c	ld l,c
32e7	b7 	or a	or a
32e8	28 0d 	jr z,$+$0f	jr z,$+$00
32ea	7b 	ld a,e	ld a,e
32eb	5f 	ld e,a	ld e,a
32ec	1d 	dec e	dec e
32ed	a3 	and e	and e
32ee	20 fb 	jr nz,$-$03	jr nz,$-$00
32f0	37 	scf	scf
32f1	cb 13 	rl e	rl e
32f3	7b 	ld a,e	ld a,e
32f4	d9 	exx	exx
32f5	67 	ld h,a	ld h,a
32f6	d9 	exx	exx
32f7	37 	scf	scf
32f8	cd 8d 32 	call $328d	call $0000
32fb	06 00 	ld b,$00	ld b,$00
32fd	4b 	ld c,e	ld c,e
32fe	eb 	ex de,hl	ex de,hl
32ff	e1 	pop hl	pop hl
3300	0d 	dec c	dec c
3301	0c 	inc c	inc c
3302	c8 	ret z	ret z
3303	ed b0 	ldir	ldir
3305	d0 	ret nc	ret nc
3306	ed 53 e0 55 	ld ($55e0),de	ld ($0000),de
330a	e5 	push hl	push hl
330b	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
330e	24 	inc h	inc h
330f	ed 72 	sbc hl,sp	sbc hl,sp
3311	e1 	pop hl	pop hl
3312	d8 	ret c	ret c
3313	af 	xor a	xor a
3314	c3 c8 3f 	jp $3fc8	jp $0000
3317	4b 	ld c,e	ld c,e
3318	dd e5 	push ix	push ix
331a	d1 	pop de	pop de
331b	af 	xor a	xor a
331c	47 	ld b,a	ld b,a
331d	b9 	cp c	cp c
331e	28 02 	jr z,$+$04	jr z,$+$00
3320	ed b0 	ldir	ldir
3322	3e 0d 	ld a,$0d	ld a,$00
3324	12 	ld (de),a	ld (de),a
3325	c9 	ret	ret
3326	dd 75 00 	ld (ix),l	ld (ix),l
3329	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
332c	dd 77 02 	ld (ix+$02),a	ld (ix+$00),a
332f	fd e3 	ex (sp),iy	ex (sp),iy
3331	f5 	push af	push af
3332	fd e5 	push iy	push iy
3334	dd e5 	push ix	push ix
3336	cd 8f 45 	call $458f	call $0000
3339	cd 5a 26 	call $265a	call $0000
333c	dd e1 	pop ix	pop ix
333e	dd 75 04 	ld (ix+$04),l	ld (ix+$00),l
3341	dd 74 05 	ld (ix+$05),h	ld (ix+$00),h
3344	dd 77 06 	ld (ix+$06),a	ld (ix+$00),a
3347	fd e1 	pop iy	pop iy
3349	f1 	pop af	pop af
334a	01 08 00 	ld bc,$0008	ld bc,$0000
334d	dd 09 	add ix,bc	add ix,bc
334f	18 2d 	jr $+$2f	jr $+$00
3351	3e ff 	ld a,$ff	ld a,$00
3353	f5 	push af	push af
3354	fd 23 	inc iy	inc iy
3356	13 	inc de	inc de
3357	d5 	push de	push de
3358	06 00 	ld b,$00	ld b,$00
335a	cd 8f 45 	call $458f	call $0000
335d	fe f8 	cp $f8	cp $00
335f	20 06 	jr nz,$+$08	jr nz,$+$00
3361	fd 23 	inc iy	inc iy
3363	cd 8f 45 	call $458f	call $0000
3366	04 	inc b	inc b
3367	c5 	push bc	push bc
3368	dd e5 	push ix	push ix
336a	cd 67 42 	call $4267	call $0000
336d	38 49 	jr c,$+$4b	jr c,$+$00
336f	c4 51 42 	call nz,$4251	call nz,$0000
3372	dd e1 	pop ix	pop ix
3374	c1 	pop bc	pop bc
3375	d1 	pop de	pop de
3376	e5 	push hl	push hl
3377	f5 	push af	push af
3378	d5 	push de	push de
3379	05 	dec b	dec b
337a	28 aa 	jr z,$-$54	jr z,$-$00
337c	fd e3 	ex (sp),iy	ex (sp),iy
337e	cb 77 	bit 6,a	bit 6,a
3380	20 3b 	jr nz,$+$3d	jr nz,$+$00
3382	b7 	or a	or a
3383	fa 99 33 	jp m,$3399	jp m,$0000
3386	dd e5 	push ix	push ix
3388	cd b0 18 	call $18b0	call $0000
338b	dd e1 	pop ix	pop ix
338d	fd e3 	ex (sp),iy	ex (sp),iy
338f	d1 	pop de	pop de
3390	f1 	pop af	pop af
3391	d9 	exx	exx
3392	e5 	push hl	push hl
3393	d9 	exx	exx
3394	e5 	push hl	push hl
3395	47 	ld b,a	ld b,a
3396	c5 	push bc	push bc
3397	18 13 	jr $+$15	jr $+$00
3399	dd e5 	push ix	push ix
339b	cd c0 18 	call $18c0	call $0000
339e	d9 	exx	exx
339f	c1 	pop bc	pop bc
33a0	fd e3 	ex (sp),iy	ex (sp),iy
33a2	d1 	pop de	pop de
33a3	d9 	exx	exx
33a4	f1 	pop af	pop af
33a5	cd 9d 20 	call $209d	call $0000
33a8	d9 	exx	exx
33a9	c5 	push bc	push bc
33aa	dd e1 	pop ix	pop ix
33ac	cd 8f 45 	call $458f	call $0000
33af	fe 2c 	cp $2c	cp $00
33b1	20 27 	jr nz,$+$29	jr nz,$+$00
33b3	1a 	ld a,(de)	ld a,(de)
33b4	fe 2c 	cp $2c	cp $00
33b6	28 9c 	jr z,$-$62	jr z,$-$00
33b8	3e 1f 	ld a,$1f	ld a,$00
33ba	c3 c8 3f 	jp $3fc8	jp $0000
33bd	dd e5 	push ix	push ix
33bf	cd 8f 45 	call $458f	call $0000
33c2	cd 67 42 	call $4267	call $0000
33c5	38 f1 	jr c,$-$0d	jr c,$-$00
33c7	dd 4e 00 	ld c,(ix)	ld c,(ix)
33ca	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
33cd	dd e1 	pop ix	pop ix
33cf	cd 8f 45 	call $458f	call $0000
33d2	fd e3 	ex (sp),iy	ex (sp),iy
33d4	d1 	pop de	pop de
33d5	f1 	pop af	pop af
33d6	c5 	push bc	push bc
33d7	f5 	push af	push af
33d8	18 d2 	jr $-$2c	jr $-$00
33da	cd 32 21 	call $2132	call $0000
33dd	1a 	ld a,(de)	ld a,(de)
33de	fe 29 	cp $29	cp $00
33e0	20 d6 	jr nz,$-$28	jr nz,$-$00
33e2	13 	inc de	inc de
33e3	d9 	exx	exx
33e4	c1 	pop bc	pop bc
33e5	78 	ld a,b	ld a,b
33e6	3c 	inc a	inc a
33e7	d9 	exx	exx
33e8	c8 	ret z	ret z
33e9	d9 	exx	exx
33ea	3d 	dec a	dec a
33eb	cb 77 	bit 6,a	bit 6,a
33ed	20 19 	jr nz,$+$1b	jr nz,$+$00
33ef	b7 	or a	or a
33f0	fa fe 33 	jp m,$33fe	jp m,$0000
33f3	e1 	pop hl	pop hl
33f4	d9 	exx	exx
33f5	e1 	pop hl	pop hl
33f6	d9 	exx	exx
33f7	dd e1 	pop ix	pop ix
33f9	cd 74 32 	call $3274	call $0000
33fc	18 e6 	jr $-$18	jr $-$00
33fe	cd bb 20 	call $20bb	call $0000
3401	dd e1 	pop ix	pop ix
3403	cd c2 32 	call $32c2	call $0000
3406	18 dc 	jr $-$22	jr $-$00
3408	c1 	pop bc	pop bc
3409	dd e1 	pop ix	pop ix
340b	dd 71 00 	ld (ix),c	ld (ix),c
340e	dd 70 01 	ld (ix+$01),b	ld (ix+$00),b
3411	18 d1 	jr $-$2d	jr $-$00
3413	3e ff 	ld a,$ff	ld a,$00
3415	f5 	push af	push af
3416	d9 	exx	exx
3417	dd 6e 04 	ld l,(ix+$04)	ld l,(ix+$00)
341a	dd 66 05 	ld h,(ix+$05)	ld h,(ix+$00)
341d	e5 	push hl	push hl
341e	dd 6e 00 	ld l,(ix)	ld l,(ix)
3421	dd 66 01 	ld h,(ix+$01)	ld h,(ix+$00)
3424	dd 7e 02 	ld a,(ix+$02)	ld a,(ix+$00)
3427	cb 77 	bit 6,a	bit 6,a
3429	20 19 	jr nz,$+$1b	jr nz,$+$00
342b	b7 	or a	or a
342c	fa 4a 34 	jp m,$344a	jp m,$0000
342f	e5 	push hl	push hl
3430	dd e3 	ex (sp),ix	ex (sp),ix
3432	cd a9 19 	call $19a9	call $0000
3435	dd e1 	pop ix	pop ix
3437	d9 	exx	exx
3438	e5 	push hl	push hl
3439	d9 	exx	exx
343a	e5 	push hl	push hl
343b	dd 46 06 	ld b,(ix+$06)	ld b,(ix+$00)
343e	c5 	push bc	push bc
343f	cd 0a 33 	call $330a	call $0000
3442	18 1e 	jr $+$20	jr $+$00
3444	5e 	ld e,(hl)	ld e,(hl)
3445	23 	inc hl	inc hl
3446	56 	ld d,(hl)	ld d,(hl)
3447	d5 	push de	push de
3448	18 f1 	jr $-$0d	jr $-$00
344a	e5 	push hl	push hl
344b	dd e3 	ex (sp),ix	ex (sp),ix
344d	cd 92 1a 	call $1a92	call $0000
3450	dd e1 	pop ix	pop ix
3452	dd 7e 06 	ld a,(ix+$06)	ld a,(ix+$00)
3455	d9 	exx	exx
3456	dd e5 	push ix	push ix
3458	e1 	pop hl	pop hl
3459	d9 	exx	exx
345a	cd 9d 20 	call $209d	call $0000
345d	d9 	exx	exx
345e	e5 	push hl	push hl
345f	dd e1 	pop ix	pop ix
3461	d9 	exx	exx
3462	11 08 00 	ld de,$0008	ld de,$0000
3465	dd 19 	add ix,de	add ix,de
3467	d9 	exx	exx
3468	10 ac 	djnz $-$52	djnz $-$00
346a	c3 e3 33 	jp $33e3	jp $0000
346d	c1 	pop bc	pop bc
346e	26 00 	ld h,$00	ld h,$00
3470	68 	ld l,b	ld l,b
3471	29 	add hl,hl	add hl,hl
3472	29 	add hl,hl	add hl,hl
3473	29 	add hl,hl	add hl,hl
3474	39 	add hl,sp	add hl,sp
3475	dd 21 00 00 	ld ix,$0000	ld ix,$0000
3479	dd 39 	add ix,sp	add ix,sp
347b	f5 	push af	push af
347c	d5 	push de	push de
347d	e5 	push hl	push hl
347e	d9 	exx	exx
347f	c5 	push bc	push bc
3480	d5 	push de	push de
3481	d9 	exx	exx
3482	78 	ld a,b	ld a,b
3483	21 00 53 	ld hl,$5300	ld hl,$0000
3486	11 00 54 	ld de,$5400	ld de,$0000
3489	01 ff 00 	ld bc,$00ff	ld bc,$0000
348c	ed b0 	ldir	ldir
348e	47 	ld b,a	ld b,a
348f	cd 13 34 	call $3413	call $0000
3492	21 00 54 	ld hl,$5400	ld hl,$0000
3495	11 00 53 	ld de,$5300	ld de,$0000
3498	01 ff 00 	ld bc,$00ff	ld bc,$0000
349b	ed b0 	ldir	ldir
349d	d9 	exx	exx
349e	d1 	pop de	pop de
349f	c1 	pop bc	pop bc
34a0	d9 	exx	exx
34a1	e1 	pop hl	pop hl
34a2	d1 	pop de	pop de
34a3	f1 	pop af	pop af
34a4	18 0a 	jr $+$0c	jr $+$00
34a6	c1 	pop bc	pop bc
34a7	cb 78 	bit 7,b	bit 7,b
34a9	e1 	pop hl	pop hl
34aa	c1 	pop bc	pop bc
34ab	09 	add hl,bc	add hl,bc
34ac	39 	add hl,sp	add hl,sp
34ad	c4 67 37 	call nz,$3767	call nz,$0000
34b0	f9 	ld sp,hl	ld sp,hl
34b1	dd 23 	inc ix	inc ix
34b3	18 05 	jr $+$07	jr $+$00
34b5	d1 	pop de	pop de
34b6	dd 21 00 00 	ld ix,$0000	ld ix,$0000
34ba	c1 	pop bc	pop bc
34bb	21 ae 35 	ld hl,$35ae	ld hl,$0000
34be	b7 	or a	or a
34bf	ed 42 	sbc hl,bc	sbc hl,bc
34c1	28 1a 	jr z,$+$1c	jr z,$+$00
34c3	b7 	or a	or a
34c4	20 0f 	jr nz,$+$11	jr nz,$+$00
34c6	21 f4 2a 	ld hl,$2af4	ld hl,$0000
34c9	ed 42 	sbc hl,bc	sbc hl,bc
34cb	28 a0 	jr z,$-$5e	jr z,$-$00
34cd	21 60 27 	ld hl,$2760	ld hl,$0000
34d0	b7 	or a	or a
34d1	ed 42 	sbc hl,bc	sbc hl,bc
34d3	28 d1 	jr z,$-$2d	jr z,$-$00
34d5	dd e5 	push ix	push ix
34d7	e1 	pop hl	pop hl
34d8	7c 	ld a,h	ld a,h
34d9	b5 	or l	or l
34da	c5 	push bc	push bc
34db	eb 	ex de,hl	ex de,hl
34dc	e9 	jp (hl)	jp (hl)
34dd	dd e1 	pop ix	pop ix
34df	b7 	or a	or a
34e0	28 20 	jr z,$+$22	jr z,$+$00
34e2	dd e5 	push ix	push ix
34e4	c1 	pop bc	pop bc
34e5	cb 47 	bit 0,a	bit 0,a
34e7	28 07 	jr z,$+$09	jr z,$+$00
34e9	21 f0 55 	ld hl,$55f0	ld hl,$0000
34ec	ed 42 	sbc hl,bc	sbc hl,bc
34ee	28 12 	jr z,$+$14	jr z,$+$00
34f0	b7 	or a	or a
34f1	cb 4f 	bit 1,a	bit 1,a
34f3	28 07 	jr z,$+$09	jr z,$+$00
34f5	21 ea 55 	ld hl,$55ea	ld hl,$0000
34f8	ed 42 	sbc hl,bc	sbc hl,bc
34fa	28 06 	jr z,$+$08	jr z,$+$00
34fc	c5 	push bc	push bc
34fd	01 ae 35 	ld bc,$35ae	ld bc,$0000
3500	18 d8 	jr $-$26	jr $-$00
3502	c1 	pop bc	pop bc
3503	cb 70 	bit 6,b	bit 6,b
3505	20 14 	jr nz,$+$16	jr nz,$+$00
3507	cb 78 	bit 7,b	bit 7,b
3509	20 23 	jr nz,$+$25	jr nz,$+$00
350b	e1 	pop hl	pop hl
350c	d9 	exx	exx
350d	e1 	pop hl	pop hl
350e	d9 	exx	exx
350f	cb 60 	bit 4,b	bit 4,b
3511	20 a7 	jr nz,$-$57	jr nz,$-$00
3513	f5 	push af	push af
3514	78 	ld a,b	ld a,b
3515	cd 74 32 	call $3274	call $0000
3518	f1 	pop af	pop af
3519	18 9f 	jr $-$5f	jr $-$00
351b	e1 	pop hl	pop hl
351c	cb 60 	bit 4,b	bit 4,b
351e	20 9a 	jr nz,$-$64	jr nz,$-$00
3520	dd 75 00 	ld (ix),l	ld (ix),l
3523	dd 74 01 	ld (ix+$01),h	ld (ix+$00),h
3526	18 92 	jr $-$6c	jr $-$00
3528	06 00 	ld b,$00	ld b,$00
352a	09 	add hl,bc	add hl,bc
352b	f9 	ld sp,hl	ld sp,hl
352c	18 8c 	jr $-$72	jr $-$00
352e	21 00 00 	ld hl,$0000	ld hl,$0000
3531	39 	add hl,sp	add hl,sp
3532	cb 60 	bit 4,b	bit 4,b
3534	20 f2 	jr nz,$-$0c	jr nz,$-$00
3536	f5 	push af	push af
3537	d5 	push de	push de
3538	59 	ld e,c	ld e,c
3539	78 	ld a,b	ld a,b
353a	cd c5 32 	call $32c5	call $0000
353d	d1 	pop de	pop de
353e	f1 	pop af	pop af
353f	f9 	ld sp,hl	ld sp,hl
3540	18 ea 	jr $-$14	jr $-$00
3542	d1 	pop de	pop de
3543	fd 23 	inc iy	inc iy
3545	cd 8f 45 	call $458f	call $0000
3548	fe f8 	cp $f8	cp $00
354a	20 08 	jr nz,$+$0a	jr nz,$+$00
354c	08 	ex af,af'	ex af,af'
354d	3c 	inc a	inc a
354e	08 	ex af,af'	ex af,af'
354f	fd 23 	inc iy	inc iy
3551	cd 8f 45 	call $458f	call $0000
3554	d5 	push de	push de
3555	d9 	exx	exx
3556	c5 	push bc	push bc
3557	d5 	push de	push de
3558	e5 	push hl	push hl
3559	d9 	exx	exx
355a	cd 5a 26 	call $265a	call $0000
355d	d9 	exx	exx
355e	e1 	pop hl	pop hl
355f	d1 	pop de	pop de
3560	c1 	pop bc	pop bc
3561	d9 	exx	exx
3562	d1 	pop de	pop de
3563	cb 77 	bit 6,a	bit 6,a
3565	20 12 	jr nz,$+$14	jr nz,$+$00
3567	b7 	or a	or a
3568	fa 83 35 	jp m,$3583	jp m,$0000
356b	d9 	exx	exx
356c	e5 	push hl	push hl
356d	d9 	exx	exx
356e	47 	ld b,a	ld b,a
356f	cd a9 19 	call $19a9	call $0000
3572	d9 	exx	exx
3573	e3 	ex (sp),hl	ex (sp),hl
3574	d9 	exx	exx
3575	e5 	push hl	push hl
3576	c5 	push bc	push bc
3577	18 30 	jr $+$32	jr $+$00
3579	dd 4e 00 	ld c,(ix)	ld c,(ix)
357c	dd 46 01 	ld b,(ix+$01)	ld b,(ix+$00)
357f	c5 	push bc	push bc
3580	f5 	push af	push af
3581	18 26 	jr $+$28	jr $+$00
3583	f5 	push af	push af
3584	d5 	push de	push de
3585	d9 	exx	exx
3586	e5 	push hl	push hl
3587	d9 	exx	exx
3588	cd 92 1a 	call $1a92	call $0000
358b	d9 	exx	exx
358c	e1 	pop hl	pop hl
358d	d9 	exx	exx
358e	4b 	ld c,e	ld c,e
358f	d1 	pop de	pop de
3590	cd 0a 33 	call $330a	call $0000
3593	f1 	pop af	pop af
3594	21 00 00 	ld hl,$0000	ld hl,$0000
3597	45 	ld b,l	ld b,l
3598	ed 42 	sbc hl,bc	sbc hl,bc
359a	39 	add hl,sp	add hl,sp
359b	f9 	ld sp,hl	ld sp,hl
359c	47 	ld b,a	ld b,a
359d	c5 	push bc	push bc
359e	28 09 	jr z,$+$0b	jr z,$+$00
35a0	d5 	push de	push de
35a1	11 00 53 	ld de,$5300	ld de,$0000
35a4	eb 	ex de,hl	ex de,hl
35a5	45 	ld b,l	ld b,l
35a6	ed b0 	ldir	ldir
35a8	d1 	pop de	pop de
35a9	dd e5 	push ix	push ix
35ab	cd ae 35 	call $35ae	call $0000
35ae	cd 0a 33 	call $330a	call $0000
35b1	cd 8f 45 	call $458f	call $0000
35b4	fe 2c 	cp $2c	cp $00
35b6	28 8b 	jr z,$-$73	jr z,$-$00
35b8	eb 	ex de,hl	ex de,hl
35b9	e9 	jp (hl)	jp (hl)
35ba	cd 8f 45 	call $458f	call $0000
35bd	fe 8b 	cp $8b	cp $00
35bf	d0 	ret nc	ret nc
35c0	fe 3a 	cp $3a	cp $00
35c2	d0 	ret nc	ret nc
35c3	fe 0d 	cp $0d	cp $00
35c5	c9 	ret	ret
35c6	cd ba 35 	call $35ba	call $0000
35c9	c8 	ret z	ret z
35ca	fd 23 	inc iy	inc iy
35cc	fe 22 	cp $22	cp $00
35ce	cc 1d 37 	call z,$371d	call z,$0000
35d1	18 f3 	jr $-$0b	jr $-$00
35d3	cd 8f 45 	call $458f	call $0000
35d6	fd 23 	inc iy	inc iy
35d8	fe 3d 	cp $3d	cp $00
35da	c8 	ret z	ret z
35db	3e 04 	ld a,$04	ld a,$00
35dd	c3 c8 3f 	jp $3fc8	jp $0000
35e0	fe 8a 	cp $8a	cp $00
35e2	28 0c 	jr z,$+$0e	jr z,$+$00
35e4	fe 89 	cp $89	cp $00
35e6	28 38 	jr z,$+$3a	jr z,$+$00
35e8	fe 27 	cp $27	cp $00
35ea	c0 	ret nz	ret nz
35eb	cd 7f 41 	call $417f	call $0000
35ee	af 	xor a	xor a
35ef	c9 	ret	ret
35f0	c5 	push bc	push bc
35f1	cd b7 18 	call $18b7	call $0000
35f4	d9 	exx	exx
35f5	c1 	pop bc	pop bc
35f6	fd 7e 00 	ld a,(iy)	ld a,(iy)
35f9	fe 2c 	cp $2c	cp $00
35fb	28 11 	jr z,$+$13	jr z,$+$00
35fd	cd 32 21 	call $2132	call $0000
3600	7d 	ld a,l	ld a,l
3601	21 fb 55 	ld hl,$55fb	ld hl,$0000
3604	be 	cp (hl)	cp (hl)
3605	c8 	ret z	ret z
3606	f5 	push af	push af
3607	dc 7f 41 	call c,$417f	call c,$0000
360a	f1 	pop af	pop af
360b	96 	sub (hl)	sub (hl)
360c	18 19 	jr $+$1b	jr $+$00
360e	fd 23 	inc iy	inc iy
3610	c5 	push bc	push bc
3611	e5 	push hl	push hl
3612	cd b7 18 	call $18b7	call $0000
3615	d9 	exx	exx
3616	d1 	pop de	pop de
3617	c1 	pop bc	pop bc
3618	cd 32 21 	call $2132	call $0000
361b	cd 20 0e 	call $0e20	call $0000
361e	af 	xor a	xor a
361f	c9 	ret	ret
3620	c5 	push bc	push bc
3621	cd e4 18 	call $18e4	call $0000
3624	d9 	exx	exx
3625	7d 	ld a,l	ld a,l
3626	c1 	pop bc	pop bc
3627	b7 	or a	or a
3628	c8 	ret z	ret z
3629	c5 	push bc	push bc
362a	47 	ld b,a	ld b,a
362b	3e 20 	ld a,$20	ld a,$00
362d	cd 86 41 	call $4186	call $0000
3630	10 f9 	djnz $-$05	djnz $-$00
3632	c1 	pop bc	pop bc
3633	af 	xor a	xor a
3634	c9 	ret	ret
3635	21 00 53 	ld hl,$5300	ld hl,$0000
3638	1c 	inc e	inc e
3639	1d 	dec e	dec e
363a	c8 	ret z	ret z
363b	7e 	ld a,(hl)	ld a,(hl)
363c	23 	inc hl	inc hl
363d	cd 86 41 	call $4186	call $0000
3640	18 f7 	jr $-$07	jr $-$00
3642	f5 	push af	push af
3643	c5 	push bc	push bc
3644	e5 	push hl	push hl
3645	fd e3 	ex (sp),iy	ex (sp),iy
3647	cd 5f 36 	call $365f	call $0000
364a	cd 8f 45 	call $458f	call $0000
364d	fd e3 	ex (sp),iy	ex (sp),iy
364f	e1 	pop hl	pop hl
3650	c1 	pop bc	pop bc
3651	f1 	pop af	pop af
3652	c9 	ret	ret
3653	11 00 53 	ld de,$5300	ld de,$0000
3656	7e 	ld a,(hl)	ld a,(hl)
3657	12 	ld (de),a	ld (de),a
3658	fe 0d 	cp $0d	cp $00
365a	c8 	ret z	ret z
365b	23 	inc hl	inc hl
365c	1c 	inc e	inc e
365d	18 f7 	jr $-$07	jr $-$00
365f	cd 8f 45 	call $458f	call $0000
3662	fe 22 	cp $22	cp $00
3664	fd 23 	inc iy	inc iy
3666	ca fe 19 	jp z,$19fe	jp z,$0000
3669	fd 2b 	dec iy	dec iy
366b	11 00 53 	ld de,$5300	ld de,$0000
366e	fd 7e 00 	ld a,(iy)	ld a,(iy)
3671	12 	ld (de),a	ld (de),a
3672	fe 2c 	cp $2c	cp $00
3674	c8 	ret z	ret z
3675	fe 0d 	cp $0d	cp $00
3677	c8 	ret z	ret z
3678	fd 23 	inc iy	inc iy
367a	1c 	inc e	inc e
367b	18 f1 	jr $-$0d	jr $-$00
367d	3e dc 	ld a,$dc	ld a,$00
367f	06 00 	ld b,$00	ld b,$00
3681	4e 	ld c,(hl)	ld c,(hl)
3682	0c 	inc c	inc c
3683	0d 	dec c	dec c
3684	28 0c 	jr z,$+$0e	jr z,$+$00
3686	23 	inc hl	inc hl
3687	23 	inc hl	inc hl
3688	23 	inc hl	inc hl
3689	be 	cp (hl)	cp (hl)
368a	c8 	ret z	ret z
368b	0d 	dec c	dec c
368c	0d 	dec c	dec c
368d	0d 	dec c	dec c
368e	09 	add hl,bc	add hl,bc
368f	c3 81 36 	jp $3681	jp $0000
3692	2b 	dec hl	dec hl
3693	37 	scf	scf
3694	c9 	ret	ret
3695	2e 00 	ld l,$00	ld l,$00
3697	fd 7e 00 	ld a,(iy)	ld a,(iy)
369a	b7 	or a	or a
369b	28 34 	jr z,$+$36	jr z,$+$00
369d	fd 7e 03 	ld a,(iy+$03)	ld a,(iy+$00)
36a0	b8 	cp b	cp b
36a1	28 1d 	jr z,$+$1f	jr z,$+$00
36a3	b9 	cp c	cp c
36a4	28 1a 	jr z,$+$1c	jr z,$+$00
36a6	ba 	cp d	cp d
36a7	28 22 	jr z,$+$24	jr z,$+$00
36a9	c5 	push bc	push bc
36aa	06 00 	ld b,$00	ld b,$00
36ac	fd 4e 00 	ld c,(iy)	ld c,(iy)
36af	fd 09 	add iy,bc	add iy,bc
36b1	fd 7e fe 	ld a,(iy-$02)	ld a,(iy-$00)
36b4	bb 	cp e	cp e
36b5	79 	ld a,c	ld a,c
36b6	c1 	pop bc	pop bc
36b7	20 de 	jr nz,$-$20	jr nz,$-$00
36b9	fe 05 	cp $05	cp $00
36bb	38 da 	jr c,$-$24	jr c,$-$00
36bd	2c 	inc l	inc l
36be	18 d7 	jr $-$27	jr $-$00
36c0	2c 	inc l	inc l
36c1	2d 	dec l	dec l
36c2	20 e2 	jr nz,$-$1c	jr nz,$-$00
36c4	01 04 00 	ld bc,$0004	ld bc,$0000
36c7	fd 09 	add iy,bc	add iy,bc
36c9	af 	xor a	xor a
36ca	c9 	ret	ret
36cb	2d 	dec l	dec l
36cc	f2 a9 36 	jp p,$36a9	jp p,$0000
36cf	18 f3 	jr $-$0b	jr $-$00
36d1	f6 01 	or $01	or $00
36d3	c9 	ret	ret
36d4	fd 7e 00 	ld a,(iy)	ld a,(iy)
36d7	fd 23 	inc iy	inc iy
36d9	fe 22 	cp $22	cp $00
36db	cc 1d 37 	call z,$371d	call z,$0000
36de	fe f4 	cp $f4	cp $00
36e0	28 22 	jr z,$+$24	jr z,$+$00
36e2	fe 10 	cp $10	cp $00
36e4	28 30 	jr z,$+$32	jr z,$+$00
36e6	b8 	cp b	cp b
36e7	28 29 	jr z,$+$2b	jr z,$+$00
36e9	b9 	cp c	cp c
36ea	28 23 	jr z,$+$25	jr z,$+$00
36ec	fe 0d 	cp $0d	cp $00
36ee	20 e4 	jr nz,$-$1a	jr nz,$-$00
36f0	fd 7e 00 	ld a,(iy)	ld a,(iy)
36f3	fd 23 	inc iy	inc iy
36f5	b7 	or a	or a
36f6	ca 57 25 	jp z,$2557	jp z,$0000
36f9	fd 23 	inc iy	inc iy
36fb	fd 23 	inc iy	inc iy
36fd	fd 7e 00 	ld a,(iy)	ld a,(iy)
3700	fe dc 	cp $dc	cp $00
3702	20 d0 	jr nz,$-$2e	jr nz,$-$00
3704	fd 7e 00 	ld a,(iy)	ld a,(iy)
3707	fd 23 	inc iy	inc iy
3709	fe 0d 	cp $0d	cp $00
370b	20 f7 	jr nz,$-$07	jr nz,$-$00
370d	18 e1 	jr $-$1d	jr $-$00
370f	14 	inc d	inc d
3710	18 c2 	jr $-$3c	jr $-$00
3712	15 	dec d	dec d
3713	20 bf 	jr nz,$-$3f	jr nz,$-$00
3715	c9 	ret	ret
3716	cd 8f 45 	call $458f	call $0000
3719	fd 23 	inc iy	inc iy
371b	18 b7 	jr $-$47	jr $-$00
371d	fd 7e 00 	ld a,(iy)	ld a,(iy)
3720	fd 23 	inc iy	inc iy
3722	fe 0d 	cp $0d	cp $00
3724	ca 2c 37 	jp z,$372c	jp z,$0000
3727	fe 22 	cp $22	cp $00
3729	20 f2 	jr nz,$-$0c	jr nz,$-$00
372b	c9 	ret	ret
372c	3e 09 	ld a,$09	ld a,$00
372e	c3 c8 3f 	jp $3fc8	jp $0000
3731	62 	ld h,d	ld h,d
3732	6b 	ld l,e	ld l,e
3733	fe 01 	cp $01	cp $00
3735	c8 	ret z	ret z
3736	fe 05 	cp $05	cp $00
3738	29 	add hl,hl	add hl,hl
3739	d8 	ret c	ret c
373a	29 	add hl,hl	add hl,hl
373b	d8 	ret c	ret c
373c	eb 	ex de,hl	ex de,hl
373d	c0 	ret nz	ret nz
373e	19 	add hl,de	add hl,de
373f	eb 	ex de,hl	ex de,hl
3740	c9 	ret	ret
3741	eb 	ex de,hl	ex de,hl
3742	21 00 00 	ld hl,$0000	ld hl,$0000
3745	3e 10 	ld a,$10	ld a,$00
3747	29 	add hl,hl	add hl,hl
3748	d8 	ret c	ret c
3749	cb 23 	sla e	sla e
374b	cb 12 	rl d	rl d
374d	30 02 	jr nc,$+$04	jr nc,$+$00
374f	09 	add hl,bc	add hl,bc
3750	d8 	ret c	ret c
3751	3d 	dec a	dec a
3752	20 f3 	jr nz,$-$0b	jr nz,$-$00
3754	c9 	ret	ret
3755	cd 8f 45 	call $458f	call $0000
3758	fe 23 	cp $23	cp $00
375a	3e 2d 	ld a,$2d	ld a,$00
375c	c2 c8 3f 	jp nz,$3fc8	jp nz,$0000
375f	fd 23 	inc iy	inc iy
3761	cd e4 18 	call $18e4	call $0000
3764	d9 	exx	exx
3765	eb 	ex de,hl	ex de,hl
3766	c9 	ret	ret
3767	f5 	push af	push af
3768	c5 	push bc	push bc
3769	d5 	push de	push de
376a	e5 	push hl	push hl
376b	af 	xor a	xor a
376c	50 	ld d,b	ld d,b
376d	59 	ld e,c	ld e,c
376e	47 	ld b,a	ld b,a
376f	d5 	push de	push de
3770	2b 	dec hl	dec hl
3771	56 	ld d,(hl)	ld d,(hl)
3772	2b 	dec hl	dec hl
3773	5e 	ld e,(hl)	ld e,(hl)
3774	2b 	dec hl	dec hl
3775	4e 	ld c,(hl)	ld c,(hl)
3776	2b 	dec hl	dec hl
3777	e5 	push hl	push hl
3778	2a e0 55 	ld hl,($55e0)	ld hl,($0000)
377b	eb 	ex de,hl	ex de,hl
377c	09 	add hl,bc	add hl,bc
377d	ed 52 	sbc hl,de	sbc hl,de
377f	20 07 	jr nz,$+$09	jr nz,$+$00
3781	19 	add hl,de	add hl,de
3782	ed 42 	sbc hl,bc	sbc hl,bc
3784	22 e0 55 	ld ($55e0),hl	ld ($0000),hl
3787	b4 	or h	or h
3788	d1 	pop de	pop de
3789	e1 	pop hl	pop hl
378a	0e 04 	ld c,$04	ld c,$00
378c	b7 	or a	or a
378d	ed 42 	sbc hl,bc	sbc hl,bc
378f	eb 	ex de,hl	ex de,hl
3790	20 dd 	jr nz,$-$21	jr nz,$-$00
3792	b7 	or a	or a
3793	e1 	pop hl	pop hl
3794	d1 	pop de	pop de
3795	c1 	pop bc	pop bc
3796	b7 	or a	or a
3797	20 cf 	jr nz,$-$2f	jr nz,$-$00
3799	f1 	pop af	pop af
379a	c9 	ret	ret
379b	c3 c5 37 	jp $37c5	jp $0000
379e	c3 33 38 	jp $3833	jp $0000
37a1	c3 67 26 	jp $2667	jp $0000
37a4	c3 d9 3f 	jp $3fd9	jp $0000
37a7	c3 7e 45 	jp $457e	jp $0000
37aa	c3 6c 45 	jp $456c	jp $0000
37ad	c3 e4 18 	jp $18e4	jp $0000
37b0	c3 b7 18 	jp $18b7	jp $0000
37b3	c3 c0 18 	jp $18c0	jp $0000
37b6	c3 37 0a 	jp $0a37	jp $0000
37b9	c3 5d 06 	jp $065d	jp $0000
37bc	c3 65 06 	jp $0665	jp $0000
37bf	c3 6e 06 	jp $066e	jp $0000
37c2	c3 55 06 	jp $0655	jp $0000
37c5	21 00 55 	ld hl,$5500	ld hl,$0000
37c8	f9 	ld sp,hl	ld sp,hl
37c9	36 0a 	ld (hl),$0a	ld (hl),$00
37cb	2c 	inc l	inc l
37cc	36 09 	ld (hl),$09	ld (hl),$00
37ce	2c 	inc l	inc l
37cf	af 	xor a	xor a
37d0	77 	ld (hl),a	ld (hl),a
37d1	2c 	inc l	inc l
37d2	20 fc 	jr nz,$-$02	jr nz,$-$00
37d4	3e 37 	ld a,$37	ld a,$00
37d6	32 fe 55 	ld ($55fe),a	ld ($0000),a
37d9	21 12 38 	ld hl,$3812	ld hl,$0000
37dc	22 ee 55 	ld ($55ee),hl	ld ($0000),hl
37df	cd 82 05 	call $0582	call $0000
37e2	ed 53 e2 55 	ld ($55e2),de	ld ($0000),de
37e6	22 dc 55 	ld ($55dc),hl	ld ($0000),hl
37e9	cd c2 40 	call $40c2	call $0000
37ec	c2 d6 24 	jp nz,$24d6	jp nz,$0000
37ef	cd 7e 45 	call $457e	call $0000
37f2	42 	ld b,d	ld b,d
37f3	42 	ld b,d	ld b,d
37f4	43 	ld b,e	ld b,e
37f5	20 42 	jr nz,$+$44	jr nz,$+$00
37f7	41 	ld b,c	ld b,c
37f8	53 	ld d,e	ld d,e
37f9	49 43 	ld.lis b,e	ld.lis b,e
37fb	20 28 	jr nz,$+$2a	jr nz,$+$00
37fd	5a 	ld e,d	ld e,d
37fe	38 30 	jr c,$+$32	jr c,$+$00
3800	29 	add hl,hl	add hl,hl
3801	20 56 	jr nz,$+$58	jr nz,$+$00
3803	65 	ld h,l	ld h,l
3804	72 	ld (hl),d	ld (hl),d
3805	73 	ld (hl),e	ld (hl),e
3806	69 	ld l,c	ld l,c
3807	6f 	ld l,a	ld l,a
3808	6e 	ld l,(hl)	ld l,(hl)
3809	20 35 	jr nz,$+$37	jr nz,$+$00
380b	2e 30 	ld l,$30	ld l,$00
380d	30 20 	jr nc,$+$22	jr nc,$+$00
380f	20 0d 	jr nz,$+$0f	jr nz,$+$00
3811	0a 	ld a,(bc)	ld a,(bc)
3812	28 43 	jr z,$+$45	jr z,$+$00
3814	29 	add hl,hl	add hl,hl
3815	20 43 	jr nz,$+$45	jr nz,$+$00
3817	6f 	ld l,a	ld l,a
3818	70 	ld (hl),b	ld (hl),b
3819	79 	ld a,c	ld a,c
381a	72 	ld (hl),d	ld (hl),d
381b	69 	ld l,c	ld l,c
381c	67 	ld h,a	ld h,a
381d	68 	ld l,b	ld l,b
381e	74 	ld (hl),h	ld (hl),h
381f	20 52 	jr nz,$+$54	jr nz,$+$00
3821	2e 54 	ld l,$54	ld l,$00
3823	2e 52 	ld l,$52	ld l,$00
3825	75 	ld (hl),l	ld (hl),l
3826	73 	ld (hl),e	ld (hl),e
3827	73 	ld (hl),e	ld (hl),e
3828	65 	ld h,l	ld h,l
3829	6c 	ld l,h	ld l,h
382a	6c 	ld l,h	ld l,h
382b	20 32 	jr nz,$+$34	jr nz,$+$00
382d	30 32 	jr nc,$+$34	jr nc,$+$00
382f	34 	inc (hl)	inc (hl)
3830	0d 	dec c	dec c
3831	0a 	ld a,(bc)	ld a,(bc)
3832	00 	nop	nop
3833	f6 37 	or $37	or $00
3835	ed 7b e2 55 	ld sp,($55e2)	ld sp,($0000)
3839	cd 95 05 	call $0595	call $0000
383c	21 fe 55 	ld hl,$55fe	ld hl,$0000
383f	7e 	ld a,(hl)	ld a,(hl)
3840	e6 0f 	and $0f	and $00
3842	f6 30 	or $30	or $00
3844	77 	ld (hl),a	ld (hl),a
3845	ed 62 	sbc hl,hl	sbc hl,hl
3847	22 ea 55 	ld ($55ea),hl	ld ($0000),hl
384a	22 ec 55 	ld ($55ec),hl	ld ($0000),hl
384d	22 f4 55 	ld ($55f4),hl	ld ($0000),hl
3850	2a e8 55 	ld hl,($55e8)	ld hl,($0000)
3853	e5 	push hl	push hl
3854	7c 	ld a,h	ld a,h
3855	b5 	or l	or l
3856	28 17 	jr z,$+$19	jr z,$+$00
3858	e5 	push hl	push hl
3859	cd 1a 42 	call $421a	call $0000
385c	e1 	pop hl	pop hl
385d	ed 4b ff 55 	ld bc,($55ff)	ld bc,($0000)
3861	06 00 	ld b,$00	ld b,$00
3863	09 	add hl,bc	add hl,bc
3864	da 33 44 	jp c,$4433	jp c,$0000
3867	22 e8 55 	ld ($55e8),hl	ld ($0000),hl
386a	3e 20 	ld a,$20	ld a,$00
386c	cd 86 41 	call $4186	call $0000
386f	21 00 53 	ld hl,$5300	ld hl,$0000
3872	cd e9 05 	call $05e9	call $0000
3875	af 	xor a	xor a
3876	32 fb 55 	ld ($55fb),a	ld ($0000),a
3879	fd 21 00 53 	ld iy,$5300	ld iy,$0000
387d	21 65 3c 	ld hl,$3c65	ld hl,$0000
3880	cd 2a 40 	call $402a	call $0000
3883	e1 	pop hl	pop hl
3884	20 19 	jr nz,$+$1b	jr nz,$+$00
3886	87 	add a,a	add a,a
3887	4f 	ld c,a	ld c,a
3888	7c 	ld a,h	ld a,h
3889	b5 	or l	or l
388a	20 0f 	jr nz,$+$11	jr nz,$+$00
388c	47 	ld b,a	ld b,a
388d	21 95 3c 	ld hl,$3c95	ld hl,$0000
3890	09 	add hl,bc	add hl,bc
3891	7e 	ld a,(hl)	ld a,(hl)
3892	23 	inc hl	inc hl
3893	66 	ld h,(hl)	ld h,(hl)
3894	6f 	ld l,a	ld l,a
3895	fd 23 	inc iy	inc iy
3897	cd 8f 45 	call $458f	call $0000
389a	e9 	jp (hl)	jp (hl)
389b	fd 21 00 53 	ld iy,$5300	ld iy,$0000
389f	7c 	ld a,h	ld a,h
38a0	b5 	or l	or l
38a1	cc 0e 44 	call z,$440e	call z,$0000
38a4	cd 8f 45 	call $458f	call $0000
38a7	11 00 54 	ld de,$5400	ld de,$0000
38aa	0e 01 	ld c,$01	ld c,$00
38ac	e5 	push hl	push hl
38ad	cd 9c 44 	call $449c	call $0000
38b0	e1 	pop hl	pop hl
38b1	12 	ld (de),a	ld (de),a
38b2	af 	xor a	xor a
38b3	47 	ld b,a	ld b,a
38b4	4b 	ld c,e	ld c,e
38b5	13 	inc de	inc de
38b6	12 	ld (de),a	ld (de),a
38b7	7c 	ld a,h	ld a,h
38b8	b5 	or l	or l
38b9	fd 21 00 54 	ld iy,$5400	ld iy,$0000
38bd	ca 1d 25 	jp z,$251d	jp z,$0000
38c0	c5 	push bc	push bc
38c1	cd c7 41 	call $41c7	call $0000
38c4	cc 6d 40 	call z,$406d	call z,$0000
38c7	c1 	pop bc	pop bc
38c8	79 	ld a,c	ld a,c
38c9	b7 	or a	or a
38ca	28 39 	jr z,$+$3b	jr z,$+$00
38cc	c6 04 	add a,$04	add a,$00
38ce	4f 	ld c,a	ld c,a
38cf	d5 	push de	push de
38d0	c5 	push bc	push bc
38d1	eb 	ex de,hl	ex de,hl
38d2	c5 	push bc	push bc
38d3	cd a9 40 	call $40a9	call $0000
38d6	c1 	pop bc	pop bc
38d7	e5 	push hl	push hl
38d8	09 	add hl,bc	add hl,bc
38d9	e5 	push hl	push hl
38da	24 	inc h	inc h
38db	af 	xor a	xor a
38dc	ed 72 	sbc hl,sp	sbc hl,sp
38de	e1 	pop hl	pop hl
38df	d2 c8 3f 	jp nc,$3fc8	jp nc,$0000
38e2	e3 	ex (sp),hl	ex (sp),hl
38e3	e5 	push hl	push hl
38e4	23 	inc hl	inc hl
38e5	b7 	or a	or a
38e6	ed 52 	sbc hl,de	sbc hl,de
38e8	44 	ld b,h	ld b,h
38e9	4d 	ld c,l	ld c,l
38ea	e1 	pop hl	pop hl
38eb	d1 	pop de	pop de
38ec	28 02 	jr z,$+$04	jr z,$+$00
38ee	ed b8 	lddr	lddr
38f0	c1 	pop bc	pop bc
38f1	d1 	pop de	pop de
38f2	23 	inc hl	inc hl
38f3	71 	ld (hl),c	ld (hl),c
38f4	23 	inc hl	inc hl
38f5	73 	ld (hl),e	ld (hl),e
38f6	23 	inc hl	inc hl
38f7	72 	ld (hl),d	ld (hl),d
38f8	23 	inc hl	inc hl
38f9	11 00 54 	ld de,$5400	ld de,$0000
38fc	eb 	ex de,hl	ex de,hl
38fd	0d 	dec c	dec c
38fe	0d 	dec c	dec c
38ff	0d 	dec c	dec c
3900	ed b0 	ldir	ldir
3902	cd 9e 40 	call $409e	call $0000
3905	c3 34 38 	jp $3834	jp $0000
3908	80 	add a,b	add a,b
3909	41 	ld b,c	ld b,c
390a	4e 	ld c,(hl)	ld c,(hl)
390b	44 	ld b,h	ld b,h
390c	94 	sub h	sub h
390d	41 	ld b,c	ld b,c
390e	42 	ld b,d	ld b,d
390f	53 	ld d,e	ld d,e
3910	95 	sub l	sub l
3911	41 	ld b,c	ld b,c
3912	43 	ld b,e	ld b,e
3913	53 	ld d,e	ld d,e
3914	96 	sub (hl)	sub (hl)
3915	41 	ld b,c	ld b,c
3916	44 	ld b,h	ld b,h
3917	56 	ld d,(hl)	ld d,(hl)
3918	41 	ld b,c	ld b,c
3919	4c 	ld c,h	ld c,h
391a	97 	sub a	sub a
391b	41 	ld b,c	ld b,c
391c	53 	ld d,e	ld d,e
391d	43 	ld b,e	ld b,e
391e	98 	sbc a,b	sbc a,b
391f	41 	ld b,c	ld b,c
3920	53 	ld d,e	ld d,e
3921	4e 	ld c,(hl)	ld c,(hl)
3922	99 	sbc a,c	sbc a,c
3923	41 	ld b,c	ld b,c
3924	54 	ld d,h	ld d,h
3925	4e 	ld c,(hl)	ld c,(hl)
3926	9a 	sbc a,d	sbc a,d
3927	42 	ld b,d	ld b,d
3928	47 	ld b,a	ld b,a
3929	45 	ld b,l	ld b,l
392a	54 	ld d,h	ld d,h
392b	20 d5 	jr nz,$-$29	jr nz,$-$00
392d	42 	ld b,d	ld b,d
392e	50 	ld d,b	ld d,b
392f	55 	ld d,l	ld d,l
3930	54 	ld d,h	ld d,h
3931	20 0f 	jr nz,$+$11	jr nz,$+$00
3933	42 	ld b,d	ld b,d
3934	59 	ld e,c	ld e,c
3935	20 fb 	jr nz,$-$03	jr nz,$-$00
3937	43 	ld b,e	ld b,e
3938	4f 	ld c,a	ld c,a
3939	4c 	ld c,h	ld c,h
393a	4f 	ld c,a	ld c,a
393b	55 	ld d,l	ld d,l
393c	52 fb 	ei.sil	ei.sil
393e	43 	ld b,e	ld b,e
393f	4f 	ld c,a	ld c,a
3940	4c 	ld c,h	ld c,h
3941	4f 	ld c,a	ld c,a
3942	52 d6 43 	sub.sil $43	sub.sil $00
3945	41 	ld b,c	ld b,c
3946	4c 	ld c,h	ld c,h
3947	4c 	ld c,h	ld c,h
3948	c8 	ret z	ret z
3949	43 	ld b,e	ld b,e
394a	41 	ld b,c	ld b,c
394b	53 	ld d,e	ld d,e
394c	45 	ld b,l	ld b,l
394d	d7 	rst $10	rst $00
394e	43 	ld b,e	ld b,e
394f	48 	ld c,b	ld c,b
3950	41 	ld b,c	ld b,c
3951	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3953	bd 	cp l	cp l
3954	43 	ld b,e	ld b,e
3955	48 	ld c,b	ld c,b
3956	52 24 	inc.sil h	inc.sil h
3958	d8 	ret c	ret c
3959	43 	ld b,e	ld b,e
395a	4c 	ld c,h	ld c,h
395b	45 	ld b,l	ld b,l
395c	41 	ld b,c	ld b,c
395d	52 20 d9 	jr.sil nz,$-$24	jr.sil nz,$-$00
3960	43 	ld b,e	ld b,e
3961	4c 	ld c,h	ld c,h
3962	4f 	ld c,a	ld c,a
3963	53 	ld d,e	ld d,e
3964	45 	ld b,l	ld b,l
3965	20 da 	jr nz,$-$24	jr nz,$-$00
3967	43 	ld b,e	ld b,e
3968	4c 	ld c,h	ld c,h
3969	47 	ld b,a	ld b,a
396a	20 db 	jr nz,$-$23	jr nz,$-$00
396c	43 	ld b,e	ld b,e
396d	4c 	ld c,h	ld c,h
396e	53 	ld d,e	ld d,e
396f	20 9b 	jr nz,$-$63	jr nz,$-$00
3971	43 	ld b,e	ld b,e
3972	4f 	ld c,a	ld c,a
3973	53 	ld d,e	ld d,e
3974	9c 	sbc a,h	sbc a,h
3975	43 	ld b,e	ld b,e
3976	4f 	ld c,a	ld c,a
3977	55 	ld d,l	ld d,l
3978	4e 	ld c,(hl)	ld c,(hl)
3979	54 	ld d,h	ld d,h
397a	20 01 	jr nz,$+$03	jr nz,$+$00
397c	43 	ld b,e	ld b,e
397d	49 	noni.lis	noni.lis
397e	52 43 	ld.sil b,e	ld.sil b,e
3980	4c 	ld c,h	ld c,h
3981	45 	ld b,l	ld b,l
3982	dc 44 41 	call c,$4144	call c,$0000
3985	54 	ld d,h	ld d,h
3986	41 	ld b,c	ld b,c
3987	9d 	sbc a,l	sbc a,l
3988	44 	ld b,h	ld b,h
3989	45 	ld b,l	ld b,l
398a	47 	ld b,a	ld b,a
398b	dd 44 	ld b,ixh	ld b,ixh
398d	45 	ld b,l	ld b,l
398e	46 	ld b,(hl)	ld b,(hl)
398f	81 	add a,c	add a,c
3990	44 	ld b,h	ld b,h
3991	49 56 	ld.lis d,(hl)	ld.lis d,(hl)
3993	de 44 	sbc a,$44	sbc a,$00
3995	49 4d 	ld.lis c,l	ld.lis c,l
3997	df 	rst $18	rst $00
3998	44 	ld b,h	ld b,h
3999	52 41 	ld.sil b,c	ld.sil b,c
399b	57 	ld d,a	ld d,a
399c	e1 	pop hl	pop hl
399d	45 	ld b,l	ld b,l
399e	4e 	ld c,(hl)	ld c,(hl)
399f	44 	ld b,h	ld b,h
39a0	50 	ld d,b	ld d,b
39a1	52 4f 	ld.sil c,a	ld.sil c,a
39a3	43 	ld b,e	ld b,e
39a4	20 ce 	jr nz,$-$30	jr nz,$-$00
39a6	45 	ld b,l	ld b,l
39a7	4e 	ld c,(hl)	ld c,(hl)
39a8	44 	ld b,h	ld b,h
39a9	57 	ld d,a	ld d,a
39aa	48 	ld c,b	ld c,b
39ab	49 4c 	ld.lis c,h	ld.lis c,h
39ad	45 	ld b,l	ld b,l
39ae	20 cb 	jr nz,$-$33	jr nz,$-$00
39b0	45 	ld b,l	ld b,l
39b1	4e 	ld c,(hl)	ld c,(hl)
39b2	44 	ld b,h	ld b,h
39b3	43 	ld b,e	ld b,e
39b4	41 	ld b,c	ld b,c
39b5	53 	ld d,e	ld d,e
39b6	45 	ld b,l	ld b,l
39b7	20 cd 	jr nz,$-$31	jr nz,$-$00
39b9	45 	ld b,l	ld b,l
39ba	4e 	ld c,(hl)	ld c,(hl)
39bb	44 	ld b,h	ld b,h
39bc	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
39be	20 e0 	jr nz,$-$1e	jr nz,$-$00
39c0	45 	ld b,l	ld b,l
39c1	4e 	ld c,(hl)	ld c,(hl)
39c2	44 	ld b,h	ld b,h
39c3	20 e2 	jr nz,$-$1c	jr nz,$-$00
39c5	45 	ld b,l	ld b,l
39c6	4e 	ld c,(hl)	ld c,(hl)
39c7	56 	ld d,(hl)	ld d,(hl)
39c8	45 	ld b,l	ld b,l
39c9	4c 	ld c,h	ld c,h
39ca	4f 	ld c,a	ld c,a
39cb	50 	ld d,b	ld d,b
39cc	45 	ld b,l	ld b,l
39cd	8b 	adc a,e	adc a,e
39ce	45 	ld b,l	ld b,l
39cf	4c 	ld c,h	ld c,h
39d0	53 	ld d,e	ld d,e
39d1	45 	ld b,l	ld b,l
39d2	a0 	and b	and b
39d3	45 	ld b,l	ld b,l
39d4	56 	ld d,(hl)	ld d,(hl)
39d5	41 	ld b,c	ld b,c
39d6	4c 	ld c,h	ld c,h
39d7	9e 	sbc a,(hl)	sbc a,(hl)
39d8	45 	ld b,l	ld b,l
39d9	52 4c 	ld.sil c,h	ld.sil c,h
39db	20 85 	jr nz,$-$79	jr nz,$-$00
39dd	45 	ld b,l	ld b,l
39de	52 	noni.sil	noni.sil
39df	52 4f 	ld.sil c,a	ld.sil c,a
39e1	52 c5 	push.sil bc	push.sil bc
39e3	45 	ld b,l	ld b,l
39e4	4f 	ld c,a	ld c,a
39e5	46 	ld b,(hl)	ld b,(hl)
39e6	20 82 	jr nz,$-$7c	jr nz,$-$00
39e8	45 	ld b,l	ld b,l
39e9	4f 	ld c,a	ld c,a
39ea	52 9f 	sbc.sil a,a	sbc.sil a,a
39ec	45 	ld b,l	ld b,l
39ed	52 	noni.sil	noni.sil
39ee	52 20 10 	jr.sil nz,$+$13	jr.sil nz,$+$00
39f1	45 	ld b,l	ld b,l
39f2	58 	ld e,b	ld e,b
39f3	49 54 	ld.lis d,h	ld.lis d,h
39f5	20 a1 	jr nz,$-$5d	jr nz,$-$00
39f7	45 	ld b,l	ld b,l
39f8	58 	ld e,b	ld e,b
39f9	50 	ld d,b	ld d,b
39fa	a2 	and d	and d
39fb	45 	ld b,l	ld b,l
39fc	58 	ld e,b	ld e,b
39fd	54 	ld d,h	ld d,h
39fe	20 02 	jr nz,$+$04	jr nz,$+$00
3a00	45 	ld b,l	ld b,l
3a01	4c 	ld c,h	ld c,h
3a02	4c 	ld c,h	ld c,h
3a03	49 50 	ld.lis d,b	ld.lis d,b
3a05	53 	ld d,e	ld d,e
3a06	45 	ld b,l	ld b,l
3a07	e3 	ex (sp),hl	ex (sp),hl
3a08	46 	ld b,(hl)	ld b,(hl)
3a09	4f 	ld c,a	ld c,a
3a0a	52 a3 	and.sil e	and.sil e
3a0c	46 	ld b,(hl)	ld b,(hl)
3a0d	41 	ld b,c	ld b,c
3a0e	4c 	ld c,h	ld c,h
3a0f	53 	ld d,e	ld d,e
3a10	45 	ld b,l	ld b,l
3a11	20 03 	jr nz,$+$05	jr nz,$+$00
3a13	46 	ld b,(hl)	ld b,(hl)
3a14	49 4c 	ld.lis c,h	ld.lis c,h
3a16	4c 	ld c,h	ld c,h
3a17	a4 	and h	and h
3a18	46 	ld b,(hl)	ld b,(hl)
3a19	4e 	ld c,(hl)	ld c,(hl)
3a1a	e5 	push hl	push hl
3a1b	47 	ld b,a	ld b,a
3a1c	4f 	ld c,a	ld c,a
3a1d	54 	ld d,h	ld d,h
3a1e	4f 	ld c,a	ld c,a
3a1f	be 	cp (hl)	cp (hl)
3a20	47 	ld b,a	ld b,a
3a21	45 	ld b,l	ld b,l
3a22	54 	ld d,h	ld d,h
3a23	24 	inc h	inc h
3a24	a5 	and l	and l
3a25	47 	ld b,a	ld b,a
3a26	45 	ld b,l	ld b,l
3a27	54 	ld d,h	ld d,h
3a28	e4 47 4f 	call po,$4f47	call po,$0000
3a2b	53 	ld d,e	ld d,e
3a2c	55 	ld d,l	ld d,l
3a2d	42 	ld b,d	ld b,d
3a2e	e6 47 	and $47	and $00
3a30	43 	ld b,e	ld b,e
3a31	4f 	ld c,a	ld c,a
3a32	4c 	ld c,h	ld c,h
3a33	93 	sub e	sub e
3a34	48 	ld c,b	ld c,b
3a35	49 4d 	ld.lis c,l	ld.lis c,l
3a37	45 	ld b,l	ld b,l
3a38	4d 	ld c,l	ld c,l
3a39	20 e8 	jr nz,$-$16	jr nz,$-$00
3a3b	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a3d	50 	ld d,b	ld d,b
3a3e	55 	ld d,l	ld d,l
3a3f	54 	ld d,h	ld d,h
3a40	e7 	rst $20	rst $00
3a41	49 46 	ld.lis b,(hl)	ld.lis b,(hl)
3a43	bf 	cp a	cp a
3a44	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a46	4b 	ld c,e	ld c,e
3a47	45 	ld b,l	ld b,l
3a48	59 	ld e,c	ld e,c
3a49	24 	inc h	inc h
3a4a	a6 	and (hl)	and (hl)
3a4b	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a4d	4b 	ld c,e	ld c,e
3a4e	45 	ld b,l	ld b,l
3a4f	59 	ld e,c	ld e,c
3a50	a8 	xor b	xor b
3a51	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a53	54 	ld d,h	ld d,h
3a54	a7 	and a	and a
3a55	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a57	53 	ld d,e	ld d,e
3a58	54 	ld d,h	ld d,h
3a59	52 28 0c 	jr.sil z,$+$0f	jr.sil z,$+$00
3a5c	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a5e	53 	ld d,e	ld d,e
3a5f	54 	ld d,h	ld d,h
3a60	41 	ld b,c	ld b,c
3a61	4c 	ld c,h	ld c,h
3a62	4c 	ld c,h	ld c,h
3a63	86 	add a,(hl)	add a,(hl)
3a64	4c 	ld c,h	ld c,h
3a65	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3a67	45 	ld b,l	ld b,l
3a68	92 	sub d	sub d
3a69	4c 	ld c,h	ld c,h
3a6a	4f 	ld c,a	ld c,a
3a6b	4d 	ld c,l	ld c,l
3a6c	45 	ld b,l	ld b,l
3a6d	4d 	ld c,l	ld c,l
3a6e	20 ea 	jr nz,$-$14	jr nz,$-$00
3a70	4c 	ld c,h	ld c,h
3a71	4f 	ld c,a	ld c,a
3a72	43 	ld b,e	ld b,e
3a73	41 	ld b,c	ld b,c
3a74	4c 	ld c,h	ld c,h
3a75	c0 	ret nz	ret nz
3a76	4c 	ld c,h	ld c,h
3a77	45 	ld b,l	ld b,l
3a78	46 	ld b,(hl)	ld b,(hl)
3a79	54 	ld d,h	ld d,h
3a7a	24 	inc h	inc h
3a7b	28 a9 	jr z,$-$55	jr z,$-$00
3a7d	4c 	ld c,h	ld c,h
3a7e	45 	ld b,l	ld b,l
3a7f	4e 	ld c,(hl)	ld c,(hl)
3a80	e9 	jp (hl)	jp (hl)
3a81	4c 	ld c,h	ld c,h
3a82	45 	ld b,l	ld b,l
3a83	54 	ld d,h	ld d,h
3a84	ab 	xor e	xor e
3a85	4c 	ld c,h	ld c,h
3a86	4f 	ld c,a	ld c,a
3a87	47 	ld b,a	ld b,a
3a88	aa 	xor d	xor d
3a89	4c 	ld c,h	ld c,h
3a8a	4e 	ld c,(hl)	ld c,(hl)
3a8b	c1 	pop bc	pop bc
3a8c	4d 	ld c,l	ld c,l
3a8d	49 44 	ld.lis b,h	ld.lis b,h
3a8f	24 	inc h	inc h
3a90	28 eb 	jr z,$-$13	jr z,$-$00
3a92	4d 	ld c,l	ld c,l
3a93	4f 	ld c,a	ld c,a
3a94	44 	ld b,h	ld b,h
3a95	45 	ld b,l	ld b,l
3a96	83 	add a,e	add a,e
3a97	4d 	ld c,l	ld c,l
3a98	4f 	ld c,a	ld c,a
3a99	44 	ld b,h	ld b,h
3a9a	ec 4d 4f 	call pe,$4f4d	call pe,$0000
3a9d	56 	ld d,(hl)	ld d,(hl)
3a9e	45 	ld b,l	ld b,l
3a9f	04 	inc b	inc b
3aa0	4d 	ld c,l	ld c,l
3aa1	4f 	ld c,a	ld c,a
3aa2	55 	ld d,l	ld d,l
3aa3	53 	ld d,e	ld d,e
3aa4	45 	ld b,l	ld b,l
3aa5	ed 4e 	trap	trap
3aa7	45 	ld b,l	ld b,l
3aa8	58 	ld e,b	ld e,b
3aa9	54 	ld d,h	ld d,h
3aaa	ac 	xor h	xor h
3aab	4e 	ld c,(hl)	ld c,(hl)
3aac	4f 	ld c,a	ld c,a
3aad	54 	ld d,h	ld d,h
3aae	ee 4f 	xor $4f	xor $00
3ab0	4e 	ld c,(hl)	ld c,(hl)
3ab1	87 	add a,a	add a,a
3ab2	4f 	ld c,a	ld c,a
3ab3	46 	ld b,(hl)	ld b,(hl)
3ab4	46 	ld b,(hl)	ld b,(hl)
3ab5	20 ca 	jr nz,$-$34	jr nz,$-$00
3ab7	4f 	ld c,a	ld c,a
3ab8	46 	ld b,(hl)	ld b,(hl)
3ab9	20 05 	jr nz,$+$07	jr nz,$+$00
3abb	4f 	ld c,a	ld c,a
3abc	52 	noni.sil	noni.sil
3abd	49 47 	ld.lis b,a	ld.lis b,a
3abf	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3ac1	84 	add a,h	add a,h
3ac2	4f 	ld c,a	ld c,a
3ac3	52 8e 	adc.sil a,(hl)	adc.sil a,(hl)
3ac5	4f 	ld c,a	ld c,a
3ac6	50 	ld d,b	ld d,b
3ac7	45 	ld b,l	ld b,l
3ac8	4e 	ld c,(hl)	ld c,(hl)
3ac9	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3acb	ae 	xor (hl)	xor (hl)
3acc	4f 	ld c,a	ld c,a
3acd	50 	ld d,b	ld d,b
3ace	45 	ld b,l	ld b,l
3acf	4e 	ld c,(hl)	ld c,(hl)
3ad0	4f 	ld c,a	ld c,a
3ad1	55 	ld d,l	ld d,l
3ad2	54 	ld d,h	ld d,h
3ad3	ad 	xor l	xor l
3ad4	4f 	ld c,a	ld c,a
3ad5	50 	ld d,b	ld d,b
3ad6	45 	ld b,l	ld b,l
3ad7	4e 	ld c,(hl)	ld c,(hl)
3ad8	55 	ld d,l	ld d,l
3ad9	50 	ld d,b	ld d,b
3ada	ff 	rst $38	rst $00
3adb	4f 	ld c,a	ld c,a
3adc	53 	ld d,e	ld d,e
3add	43 	ld b,e	ld b,e
3ade	4c 	ld c,h	ld c,h
3adf	49 cc 4f 54 	call.lis z,$544f	call.lis z,$0000
3ae3	48 	ld c,b	ld c,b
3ae4	45 	ld b,l	ld b,l
3ae5	52 57 	ld.sil d,a	ld.sil d,a
3ae7	49 53 	ld.lis d,e	ld.lis d,e
3ae9	45 	ld b,l	ld b,l
3aea	f1 	pop af	pop af
3aeb	50 	ld d,b	ld d,b
3aec	52 	noni.sil	noni.sil
3aed	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3aef	54 	ld d,h	ld d,h
3af0	90 	sub b	sub b
3af1	50 	ld d,b	ld d,b
3af2	41 	ld b,c	ld b,c
3af3	47 	ld b,a	ld b,a
3af4	45 	ld b,l	ld b,l
3af5	20 8f 	jr nz,$-$6f	jr nz,$-$00
3af7	50 	ld d,b	ld d,b
3af8	54 	ld d,h	ld d,h
3af9	52 20 af 	jr.sil nz,$-$4e	jr.sil nz,$-$00
3afc	50 	ld d,b	ld d,b
3afd	49 20 f0 	jr.lis nz,$-$0d	jr.lis nz,$-$00
3b00	50 	ld d,b	ld d,b
3b01	4c 	ld c,h	ld c,h
3b02	4f 	ld c,a	ld c,a
3b03	54 	ld d,h	ld d,h
3b04	b0 	or b	or b
3b05	50 	ld d,b	ld d,b
3b06	4f 	ld c,a	ld c,a
3b07	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b09	54 	ld d,h	ld d,h
3b0a	28 f2 	jr z,$-$0c	jr z,$-$00
3b0c	50 	ld d,b	ld d,b
3b0d	52 4f 	ld.sil c,a	ld.sil c,a
3b0f	43 	ld b,e	ld b,e
3b10	b1 	or c	or c
3b11	50 	ld d,b	ld d,b
3b12	4f 	ld c,a	ld c,a
3b13	53 	ld d,e	ld d,e
3b14	20 0e 	jr nz,$+$10	jr nz,$+$00
3b16	50 	ld d,b	ld d,b
3b17	55 	ld d,l	ld d,l
3b18	54 	ld d,h	ld d,h
3b19	06 51 	ld b,$51	ld b,$00
3b1b	55 	ld d,l	ld d,l
3b1c	49 54 	ld.lis d,h	ld.lis d,h
3b1e	20 f8 	jr nz,$-$06	jr nz,$-$00
3b20	52 45 	ld.sil b,l	ld.sil b,l
3b22	54 	ld d,h	ld d,h
3b23	55 	ld d,l	ld d,l
3b24	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3b26	20 f5 	jr nz,$-$09	jr nz,$-$00
3b28	52 45 	ld.sil b,l	ld.sil b,l
3b2a	50 	ld d,b	ld d,b
3b2b	45 	ld b,l	ld b,l
3b2c	41 	ld b,c	ld b,c
3b2d	54 	ld d,h	ld d,h
3b2e	f6 52 	or $52	or $00
3b30	45 	ld b,l	ld b,l
3b31	50 	ld d,b	ld d,b
3b32	4f 	ld c,a	ld c,a
3b33	52 54 	ld.sil d,h	ld.sil d,h
3b35	20 f3 	jr nz,$-$0b	jr nz,$-$00
3b37	52 45 	ld.sil b,l	ld.sil b,l
3b39	41 	ld b,c	ld b,c
3b3a	44 	ld b,h	ld b,h
3b3b	f4 52 45 	call p,$4552	call p,$0000
3b3e	4d 	ld c,l	ld c,l
3b3f	f9 	ld sp,hl	ld sp,hl
3b40	52 55 	ld.sil d,l	ld.sil d,l
3b42	4e 	ld c,(hl)	ld c,(hl)
3b43	20 b2 	jr nz,$-$4c	jr nz,$-$00
3b45	52 41 	ld.sil b,c	ld.sil b,c
3b47	44 	ld b,h	ld b,h
3b48	f7 	rst $30	rst $00
3b49	52 45 	ld.sil b,l	ld.sil b,l
3b4b	53 	ld d,e	ld d,e
3b4c	54 	ld d,h	ld d,h
3b4d	4f 	ld c,a	ld c,a
3b4e	52 45 	ld.sil b,l	ld.sil b,l
3b50	c2 52 49 	jp nz,$4952	jp nz,$0000
3b53	47 	ld b,a	ld b,a
3b54	48 	ld c,b	ld c,b
3b55	54 	ld d,h	ld d,h
3b56	24 	inc h	inc h
3b57	28 b3 	jr z,$-$4b	jr z,$-$00
3b59	52 4e 	ld.sil c,(hl)	ld.sil c,(hl)
3b5b	44 	ld b,h	ld b,h
3b5c	20 07 	jr nz,$+$09	jr nz,$+$00
3b5e	52 45 	ld.sil b,l	ld.sil b,l
3b60	43 	ld b,e	ld b,e
3b61	54 	ld d,h	ld d,h
3b62	41 	ld b,c	ld b,c
3b63	4e 	ld c,(hl)	ld c,(hl)
3b64	47 	ld b,a	ld b,a
3b65	4c 	ld c,h	ld c,h
3b66	45 	ld b,l	ld b,l
3b67	88 	adc a,b	adc a,b
3b68	53 	ld d,e	ld d,e
3b69	54 	ld d,h	ld d,h
3b6a	45 	ld b,l	ld b,l
3b6b	50 	ld d,b	ld d,b
3b6c	b4 	or h	or h
3b6d	53 	ld d,e	ld d,e
3b6e	47 	ld b,a	ld b,a
3b6f	4e 	ld c,(hl)	ld c,(hl)
3b70	b5 	or l	or l
3b71	53 	ld d,e	ld d,e
3b72	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b74	b6 	or (hl)	or (hl)
3b75	53 	ld d,e	ld d,e
3b76	51 	ld d,c	ld d,c
3b77	52 89 	adc.sil a,c	adc.sil a,c
3b79	53 	ld d,e	ld d,e
3b7a	50 	ld d,b	ld d,b
3b7b	43 	ld b,e	ld b,e
3b7c	c3 53 54 	jp $5453	jp $0000
3b7f	52 24 	inc.sil h	inc.sil h
3b81	c4 53 54 	call nz,$5453	call nz,$0000
3b84	52 	noni.sil	noni.sil
3b85	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3b87	47 	ld b,a	ld b,a
3b88	24 	inc h	inc h
3b89	28 d4 	jr z,$-$2a	jr z,$-$00
3b8b	53 	ld d,e	ld d,e
3b8c	4f 	ld c,a	ld c,a
3b8d	55 	ld d,l	ld d,l
3b8e	4e 	ld c,(hl)	ld c,(hl)
3b8f	44 	ld b,h	ld b,h
3b90	fa 53 54 	jp m,$5453	jp m,$0000
3b93	4f 	ld c,a	ld c,a
3b94	50 	ld d,b	ld d,b
3b95	20 c6 	jr nz,$-$38	jr nz,$-$00
3b97	53 	ld d,e	ld d,e
3b98	55 	ld d,l	ld d,l
3b99	4d 	ld c,l	ld c,l
3b9a	08 	ex af,af'	ex af,af'
3b9b	53 	ld d,e	ld d,e
3b9c	57 	ld d,a	ld d,a
3b9d	41 	ld b,c	ld b,c
3b9e	50 	ld d,b	ld d,b
3b9f	09 	add hl,bc	add hl,bc
3ba0	53 	ld d,e	ld d,e
3ba1	59 	ld e,c	ld e,c
3ba2	53 	ld d,e	ld d,e
3ba3	b7 	or a	or a
3ba4	54 	ld d,h	ld d,h
3ba5	41 	ld b,c	ld b,c
3ba6	4e 	ld c,(hl)	ld c,(hl)
3ba7	8a 	adc a,d	adc a,d
3ba8	54 	ld d,h	ld d,h
3ba9	41 	ld b,c	ld b,c
3baa	42 	ld b,d	ld b,d
3bab	28 8c 	jr z,$-$72	jr z,$-$00
3bad	54 	ld d,h	ld d,h
3bae	48 	ld c,b	ld c,b
3baf	45 	ld b,l	ld b,l
3bb0	4e 	ld c,(hl)	ld c,(hl)
3bb1	91 	sub c	sub c
3bb2	54 	ld d,h	ld d,h
3bb3	49 4d 	ld.lis c,l	ld.lis c,l
3bb5	45 	ld b,l	ld b,l
3bb6	20 0a 	jr nz,$+$0c	jr nz,$+$00
3bb8	54 	ld d,h	ld d,h
3bb9	49 4e 	ld.lis c,(hl)	ld.lis c,(hl)
3bbb	54 	ld d,h	ld d,h
3bbc	b8 	cp b	cp b
3bbd	54 	ld d,h	ld d,h
3bbe	4f 	ld c,a	ld c,a
3bbf	fc 54 52 	call m,$5254	call m,$0000
3bc2	41 	ld b,c	ld b,c
3bc3	43 	ld b,e	ld b,e
3bc4	45 	ld b,l	ld b,l
3bc5	b9 	cp c	cp c
3bc6	54 	ld d,h	ld d,h
3bc7	52 55 	ld.sil d,l	ld.sil d,l
3bc9	45 	ld b,l	ld b,l
3bca	20 fd 	jr nz,$-$01	jr nz,$-$00
3bcc	55 	ld d,l	ld d,l
3bcd	4e 	ld c,(hl)	ld c,(hl)
3bce	54 	ld d,h	ld d,h
3bcf	49 4c 	ld.lis c,h	ld.lis c,h
3bd1	ba 	cp d	cp d
3bd2	55 	ld d,l	ld d,l
3bd3	53 	ld d,e	ld d,e
3bd4	52 ef 	rst.sil $28	rst.sil $00
3bd6	56 	ld d,(hl)	ld d,(hl)
3bd7	44 	ld b,h	ld b,h
3bd8	55 	ld d,l	ld d,l
3bd9	bb 	cp e	cp e
3bda	56 	ld d,(hl)	ld d,(hl)
3bdb	41 	ld b,c	ld b,c
3bdc	4c 	ld c,h	ld c,h
3bdd	bc 	cp h	cp h
3bde	56 	ld d,(hl)	ld d,(hl)
3bdf	50 	ld d,b	ld d,b
3be0	4f 	ld c,a	ld c,a
3be1	53 	ld d,e	ld d,e
3be2	20 c7 	jr nz,$-$37	jr nz,$-$00
3be4	57 	ld d,a	ld d,a
3be5	48 	ld c,b	ld c,b
3be6	49 4c 	ld.lis c,h	ld.lis c,h
3be8	45 	ld b,l	ld b,l
3be9	c9 	ret	ret
3bea	57 	ld d,a	ld d,a
3beb	48 	ld c,b	ld c,b
3bec	45 	ld b,l	ld b,l
3bed	4e 	ld c,(hl)	ld c,(hl)
3bee	0b 	dec bc	dec bc
3bef	57 	ld d,a	ld d,a
3bf0	41 	ld b,c	ld b,c
3bf1	49 54 	ld.lis d,h	ld.lis d,h
3bf3	20 fe 	jr nz,$	jr nz,$
3bf5	57 	ld d,a	ld d,a
3bf6	49 44 	ld.lis b,h	ld.lis b,h
3bf8	54 	ld d,h	ld d,h
3bf9	48 	ld c,b	ld c,b
3bfa	cf 	rst $08	rst $00
3bfb	50 	ld d,b	ld d,b
3bfc	54 	ld d,h	ld d,h
3bfd	52 d1 	pop.sil de	pop.sil de
3bff	54 	ld d,h	ld d,h
3c00	49 4d 	ld.lis c,l	ld.lis c,l
3c02	45 	ld b,l	ld b,l
3c03	d3 48 	out ($48),a	out ($00),a
3c05	49 4d 	ld.lis c,l	ld.lis c,l
3c07	45 	ld b,l	ld b,l
3c08	4d 	ld c,l	ld c,l
3c09	d2 4c 4f 	jp nc,$4f4c	jp nc,$0000
3c0c	4d 	ld c,l	ld c,l
3c0d	45 	ld b,l	ld b,l
3c0e	4d 	ld c,l	ld c,l
3c0f	d0 	ret nc	ret nc
3c10	50 	ld d,b	ld d,b
3c11	41 	ld b,c	ld b,c
3c12	47 	ld b,a	ld b,a
3c13	45 	ld b,l	ld b,l
3c14	11 4d 69 	ld de,$694d	ld de,$0000
3c17	73 	ld (hl),e	ld (hl),e
3c18	73 	ld (hl),e	ld (hl),e
3c19	69 	ld l,c	ld l,c
3c1a	6e 	ld l,(hl)	ld l,(hl)
3c1b	67 	ld h,a	ld h,a
3c1c	20 12 	jr nz,$+$14	jr nz,$+$00
3c1e	4e 	ld c,(hl)	ld c,(hl)
3c1f	6f 	ld l,a	ld l,a
3c20	20 73 	jr nz,$+$75	jr nz,$+$00
3c22	75 	ld (hl),l	ld (hl),l
3c23	63 	ld h,e	ld h,e
3c24	68 	ld l,b	ld l,b
3c25	20 13 	jr nz,$+$15	jr nz,$+$00
3c27	42 	ld b,d	ld b,d
3c28	61 	ld h,c	ld h,c
3c29	64 	ld h,h	ld h,h
3c2a	20 14 	jr nz,$+$16	jr nz,$+$00
3c2c	20 72 	jr nz,$+$74	jr nz,$+$00
3c2e	61 	ld h,c	ld h,c
3c2f	6e 	ld l,(hl)	ld l,(hl)
3c30	67 	ld h,a	ld h,a
3c31	65 	ld h,l	ld h,l
3c32	15 	dec d	dec d
3c33	76 	halt	halt
3c34	61 	ld h,c	ld h,c
3c35	72 	ld (hl),d	ld (hl),d
3c36	69 	ld l,c	ld l,c
3c37	61 	ld h,c	ld h,c
3c38	62 	ld h,d	ld h,d
3c39	6c 	ld l,h	ld l,h
3c3a	65 	ld h,l	ld h,l
3c3b	16 4f 	ld d,$4f	ld d,$00
3c3d	75 	ld (hl),l	ld (hl),l
3c3e	74 	ld (hl),h	ld (hl),h
3c3f	20 6f 	jr nz,$+$71	jr nz,$+$00
3c41	66 	ld h,(hl)	ld h,(hl)
3c42	17 	rla	rla
3c43	4e 	ld c,(hl)	ld c,(hl)
3c44	6f 	ld l,a	ld l,a
3c45	20 18 	jr nz,$+$1a	jr nz,$+$00
3c47	20 73 	jr nz,$+$75	jr nz,$+$00
3c49	70 	ld (hl),b	ld (hl),b
3c4a	61 	ld h,c	ld h,c
3c4b	63 	ld h,e	ld h,e
3c4c	65 	ld h,l	ld h,l
3c4d	19 	add hl,de	add hl,de
3c4e	4e 	ld c,(hl)	ld c,(hl)
3c4f	6f 	ld l,a	ld l,a
3c50	74 	ld (hl),h	ld (hl),h
3c51	20 69 	jr nz,$+$6b	jr nz,$+$00
3c53	6e 	ld l,(hl)	ld l,(hl)
3c54	20 61 	jr nz,$+$63	jr nz,$+$00
3c56	20 1a 	jr nz,$+$1c	jr nz,$+$00
3c58	20 6c 	jr nz,$+$6e	jr nz,$+$00
3c5a	6f 	ld l,a	ld l,a
3c5b	6f 	ld l,a	ld l,a
3c5c	70 	ld (hl),b	ld (hl),b
3c5d	1b 	dec de	dec de
3c5e	20 6e 	jr nz,$+$70	jr nz,$+$00
3c60	6f 	ld l,a	ld l,a
3c61	74 	ld (hl),h	ld (hl),h
3c62	20 ff 	jr nz,$+$01	jr nz,$+$00
3c64	ff 	rst $38	rst $00
3c65	80 	add a,b	add a,b
3c66	41 	ld b,c	ld b,c
3c67	55 	ld d,l	ld d,l
3c68	54 	ld d,h	ld d,h
3c69	4f 	ld c,a	ld c,a
3c6a	81 	add a,c	add a,c
3c6b	44 	ld b,h	ld b,h
3c6c	45 	ld b,l	ld b,l
3c6d	4c 	ld c,h	ld c,h
3c6e	45 	ld b,l	ld b,l
3c6f	54 	ld d,h	ld d,h
3c70	45 	ld b,l	ld b,l
3c71	82 	add a,d	add a,d
3c72	4c 	ld c,h	ld c,h
3c73	49 53 	ld.lis d,e	ld.lis d,e
3c75	54 	ld d,h	ld d,h
3c76	83 	add a,e	add a,e
3c77	4c 	ld c,h	ld c,h
3c78	4f 	ld c,a	ld c,a
3c79	41 	ld b,c	ld b,c
3c7a	44 	ld b,h	ld b,h
3c7b	84 	add a,h	add a,h
3c7c	4e 	ld c,(hl)	ld c,(hl)
3c7d	45 	ld b,l	ld b,l
3c7e	57 	ld d,a	ld d,a
3c7f	20 85 	jr nz,$-$79	jr nz,$-$00
3c81	4f 	ld c,a	ld c,a
3c82	4c 	ld c,h	ld c,h
3c83	44 	ld b,h	ld b,h
3c84	20 86 	jr nz,$-$78	jr nz,$-$00
3c86	52 45 	ld.sil b,l	ld.sil b,l
3c88	4e 	ld c,(hl)	ld c,(hl)
3c89	55 	ld d,l	ld d,l
3c8a	4d 	ld c,l	ld c,l
3c8b	42 	ld b,d	ld b,d
3c8c	45 	ld b,l	ld b,l
3c8d	52 87 	add.sil a,a	add.sil a,a
3c8f	53 	ld d,e	ld d,e
3c90	41 	ld b,c	ld b,c
3c91	56 	ld d,(hl)	ld d,(hl)
3c92	45 	ld b,l	ld b,l
3c93	ff 	rst $38	rst $00
3c94	ff 	rst $38	rst $00
3c95	67 	ld h,a	ld h,a
3c96	3f 	ccf	ccf
3c97	0a 	ld a,(bc)	ld a,(bc)
3c98	3e 32 	ld a,$32	ld a,$00
3c9a	3e 86 	ld a,$86	ld a,$00
3c9c	3f 	ccf	ccf
3c9d	81 	add a,c	add a,c
3c9e	3f 	ccf	ccf
3c9f	94 	sub h	sub h
3ca0	3f 	ccf	ccf
3ca1	b7 	or a	or a
3ca2	3e ad 	ld a,$ad	ld a,$00
3ca4	3f 	ccf	ccf
3ca5	17 	rla	rla
3ca6	72 	ld (hl),d	ld (hl),d
3ca7	6f 	ld l,a	ld l,a
3ca8	6f 	ld l,a	ld l,a
3ca9	6d 	ld l,l	ld l,l
3caa	00 	nop	nop
3cab	16 14 	ld d,$14	ld d,$00
3cad	00 	nop	nop
3cae	00 	nop	nop
3caf	4d 	ld c,l	ld c,l
3cb0	75 	ld (hl),l	ld (hl),l
3cb1	6c 	ld l,h	ld l,h
3cb2	74 	ld (hl),h	ld (hl),h
3cb3	69 	ld l,c	ld l,c
3cb4	70 	ld (hl),b	ld (hl),b
3cb5	6c 	ld l,h	ld l,h
3cb6	65 	ld h,l	ld h,l
3cb7	20 6c 	jr nz,$+$6e	jr nz,$+$00
3cb9	61 	ld h,c	ld h,c
3cba	62 	ld h,d	ld h,d
3cbb	65 	ld h,l	ld h,l
3cbc	6c 	ld l,h	ld l,h
3cbd	00 	nop	nop
3cbe	4d 	ld c,l	ld c,l
3cbf	69 	ld l,c	ld l,c
3cc0	73 	ld (hl),e	ld (hl),e
3cc1	74 	ld (hl),h	ld (hl),h
3cc2	61 	ld h,c	ld h,c
3cc3	6b 	ld l,e	ld l,e
3cc4	65 	ld h,l	ld h,l
3cc5	00 	nop	nop
3cc6	11 2c 00 	ld de,$002c	ld de,$0000
3cc9	54 	ld d,h	ld d,h
3cca	79 	ld a,c	ld a,c
3ccb	70 	ld (hl),b	ld (hl),b
3ccc	65 	ld h,l	ld h,l
3ccd	20 6d 	jr nz,$+$6f	jr nz,$+$00
3ccf	69 	ld l,c	ld l,c
3cd0	73 	ld (hl),e	ld (hl),e
3cd1	6d 	ld l,l	ld l,l
3cd2	61 	ld h,c	ld h,c
3cd3	74 	ld (hl),h	ld (hl),h
3cd4	63 	ld h,e	ld h,e
3cd5	68 	ld l,b	ld l,b
3cd6	00 	nop	nop
3cd7	19 	add hl,de	add hl,de
3cd8	a4 	and h	and h
3cd9	00 	nop	nop
3cda	00 	nop	nop
3cdb	11 22 00 	ld de,$0022	ld de,$0000
3cde	13 	inc de	inc de
3cdf	de 00 	sbc a,$00	sbc a,$00
3ce1	de 18 	sbc a,$18	sbc a,$00
3ce3	00 	nop	nop
3ce4	19 	add hl,de	add hl,de
3ce5	a4 	and h	and h
3ce6	20 6f 	jr nz,$+$71	jr nz,$+$00
3ce8	72 	ld (hl),d	ld (hl),d
3ce9	20 f2 	jr nz,$-$0c	jr nz,$-$00
3ceb	00 	nop	nop
3cec	19 	add hl,de	add hl,de
3ced	f2 00 13 	jp p,$1300	jp p,$0000
3cf0	75 	ld (hl),l	ld (hl),l
3cf1	73 	ld (hl),e	ld (hl),e
3cf2	65 	ld h,l	ld h,l
3cf3	20 6f 	jr nz,$+$71	jr nz,$+$00
3cf5	66 	ld h,(hl)	ld h,(hl)
3cf6	20 61 	jr nz,$+$63	jr nz,$+$00
3cf8	72 	ld (hl),d	ld (hl),d
3cf9	72 	ld (hl),d	ld (hl),d
3cfa	61 	ld h,c	ld h,c
3cfb	79 	ld a,c	ld a,c
3cfc	00 	nop	nop
3cfd	13 	inc de	inc de
3cfe	73 	ld (hl),e	ld (hl),e
3cff	75 	ld (hl),l	ld (hl),l
3d00	62 	ld h,d	ld h,d
3d01	73 	ld (hl),e	ld (hl),e
3d02	63 	ld h,e	ld h,e
3d03	72 	ld (hl),d	ld (hl),d
3d04	69 	ld l,c	ld l,c
3d05	70 	ld (hl),b	ld (hl),b
3d06	74 	ld (hl),h	ld (hl),h
3d07	00 	nop	nop
3d08	53 	ld d,e	ld d,e
3d09	79 	ld a,c	ld a,c
3d0a	6e 	ld l,(hl)	ld l,(hl)
3d0b	74 	ld (hl),h	ld (hl),h
3d0c	61 	ld h,c	ld h,c
3d0d	78 	ld a,b	ld a,b
3d0e	20 65 	jr nz,$+$67	jr nz,$+$00
3d10	72 	ld (hl),d	ld (hl),d
3d11	72 	ld (hl),d	ld (hl),d
3d12	6f 	ld l,a	ld l,a
3d13	72 	ld (hl),d	ld (hl),d
3d14	00 	nop	nop
3d15	45 	ld b,l	ld b,l
3d16	73 	ld (hl),e	ld (hl),e
3d17	63 	ld h,e	ld h,e
3d18	61 	ld h,c	ld h,c
3d19	70 	ld (hl),b	ld (hl),b
3d1a	65 	ld h,l	ld h,l
3d1b	00 	nop	nop
3d1c	44 	ld b,h	ld b,h
3d1d	69 	ld l,c	ld l,c
3d1e	76 	halt	halt
3d1f	69 	ld l,c	ld l,c
3d20	73 	ld (hl),e	ld (hl),e
3d21	69 	ld l,c	ld l,c
3d22	6f 	ld l,a	ld l,a
3d23	6e 	ld l,(hl)	ld l,(hl)
3d24	20 62 	jr nz,$+$64	jr nz,$+$00
3d26	79 	ld a,c	ld a,c
3d27	20 7a 	jr nz,$+$7c	jr nz,$+$00
3d29	65 	ld h,l	ld h,l
3d2a	72 	ld (hl),d	ld (hl),d
3d2b	6f 	ld l,a	ld l,a
3d2c	00 	nop	nop
3d2d	53 	ld d,e	ld d,e
3d2e	74 	ld (hl),h	ld (hl),h
3d2f	72 	ld (hl),d	ld (hl),d
3d30	69 	ld l,c	ld l,c
3d31	6e 	ld l,(hl)	ld l,(hl)
3d32	67 	ld h,a	ld h,a
3d33	20 74 	jr nz,$+$76	jr nz,$+$00
3d35	6f 	ld l,a	ld l,a
3d36	6f 	ld l,a	ld l,a
3d37	20 6c 	jr nz,$+$6e	jr nz,$+$00
3d39	6f 	ld l,a	ld l,a
3d3a	6e 	ld l,(hl)	ld l,(hl)
3d3b	67 	ld h,a	ld h,a
3d3c	00 	nop	nop
3d3d	4e 	ld c,(hl)	ld c,(hl)
3d3e	75 	ld (hl),l	ld (hl),l
3d3f	6d 	ld l,l	ld l,l
3d40	62 	ld h,d	ld h,d
3d41	65 	ld h,l	ld h,l
3d42	72 	ld (hl),d	ld (hl),d
3d43	20 74 	jr nz,$+$76	jr nz,$+$00
3d45	6f 	ld l,a	ld l,a
3d46	6f 	ld l,a	ld l,a
3d47	20 62 	jr nz,$+$64	jr nz,$+$00
3d49	69 	ld l,c	ld l,c
3d4a	67 	ld h,a	ld h,a
3d4b	00 	nop	nop
3d4c	2d 	dec l	dec l
3d4d	76 	halt	halt
3d4e	65 	ld h,l	ld h,l
3d4f	20 72 	jr nz,$+$74	jr nz,$+$00
3d51	6f 	ld l,a	ld l,a
3d52	6f 	ld l,a	ld l,a
3d53	74 	ld (hl),h	ld (hl),h
3d54	00 	nop	nop
3d55	4c 	ld c,h	ld c,h
3d56	6f 	ld l,a	ld l,a
3d57	67 	ld h,a	ld h,a
3d58	14 	inc d	inc d
3d59	00 	nop	nop
3d5a	41 	ld b,c	ld b,c
3d5b	63 	ld h,e	ld h,e
3d5c	63 	ld h,e	ld h,e
3d5d	75 	ld (hl),l	ld (hl),l
3d5e	72 	ld (hl),d	ld (hl),d
3d5f	61 	ld h,c	ld h,c
3d60	63 	ld h,e	ld h,e
3d61	79 	ld a,c	ld a,c
3d62	20 6c 	jr nz,$+$6e	jr nz,$+$00
3d64	6f 	ld l,a	ld l,a
3d65	73 	ld (hl),e	ld (hl),e
3d66	74 	ld (hl),h	ld (hl),h
3d67	00 	nop	nop
3d68	45 	ld b,l	ld b,l
3d69	78 	ld a,b	ld a,b
3d6a	70 	ld (hl),b	ld (hl),b
3d6b	6f 	ld l,a	ld l,a
3d6c	6e 	ld l,(hl)	ld l,(hl)
3d6d	65 	ld h,l	ld h,l
3d6e	6e 	ld l,(hl)	ld l,(hl)
3d6f	74 	ld (hl),h	ld (hl),h
3d70	14 	inc d	inc d
3d71	00 	nop	nop
3d72	00 	nop	nop
3d73	12 	ld (de),a	ld (de),a
3d74	15 	dec d	dec d
3d75	00 	nop	nop
3d76	11 29 00 	ld de,$0029	ld de,$0000
3d79	13 	inc de	inc de
3d7a	68 	ld l,b	ld l,b
3d7b	65 	ld h,l	ld h,l
3d7c	78 	ld a,b	ld a,b
3d7d	20 6f 	jr nz,$+$71	jr nz,$+$00
3d7f	72 	ld (hl),d	ld (hl),d
3d80	20 62 	jr nz,$+$64	jr nz,$+$00
3d82	69 	ld l,c	ld l,c
3d83	6e 	ld l,(hl)	ld l,(hl)
3d84	61 	ld h,c	ld h,c
3d85	72 	ld (hl),d	ld (hl),d
3d86	79 	ld a,c	ld a,c
3d87	00 	nop	nop
3d88	12 	ld (de),a	ld (de),a
3d89	a4 	and h	and h
3d8a	2f 	cpl	cpl
3d8b	f2 00 13 	jp p,$1300	jp p,$0000
3d8e	63 	ld h,e	ld h,e
3d8f	61 	ld h,c	ld h,c
3d90	6c 	ld l,h	ld l,h
3d91	6c 	ld l,h	ld l,h
3d92	00 	nop	nop
3d93	13 	inc de	inc de
3d94	61 	ld h,c	ld h,c
3d95	72 	ld (hl),d	ld (hl),d
3d96	67 	ld h,a	ld h,a
3d97	75 	ld (hl),l	ld (hl),l
3d98	6d 	ld l,l	ld l,l
3d99	65 	ld h,l	ld h,l
3d9a	6e 	ld l,(hl)	ld l,(hl)
3d9b	74 	ld (hl),h	ld (hl),h
3d9c	73 	ld (hl),e	ld (hl),e
3d9d	00 	nop	nop
3d9e	19 	add hl,de	add hl,de
3d9f	e3 	ex (sp),hl	ex (sp),hl
3da0	1a 	ld a,(de)	ld a,(de)
3da1	00 	nop	nop
3da2	43 	ld b,e	ld b,e
3da3	61 	ld h,c	ld h,c
3da4	6e 	ld l,(hl)	ld l,(hl)
3da5	27 	daa	daa
3da6	74 	ld (hl),h	ld (hl),h
3da7	20 6d 	jr nz,$+$6f	jr nz,$+$00
3da9	61 	ld h,c	ld h,c
3daa	74 	ld (hl),h	ld (hl),h
3dab	63 	ld h,e	ld h,e
3dac	68 	ld l,b	ld l,b
3dad	20 e3 	jr nz,$-$1b	jr nz,$-$00
3daf	00 	nop	nop
3db0	13 	inc de	inc de
3db1	e3 	ex (sp),hl	ex (sp),hl
3db2	20 15 	jr nz,$+$17	jr nz,$+$00
3db4	00 	nop	nop
3db5	00 	nop	nop
3db6	11 b8 00 	ld de,$00b8	ld de,$0000
3db9	00 	nop	nop
3dba	17 	rla	rla
3dbb	e4 00 ee 	call po,$ee00	call po,$0000
3dbe	20 73 	jr nz,$+$75	jr nz,$+$00
3dc0	79 	ld a,c	ld a,c
3dc1	6e 	ld l,(hl)	ld l,(hl)
3dc2	74 	ld (hl),h	ld (hl),h
3dc3	61 	ld h,c	ld h,c
3dc4	78 	ld a,b	ld a,b
3dc5	00 	nop	nop
3dc6	ee 14 	xor $14	xor $00
3dc8	00 	nop	nop
3dc9	12 	ld (de),a	ld (de),a
3dca	6c 	ld l,h	ld l,h
3dcb	69 	ld l,c	ld l,c
3dcc	6e 	ld l,(hl)	ld l,(hl)
3dcd	65 	ld h,l	ld h,l
3dce	00 	nop	nop
3dcf	16 20 	ld d,$20	ld d,$00
3dd1	dc 00 19 	call c,$1900	call c,$0000
3dd4	f5 	push af	push af
3dd5	1a 	ld a,(de)	ld a,(de)
3dd6	00 	nop	nop
3dd7	13 	inc de	inc de
3dd8	10 00 	djnz $+$02	djnz $+$00
3dda	11 23 00 	ld de,$0023	ld de,$0000
3ddd	19 	add hl,de	add hl,de
3dde	c7 	rst $00	rst $00
3ddf	1a 	ld a,(de)	ld a,(de)
3de0	00 	nop	nop
3de1	11 cb 00 	ld de,$00cb	ld de,$0000
3de4	ca 1b 6c 	jp z,$6c1b	jp z,$0000
3de7	61 	ld h,c	ld h,c
3de8	73 	ld (hl),e	ld (hl),e
3de9	74 	ld (hl),h	ld (hl),h
3dea	00 	nop	nop
3deb	11 cd 00 	ld de,$00cd	ld de,$0000
3dee	00 	nop	nop
3def	00 	nop	nop
3df0	00 	nop	nop
3df1	ee 20 	xor $20	xor $00
3df3	85 	add a,l	add a,l
3df4	1b 	dec de	dec de
3df5	ea 00 dc 	jp pe,$dc00	jp pe,$0000
3df8	1b 	dec de	dec de
3df9	ea 00 e3 	jp pe,$e300	jp pe,$0000
3dfc	f5 	push af	push af
3dfd	c7 	rst $00	rst $00
3dfe	c8 	ret z	ret z
3dff	8b 	adc a,e	adc a,e
3e00	c9 	ret	ret
3e01	cc ed fd 	call z,$fded	call z,$0000
3e04	ce cb 	adc a,$cb	adc a,$00
3e06	cd 8b c9 	call $c98b	call $0000
3e09	cc cd 5b 	call z,$5bcd	call z,$0000
3e0c	44 	ld b,h	ld b,h
3e0d	7e 	ld a,(hl)	ld a,(hl)
3e0e	b7 	or a	or a
3e0f	28 79 	jr z,$+$7b	jr z,$+$00
3e11	23 	inc hl	inc hl
3e12	5e 	ld e,(hl)	ld e,(hl)
3e13	23 	inc hl	inc hl
3e14	56 	ld d,(hl)	ld d,(hl)
3e15	2b 	dec hl	dec hl
3e16	2b 	dec hl	dec hl
3e17	eb 	ex de,hl	ex de,hl
3e18	37 	scf	scf
3e19	ed 42 	sbc hl,bc	sbc hl,bc
3e1b	eb 	ex de,hl	ex de,hl
3e1c	30 6c 	jr nc,$+$6e	jr nc,$+$00
3e1e	c5 	push bc	push bc
3e1f	cd 6d 40 	call $406d	call $0000
3e22	c1 	pop bc	pop bc
3e23	18 e8 	jr $-$16	jr $-$00
3e25	fd 23 	inc iy	inc iy
3e27	cd b7 18 	call $18b7	call $0000
3e2a	d9 	exx	exx
3e2b	7d 	ld a,l	ld a,l
3e2c	32 fe 55 	ld ($55fe),a	ld ($0000),a
3e2f	c3 34 38 	jp $3834	jp $0000
3e32	fe 4f 	cp $4f	cp $00
3e34	28 ef 	jr z,$-$0f	jr z,$-$00
3e36	0e 01 	ld c,$01	ld c,$00
3e38	11 00 54 	ld de,$5400	ld de,$0000
3e3b	cd 9c 44 	call $449c	call $0000
3e3e	12 	ld (de),a	ld (de),a
3e3f	fd 21 00 54 	ld iy,$5400	ld iy,$0000
3e43	cd 5b 44 	call $445b	call $0000
3e46	cd 8f 45 	call $458f	call $0000
3e49	fe e7 	cp $e7	cp $00
3e4b	3e 00 	ld a,$00	ld a,$00
3e4d	20 15 	jr nz,$+$17	jr nz,$+$00
3e4f	fd 23 	inc iy	inc iy
3e51	cd 8f 45 	call $458f	call $0000
3e54	eb 	ex de,hl	ex de,hl
3e55	fd e5 	push iy	push iy
3e57	e1 	pop hl	pop hl
3e58	3e 0d 	ld a,$0d	ld a,$00
3e5a	c5 	push bc	push bc
3e5b	01 00 01 	ld bc,$0100	ld bc,$0000
3e5e	ed b1 	cpir	cpir
3e60	79 	ld a,c	ld a,c
3e61	2f 	cpl	cpl
3e62	c1 	pop bc	pop bc
3e63	eb 	ex de,hl	ex de,hl
3e64	5f 	ld e,a	ld e,a
3e65	78 	ld a,b	ld a,b
3e66	b1 	or c	or c
3e67	20 01 	jr nz,$+$03	jr nz,$+$00
3e69	0b 	dec bc	dec bc
3e6a	d9 	exx	exx
3e6b	dd 21 fe 55 	ld ix,$55fe	ld ix,$0000
3e6f	1e 00 	ld e,$00	ld e,$00
3e71	d9 	exx	exx
3e72	3e 14 	ld a,$14	ld a,$00
3e74	c5 	push bc	push bc
3e75	d5 	push de	push de
3e76	e5 	push hl	push hl
3e77	08 	ex af,af'	ex af,af'
3e78	7e 	ld a,(hl)	ld a,(hl)
3e79	b7 	or a	or a
3e7a	28 0e 	jr z,$+$10	jr z,$+$00
3e7c	7b 	ld a,e	ld a,e
3e7d	23 	inc hl	inc hl
3e7e	5e 	ld e,(hl)	ld e,(hl)
3e7f	23 	inc hl	inc hl
3e80	56 	ld d,(hl)	ld d,(hl)
3e81	2b 	dec hl	dec hl
3e82	2b 	dec hl	dec hl
3e83	d5 	push de	push de
3e84	eb 	ex de,hl	ex de,hl
3e85	37 	scf	scf
3e86	ed 42 	sbc hl,bc	sbc hl,bc
3e88	eb 	ex de,hl	ex de,hl
3e89	d1 	pop de	pop de
3e8a	d2 33 38 	jp nc,$3833	jp nc,$0000
3e8d	4e 	ld c,(hl)	ld c,(hl)
3e8e	47 	ld b,a	ld b,a
3e8f	23 	inc hl	inc hl
3e90	23 	inc hl	inc hl
3e91	23 	inc hl	inc hl
3e92	0d 	dec c	dec c
3e93	0d 	dec c	dec c
3e94	0d 	dec c	dec c
3e95	0d 	dec c	dec c
3e96	d5 	push de	push de
3e97	e5 	push hl	push hl
3e98	af 	xor a	xor a
3e99	b8 	cp b	cp b
3e9a	fd e5 	push iy	push iy
3e9c	d1 	pop de	pop de
3e9d	c4 76 1e 	call nz,$1e76	call nz,$0000
3ea0	e1 	pop hl	pop hl
3ea1	d1 	pop de	pop de
3ea2	fd e5 	push iy	push iy
3ea4	cc e1 40 	call z,$40e1	call z,$0000
3ea7	fd e1 	pop iy	pop iy
3ea9	08 	ex af,af'	ex af,af'
3eaa	3d 	dec a	dec a
3eab	cd 38 06 	call $0638	call $0000
3eae	e1 	pop hl	pop hl
3eaf	5e 	ld e,(hl)	ld e,(hl)
3eb0	16 00 	ld d,$00	ld d,$00
3eb2	19 	add hl,de	add hl,de
3eb3	d1 	pop de	pop de
3eb4	c1 	pop bc	pop bc
3eb5	18 bd 	jr $-$41	jr $-$00
3eb7	cd c7 40 	call $40c7	call $0000
3eba	cd 38 44 	call $4438	call $0000
3ebd	d9 	exx	exx
3ebe	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
3ec1	ed 5b de 55 	ld de,($55de)	ld de,($0000)
3ec5	7e 	ld a,(hl)	ld a,(hl)
3ec6	b7 	or a	or a
3ec7	28 28 	jr z,$+$2a	jr z,$+$00
3ec9	23 	inc hl	inc hl
3eca	4e 	ld c,(hl)	ld c,(hl)
3ecb	23 	inc hl	inc hl
3ecc	46 	ld b,(hl)	ld b,(hl)
3ecd	eb 	ex de,hl	ex de,hl
3ece	71 	ld (hl),c	ld (hl),c
3ecf	23 	inc hl	inc hl
3ed0	70 	ld (hl),b	ld (hl),b
3ed1	23 	inc hl	inc hl
3ed2	d9 	exx	exx
3ed3	e5 	push hl	push hl
3ed4	09 	add hl,bc	add hl,bc
3ed5	da 33 44 	jp c,$4433	jp c,$0000
3ed8	d9 	exx	exx
3ed9	c1 	pop bc	pop bc
3eda	71 	ld (hl),c	ld (hl),c
3edb	23 	inc hl	inc hl
3edc	70 	ld (hl),b	ld (hl),b
3edd	23 	inc hl	inc hl
3ede	eb 	ex de,hl	ex de,hl
3edf	2b 	dec hl	dec hl
3ee0	2b 	dec hl	dec hl
3ee1	af 	xor a	xor a
3ee2	47 	ld b,a	ld b,a
3ee3	4e 	ld c,(hl)	ld c,(hl)
3ee4	09 	add hl,bc	add hl,bc
3ee5	eb 	ex de,hl	ex de,hl
3ee6	e5 	push hl	push hl
3ee7	24 	inc h	inc h
3ee8	ed 72 	sbc hl,sp	sbc hl,sp
3eea	e1 	pop hl	pop hl
3eeb	eb 	ex de,hl	ex de,hl
3eec	38 d7 	jr c,$-$27	jr c,$-$00
3eee	c3 c8 3f 	jp $3fc8	jp $0000
3ef1	eb 	ex de,hl	ex de,hl
3ef2	36 ff 	ld (hl),$ff	ld (hl),$00
3ef4	23 	inc hl	inc hl
3ef5	36 ff 	ld (hl),$ff	ld (hl),$00
3ef7	ed 5b de 55 	ld de,($55de)	ld de,($0000)
3efb	d9 	exx	exx
3efc	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
3eff	4e 	ld c,(hl)	ld c,(hl)
3f00	79 	ld a,c	ld a,c
3f01	b7 	or a	or a
3f02	28 86 	jr z,$-$78	jr z,$-$00
3f04	d9 	exx	exx
3f05	eb 	ex de,hl	ex de,hl
3f06	23 	inc hl	inc hl
3f07	23 	inc hl	inc hl
3f08	5e 	ld e,(hl)	ld e,(hl)
3f09	23 	inc hl	inc hl
3f0a	56 	ld d,(hl)	ld d,(hl)
3f0b	23 	inc hl	inc hl
3f0c	d5 	push de	push de
3f0d	eb 	ex de,hl	ex de,hl
3f0e	d9 	exx	exx
3f0f	d1 	pop de	pop de
3f10	23 	inc hl	inc hl
3f11	73 	ld (hl),e	ld (hl),e
3f12	23 	inc hl	inc hl
3f13	72 	ld (hl),d	ld (hl),d
3f14	23 	inc hl	inc hl
3f15	0d 	dec c	dec c
3f16	0d 	dec c	dec c
3f17	0d 	dec c	dec c
3f18	06 00 	ld b,$00	ld b,$00
3f1a	3e 8d 	ld a,$8d	ld a,$00
3f1c	ed b1 	cpir	cpir
3f1e	20 df 	jr nz,$-$1f	jr nz,$-$00
3f20	c5 	push bc	push bc
3f21	e5 	push hl	push hl
3f22	e5 	push hl	push hl
3f23	fd e1 	pop iy	pop iy
3f25	d9 	exx	exx
3f26	e5 	push hl	push hl
3f27	cd e4 1f 	call $1fe4	call $0000
3f2a	e1 	pop hl	pop hl
3f2b	d9 	exx	exx
3f2c	44 	ld b,h	ld b,h
3f2d	4d 	ld c,l	ld c,l
3f2e	2a de 55 	ld hl,($55de)	ld hl,($0000)
3f31	5e 	ld e,(hl)	ld e,(hl)
3f32	23 	inc hl	inc hl
3f33	56 	ld d,(hl)	ld d,(hl)
3f34	23 	inc hl	inc hl
3f35	eb 	ex de,hl	ex de,hl
3f36	b7 	or a	or a
3f37	ed 42 	sbc hl,bc	sbc hl,bc
3f39	eb 	ex de,hl	ex de,hl
3f3a	5e 	ld e,(hl)	ld e,(hl)
3f3b	23 	inc hl	inc hl
3f3c	56 	ld d,(hl)	ld d,(hl)
3f3d	23 	inc hl	inc hl
3f3e	38 f1 	jr c,$-$0d	jr c,$-$00
3f40	eb 	ex de,hl	ex de,hl
3f41	28 1a 	jr z,$+$1c	jr z,$+$00
3f43	cd 7e 45 	call $457e	call $0000
3f46	46 	ld b,(hl)	ld b,(hl)
3f47	61 	ld h,c	ld h,c
3f48	69 	ld l,c	ld l,c
3f49	6c 	ld l,h	ld l,h
3f4a	65 	ld h,l	ld h,l
3f4b	64 	ld h,h	ld h,h
3f4c	20 61 	jr nz,$+$63	jr nz,$+$00
3f4e	74 	ld (hl),h	ld (hl),h
3f4f	20 00 	jr nz,$+$02	jr nz,$+$00
3f51	d9 	exx	exx
3f52	e5 	push hl	push hl
3f53	d9 	exx	exx
3f54	e1 	pop hl	pop hl
3f55	cd 16 42 	call $4216	call $0000
3f58	cd 7f 41 	call $417f	call $0000
3f5b	18 06 	jr $+$08	jr $+$00
3f5d	d1 	pop de	pop de
3f5e	d5 	push de	push de
3f5f	1b 	dec de	dec de
3f60	cd 43 45 	call $4543	call $0000
3f63	e1 	pop hl	pop hl
3f64	c1 	pop bc	pop bc
3f65	18 b3 	jr $-$4b	jr $-$00
3f67	cd 38 44 	call $4438	call $0000
3f6a	22 e8 55 	ld ($55e8),hl	ld ($0000),hl
3f6d	79 	ld a,c	ld a,c
3f6e	32 ff 55 	ld ($55ff),a	ld ($0000),a
3f71	18 37 	jr $+$39	jr $+$00
3f73	cd 7e 45 	call $457e	call $0000
3f76	13 	inc de	inc de
3f77	70 	ld (hl),b	ld (hl),b
3f78	72 	ld (hl),d	ld (hl),d
3f79	6f 	ld l,a	ld l,a
3f7a	67 	ld h,a	ld h,a
3f7b	72 	ld (hl),d	ld (hl),d
3f7c	61 	ld h,c	ld h,c
3f7d	6d 	ld l,l	ld l,l
3f7e	0d 	dec c	dec c
3f7f	0a 	ld a,(bc)	ld a,(bc)
3f80	00 	nop	nop
3f81	cd c2 40 	call $40c2	call $0000
3f84	18 24 	jr $+$26	jr $+$00
3f86	cd c0 18 	call $18c0	call $0000
3f89	3e 0d 	ld a,$0d	ld a,$00
3f8b	12 	ld (de),a	ld (de),a
3f8c	cd 84 40 	call $4084	call $0000
3f8f	cd c7 40 	call $40c7	call $0000
3f92	18 31 	jr $+$33	jr $+$00
3f94	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
3f97	e5 	push hl	push hl
3f98	23 	inc hl	inc hl
3f99	23 	inc hl	inc hl
3f9a	23 	inc hl	inc hl
3f9b	01 fc 00 	ld bc,$00fc	ld bc,$0000
3f9e	3e 0d 	ld a,$0d	ld a,$00
3fa0	ed b1 	cpir	cpir
3fa2	20 cf 	jr nz,$-$2f	jr nz,$-$00
3fa4	7d 	ld a,l	ld a,l
3fa5	e1 	pop hl	pop hl
3fa6	77 	ld (hl),a	ld (hl),a
3fa7	cd 9e 40 	call $409e	call $0000
3faa	c3 34 38 	jp $3834	jp $0000
3fad	cd c0 18 	call $18c0	call $0000
3fb0	3e 0d 	ld a,$0d	ld a,$00
3fb2	12 	ld (de),a	ld (de),a
3fb3	ed 5b dc 55 	ld de,($55dc)	ld de,($0000)
3fb7	cd a9 40 	call $40a9	call $0000
3fba	b7 	or a	or a
3fbb	ed 52 	sbc hl,de	sbc hl,de
3fbd	44 	ld b,h	ld b,h
3fbe	4d 	ld c,l	ld c,l
3fbf	21 00 53 	ld hl,$5300	ld hl,$0000
3fc2	cd c4 07 	call $07c4	call $0000
3fc5	c3 33 38 	jp $3833	jp $0000
3fc8	21 a5 3c 	ld hl,$3ca5	ld hl,$0000
3fcb	4f 	ld c,a	ld c,a
3fcc	b7 	or a	or a
3fcd	28 0c 	jr z,$+$0e	jr z,$+$00
3fcf	47 	ld b,a	ld b,a
3fd0	af 	xor a	xor a
3fd1	be 	cp (hl)	cp (hl)
3fd2	23 	inc hl	inc hl
3fd3	20 fc 	jr nz,$-$02	jr nz,$-$00
3fd5	10 fa 	djnz $-$04	djnz $-$00
3fd7	18 02 	jr $+$04	jr $+$00
3fd9	e1 	pop hl	pop hl
3fda	4f 	ld c,a	ld c,a
3fdb	22 ee 55 	ld ($55ee),hl	ld ($0000),hl
3fde	2a ec 55 	ld hl,($55ec)	ld hl,($0000)
3fe1	7c 	ld a,h	ld a,h
3fe2	b5 	or l	or l
3fe3	ed 7b e2 55 	ld sp,($55e2)	ld sp,($0000)
3fe7	28 01 	jr z,$+$03	jr z,$+$00
3fe9	f9 	ld sp,hl	ld sp,hl
3fea	79 	ld a,c	ld a,c
3feb	cd df 41 	call $41df	call $0000
3fee	32 fd 55 	ld ($55fd),a	ld ($0000),a
3ff1	22 f2 55 	ld ($55f2),hl	ld ($0000),hl
3ff4	b7 	or a	or a
3ff5	28 0b 	jr z,$+$0d	jr z,$+$00
3ff7	2a ea 55 	ld hl,($55ea)	ld hl,($0000)
3ffa	7c 	ld a,h	ld a,h
3ffb	b5 	or l	or l
3ffc	e5 	push hl	push hl
3ffd	fd e1 	pop iy	pop iy
3fff	c2 1d 25 	jp nz,$251d	jp nz,$0000
4002	ed 7b e2 55 	ld sp,($55e2)	ld sp,($0000)
4006	ed 62 	sbc hl,hl	sbc hl,hl
4008	22 e8 55 	ld ($55e8),hl	ld ($0000),hl
400b	22 e6 55 	ld ($55e6),hl	ld ($0000),hl
400e	cd 45 06 	call $0645	call $0000
4011	cd 7f 41 	call $417f	call $0000
4014	cd 69 45 	call $4569	call $0000
4017	2a f2 55 	ld hl,($55f2)	ld hl,($0000)
401a	cd 06 42 	call $4206	call $0000
401d	1e 00 	ld e,$00	ld e,$00
401f	dc 55 06 	call c,$0655	call c,$0000
4022	cd 7f 41 	call $417f	call $0000
4025	18 83 	jr $-$7b	jr $-$00
4027	21 08 39 	ld hl,$3908	ld hl,$0000
402a	fd 7e 00 	ld a,(iy)	ld a,(iy)
402d	46 	ld b,(hl)	ld b,(hl)
402e	23 	inc hl	inc hl
402f	be 	cp (hl)	cp (hl)
4030	28 0a 	jr z,$+$0c	jr z,$+$00
4032	d8 	ret c	ret c
4033	23 	inc hl	inc hl
4034	7e 	ld a,(hl)	ld a,(hl)
4035	fe a0 	cp $a0	cp $00
4037	ea 33 40 	jp pe,$4033	jp pe,$0000
403a	18 ee 	jr $-$10	jr $-$00
403c	fd e5 	push iy	push iy
403e	23 	inc hl	inc hl
403f	7e 	ld a,(hl)	ld a,(hl)
4040	fe a0 	cp $a0	cp $00
4042	e2 69 40 	jp po,$4069	jp po,$0000
4045	fd 23 	inc iy	inc iy
4047	fd 7e 00 	ld a,(iy)	ld a,(iy)
404a	be 	cp (hl)	cp (hl)
404b	20 05 	jr nz,$+$07	jr nz,$+$00
404d	fe a1 	cp $a1	cp $00
404f	ea 3e 40 	jp pe,$403e	jp pe,$0000
4052	fd 7e 00 	ld a,(iy)	ld a,(iy)
4055	fe 2e 	cp $2e	cp $00
4057	28 10 	jr z,$+$12	jr z,$+$00
4059	cd 80 44 	call $4480	call $0000
405c	38 04 	jr c,$+$06	jr c,$+$00
405e	fd e1 	pop iy	pop iy
4060	18 d1 	jr $-$2d	jr $-$00
4062	7e 	ld a,(hl)	ld a,(hl)
4063	fe 20 	cp $20	cp $00
4065	20 f7 	jr nz,$-$07	jr nz,$-$00
4067	fd 2b 	dec iy	dec iy
4069	f1 	pop af	pop af
406a	af 	xor a	xor a
406b	78 	ld a,b	ld a,b
406c	c9 	ret	ret
406d	d5 	push de	push de
406e	e5 	push hl	push hl
406f	e5 	push hl	push hl
4070	06 00 	ld b,$00	ld b,$00
4072	4e 	ld c,(hl)	ld c,(hl)
4073	09 	add hl,bc	add hl,bc
4074	e5 	push hl	push hl
4075	eb 	ex de,hl	ex de,hl
4076	cd a9 40 	call $40a9	call $0000
4079	ed 52 	sbc hl,de	sbc hl,de
407b	44 	ld b,h	ld b,h
407c	4d 	ld c,l	ld c,l
407d	e1 	pop hl	pop hl
407e	d1 	pop de	pop de
407f	ed b0 	ldir	ldir
4081	e1 	pop hl	pop hl
4082	d1 	pop de	pop de
4083	c9 	ret	ret
4084	ed 5b dc 55 	ld de,($55dc)	ld de,($0000)
4088	21 00 ff 	ld hl,$ff00	ld hl,$0000
408b	39 	add hl,sp	add hl,sp
408c	ed 52 	sbc hl,de	sbc hl,de
408e	44 	ld b,h	ld b,h
408f	4d 	ld c,l	ld c,l
4090	21 00 53 	ld hl,$5300	ld hl,$0000
4093	cd ce 06 	call $06ce	call $0000
4096	d4 c2 40 	call nc,$40c2	call nc,$0000
4099	3e 00 	ld a,$00	ld a,$00
409b	d2 c8 3f 	jp nc,$3fc8	jp nc,$0000
409e	cd a9 40 	call $40a9	call $0000
40a1	2b 	dec hl	dec hl
40a2	36 ff 	ld (hl),$ff	ld (hl),$00
40a4	2b 	dec hl	dec hl
40a5	36 ff 	ld (hl),$ff	ld (hl),$00
40a7	18 1e 	jr $+$20	jr $+$00
40a9	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
40ac	06 00 	ld b,$00	ld b,$00
40ae	3e 0d 	ld a,$0d	ld a,$00
40b0	4e 	ld c,(hl)	ld c,(hl)
40b1	0c 	inc c	inc c
40b2	0d 	dec c	dec c
40b3	28 09 	jr z,$+$0b	jr z,$+$00
40b5	09 	add hl,bc	add hl,bc
40b6	2b 	dec hl	dec hl
40b7	be 	cp (hl)	cp (hl)
40b8	23 	inc hl	inc hl
40b9	28 f5 	jr z,$-$09	jr z,$-$00
40bb	c3 73 3f 	jp $3f73	jp $0000
40be	23 	inc hl	inc hl
40bf	23 	inc hl	inc hl
40c0	23 	inc hl	inc hl
40c1	c9 	ret	ret
40c2	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
40c5	36 00 	ld (hl),$00	ld (hl),$00
40c7	e5 	push hl	push hl
40c8	c5 	push bc	push bc
40c9	f5 	push af	push af
40ca	cd a9 40 	call $40a9	call $0000
40cd	22 de 55 	ld ($55de),hl	ld ($0000),hl
40d0	22 e0 55 	ld ($55e0),hl	ld ($0000),hl
40d3	21 6c 55 	ld hl,$556c	ld hl,$0000
40d6	06 70 	ld b,$70	ld b,$00
40d8	36 00 	ld (hl),$00	ld (hl),$00
40da	23 	inc hl	inc hl
40db	10 fb 	djnz $-$03	djnz $-$00
40dd	f1 	pop af	pop af
40de	c1 	pop bc	pop bc
40df	e1 	pop hl	pop hl
40e0	c9 	ret	ret
40e1	e5 	push hl	push hl
40e2	eb 	ex de,hl	ex de,hl
40e3	c5 	push bc	push bc
40e4	cd 1a 42 	call $421a	call $0000
40e7	c1 	pop bc	pop bc
40e8	e1 	pop hl	pop hl
40e9	7e 	ld a,(hl)	ld a,(hl)
40ea	d9 	exx	exx
40eb	21 02 3e 	ld hl,$3e02	ld hl,$0000
40ee	01 08 00 	ld bc,$0008	ld bc,$0000
40f1	ed b1 	cpir	cpir
40f3	cc 79 41 	call z,$4179	call z,$0000
40f6	fe cb 	cp $cb	cp $00
40f8	cc 79 41 	call z,$4179	call z,$0000
40fb	3e 20 	ld a,$20	ld a,$00
40fd	dd cb 00 46 	bit 0,(ix)	bit 0,(ix)
4101	c4 86 41 	call nz,$4186	call nz,$0000
4104	7b 	ld a,e	ld a,e
4105	87 	add a,a	add a,a
4106	dd cb 00 4e 	bit 1,(ix)	bit 1,(ix)
410a	c4 27 36 	call nz,$3627	call nz,$0000
410d	d9 	exx	exx
410e	7e 	ld a,(hl)	ld a,(hl)
410f	1e 00 	ld e,$00	ld e,$00
4111	d9 	exx	exx
4112	01 07 00 	ld bc,$0007	ld bc,$0000
4115	21 fb 3d 	ld hl,$3dfb	ld hl,$0000
4118	ed b1 	cpir	cpir
411a	cc 7d 41 	call z,$417d	call z,$0000
411d	fe c8 	cp $c8	cp $00
411f	cc 7d 41 	call z,$417d	call z,$0000
4122	d9 	exx	exx
4123	7e 	ld a,(hl)	ld a,(hl)
4124	23 	inc hl	inc hl
4125	fe 0d 	cp $0d	cp $00
4127	28 25 	jr z,$+$27	jr z,$+$00
4129	57 	ld d,a	ld d,a
412a	fe 10 	cp $10	cp $00
412c	20 02 	jr nz,$+$04	jr nz,$+$00
412e	cb fb 	set 7,e	set 7,e
4130	fe 22 	cp $22	cp $00
4132	20 01 	jr nz,$+$03	jr nz,$+$00
4134	1c 	inc e	inc e
4135	cd 6d 41 	call $416d	call $0000
4138	7b 	ld a,e	ld a,e
4139	e6 81 	and $81	and $00
413b	20 e6 	jr nz,$-$18	jr nz,$-$00
413d	7e 	ld a,(hl)	ld a,(hl)
413e	d9 	exx	exx
413f	21 02 3e 	ld hl,$3e02	ld hl,$0000
4142	01 03 00 	ld bc,$0003	ld bc,$0000
4145	ed b1 	cpir	cpir
4147	cc 79 41 	call z,$4179	call z,$0000
414a	0e 04 	ld c,$04	ld c,$00
414c	18 c7 	jr $-$37	jr $-$00
414e	7a 	ld a,d	ld a,d
414f	fe 8c 	cp $8c	cp $00
4151	d9 	exx	exx
4152	cc 7d 41 	call z,$417d	call z,$0000
4155	d9 	exx	exx
4156	18 27 	jr $+$29	jr $+$00
4158	e5 	push hl	push hl
4159	fd e1 	pop iy	pop iy
415b	c5 	push bc	push bc
415c	cd e4 1f 	call $1fe4	call $0000
415f	c1 	pop bc	pop bc
4160	d9 	exx	exx
4161	c5 	push bc	push bc
4162	d5 	push de	push de
4163	cd 16 42 	call $4216	call $0000
4166	d1 	pop de	pop de
4167	c1 	pop bc	pop bc
4168	d9 	exx	exx
4169	fd e5 	push iy	push iy
416b	e1 	pop hl	pop hl
416c	c9 	ret	ret
416d	cb 43 	bit 0,e	bit 0,e
416f	20 15 	jr nz,$+$17	jr nz,$+$00
4171	fe 8d 	cp $8d	cp $00
4173	28 e3 	jr z,$-$1b	jr z,$-$00
4175	cd 9f 41 	call $419f	call $0000
4178	c9 	ret	ret
4179	1d 	dec e	dec e
417a	f2 7e 41 	jp p,$417e	jp p,$0000
417d	1c 	inc e	inc e
417e	c9 	ret	ret
417f	3e 0d 	ld a,$0d	ld a,$00
4181	cd 86 41 	call $4186	call $0000
4184	3e 0a 	ld a,$0a	ld a,$00
4186	cd 97 05 	call $0597	call $0000
4189	d6 0d 	sub $0d	sub $00
418b	28 05 	jr z,$+$07	jr z,$+$00
418d	d8 	ret c	ret c
418e	3a fb 55 	ld a,($55fb)	ld a,($0000)
4191	3c 	inc a	inc a
4192	32 fb 55 	ld ($55fb),a	ld ($0000),a
4195	c8 	ret z	ret z
4196	e5 	push hl	push hl
4197	2a fc 55 	ld hl,($55fc)	ld hl,($0000)
419a	bd 	cp l	cp l
419b	e1 	pop hl	pop hl
419c	c0 	ret nz	ret nz
419d	18 e0 	jr $-$1e	jr $-$00
419f	fe a0 	cp $a0	cp $00
41a1	ea 86 41 	jp pe,$4186	jp pe,$0000
41a4	c5 	push bc	push bc
41a5	e5 	push hl	push hl
41a6	21 08 39 	ld hl,$3908	ld hl,$0000
41a9	01 5b 03 	ld bc,$035b	ld bc,$0000
41ac	ed b1 	cpir	cpir
41ae	c4 86 41 	call nz,$4186	call nz,$0000
41b1	06 a0 	ld b,$a0	ld b,$00
41b3	fe 91 	cp $91	cp $00
41b5	ea b9 41 	jp pe,$41b9	jp pe,$0000
41b8	04 	inc b	inc b
41b9	7e 	ld a,(hl)	ld a,(hl)
41ba	23 	inc hl	inc hl
41bb	b8 	cp b	cp b
41bc	f5 	push af	push af
41bd	ec 86 41 	call pe,$4186	call pe,$0000
41c0	f1 	pop af	pop af
41c1	ea b9 41 	jp pe,$41b9	jp pe,$0000
41c4	e1 	pop hl	pop hl
41c5	c1 	pop bc	pop bc
41c6	c9 	ret	ret
41c7	eb 	ex de,hl	ex de,hl
41c8	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
41cb	af 	xor a	xor a
41cc	be 	cp (hl)	cp (hl)
41cd	3c 	inc a	inc a
41ce	d0 	ret nc	ret nc
41cf	af 	xor a	xor a
41d0	47 	ld b,a	ld b,a
41d1	4e 	ld c,(hl)	ld c,(hl)
41d2	e5 	push hl	push hl
41d3	23 	inc hl	inc hl
41d4	7e 	ld a,(hl)	ld a,(hl)
41d5	23 	inc hl	inc hl
41d6	66 	ld h,(hl)	ld h,(hl)
41d7	6f 	ld l,a	ld l,a
41d8	ed 52 	sbc hl,de	sbc hl,de
41da	e1 	pop hl	pop hl
41db	d0 	ret nc	ret nc
41dc	09 	add hl,bc	add hl,bc
41dd	18 f2 	jr $-$0c	jr $-$00
41df	06 00 	ld b,$00	ld b,$00
41e1	ed 5b f4 55 	ld de,($55f4)	ld de,($0000)
41e5	2a dc 55 	ld hl,($55dc)	ld hl,($0000)
41e8	b7 	or a	or a
41e9	ed 52 	sbc hl,de	sbc hl,de
41eb	19 	add hl,de	add hl,de
41ec	30 13 	jr nc,$+$15	jr nc,$+$00
41ee	4e 	ld c,(hl)	ld c,(hl)
41ef	0c 	inc c	inc c
41f0	0d 	dec c	dec c
41f1	28 0e 	jr z,$+$10	jr z,$+$00
41f3	09 	add hl,bc	add hl,bc
41f4	ed 52 	sbc hl,de	sbc hl,de
41f6	19 	add hl,de	add hl,de
41f7	38 f5 	jr c,$-$09	jr c,$-$00
41f9	ed 42 	sbc hl,bc	sbc hl,bc
41fb	23 	inc hl	inc hl
41fc	5e 	ld e,(hl)	ld e,(hl)
41fd	23 	inc hl	inc hl
41fe	56 	ld d,(hl)	ld d,(hl)
41ff	eb 	ex de,hl	ex de,hl
4200	c9 	ret	ret
4201	21 00 00 	ld hl,$0000	ld hl,$0000
4204	18 fa 	jr $-$04	jr $-$00
4206	7c 	ld a,h	ld a,h
4207	b5 	or l	or l
4208	c8 	ret z	ret z
4209	cd 7e 45 	call $457e	call $0000
420c	20 61 	jr nz,$+$63	jr nz,$+$00
420e	74 	ld (hl),h	ld (hl),h
420f	20 6c 	jr nz,$+$6e	jr nz,$+$00
4211	69 	ld l,c	ld l,c
4212	6e 	ld l,(hl)	ld l,(hl)
4213	65 	ld h,l	ld h,l
4214	20 00 	jr nz,$+$02	jr nz,$+$00
4216	0e 00 	ld c,$00	ld c,$00
4218	18 02 	jr $+$04	jr $+$00
421a	0e 20 	ld c,$20	ld c,$00
421c	06 05 	ld b,$05	ld b,$00
421e	11 10 27 	ld de,$2710	ld de,$0000
4221	af 	xor a	xor a
4222	ed 52 	sbc hl,de	sbc hl,de
4224	3c 	inc a	inc a
4225	30 fb 	jr nc,$-$03	jr nc,$-$00
4227	19 	add hl,de	add hl,de
4228	3d 	dec a	dec a
4229	28 04 	jr z,$+$06	jr z,$+$00
422b	cb e1 	set 4,c	set 4,c
422d	cb e9 	set 5,c	set 5,c
422f	b1 	or c	or c
4230	c4 86 41 	call nz,$4186	call nz,$0000
4233	78 	ld a,b	ld a,b
4234	fe 05 	cp $05	cp $00
4236	28 06 	jr z,$+$08	jr z,$+$00
4238	29 	add hl,hl	add hl,hl
4239	54 	ld d,h	ld d,h
423a	5d 	ld e,l	ld e,l
423b	29 	add hl,hl	add hl,hl
423c	29 	add hl,hl	add hl,hl
423d	19 	add hl,de	add hl,de
423e	11 e8 03 	ld de,$03e8	ld de,$0000
4241	10 de 	djnz $-$20	djnz $-$00
4243	37 	scf	scf
4244	c9 	ret	ret
4245	fd 23 	inc iy	inc iy
4247	fd 23 	inc iy	inc iy
4249	e5 	push hl	push hl
424a	dd e1 	pop ix	pop ix
424c	7a 	ld a,d	ld a,d
424d	f6 40 	or $40	or $00
424f	bf 	cp a	cp a
4250	c9 	ret	ret
4251	cd c0 43 	call $43c0	call $0000
4254	fd 7e 00 	ld a,(iy)	ld a,(iy)
4257	fe 28 	cp $28	cp $00
4259	20 7d 	jr nz,$+$7f	jr nz,$+$00
425b	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
425e	fe 29 	cp $29	cp $00
4260	28 e3 	jr z,$-$1b	jr z,$-$00
4262	3e 0e 	ld a,$0e	ld a,$00
4264	c3 c8 3f 	jp $3fc8	jp $0000
4267	fd 7e 00 	ld a,(iy)	ld a,(iy)
426a	fe 21 	cp $21	cp $00
426c	28 76 	jr z,$+$78	jr z,$+$00
426e	fe 3f 	cp $3f	cp $00
4270	28 76 	jr z,$+$78	jr z,$+$00
4272	fe 7c 	cp $7c	cp $00
4274	28 75 	jr z,$+$77	jr z,$+$00
4276	fe 24 	cp $24	cp $00
4278	28 75 	jr z,$+$77	jr z,$+$00
427a	cd 34 43 	call $4334	call $0000
427d	c0 	ret nz	ret nz
427e	fd 7e 00 	ld a,(iy)	ld a,(iy)
4281	fe 28 	cp $28	cp $00
4283	20 4b 	jr nz,$+$4d	jr nz,$+$00
4285	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
4288	fe 29 	cp $29	cp $00
428a	28 b9 	jr z,$-$45	jr z,$-$00
428c	d5 	push de	push de
428d	7e 	ld a,(hl)	ld a,(hl)
428e	23 	inc hl	inc hl
428f	66 	ld h,(hl)	ld h,(hl)
4290	6f 	ld l,a	ld l,a
4291	e6 fe 	and $fe	and $00
4293	b4 	or h	or h
4294	28 cc 	jr z,$-$32	jr z,$-$00
4296	7e 	ld a,(hl)	ld a,(hl)
4297	b7 	or a	or a
4298	28 c8 	jr z,$-$36	jr z,$-$00
429a	23 	inc hl	inc hl
429b	11 00 00 	ld de,$0000	ld de,$0000
429e	f5 	push af	push af
429f	fd 23 	inc iy	inc iy
42a1	e5 	push hl	push hl
42a2	d5 	push de	push de
42a3	cd b7 18 	call $18b7	call $0000
42a6	d9 	exx	exx
42a7	d1 	pop de	pop de
42a8	e3 	ex (sp),hl	ex (sp),hl
42a9	4e 	ld c,(hl)	ld c,(hl)
42aa	23 	inc hl	inc hl
42ab	46 	ld b,(hl)	ld b,(hl)
42ac	23 	inc hl	inc hl
42ad	e3 	ex (sp),hl	ex (sp),hl
42ae	eb 	ex de,hl	ex de,hl
42af	d5 	push de	push de
42b0	cd 41 37 	call $3741	call $0000
42b3	d1 	pop de	pop de
42b4	19 	add hl,de	add hl,de
42b5	eb 	ex de,hl	ex de,hl
42b6	b7 	or a	or a
42b7	ed 42 	sbc hl,bc	sbc hl,bc
42b9	3e 0f 	ld a,$0f	ld a,$00
42bb	30 a7 	jr nc,$-$57	jr nc,$-$00
42bd	e1 	pop hl	pop hl
42be	f1 	pop af	pop af
42bf	3d 	dec a	dec a
42c0	20 1c 	jr nz,$+$1e	jr nz,$+$00
42c2	cd 32 21 	call $2132	call $0000
42c5	f1 	pop af	pop af
42c6	e5 	push hl	push hl
42c7	cd 31 37 	call $3731	call $0000
42ca	e1 	pop hl	pop hl
42cb	19 	add hl,de	add hl,de
42cc	57 	ld d,a	ld d,a
42cd	fd 7e 00 	ld a,(iy)	ld a,(iy)
42d0	fe 3f 	cp $3f	cp $00
42d2	28 26 	jr z,$+$28	jr z,$+$00
42d4	fe 21 	cp $21	cp $00
42d6	28 1e 	jr z,$+$20	jr z,$+$00
42d8	e5 	push hl	push hl
42d9	dd e1 	pop ix	pop ix
42db	7a 	ld a,d	ld a,d
42dc	bf 	cp a	cp a
42dd	c9 	ret	ret
42de	f5 	push af	push af
42df	cd 26 21 	call $2126	call $0000
42e2	18 bd 	jr $-$41	jr $-$00
42e4	3e 04 	ld a,$04	ld a,$00
42e6	18 09 	jr $+$0b	jr $+$00
42e8	af 	xor a	xor a
42e9	18 06 	jr $+$08	jr $+$00
42eb	3e 05 	ld a,$05	ld a,$00
42ed	18 02 	jr $+$04	jr $+$00
42ef	3e 80 	ld a,$80	ld a,$00
42f1	ed 62 	sbc hl,hl	sbc hl,hl
42f3	f5 	push af	push af
42f4	18 15 	jr $+$17	jr $+$00
42f6	06 04 	ld b,$04	ld b,$00
42f8	18 02 	jr $+$04	jr $+$00
42fa	06 00 	ld b,$00	ld b,$00
42fc	e5 	push hl	push hl
42fd	dd e1 	pop ix	pop ix
42ff	7a 	ld a,d	ld a,d
4300	fe 81 	cp $81	cp $00
4302	c8 	ret z	ret z
4303	c5 	push bc	push bc
4304	cd a9 19 	call $19a9	call $0000
4307	cd 9b 1c 	call $1c9b	call $0000
430a	d9 	exx	exx
430b	e5 	push hl	push hl
430c	fd 23 	inc iy	inc iy
430e	cd e4 18 	call $18e4	call $0000
4311	d9 	exx	exx
4312	d1 	pop de	pop de
4313	f1 	pop af	pop af
4314	19 	add hl,de	add hl,de
4315	e5 	push hl	push hl
4316	dd e1 	pop ix	pop ix
4318	bf 	cp a	cp a
4319	c9 	ret	ret
431a	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
431d	cd 80 44 	call $4480	call $0000
4320	d8 	ret c	ret c
4321	fd 7e 00 	ld a,(iy)	ld a,(iy)
4324	21 d8 55 	ld hl,$55d8	ld hl,$0000
4327	fe a4 	cp $a4	cp $00
4329	28 43 	jr z,$+$45	jr z,$+$00
432b	21 da 55 	ld hl,$55da	ld hl,$0000
432e	fe f2 	cp $f2	cp $00
4330	28 3c 	jr z,$+$3e	jr z,$+$00
4332	37 	scf	scf
4333	c9 	ret	ret
4334	d6 40 	sub $40	sub $00
4336	d8 	ret c	ret c
4337	26 00 	ld h,$00	ld h,$00
4339	fe 1b 	cp $1b	cp $00
433b	30 1d 	jr nc,$+$1f	jr nc,$+$00
433d	87 	add a,a	add a,a
433e	6f 	ld l,a	ld l,a
433f	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
4342	fe 25 	cp $25	cp $00
4344	20 20 	jr nz,$+$22	jr nz,$+$00
4346	fd 7e 02 	ld a,(iy+$02)	ld a,(iy+$00)
4349	fe 28 	cp $28	cp $00
434b	28 19 	jr z,$+$1b	jr z,$+$00
434d	29 	add hl,hl	add hl,hl
434e	11 00 55 	ld de,$5500	ld de,$0000
4351	19 	add hl,de	add hl,de
4352	fd 23 	inc iy	inc iy
4354	fd 23 	inc iy	inc iy
4356	16 04 	ld d,$04	ld d,$00
4358	af 	xor a	xor a
4359	c9 	ret	ret
435a	fe 1f 	cp $1f	cp $00
435c	d8 	ret c	ret c
435d	fe 3b 	cp $3b	cp $00
435f	3f 	ccf	ccf
4360	3d 	dec a	dec a
4361	d8 	ret c	ret c
4362	d6 03 	sub $03	sub $00
4364	87 	add a,a	add a,a
4365	6f 	ld l,a	ld l,a
4366	11 6c 55 	ld de,$556c	ld de,$0000
4369	2d 	dec l	dec l
436a	2d 	dec l	dec l
436b	37 	scf	scf
436c	f8 	ret m	ret m
436d	19 	add hl,de	add hl,de
436e	5e 	ld e,(hl)	ld e,(hl)
436f	23 	inc hl	inc hl
4370	56 	ld d,(hl)	ld d,(hl)
4371	7a 	ld a,d	ld a,d
4372	b3 	or e	or e
4373	28 49 	jr z,$+$4b	jr z,$+$00
4375	62 	ld h,d	ld h,d
4376	6b 	ld l,e	ld l,e
4377	23 	inc hl	inc hl
4378	23 	inc hl	inc hl
4379	fd e5 	push iy	push iy
437b	7e 	ld a,(hl)	ld a,(hl)
437c	23 	inc hl	inc hl
437d	fd 23 	inc iy	inc iy
437f	fd be 00 	cp (iy)	cp (iy)
4382	28 f7 	jr z,$-$07	jr z,$-$00
4384	b7 	or a	or a
4385	28 05 	jr z,$+$07	jr z,$+$00
4387	fd e1 	pop iy	pop iy
4389	eb 	ex de,hl	ex de,hl
438a	18 e2 	jr $-$1c	jr $-$00
438c	fd 2b 	dec iy	dec iy
438e	fd 7e 00 	ld a,(iy)	ld a,(iy)
4391	fe 28 	cp $28	cp $00
4393	28 13 	jr z,$+$15	jr z,$+$00
4395	fd 23 	inc iy	inc iy
4397	cd 73 44 	call $4473	call $0000
439a	38 0c 	jr c,$+$0e	jr c,$+$00
439c	fe 28 	cp $28	cp $00
439e	28 e7 	jr z,$-$17	jr z,$-$00
43a0	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
43a3	cd 80 44 	call $4480	call $0000
43a6	30 df 	jr nc,$-$1f	jr nc,$-$00
43a8	d1 	pop de	pop de
43a9	fd 7e ff 	ld a,(iy-$01)	ld a,(iy-$00)
43ac	fe 24 	cp $24	cp $00
43ae	16 81 	ld d,$81	ld d,$00
43b0	c8 	ret z	ret z
43b1	fe 26 	cp $26	cp $00
43b3	16 01 	ld d,$01	ld d,$00
43b5	c8 	ret z	ret z
43b6	fe 25 	cp $25	cp $00
43b8	16 04 	ld d,$04	ld d,$00
43ba	c8 	ret z	ret z
43bb	14 	inc d	inc d
43bc	bf 	cp a	cp a
43bd	c9 	ret	ret
43be	3c 	inc a	inc a
43bf	c9 	ret	ret
43c0	af 	xor a	xor a
43c1	ed 5b e0 55 	ld de,($55e0)	ld de,($0000)
43c5	72 	ld (hl),d	ld (hl),d
43c6	2b 	dec hl	dec hl
43c7	73 	ld (hl),e	ld (hl),e
43c8	eb 	ex de,hl	ex de,hl
43c9	77 	ld (hl),a	ld (hl),a
43ca	23 	inc hl	inc hl
43cb	77 	ld (hl),a	ld (hl),a
43cc	23 	inc hl	inc hl
43cd	fd 23 	inc iy	inc iy
43cf	cd 73 44 	call $4473	call $0000
43d2	38 14 	jr c,$+$16	jr c,$+$00
43d4	77 	ld (hl),a	ld (hl),a
43d5	23 	inc hl	inc hl
43d6	cd 80 44 	call $4480	call $0000
43d9	30 f2 	jr nc,$-$0c	jr nc,$-$00
43db	fe 28 	cp $28	cp $00
43dd	28 09 	jr z,$+$0b	jr z,$+$00
43df	fd 7e 01 	ld a,(iy+$01)	ld a,(iy+$00)
43e2	fe 28 	cp $28	cp $00
43e4	28 e7 	jr z,$-$17	jr z,$-$00
43e6	fd 23 	inc iy	inc iy
43e8	36 00 	ld (hl),$00	ld (hl),$00
43ea	23 	inc hl	inc hl
43eb	e5 	push hl	push hl
43ec	cd a9 43 	call $43a9	call $0000
43ef	fd 7e 00 	ld a,(iy)	ld a,(iy)
43f2	fe 28 	cp $28	cp $00
43f4	3e 02 	ld a,$02	ld a,$00
43f6	28 07 	jr z,$+$09	jr z,$+$00
43f8	7a 	ld a,d	ld a,d
43f9	b7 	or a	or a
43fa	f2 ff 43 	jp p,$43ff	jp p,$0000
43fd	3e 04 	ld a,$04	ld a,$00
43ff	36 00 	ld (hl),$00	ld (hl),$00
4401	23 	inc hl	inc hl
4402	3d 	dec a	dec a
4403	20 fa 	jr nz,$-$04	jr nz,$-$00
4405	22 e0 55 	ld ($55e0),hl	ld ($0000),hl
4408	cd 0a 33 	call $330a	call $0000
440b	e1 	pop hl	pop hl
440c	af 	xor a	xor a
440d	c9 	ret	ret
440e	cd 8f 45 	call $458f	call $0000
4411	21 00 00 	ld hl,$0000	ld hl,$0000
4414	fd 7e 00 	ld a,(iy)	ld a,(iy)
4417	d6 30 	sub $30	sub $00
4419	d8 	ret c	ret c
441a	fe 0a 	cp $0a	cp $00
441c	d0 	ret nc	ret nc
441d	fd 23 	inc iy	inc iy
441f	54 	ld d,h	ld d,h
4420	5d 	ld e,l	ld e,l
4421	29 	add hl,hl	add hl,hl
4422	38 0f 	jr c,$+$11	jr c,$+$00
4424	29 	add hl,hl	add hl,hl
4425	38 0c 	jr c,$+$0e	jr c,$+$00
4427	19 	add hl,de	add hl,de
4428	38 09 	jr c,$+$0b	jr c,$+$00
442a	29 	add hl,hl	add hl,hl
442b	38 06 	jr c,$+$08	jr c,$+$00
442d	5f 	ld e,a	ld e,a
442e	16 00 	ld d,$00	ld d,$00
4430	19 	add hl,de	add hl,de
4431	30 e1 	jr nc,$-$1d	jr nc,$-$00
4433	3e 14 	ld a,$14	ld a,$00
4435	c3 c8 3f 	jp $3fc8	jp $0000
4438	cd 0e 44 	call $440e	call $0000
443b	7c 	ld a,h	ld a,h
443c	b5 	or l	or l
443d	20 02 	jr nz,$+$04	jr nz,$+$00
443f	2e 0a 	ld l,$0a	ld l,$00
4441	cd ba 35 	call $35ba	call $0000
4444	fd 23 	inc iy	inc iy
4446	e5 	push hl	push hl
4447	21 0a 00 	ld hl,$000a	ld hl,$0000
444a	c4 0e 44 	call nz,$440e	call nz,$0000
444d	e3 	ex (sp),hl	ex (sp),hl
444e	c1 	pop bc	pop bc
444f	78 	ld a,b	ld a,b
4450	b1 	or c	or c
4451	c0 	ret nz	ret nz
4452	cd d9 3f 	call $3fd9	call $0000
4455	53 	ld d,e	ld d,e
4456	69 	ld l,c	ld l,c
4457	6c 	ld l,h	ld l,h
4458	6c 	ld l,h	ld l,h
4459	79 	ld a,c	ld a,c
445a	00 	nop	nop
445b	cd 0e 44 	call $440e	call $0000
445e	e5 	push hl	push hl
445f	cd ba 35 	call $35ba	call $0000
4462	28 09 	jr z,$+$0b	jr z,$+$00
4464	fe e7 	cp $e7	cp $00
4466	28 05 	jr z,$+$07	jr z,$+$00
4468	fd 23 	inc iy	inc iy
446a	cd 0e 44 	call $440e	call $0000
446d	e3 	ex (sp),hl	ex (sp),hl
446e	cd c7 41 	call $41c7	call $0000
4471	c1 	pop bc	pop bc
4472	c9 	ret	ret
4473	fd 7e 00 	ld a,(iy)	ld a,(iy)
4476	fe 24 	cp $24	cp $00
4478	d8 	ret c	ret c
4479	fe 27 	cp $27	cp $00
447b	3f 	ccf	ccf
447c	d0 	ret nc	ret nc
447d	fe 28 	cp $28	cp $00
447f	c8 	ret z	ret z
4480	fe 30 	cp $30	cp $00
4482	d8 	ret c	ret c
4483	fe 3a 	cp $3a	cp $00
4485	3f 	ccf	ccf
4486	d0 	ret nc	ret nc
4487	fe 40 	cp $40	cp $00
4489	c8 	ret z	ret z
448a	fe 41 	cp $41	cp $00
448c	d8 	ret c	ret c
448d	fe 5b 	cp $5b	cp $00
448f	3f 	ccf	ccf
4490	d0 	ret nc	ret nc
4491	fe 5f 	cp $5f	cp $00
4493	d8 	ret c	ret c
4494	fe 7b 	cp $7b	cp $00
4496	3f 	ccf	ccf
4497	c9 	ret	ret
4498	12 	ld (de),a	ld (de),a
4499	13 	inc de	inc de
449a	fd 23 	inc iy	inc iy
449c	7b 	ld a,e	ld a,e
449d	fe fc 	cp $fc	cp $00
449f	3e 13 	ld a,$13	ld a,$00
44a1	d2 c8 3f 	jp nc,$3fc8	jp nc,$0000
44a4	fd 7e 00 	ld a,(iy)	ld a,(iy)
44a7	fe 0d 	cp $0d	cp $00
44a9	c8 	ret z	ret z
44aa	cd 80 44 	call $4480	call $0000
44ad	30 04 	jr nc,$+$06	jr nc,$+$00
44af	cb a9 	res 5,c	res 5,c
44b1	cb 99 	res 3,c	res 3,c
44b3	fe 20 	cp $20	cp $00
44b5	28 e1 	jr z,$-$1d	jr z,$-$00
44b7	fe 2c 	cp $2c	cp $00
44b9	28 dd 	jr z,$-$21	jr z,$-$00
44bb	fe 47 	cp $47	cp $00
44bd	38 02 	jr c,$+$04	jr c,$+$00
44bf	cb 99 	res 3,c	res 3,c
44c1	fe 22 	cp $22	cp $00
44c3	20 05 	jr nz,$+$07	jr nz,$+$00
44c5	cb 11 	rl c	rl c
44c7	3f 	ccf	ccf
44c8	cb 19 	rr c	rr c
44ca	cb 61 	bit 4,c	bit 4,c
44cc	28 10 	jr z,$+$12	jr z,$+$00
44ce	cb a1 	res 4,c	res 4,c
44d0	c5 	push bc	push bc
44d1	d5 	push de	push de
44d2	cd 0e 44 	call $440e	call $0000
44d5	d1 	pop de	pop de
44d6	c1 	pop bc	pop bc
44d7	7c 	ld a,h	ld a,h
44d8	b5 	or l	or l
44d9	c4 43 45 	call nz,$4543	call nz,$0000
44dc	18 be 	jr $-$40	jr $-$00
44de	0d 	dec c	dec c
44df	28 09 	jr z,$+$0b	jr z,$+$00
44e1	0c 	inc c	inc c
44e2	20 b4 	jr nz,$-$4a	jr nz,$-$00
44e4	b7 	or a	or a
44e5	f4 27 40 	call p,$4027	call p,$0000
44e8	18 12 	jr $+$14	jr $+$00
44ea	fe 2a 	cp $2a	cp $00
44ec	28 16 	jr z,$+$18	jr z,$+$00
44ee	b7 	or a	or a
44ef	f4 27 40 	call p,$4027	call p,$0000
44f2	fe 8f 	cp $8f	cp $00
44f4	38 06 	jr c,$+$08	jr c,$+$00
44f6	fe 94 	cp $94	cp $00
44f8	30 02 	jr nc,$+$04	jr nc,$+$00
44fa	c6 40 	add a,$40	add a,$00
44fc	fe f4 	cp $f4	cp $00
44fe	28 04 	jr z,$+$06	jr z,$+$00
4500	fe dc 	cp $dc	cp $00
4502	20 02 	jr nz,$+$04	jr nz,$+$00
4504	cb f1 	set 6,c	set 6,c
4506	fe a4 	cp $a4	cp $00
4508	28 09 	jr z,$+$0b	jr z,$+$00
450a	fe f2 	cp $f2	cp $00
450c	28 05 	jr z,$+$07	jr z,$+$00
450e	cd 8a 44 	call $448a	call $0000
4511	38 02 	jr c,$+$04	jr c,$+$00
4513	cb e9 	set 5,c	set 5,c
4515	fe 26 	cp $26	cp $00
4517	20 02 	jr nz,$+$04	jr nz,$+$00
4519	cb d9 	set 3,c	set 3,c
451b	21 3a 45 	ld hl,$453a	ld hl,$0000
451e	c5 	push bc	push bc
451f	01 06 00 	ld bc,$0006	ld bc,$0000
4522	ed b1 	cpir	cpir
4524	c1 	pop bc	pop bc
4525	20 02 	jr nz,$+$04	jr nz,$+$00
4527	cb e1 	set 4,c	set 4,c
4529	21 3e 45 	ld hl,$453e	ld hl,$0000
452c	c5 	push bc	push bc
452d	01 05 00 	ld bc,$0005	ld bc,$0000
4530	ed b1 	cpir	cpir
4532	c1 	pop bc	pop bc
4533	20 02 	jr nz,$+$04	jr nz,$+$00
4535	cb c1 	set 0,c	set 0,c
4537	c3 98 44 	jp $4498	jp $0000
453a	e5 	push hl	push hl
453b	e4 f7 fc 	call po,$fcf7	call po,$0000
453e	8c 	adc a,h	adc a,h
453f	8b 	adc a,e	adc a,e
4540	f5 	push af	push af
4541	85 	add a,l	add a,l
4542	3a cb e1 	ld a,($e1cb)	ld a,($0000)
4545	eb 	ex de,hl	ex de,hl
4546	36 8d 	ld (hl),$8d	ld (hl),$00
4548	23 	inc hl	inc hl
4549	7a 	ld a,d	ld a,d
454a	e6 c0 	and $c0	and $00
454c	0f 	rrca	rrca
454d	0f 	rrca	rrca
454e	47 	ld b,a	ld b,a
454f	7b 	ld a,e	ld a,e
4550	e6 c0 	and $c0	and $00
4552	b0 	or b	or b
4553	0f 	rrca	rrca
4554	0f 	rrca	rrca
4555	ee 54 	xor $54	xor $00
4557	77 	ld (hl),a	ld (hl),a
4558	23 	inc hl	inc hl
4559	7b 	ld a,e	ld a,e
455a	e6 3f 	and $3f	and $00
455c	f6 40 	or $40	or $00
455e	77 	ld (hl),a	ld (hl),a
455f	23 	inc hl	inc hl
4560	7a 	ld a,d	ld a,d
4561	e6 3f 	and $3f	and $00
4563	f6 40 	or $40	or $00
4565	77 	ld (hl),a	ld (hl),a
4566	23 	inc hl	inc hl
4567	eb 	ex de,hl	ex de,hl
4568	c9 	ret	ret
4569	2a ee 55 	ld hl,($55ee)	ld hl,($0000)
456c	7e 	ld a,(hl)	ld a,(hl)
456d	23 	inc hl	inc hl
456e	b7 	or a	or a
456f	c8 	ret z	ret z
4570	fe 0a 	cp $0a	cp $00
4572	28 05 	jr z,$+$07	jr z,$+$00
4574	cd 9f 41 	call $419f	call $0000
4577	18 f3 	jr $-$0b	jr $-$00
4579	cd 86 41 	call $4186	call $0000
457c	18 ee 	jr $-$10	jr $-$00
457e	e3 	ex (sp),hl	ex (sp),hl
457f	cd 6c 45 	call $456c	call $0000
4582	e3 	ex (sp),hl	ex (sp),hl
4583	c9 	ret	ret
4584	cd 8f 45 	call $458f	call $0000
4587	fe 2c 	cp $2c	cp $00
4589	28 0a 	jr z,$+$0c	jr z,$+$00
458b	c1 	pop bc	pop bc
458c	c3 1d 25 	jp $251d	jp $0000
458f	fd 7e 00 	ld a,(iy)	ld a,(iy)
4592	fe 20 	cp $20	cp $00
4594	c0 	ret nz	ret nz
4595	fd 23 	inc iy	inc iy
4597	18 f6 	jr $-$08	jr $-$00
4599	fd e5 	push iy	push iy
459b	fd 21 00 00 	ld iy,$0000	ld iy,$0000
459f	fd 39 	add iy,sp	add iy,sp
45a1	cd b0 45 	call $45b0	call $0000
45a4	bf 	cp a	cp a
45a5	fd e1 	pop iy	pop iy
45a7	c9 	ret	ret
45a8	3e 01 	ld a,$01	ld a,$00
45aa	fd f9 	ld sp,iy	ld sp,iy
45ac	b7 	or a	or a
45ad	37 	scf	scf
45ae	18 f5 	jr $-$09	jr $-$00
45b0	fe 2e 	cp $2e	cp $00
45b2	30 f4 	jr nc,$-$0a	jr nc,$-$00
45b4	fe 10 	cp $10	cp $00
45b6	30 07 	jr nc,$+$09	jr nc,$+$00
45b8	08 	ex af,af'	ex af,af'
45b9	78 	ld a,b	ld a,b
45ba	b1 	or c	or c
45bb	c4 29 4f 	call nz,$4f29	call nz,$0000
45be	08 	ex af,af'	ex af,af'
45bf	e5 	push hl	push hl
45c0	21 d0 45 	ld hl,$45d0	ld hl,$0000
45c3	c5 	push bc	push bc
45c4	87 	add a,a	add a,a
45c5	4f 	ld c,a	ld c,a
45c6	06 00 	ld b,$00	ld b,$00
45c8	09 	add hl,bc	add hl,bc
45c9	7e 	ld a,(hl)	ld a,(hl)
45ca	23 	inc hl	inc hl
45cb	66 	ld h,(hl)	ld h,(hl)
45cc	6f 	ld l,a	ld l,a
45cd	c1 	pop bc	pop bc
45ce	e3 	ex (sp),hl	ex (sp),hl
45cf	c9 	ret	ret
45d0	4f 	ld c,a	ld c,a
45d1	46 	ld b,(hl)	ld b,(hl)
45d2	9c 	sbc a,h	sbc a,h
45d3	46 	ld b,(hl)	ld b,(hl)
45d4	61 	ld h,c	ld h,c
45d5	46 	ld b,(hl)	ld b,(hl)
45d6	85 	add a,l	add a,l
45d7	46 	ld b,(hl)	ld b,(hl)
45d8	73 	ld (hl),e	ld (hl),e
45d9	46 	ld b,(hl)	ld b,(hl)
45da	9a 	sbc a,d	sbc a,d
45db	48 	ld c,b	ld c,b
45dc	a7 	and a	and a
45dd	48 	ld c,b	ld c,b
45de	8f 	adc a,a	adc a,a
45df	48 	ld c,b	ld c,b
45e0	78 	ld a,b	ld a,b
45e1	48 	ld c,b	ld c,b
45e2	b2 	or d	or d
45e3	48 	ld c,b	ld c,b
45e4	66 	ld h,(hl)	ld h,(hl)
45e5	47 	ld b,a	ld b,a
45e6	bf 	cp a	cp a
45e7	46 	ld b,(hl)	ld b,(hl)
45e8	83 	add a,e	add a,e
45e9	48 	ld c,b	ld c,b
45ea	a9 	xor c	xor c
45eb	46 	ld b,(hl)	ld b,(hl)
45ec	e1 	pop hl	pop hl
45ed	47 	ld b,a	ld b,a
45ee	1e 47 	ld e,$47	ld e,$00
45f0	02 	ld (bc),a	ld (bc),a
45f1	49 5e 	ld.lis e,(hl)	ld.lis e,(hl)
45f3	4c 	ld c,h	ld c,h
45f4	ba 	cp d	cp d
45f5	4b 	ld c,e	ld c,e
45f6	df 	rst $18	rst $00
45f7	4b 	ld c,e	ld c,e
45f8	f8 	ret m	ret m
45f9	49 2c 	inc.lis l	inc.lis l
45fb	49 9d 	sbc.lis a,l	sbc.lis a,l
45fd	4a 	ld c,d	ld c,d
45fe	72 	ld (hl),d	ld (hl),d
45ff	49 28 4b 	jr.lis z,$+$4e	jr.lis z,$+$00
4602	a8 	xor b	xor b
4603	4b 	ld c,e	ld c,e
4604	0d 	dec c	dec c
4605	49 34 	inc.lis (hl)	inc.lis (hl)
4607	49 4a 	ld.lis c,d	ld.lis c,d
4609	49 03 	inc.lis bc	inc.lis bc
460b	4a 	ld c,d	ld c,d
460c	88 	adc a,b	adc a,b
460d	49 db 49 	in.lis a,($49)	in.lis a,($00)
4610	a5 	and l	and l
4611	4f 	ld c,a	ld c,a
4612	7c 	ld a,h	ld a,h
4613	4a 	ld c,d	ld c,d
4614	b6 	or (hl)	or (hl)
4615	48 	ld c,b	ld c,b
4616	20 49 	jr nz,$+$4b	jr nz,$+$00
4618	5a 	ld e,d	ld e,d
4619	49 66 	ld.lis h,(hl)	ld.lis h,(hl)
461b	4c 	ld c,h	ld c,h
461c	7b 	ld a,e	ld a,e
461d	4e 	ld c,(hl)	ld c,(hl)
461e	36 4f 	ld (hl),$4f	ld (hl),$00
4620	7b 	ld a,e	ld a,e
4621	4f 	ld c,a	ld c,a
4622	8c 	adc a,h	adc a,h
4623	4f 	ld c,a	ld c,a
4624	c1 	pop bc	pop bc
4625	48 	ld c,b	ld c,b
4626	c1 	pop bc	pop bc
4627	48 	ld c,b	ld c,b
4628	ce 48 	adc a,$48	adc a,$00
462a	e0 	ret po	ret po
462b	48 	ld c,b	ld c,b
462c	4c 	ld c,h	ld c,h
462d	46 	ld b,(hl)	ld b,(hl)
462e	99 	sbc a,c	sbc a,c
462f	46 	ld b,(hl)	ld b,(hl)
4630	5e 	ld e,(hl)	ld e,(hl)
4631	46 	ld b,(hl)	ld b,(hl)
4632	82 	add a,d	add a,d
4633	46 	ld b,(hl)	ld b,(hl)
4634	70 	ld (hl),b	ld (hl),b
4635	46 	ld b,(hl)	ld b,(hl)
4636	95 	sub l	sub l
4637	48 	ld c,b	ld c,b
4638	a2 	and d	and d
4639	48 	ld c,b	ld c,b
463a	8a 	adc a,d	adc a,d
463b	48 	ld c,b	ld c,b
463c	73 	ld (hl),e	ld (hl),e
463d	48 	ld c,b	ld c,b
463e	ad 	xor l	xor l
463f	48 	ld c,b	ld c,b
4640	91 	sub c	sub c
4641	47 	ld b,a	ld b,a
4642	c9 	ret	ret
4643	46 	ld b,(hl)	ld b,(hl)
4644	7e 	ld a,(hl)	ld a,(hl)
4645	48 	ld c,b	ld c,b
4646	b3 	or e	or e
4647	46 	ld b,(hl)	ld b,(hl)
4648	49 48 	ld.lis c,b	ld.lis c,b
464a	21 47 cd 	ld hl,$cd47	ld hl,$0000
464d	72 	ld (hl),d	ld (hl),d
464e	4e 	ld c,(hl)	ld c,(hl)
464f	7c 	ld a,h	ld a,h
4650	a2 	and d	and d
4651	67 	ld h,a	ld h,a
4652	7d 	ld a,l	ld a,l
4653	a3 	and e	and e
4654	6f 	ld l,a	ld l,a
4655	d9 	exx	exx
4656	7c 	ld a,h	ld a,h
4657	a2 	and d	and d
4658	67 	ld h,a	ld h,a
4659	7d 	ld a,l	ld a,l
465a	a3 	and e	and e
465b	6f 	ld l,a	ld l,a
465c	d9 	exx	exx
465d	c9 	ret	ret
465e	cd 72 4e 	call $4e72	call $0000
4661	7c 	ld a,h	ld a,h
4662	aa 	xor d	xor d
4663	67 	ld h,a	ld h,a
4664	7d 	ld a,l	ld a,l
4665	ab 	xor e	xor e
4666	6f 	ld l,a	ld l,a
4667	d9 	exx	exx
4668	7c 	ld a,h	ld a,h
4669	aa 	xor d	xor d
466a	67 	ld h,a	ld h,a
466b	7d 	ld a,l	ld a,l
466c	ab 	xor e	xor e
466d	6f 	ld l,a	ld l,a
466e	d9 	exx	exx
466f	c9 	ret	ret
4670	cd 72 4e 	call $4e72	call $0000
4673	7c 	ld a,h	ld a,h
4674	b2 	or d	or d
4675	67 	ld h,a	ld h,a
4676	7d 	ld a,l	ld a,l
4677	b3 	or e	or e
4678	6f 	ld l,a	ld l,a
4679	d9 	exx	exx
467a	7c 	ld a,h	ld a,h
467b	b2 	or d	or d
467c	67 	ld h,a	ld h,a
467d	7d 	ld a,l	ld a,l
467e	b3 	or e	or e
467f	6f 	ld l,a	ld l,a
4680	d9 	exx	exx
4681	c9 	ret	ret
4682	cd 72 4e 	call $4e72	call $0000
4685	7c 	ld a,h	ld a,h
4686	aa 	xor d	xor d
4687	cb 7c 	bit 7,h	bit 7,h
4689	cd 79 51 	call $5179	call $0000
468c	3e df 	ld a,$df	ld a,$00
468e	cd b5 50 	call $50b5	call $0000
4691	d9 	exx	exx
4692	0e 00 	ld c,$00	ld c,$00
4694	08 	ex af,af'	ex af,af'
4695	c8 	ret z	ret z
4696	c3 8a 4e 	jp $4e8a	jp $0000
4699	cd 72 4e 	call $4e72	call $0000
469c	cd 85 46 	call $4685	call $0000
469f	b7 	or a	or a
46a0	cd 60 4f 	call $4f60	call $0000
46a3	0e 00 	ld c,$00	ld c,$00
46a5	f0 	ret p	ret p
46a6	c3 8a 4e 	jp $4e8a	jp $0000
46a9	cd e8 4f 	call $4fe8	call $0000
46ac	e0 	ret po	ret po
46ad	cd e2 4f 	call $4fe2	call $0000
46b0	cd 2d 4f 	call $4f2d	call $0000
46b3	7a 	ld a,d	ld a,d
46b4	ee 80 	xor $80	xor $00
46b6	57 	ld d,a	ld d,a
46b7	18 10 	jr $+$12	jr $+$00
46b9	7c 	ld a,h	ld a,h
46ba	ee 80 	xor $80	xor $00
46bc	67 	ld h,a	ld h,a
46bd	18 0a 	jr $+$0c	jr $+$00
46bf	cd e2 4f 	call $4fe2	call $0000
46c2	e0 	ret po	ret po
46c3	cd e8 4f 	call $4fe8	call $0000
46c6	cd 2d 4f 	call $4f2d	call $0000
46c9	05 	dec b	dec b
46ca	04 	inc b	inc b
46cb	c8 	ret z	ret z
46cc	0d 	dec c	dec c
46cd	0c 	inc c	inc c
46ce	ca 60 4f 	jp z,$4f60	jp z,$0000
46d1	d9 	exx	exx
46d2	01 00 00 	ld bc,$0000	ld bc,$0000
46d5	d9 	exx	exx
46d6	7c 	ld a,h	ld a,h
46d7	aa 	xor d	xor d
46d8	f5 	push af	push af
46d9	78 	ld a,b	ld a,b
46da	b9 	cp c	cp c
46db	dc 60 4f 	call c,$4f60	call c,$0000
46de	78 	ld a,b	ld a,b
46df	cb fc 	set 7,h	set 7,h
46e1	c4 62 4e 	call nz,$4e62	call nz,$0000
46e4	f1 	pop af	pop af
46e5	7a 	ld a,d	ld a,d
46e6	cb fa 	set 7,d	set 7,d
46e8	fa f5 46 	jp m,$46f5	jp m,$0000
46eb	cd e2 4f 	call $4fe2	call $0000
46ee	dc 68 4f 	call c,$4f68	call c,$0000
46f1	cb fc 	set 7,h	set 7,h
46f3	18 0a 	jr $+$0c	jr $+$00
46f5	cd e8 4f 	call $4fe8	call $0000
46f8	dc 9e 4e 	call c,$4e9e	call c,$0000
46fb	cd 0a 4f 	call $4f0a	call $0000
46fe	2f 	cpl	cpl
46ff	d9 	exx	exx
4700	eb 	ex de,hl	ex de,hl
4701	21 00 80 	ld hl,$8000	ld hl,$0000
4704	b7 	or a	or a
4705	ed 42 	sbc hl,bc	sbc hl,bc
4707	eb 	ex de,hl	ex de,hl
4708	d9 	exx	exx
4709	cc 5a 4f 	call z,$4f5a	call z,$0000
470c	dc 4c 4f 	call c,$4f4c	call c,$0000
470f	dc 74 4f 	call c,$4f74	call c,$0000
4712	cb bc 	res 7,h	res 7,h
4714	0d 	dec c	dec c
4715	0c 	inc c	inc c
4716	ca a5 4f 	jp z,$4fa5	jp z,$0000
4719	b7 	or a	or a
471a	f0 	ret p	ret p
471b	cb fc 	set 7,h	set 7,h
471d	c9 	ret	ret
471e	cd 2d 4f 	call $4f2d	call $0000
4721	05 	dec b	dec b
4722	04 	inc b	inc b
4723	3e 12 	ld a,$12	ld a,$00
4725	ca aa 45 	jp z,$45aa	jp z,$0000
4728	0d 	dec c	dec c
4729	0c 	inc c	inc c
472a	c8 	ret z	ret z
472b	7c 	ld a,h	ld a,h
472c	aa 	xor d	xor d
472d	08 	ex af,af'	ex af,af'
472e	cb fa 	set 7,d	set 7,d
4730	cb fc 	set 7,h	set 7,h
4732	c5 	push bc	push bc
4733	42 	ld b,d	ld b,d
4734	4b 	ld c,e	ld c,e
4735	11 00 00 	ld de,$0000	ld de,$0000
4738	d9 	exx	exx
4739	42 	ld b,d	ld b,d
473a	4b 	ld c,e	ld c,e
473b	11 00 00 	ld de,$0000	ld de,$0000
473e	3e e0 	ld a,$e0	ld a,$00
4740	cd b5 50 	call $50b5	call $0000
4743	d9 	exx	exx
4744	cb 7a 	bit 7,d	bit 7,d
4746	d9 	exx	exx
4747	cc d0 50 	call z,$50d0	call z,$0000
474a	eb 	ex de,hl	ex de,hl
474b	d9 	exx	exx
474c	cb 38 	srl b	srl b
474e	cb 19 	rr c	rr c
4750	b7 	or a	or a
4751	ed 42 	sbc hl,bc	sbc hl,bc
4753	3f 	ccf	ccf
4754	eb 	ex de,hl	ex de,hl
4755	cc 5a 4f 	call z,$4f5a	call z,$0000
4758	dc 4c 4f 	call c,$4f4c	call c,$0000
475b	c1 	pop bc	pop bc
475c	dc 74 4f 	call c,$4f74	call c,$0000
475f	1f 	rra	rra
4760	79 	ld a,c	ld a,c
4761	98 	sbc a,b	sbc a,b
4762	3f 	ccf	ccf
4763	c3 ca 47 	jp $47ca	jp $0000
4766	7c 	ld a,h	ld a,h
4767	aa 	xor d	xor d
4768	cd 79 51 	call $5179	call $0000
476b	3e df 	ld a,$df	ld a,$00
476d	cd e3 50 	call $50e3	call $0000
4770	d9 	exx	exx
4771	0e bf 	ld c,$bf	ld c,$00
4773	cd 85 4f 	call $4f85	call $0000
4776	20 0d 	jr nz,$+$0f	jr nz,$+$00
4778	cb 7a 	bit 7,d	bit 7,d
477a	20 09 	jr nz,$+$0b	jr nz,$+$00
477c	cd 60 4f 	call $4f60	call $0000
477f	4a 	ld c,d	ld c,d
4780	08 	ex af,af'	ex af,af'
4781	f0 	ret p	ret p
4782	c3 8a 4e 	jp $4e8a	jp $0000
4785	0d 	dec c	dec c
4786	cd 4c 51 	call $514c	call $0000
4789	f2 85 47 	jp p,$4785	jp p,$0000
478c	08 	ex af,af'	ex af,af'
478d	f8 	ret m	ret m
478e	cb bc 	res 7,h	res 7,h
4790	c9 	ret	ret
4791	05 	dec b	dec b
4792	04 	inc b	inc b
4793	ca a5 4f 	jp z,$4fa5	jp z,$0000
4796	0d 	dec c	dec c
4797	0c 	inc c	inc c
4798	c8 	ret z	ret z
4799	7c 	ld a,h	ld a,h
479a	aa 	xor d	xor d
479b	08 	ex af,af'	ex af,af'
479c	cb fa 	set 7,d	set 7,d
479e	cb fc 	set 7,h	set 7,h
47a0	c5 	push bc	push bc
47a1	44 	ld b,h	ld b,h
47a2	4d 	ld c,l	ld c,l
47a3	21 00 00 	ld hl,$0000	ld hl,$0000
47a6	d9 	exx	exx
47a7	44 	ld b,h	ld b,h
47a8	4d 	ld c,l	ld c,l
47a9	21 00 00 	ld hl,$0000	ld hl,$0000
47ac	3e e0 	ld a,$e0	ld a,$00
47ae	cd e3 50 	call $50e3	call $0000
47b1	dc f7 50 	call c,$50f7	call c,$0000
47b4	d9 	exx	exx
47b5	e5 	push hl	push hl
47b6	21 00 80 	ld hl,$8000	ld hl,$0000
47b9	b7 	or a	or a
47ba	ed 52 	sbc hl,de	sbc hl,de
47bc	e1 	pop hl	pop hl
47bd	cc 5a 4f 	call z,$4f5a	call z,$0000
47c0	dc 4c 4f 	call c,$4f4c	call c,$0000
47c3	c1 	pop bc	pop bc
47c4	dc 74 4f 	call c,$4f74	call c,$0000
47c7	1f 	rra	rra
47c8	79 	ld a,c	ld a,c
47c9	88 	adc a,b	adc a,b
47ca	38 05 	jr c,$+$07	jr c,$+$00
47cc	f2 a5 4f 	jp p,$4fa5	jp p,$0000
47cf	18 03 	jr $+$05	jr $+$00
47d1	fa 76 4f 	jp m,$4f76	jp m,$0000
47d4	c6 80 	add a,$80	add a,$00
47d6	4f 	ld c,a	ld c,a
47d7	ca a5 4f 	jp z,$4fa5	jp z,$0000
47da	08 	ex af,af'	ex af,af'
47db	cb bc 	res 7,h	res 7,h
47dd	f0 	ret p	ret p
47de	cb fc 	set 7,h	set 7,h
47e0	c9 	ret	ret
47e1	cd 60 4f 	call $4f60	call $0000
47e4	cb 7c 	bit 7,h	bit 7,h
47e6	f5 	push af	push af
47e7	c4 8a 4e 	call nz,$4e8a	call nz,$0000
47ea	48 	ld c,b	ld c,b
47eb	06 20 	ld b,$20	ld b,$00
47ed	cd ff 4f 	call $4fff	call $0000
47f0	38 08 	jr c,$+$0a	jr c,$+$00
47f2	10 f9 	djnz $-$05	djnz $-$00
47f4	f1 	pop af	pop af
47f5	d9 	exx	exx
47f6	2c 	inc l	inc l
47f7	d9 	exx	exx
47f8	4c 	ld c,h	ld c,h
47f9	c9 	ret	ret
47fa	f1 	pop af	pop af
47fb	c5 	push bc	push bc
47fc	eb 	ex de,hl	ex de,hl
47fd	e5 	push hl	push hl
47fe	d9 	exx	exx
47ff	eb 	ex de,hl	ex de,hl
4800	e5 	push hl	push hl
4801	d9 	exx	exx
4802	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4806	dd 39 	add ix,sp	add ix,sp
4808	28 34 	jr z,$+$36	jr z,$+$00
480a	c5 	push bc	push bc
480b	d9 	exx	exx
480c	d5 	push de	push de
480d	d9 	exx	exx
480e	d5 	push de	push de
480f	cd 36 4f 	call $4f36	call $0000
4812	cd 14 4b 	call $4b14	call $0000
4815	cd 8a 32 	call $328a	call $0000
4818	18 1d 	jr $+$1f	jr $+$00
481a	c5 	push bc	push bc
481b	d9 	exx	exx
481c	cb 23 	sla e	sla e
481e	cb 12 	rl d	rl d
4820	d5 	push de	push de
4821	d9 	exx	exx
4822	cb 13 	rl e	rl e
4824	cb 12 	rl d	rl d
4826	d5 	push de	push de
4827	3e 0a 	ld a,$0a	ld a,$00
4829	f5 	push af	push af
482a	cd 11 50 	call $5011	call $0000
482d	cd b0 45 	call $45b0	call $0000
4830	f1 	pop af	pop af
4831	cd 75 1a 	call $1a75	call $0000
4834	dc b0 45 	call c,$45b0	call c,$0000
4837	d1 	pop de	pop de
4838	d9 	exx	exx
4839	d1 	pop de	pop de
483a	d9 	exx	exx
483b	79 	ld a,c	ld a,c
483c	c1 	pop bc	pop bc
483d	4f 	ld c,a	ld c,a
483e	10 da 	djnz $-$24	djnz $-$00
4840	f1 	pop af	pop af
4841	f1 	pop af	pop af
4842	f1 	pop af	pop af
4843	c9 	ret	ret
4844	f1 	pop af	pop af
4845	f1 	pop af	pop af
4846	f1 	pop af	pop af
4847	18 a1 	jr $-$5d	jr $-$00
4849	cb 7a 	bit 7,d	bit 7,d
484b	f5 	push af	push af
484c	cd 60 4f 	call $4f60	call $0000
484f	cd 1f 50 	call $501f	call $0000
4852	0d 	dec c	dec c
4853	0c 	inc c	inc c
4854	28 ee 	jr z,$-$10	jr z,$-$00
4856	3e 9e 	ld a,$9e	ld a,$00
4858	b9 	cp c	cp c
4859	38 08 	jr c,$+$0a	jr c,$+$00
485b	3c 	inc a	inc a
485c	cd 62 4e 	call $4e62	call $0000
485f	08 	ex af,af'	ex af,af'
4860	f2 44 48 	jp p,$4844	jp p,$0000
4863	cd 60 4f 	call $4f60	call $0000
4866	cd 2b 4b 	call $4b2b	call $0000
4869	cd 28 50 	call $5028	call $0000
486c	f1 	pop af	pop af
486d	cd 91 47 	call $4791	call $0000
4870	c3 a0 4a 	jp $4aa0	jp $0000
4873	cd af 4f 	call $4faf	call $0000
4876	18 03 	jr $+$05	jr $+$00
4878	cd a2 4f 	call $4fa2	call $0000
487b	d0 	ret nc	ret nc
487c	18 38 	jr $+$3a	jr $+$00
487e	cd af 4f 	call $4faf	call $0000
4881	18 03 	jr $+$05	jr $+$00
4883	cd a2 4f 	call $4fa2	call $0000
4886	c8 	ret z	ret z
4887	d8 	ret c	ret c
4888	18 2c 	jr $+$2e	jr $+$00
488a	cd af 4f 	call $4faf	call $0000
488d	18 03 	jr $+$05	jr $+$00
488f	cd a2 4f 	call $4fa2	call $0000
4892	d8 	ret c	ret c
4893	18 21 	jr $+$23	jr $+$00
4895	cd af 4f 	call $4faf	call $0000
4898	18 03 	jr $+$05	jr $+$00
489a	cd a2 4f 	call $4fa2	call $0000
489d	28 17 	jr z,$+$19	jr z,$+$00
489f	d0 	ret nc	ret nc
48a0	18 14 	jr $+$16	jr $+$00
48a2	cd af 4f 	call $4faf	call $0000
48a5	18 03 	jr $+$05	jr $+$00
48a7	cd a2 4f 	call $4fa2	call $0000
48aa	c8 	ret z	ret z
48ab	18 09 	jr $+$0b	jr $+$00
48ad	cd af 4f 	call $4faf	call $0000
48b0	18 03 	jr $+$05	jr $+$00
48b2	cd a2 4f 	call $4fa2	call $0000
48b5	c0 	ret nz	ret nz
48b6	21 ff ff 	ld hl,$ffff	ld hl,$0000
48b9	d9 	exx	exx
48ba	21 ff ff 	ld hl,$ffff	ld hl,$0000
48bd	d9 	exx	exx
48be	af 	xor a	xor a
48bf	4f 	ld c,a	ld c,a
48c0	c9 	ret	ret
48c1	cd f2 48 	call $48f2	call $0000
48c4	28 07 	jr z,$+$09	jr z,$+$00
48c6	d9 	exx	exx
48c7	29 	add hl,hl	add hl,hl
48c8	d9 	exx	exx
48c9	ed 6a 	adc hl,hl	adc hl,hl
48cb	10 f9 	djnz $-$05	djnz $-$00
48cd	c9 	ret	ret
48ce	cd f2 48 	call $48f2	call $0000
48d1	28 fa 	jr z,$-$04	jr z,$-$00
48d3	cb 2c 	sra h	sra h
48d5	cb 1d 	rr l	rr l
48d7	d9 	exx	exx
48d8	cb 1c 	rr h	rr h
48da	cb 1d 	rr l	rr l
48dc	d9 	exx	exx
48dd	10 f4 	djnz $-$0a	djnz $-$00
48df	c9 	ret	ret
48e0	cd f2 48 	call $48f2	call $0000
48e3	28 e8 	jr z,$-$16	jr z,$-$00
48e5	cb 3c 	srl h	srl h
48e7	cb 1d 	rr l	rr l
48e9	d9 	exx	exx
48ea	cb 1c 	rr h	rr h
48ec	cb 1d 	rr l	rr l
48ee	d9 	exx	exx
48ef	10 f4 	djnz $-$0a	djnz $-$00
48f1	c9 	ret	ret
48f2	cd 72 4e 	call $4e72	call $0000
48f5	7a 	ld a,d	ld a,d
48f6	b3 	or e	or e
48f7	d9 	exx	exx
48f8	b2 	or d	or d
48f9	7b 	ld a,e	ld a,e
48fa	d9 	exx	exx
48fb	06 20 	ld b,$20	ld b,$00
48fd	20 02 	jr nz,$+$04	jr nz,$+$00
48ff	47 	ld b,a	ld b,a
4900	b7 	or a	or a
4901	c9 	ret	ret
4902	cb 7c 	bit 7,h	bit 7,h
4904	c8 	ret z	ret z
4905	0d 	dec c	dec c
4906	0c 	inc c	inc c
4907	ca 8a 4e 	jp z,$4e8a	jp z,$0000
490a	cb bc 	res 7,h	res 7,h
490c	c9 	ret	ret
490d	cd 7b 4e 	call $4e7b	call $0000
4910	7c 	ld a,h	ld a,h
4911	2f 	cpl	cpl
4912	67 	ld h,a	ld h,a
4913	7d 	ld a,l	ld a,l
4914	2f 	cpl	cpl
4915	6f 	ld l,a	ld l,a
4916	d9 	exx	exx
4917	7c 	ld a,h	ld a,h
4918	2f 	cpl	cpl
4919	67 	ld h,a	ld h,a
491a	7d 	ld a,l	ld a,l
491b	2f 	cpl	cpl
491c	6f 	ld l,a	ld l,a
491d	d9 	exx	exx
491e	af 	xor a	xor a
491f	c9 	ret	ret
4920	21 0f 49 	ld hl,$490f	ld hl,$0000
4923	d9 	exx	exx
4924	21 a2 da 	ld hl,$daa2	ld hl,$0000
4927	d9 	exx	exx
4928	0e 81 	ld c,$81	ld c,$00
492a	af 	xor a	xor a
492b	c9 	ret	ret
492c	cd 3c 49 	call $493c	call $0000
492f	cd 91 47 	call $4791	call $0000
4932	af 	xor a	xor a
4933	c9 	ret	ret
4934	cd 3c 49 	call $493c	call $0000
4937	cd 21 47 	call $4721	call $0000
493a	af 	xor a	xor a
493b	c9 	ret	ret
493c	cd 36 4f 	call $4f36	call $0000
493f	11 2e 65 	ld de,$652e	ld de,$0000
4942	d9 	exx	exx
4943	11 d3 e0 	ld de,$e0d3	ld de,$0000
4946	d9 	exx	exx
4947	06 85 	ld b,$85	ld b,$00
4949	c9 	ret	ret
494a	cd 85 4f 	call $4f85	call $0000
494d	b1 	or c	or c
494e	c8 	ret z	ret z
494f	cb 7c 	bit 7,h	bit 7,h
4951	c2 b6 48 	jp nz,$48b6	jp nz,$0000
4954	cd a5 4f 	call $4fa5	call $0000
4957	c3 4c 4f 	jp $4f4c	jp $0000
495a	cd 67 51 	call $5167	call $0000
495d	f5 	push af	push af
495e	cd b8 4d 	call $4db8	call $0000
4961	f1 	pop af	pop af
4962	fe 2d 	cp $2d	cp $00
4964	3e 00 	ld a,$00	ld a,$00
4966	c0 	ret nz	ret nz
4967	0d 	dec c	dec c
4968	0c 	inc c	inc c
4969	ca 8a 4e 	jp z,$4e8a	jp z,$0000
496c	7c 	ld a,h	ld a,h
496d	ee 80 	xor $80	xor $00
496f	67 	ld h,a	ld h,a
4970	af 	xor a	xor a
4971	c9 	ret	ret
4972	0d 	dec c	dec c
4973	0c 	inc c	inc c
4974	c8 	ret z	ret z
4975	3e 9f 	ld a,$9f	ld a,$00
4977	44 	ld b,h	ld b,h
4978	cd 62 4e 	call $4e62	call $0000
497b	08 	ex af,af'	ex af,af'
497c	a0 	and b	and b
497d	fc 4c 4f 	call m,$4f4c	call m,$0000
4980	78 	ld a,b	ld a,b
4981	b7 	or a	or a
4982	fc 8a 4e 	call m,$4e8a	call m,$0000
4985	af 	xor a	xor a
4986	4f 	ld c,a	ld c,a
4987	c9 	ret	ret
4988	cd 36 4f 	call $4f36	call $0000
498b	cb 7c 	bit 7,h	bit 7,h
498d	3e 15 	ld a,$15	ld a,$00
498f	c2 aa 45 	jp nz,$45aa	jp nz,$0000
4992	0d 	dec c	dec c
4993	0c 	inc c	inc c
4994	c8 	ret z	ret z
4995	cb fc 	set 7,h	set 7,h
4997	cb 41 	bit 0,c	bit 0,c
4999	cc 68 4f 	call z,$4f68	call z,$0000
499c	79 	ld a,c	ld a,c
499d	d6 80 	sub $80	sub $00
499f	cb 2f 	sra a	sra a
49a1	c6 80 	add a,$80	add a,$00
49a3	4f 	ld c,a	ld c,a
49a4	c5 	push bc	push bc
49a5	eb 	ex de,hl	ex de,hl
49a6	21 00 00 	ld hl,$0000	ld hl,$0000
49a9	44 	ld b,h	ld b,h
49aa	4d 	ld c,l	ld c,l
49ab	d9 	exx	exx
49ac	eb 	ex de,hl	ex de,hl
49ad	21 00 00 	ld hl,$0000	ld hl,$0000
49b0	44 	ld b,h	ld b,h
49b1	4d 	ld c,l	ld c,l
49b2	3e e1 	ld a,$e1	ld a,$00
49b4	cd 16 51 	call $5116	call $0000
49b7	d9 	exx	exx
49b8	cb 78 	bit 7,b	bit 7,b
49ba	d9 	exx	exx
49bb	cc 16 51 	call z,$5116	call z,$0000
49be	cd 35 51 	call $5135	call $0000
49c1	b7 	or a	or a
49c2	cd d0 50 	call $50d0	call $0000
49c5	cb 1b 	rr e	rr e
49c7	60 	ld h,b	ld h,b
49c8	69 	ld l,c	ld l,c
49c9	d9 	exx	exx
49ca	60 	ld h,b	ld h,b
49cb	69 	ld l,c	ld l,c
49cc	dc 4c 4f 	call c,$4f4c	call c,$0000
49cf	c1 	pop bc	pop bc
49d0	dc 74 4f 	call c,$4f74	call c,$0000
49d3	1f 	rra	rra
49d4	9f 	sbc a,a	sbc a,a
49d5	81 	add a,c	add a,c
49d6	4f 	ld c,a	ld c,a
49d7	cb bc 	res 7,h	res 7,h
49d9	af 	xor a	xor a
49da	c9 	ret	ret
49db	cd 36 4f 	call $4f36	call $0000
49de	cd 1f 50 	call $501f	call $0000
49e1	cd fb 49 	call $49fb	call $0000
49e4	cd 28 50 	call $5028	call $0000
49e7	cd 1f 50 	call $501f	call $0000
49ea	cd 60 4f 	call $4f60	call $0000
49ed	cd 06 4a 	call $4a06	call $0000
49f0	cd 28 50 	call $5028	call $0000
49f3	cd 21 47 	call $4721	call $0000
49f6	af 	xor a	xor a
49f7	c9 	ret	ret
49f8	cd 36 4f 	call $4f36	call $0000
49fb	cd ab 4e 	call $4eab	call $0000
49fe	1c 	inc e	inc e
49ff	1c 	inc e	inc e
4a00	7b 	ld a,e	ld a,e
4a01	18 0e 	jr $+$10	jr $+$00
4a03	cd 36 4f 	call $4f36	call $0000
4a06	e5 	push hl	push hl
4a07	cd ab 4e 	call $4eab	call $0000
4a0a	f1 	pop af	pop af
4a0b	07 	rlca	rlca
4a0c	07 	rlca	rlca
4a0d	07 	rlca	rlca
4a0e	e6 04 	and $04	and $00
4a10	ab 	xor e	xor e
4a11	f5 	push af	push af
4a12	cb bc 	res 7,h	res 7,h
4a14	1f 	rra	rra
4a15	cd 92 4a 	call $4a92	call $0000
4a18	dc b9 46 	call c,$46b9	call c,$0000
4a1b	f1 	pop af	pop af
4a1c	f5 	push af	push af
4a1d	e6 03 	and $03	and $00
4a1f	e2 50 4a 	jp po,$4a50	jp po,$0000
4a22	cd 1f 50 	call $501f	call $0000
4a25	cd 19 50 	call $5019	call $0000
4a28	cd 52 50 	call $5052	call $0000
4a2b	b7 	or a	or a
4a2c	a8 	xor b	xor b
4a2d	11 36 6d 	ld de,$6d36	ld de,$0000
4a30	26 de 	ld h,$de	ld h,$00
4a32	05 	dec b	dec b
4a33	d0 	ret nc	ret nc
4a34	73 	ld (hl),e	ld (hl),e
4a35	c0 	ret nz	ret nz
4a36	80 	add a,b	add a,b
4a37	88 	adc a,b	adc a,b
4a38	08 	ex af,af'	ex af,af'
4a39	79 	ld a,c	ld a,c
4a3a	9d 	sbc a,l	sbc a,l
4a3b	aa 	xor d	xor d
4a3c	aa 	xor d	xor d
4a3d	aa 	xor d	xor d
4a3e	7d 	ld a,l	ld a,l
4a3f	00 	nop	nop
4a40	00 	nop	nop
4a41	00 	nop	nop
4a42	00 	nop	nop
4a43	80 	add a,b	add a,b
4a44	cd 28 50 	call $5028	call $0000
4a47	cd 28 50 	call $5028	call $0000
4a4a	cd 91 47 	call $4791	call $0000
4a4d	c3 72 4a 	jp $4a72	jp $0000
4a50	cd 19 50 	call $5019	call $0000
4a53	cd 52 50 	call $5052	call $0000
4a56	71 	ld (hl),c	ld (hl),c
4a57	d5 	push de	push de
4a58	78 	ld a,b	ld a,b
4a59	4c 	ld c,h	ld c,h
4a5a	70 	ld (hl),b	ld (hl),b
4a5b	af 	xor a	xor a
4a5c	94 	sub h	sub h
4a5d	03 	inc bc	inc bc
4a5e	b6 	or (hl)	or (hl)
4a5f	76 	halt	halt
4a60	c8 	ret z	ret z
4a61	9c 	sbc a,h	sbc a,h
4a62	aa 	xor d	xor d
4a63	2a 7b dd 	ld hl,($dd7b)	ld hl,($0000)
4a66	ff 	rst $38	rst $00
4a67	ff 	rst $38	rst $00
4a68	ff 	rst $38	rst $00
4a69	7e 	ld a,(hl)	ld a,(hl)
4a6a	00 	nop	nop
4a6b	00 	nop	nop
4a6c	00 	nop	nop
4a6d	00 	nop	nop
4a6e	80 	add a,b	add a,b
4a6f	cd 28 50 	call $5028	call $0000
4a72	f1 	pop af	pop af
4a73	e6 04 	and $04	and $00
4a75	c8 	ret z	ret z
4a76	0d 	dec c	dec c
4a77	0c 	inc c	inc c
4a78	c8 	ret z	ret z
4a79	cb fc 	set 7,h	set 7,h
4a7b	c9 	ret	ret
4a7c	21 00 00 	ld hl,$0000	ld hl,$0000
4a7f	d9 	exx	exx
4a80	21 00 00 	ld hl,$0000	ld hl,$0000
4a83	d9 	exx	exx
4a84	0e 80 	ld c,$80	ld c,$00
4a86	c9 	ret	ret
4a87	11 00 00 	ld de,$0000	ld de,$0000
4a8a	d9 	exx	exx
4a8b	11 00 00 	ld de,$0000	ld de,$0000
4a8e	d9 	exx	exx
4a8f	06 80 	ld b,$80	ld b,$00
4a91	c9 	ret	ret
4a92	11 0f 49 	ld de,$490f	ld de,$0000
4a95	d9 	exx	exx
4a96	11 a2 da 	ld de,$daa2	ld de,$0000
4a99	d9 	exx	exx
4a9a	06 7f 	ld b,$7f	ld b,$00
4a9c	c9 	ret	ret
4a9d	cd 36 4f 	call $4f36	call $0000
4aa0	cd 1d 4b 	call $4b1d	call $0000
4aa3	d9 	exx	exx
4aa4	1d 	dec e	dec e
4aa5	01 cf d1 	ld bc,$d1cf	ld bc,$0000
4aa8	d9 	exx	exx
4aa9	e5 	push hl	push hl
4aaa	cd bb 4e 	call $4ebb	call $0000
4aad	f1 	pop af	pop af
4aae	cb 7b 	bit 7,e	bit 7,e
4ab0	28 09 	jr z,$+$0b	jr z,$+$00
4ab2	17 	rla	rla
4ab3	da a5 4f 	jp c,$4fa5	jp c,$0000
4ab6	3e 18 	ld a,$18	ld a,$00
4ab8	c3 aa 45 	jp $45aa	jp $0000
4abb	e6 80 	and $80	and $00
4abd	b3 	or e	or e
4abe	f5 	push af	push af
4abf	cb bc 	res 7,h	res 7,h
4ac1	cd 1f 50 	call $501f	call $0000
4ac4	cd 52 50 	call $5052	call $0000
4ac7	72 	ld (hl),d	ld (hl),d
4ac8	40 2e 94 	ld.sis l,$94	ld.sis l,$00
4acb	73 	ld (hl),e	ld (hl),e
4acc	65 	ld h,l	ld h,l
4acd	6f 	ld l,a	ld l,a
4ace	4f 	ld c,a	ld c,a
4acf	2e 76 	ld l,$76	ld l,$00
4ad1	37 	scf	scf
4ad2	6d 	ld l,l	ld l,l
4ad3	02 	ld (bc),a	ld (bc),a
4ad4	88 	adc a,b	adc a,b
4ad5	79 	ld a,c	ld a,c
4ad6	12 	ld (de),a	ld (de),a
4ad7	e5 	push hl	push hl
4ad8	a0 	and b	and b
4ad9	2a 7b 14 	ld hl,($147b)	ld hl,($0000)
4adc	4f 	ld c,a	ld c,a
4add	aa 	xor d	xor d
4ade	aa 	xor d	xor d
4adf	7d 	ld a,l	ld a,l
4ae0	56 	ld d,(hl)	ld d,(hl)
4ae1	fd ff 	trap	trap
4ae3	7f 	ld a,a	ld a,a
4ae4	7e 	ld a,(hl)	ld a,(hl)
4ae5	fe ff 	cp $ff	cp $00
4ae7	ff 	rst $38	rst $00
4ae8	ff 	rst $38	rst $00
4ae9	7f 	ld a,a	ld a,a
4aea	00 	nop	nop
4aeb	00 	nop	nop
4aec	00 	nop	nop
4aed	00 	nop	nop
4aee	80 	add a,b	add a,b
4aef	cd 28 50 	call $5028	call $0000
4af2	f1 	pop af	pop af
4af3	f5 	push af	push af
4af4	f4 14 4b 	call p,$4b14	call p,$0000
4af7	f1 	pop af	pop af
4af8	f2 ff 4a 	jp p,$4aff	jp p,$0000
4afb	e6 7f 	and $7f	and $00
4afd	ed 44 	neg	neg
4aff	c6 80 	add a,$80	add a,$00
4b01	81 	add a,c	add a,c
4b02	38 05 	jr c,$+$07	jr c,$+$00
4b04	f2 a5 4f 	jp p,$4fa5	jp p,$0000
4b07	18 03 	jr $+$05	jr $+$00
4b09	fa 76 4f 	jp m,$4f76	jp m,$0000
4b0c	c6 80 	add a,$80	add a,$00
4b0e	ca a5 4f 	jp z,$4fa5	jp z,$0000
4b11	4f 	ld c,a	ld c,a
4b12	af 	xor a	xor a
4b13	c9 	ret	ret
4b14	cd 87 4a 	call $4a87	call $0000
4b17	cd 60 4f 	call $4f60	call $0000
4b1a	c3 21 47 	jp $4721	jp $0000
4b1d	11 72 31 	ld de,$3172	ld de,$0000
4b20	d9 	exx	exx
4b21	11 f8 17 	ld de,$17f8	ld de,$0000
4b24	d9 	exx	exx
4b25	06 7f 	ld b,$7f	ld b,$00
4b27	c9 	ret	ret
4b28	cd 36 4f 	call $4f36	call $0000
4b2b	3e 16 	ld a,$16	ld a,$00
4b2d	cb 7c 	bit 7,h	bit 7,h
4b2f	c2 aa 45 	jp nz,$45aa	jp nz,$0000
4b32	0c 	inc c	inc c
4b33	0d 	dec c	dec c
4b34	ca aa 45 	jp z,$45aa	jp z,$0000
4b37	11 04 35 	ld de,$3504	ld de,$0000
4b3a	d9 	exx	exx
4b3b	11 33 f3 	ld de,$f333	ld de,$0000
4b3e	d9 	exx	exx
4b3f	cd b7 4f 	call $4fb7	call $0000
4b42	79 	ld a,c	ld a,c
4b43	0e 80 	ld c,$80	ld c,$00
4b45	38 02 	jr c,$+$04	jr c,$+$00
4b47	0d 	dec c	dec c
4b48	3c 	inc a	inc a
4b49	f5 	push af	push af
4b4a	cd 34 50 	call $5034	call $0000
4b4d	cd 1f 50 	call $501f	call $0000
4b50	cd 19 50 	call $5019	call $0000
4b53	cd 52 50 	call $5052	call $0000
4b56	48 	ld c,b	ld c,b
4b57	cc fb 74 	call z,$74fb	call z,$0000
4b5a	7d 	ld a,l	ld a,l
4b5b	af 	xor a	xor a
4b5c	ae 	xor (hl)	xor (hl)
4b5d	ff 	rst $38	rst $00
4b5e	11 7e 8c 	ld de,$8c7e	ld de,$0000
4b61	d9 	exx	exx
4b62	cd 4c 7e 	call $7e4c	call $0000
4b65	e3 	ex (sp),hl	ex (sp),hl
4b66	a9 	xor c	xor c
4b67	aa 	xor d	xor d
4b68	2a 7f 00 	ld hl,($007f)	ld hl,($0000)
4b6b	00 	nop	nop
4b6c	00 	nop	nop
4b6d	00 	nop	nop
4b6e	81 	add a,c	add a,c
4b6f	cd 28 50 	call $5028	call $0000
4b72	cd 28 50 	call $5028	call $0000
4b75	cd 91 47 	call $4791	call $0000
4b78	f1 	pop af	pop af
4b79	cd 1f 50 	call $501f	call $0000
4b7c	08 	ex af,af'	ex af,af'
4b7d	cd a5 4f 	call $4fa5	call $0000
4b80	08 	ex af,af'	ex af,af'
4b81	d6 80 	sub $80	sub $00
4b83	28 1b 	jr z,$+$1d	jr z,$+$00
4b85	30 02 	jr nc,$+$04	jr nc,$+$00
4b87	2f 	cpl	cpl
4b88	3c 	inc a	inc a
4b89	67 	ld h,a	ld h,a
4b8a	0e 87 	ld c,$87	ld c,$00
4b8c	f5 	push af	push af
4b8d	cd 1c 4f 	call $4f1c	call $0000
4b90	cb bc 	res 7,h	res 7,h
4b92	cd 1d 4b 	call $4b1d	call $0000
4b95	cd 91 47 	call $4791	call $0000
4b98	f1 	pop af	pop af
4b99	30 05 	jr nc,$+$07	jr nc,$+$00
4b9b	fa a0 4b 	jp m,$4ba0	jp m,$0000
4b9e	cb fc 	set 7,h	set 7,h
4ba0	cd 28 50 	call $5028	call $0000
4ba3	cd c9 46 	call $46c9	call $0000
4ba6	af 	xor a	xor a
4ba7	c9 	ret	ret
4ba8	cd 28 4b 	call $4b28	call $0000
4bab	11 5b 5e 	ld de,$5e5b	ld de,$0000
4bae	d9 	exx	exx
4baf	11 a9 d8 	ld de,$d8a9	ld de,$0000
4bb2	d9 	exx	exx
4bb3	06 7e 	ld b,$7e	ld b,$00
4bb5	cd 91 47 	call $4791	call $0000
4bb8	af 	xor a	xor a
4bb9	c9 	ret	ret
4bba	cd 36 4f 	call $4f36	call $0000
4bbd	cd 1f 50 	call $501f	call $0000
4bc0	cd 11 50 	call $5011	call $0000
4bc3	cd 91 47 	call $4791	call $0000
4bc6	cd 87 4a 	call $4a87	call $0000
4bc9	cd b9 46 	call $46b9	call $0000
4bcc	cd 8b 49 	call $498b	call $0000
4bcf	cd 28 50 	call $5028	call $0000
4bd2	0c 	inc c	inc c
4bd3	0d 	dec c	dec c
4bd4	3e 02 	ld a,$02	ld a,$00
4bd6	d5 	push de	push de
4bd7	28 70 	jr z,$+$72	jr z,$+$00
4bd9	d1 	pop de	pop de
4bda	cd 17 4b 	call $4b17	call $0000
4bdd	18 03 	jr $+$05	jr $+$00
4bdf	cd 36 4f 	call $4f36	call $0000
4be2	e5 	push hl	push hl
4be3	cb bc 	res 7,h	res 7,h
4be5	11 13 54 	ld de,$5413	ld de,$0000
4be8	d9 	exx	exx
4be9	11 d0 cc 	ld de,$ccd0	ld de,$0000
4bec	d9 	exx	exx
4bed	06 7e 	ld b,$7e	ld b,$00
4bef	cd b4 4f 	call $4fb4	call $0000
4bf2	06 00 	ld b,$00	ld b,$00
4bf4	38 1c 	jr c,$+$1e	jr c,$+$00
4bf6	11 82 1a 	ld de,$1a82	ld de,$0000
4bf9	d9 	exx	exx
4bfa	11 9a 79 	ld de,$799a	ld de,$0000
4bfd	d9 	exx	exx
4bfe	06 81 	ld b,$81	ld b,$00
4c00	cd b4 4f 	call $4fb4	call $0000
4c03	38 08 	jr c,$+$0a	jr c,$+$00
4c05	cd 14 4b 	call $4b14	call $0000
4c08	06 02 	ld b,$02	ld b,$00
4c0a	c3 12 4c 	jp $4c12	jp $0000
4c0d	cd 34 50 	call $5034	call $0000
4c10	06 01 	ld b,$01	ld b,$00
4c12	c5 	push bc	push bc
4c13	cd 1f 50 	call $501f	call $0000
4c16	cd 19 50 	call $5019	call $0000
4c19	cd 52 50 	call $5052	call $0000
4c1c	35 	dec (hl)	dec (hl)
4c1d	f3 	di	di
4c1e	d8 	ret c	ret c
4c1f	37 	scf	scf
4c20	7b 	ld a,e	ld a,e
4c21	91 	sub c	sub c
4c22	6b 	ld l,e	ld l,e
4c23	b9 	cp c	cp c
4c24	aa 	xor d	xor d
4c25	7c 	ld a,h	ld a,h
4c26	de 41 	sbc a,$41	sbc a,$00
4c28	97 	sub a	sub a
4c29	61 	ld h,c	ld h,c
4c2a	7c 	ld a,h	ld a,h
4c2b	7b 	ld a,e	ld a,e
4c2c	9d 	sbc a,l	sbc a,l
4c2d	37 	scf	scf
4c2e	92 	sub d	sub d
4c2f	7d 	ld a,l	ld a,l
4c30	5a 	ld e,d	ld e,d
4c31	2a cc 4c 	ld hl,($4ccc)	ld hl,($0000)
4c34	7d 	ld a,l	ld a,l
4c35	5c 	ld e,h	ld e,h
4c36	a9 	xor c	xor c
4c37	aa 	xor d	xor d
4c38	aa 	xor d	xor d
4c39	7e 	ld a,(hl)	ld a,(hl)
4c3a	00 	nop	nop
4c3b	00 	nop	nop
4c3c	00 	nop	nop
4c3d	00 	nop	nop
4c3e	80 	add a,b	add a,b
4c3f	cd 28 50 	call $5028	call $0000
4c42	cd 28 50 	call $5028	call $0000
4c45	cd 91 47 	call $4791	call $0000
4c48	f1 	pop af	pop af
4c49	cd 92 4a 	call $4a92	call $0000
4c4c	1f 	rra	rra
4c4d	f5 	push af	push af
4c4e	dc c9 46 	call c,$46c9	call c,$0000
4c51	f1 	pop af	pop af
4c52	04 	inc b	inc b
4c53	1f 	rra	rra
4c54	dc b9 46 	call c,$46b9	call c,$0000
4c57	f1 	pop af	pop af
4c58	b7 	or a	or a
4c59	f0 	ret p	ret p
4c5a	cb fc 	set 7,h	set 7,h
4c5c	af 	xor a	xor a
4c5d	c9 	ret	ret
4c5e	cd ba 4b 	call $4bba	call $0000
4c61	3e 02 	ld a,$02	ld a,$00
4c63	f5 	push af	push af
4c64	18 e3 	jr $-$1b	jr $-$00
4c66	cd 36 4f 	call $4f36	call $0000
4c69	06 00 	ld b,$00	ld b,$00
4c6b	cb 7c 	bit 7,h	bit 7,h
4c6d	28 06 	jr z,$+$08	jr z,$+$00
4c6f	cb bc 	res 7,h	res 7,h
4c71	3e 2d 	ld a,$2d	ld a,$00
4c73	12 	ld (de),a	ld (de),a
4c74	13 	inc de	inc de
4c75	af 	xor a	xor a
4c76	b9 	cp c	cp c
4c77	28 47 	jr z,$+$49	jr z,$+$00
4c79	d5 	push de	push de
4c7a	78 	ld a,b	ld a,b
4c7b	f5 	push af	push af
4c7c	79 	ld a,c	ld a,c
4c7d	fe a1 	cp $a1	cp $00
4c7f	30 1a 	jr nc,$+$1c	jr nc,$+$00
4c81	fe 9b 	cp $9b	cp $00
4c83	30 25 	jr nc,$+$27	jr nc,$+$00
4c85	2f 	cpl	cpl
4c86	fe e1 	cp $e1	cp $00
4c88	38 02 	jr c,$+$04	jr c,$+$00
4c8a	3e f8 	ld a,$f8	ld a,$00
4c8c	c6 1c 	add a,$1c	add a,$00
4c8e	cd 79 50 	call $5079	call $0000
4c91	f5 	push af	push af
4c92	cd 91 47 	call $4791	call $0000
4c95	f1 	pop af	pop af
4c96	47 	ld b,a	ld b,a
4c97	f1 	pop af	pop af
4c98	90 	sub b	sub b
4c99	18 e0 	jr $-$1e	jr $-$00
4c9b	d6 20 	sub $20	sub $00
4c9d	cd 79 50 	call $5079	call $0000
4ca0	f5 	push af	push af
4ca1	cd 21 47 	call $4721	call $0000
4ca4	f1 	pop af	pop af
4ca5	47 	ld b,a	ld b,a
4ca6	f1 	pop af	pop af
4ca7	80 	add a,b	add a,b
4ca8	18 d1 	jr $-$2d	jr $-$00
4caa	3e 09 	ld a,$09	ld a,$00
4cac	cd 79 50 	call $5079	call $0000
4caf	cd b4 4f 	call $4fb4	call $0000
4cb2	79 	ld a,c	ld a,c
4cb3	c1 	pop bc	pop bc
4cb4	4f 	ld c,a	ld c,a
4cb5	cb fc 	set 7,h	set 7,h
4cb7	dc d6 4f 	call c,$4fd6	call c,$0000
4cba	d1 	pop de	pop de
4cbb	cb b9 	res 7,c	res 7,c
4cbd	3e 00 	ld a,$00	ld a,$00
4cbf	17 	rla	rla
4cc0	0c 	inc c	inc c
4cc1	08 	ex af,af'	ex af,af'
4cc2	78 	ld a,b	ld a,b
4cc3	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4cc7	20 08 	jr nz,$+$0a	jr nz,$+$00
4cc9	af 	xor a	xor a
4cca	dd be 01 	cp (ix+$01)	cp (ix+$00)
4ccd	28 0a 	jr z,$+$0c	jr z,$+$00
4ccf	3e f6 	ld a,$f6	ld a,$00
4cd1	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4cd4	b7 	or a	or a
4cd5	fa d9 4c 	jp m,$4cd9	jp m,$0000
4cd8	af 	xor a	xor a
4cd9	f5 	push af	push af
4cda	08 	ex af,af'	ex af,af'
4cdb	cd ff 4f 	call $4fff	call $0000
4cde	8f 	adc a,a	adc a,a
4cdf	fe 0a 	cp $0a	cp $00
4ce1	38 05 	jr c,$+$07	jr c,$+$00
4ce3	d6 0a 	sub $0a	sub $00
4ce5	d9 	exx	exx
4ce6	2c 	inc l	inc l
4ce7	d9 	exx	exx
4ce8	0d 	dec c	dec c
4ce9	20 f0 	jr nz,$-$0e	jr nz,$-$00
4ceb	4f 	ld c,a	ld c,a
4cec	7c 	ld a,h	ld a,h
4ced	e6 3f 	and $3f	and $00
4cef	67 	ld h,a	ld h,a
4cf0	f1 	pop af	pop af
4cf1	f2 fe 4c 	jp p,$4cfe	jp p,$0000
4cf4	3c 	inc a	inc a
4cf5	20 1c 	jr nz,$+$1e	jr nz,$+$00
4cf7	3e 04 	ld a,$04	ld a,$00
4cf9	b9 	cp c	cp c
4cfa	3e 00 	ld a,$00	ld a,$00
4cfc	18 15 	jr $+$17	jr $+$00
4cfe	f5 	push af	push af
4cff	79 	ld a,c	ld a,c
4d00	ce 30 	adc a,$30	adc a,$00
4d02	fe 30 	cp $30	cp $00
4d04	28 05 	jr z,$+$07	jr z,$+$00
4d06	fe 3a 	cp $3a	cp $00
4d08	3f 	ccf	ccf
4d09	30 08 	jr nc,$+$0a	jr nc,$+$00
4d0b	e3 	ex (sp),hl	ex (sp),hl
4d0c	cb 75 	bit 6,l	bit 6,l
4d0e	e3 	ex (sp),hl	ex (sp),hl
4d0f	20 05 	jr nz,$+$07	jr nz,$+$00
4d11	3e 30 	ld a,$30	ld a,$00
4d13	3c 	inc a	inc a
4d14	3d 	dec a	dec a
4d15	f5 	push af	push af
4d16	04 	inc b	inc b
4d17	cd 85 4f 	call $4f85	call $0000
4d1a	0e 20 	ld c,$20	ld c,$00
4d1c	3e 00 	ld a,$00	ld a,$00
4d1e	20 bb 	jr nz,$-$43	jr nz,$-$00
4d20	f1 	pop af	pop af
4d21	f5 	push af	push af
4d22	3e 00 	ld a,$00	ld a,$00
4d24	38 b5 	jr c,$-$49	jr c,$-$00
4d26	eb 	ex de,hl	ex de,hl
4d27	0e ff 	ld c,$ff	ld c,$00
4d29	16 01 	ld d,$01	ld d,$00
4d2b	dd 5e 01 	ld e,(ix+$01)	ld e,(ix+$00)
4d2e	dd cb 02 46 	bit 0,(ix+$02)	bit 0,(ix+$00)
4d32	20 32 	jr nz,$+$34	jr nz,$+$00
4d34	dd cb 02 4e 	bit 1,(ix+$02)	bit 1,(ix+$00)
4d38	28 11 	jr z,$+$13	jr z,$+$00
4d3a	78 	ld a,b	ld a,b
4d3b	b7 	or a	or a
4d3c	28 04 	jr z,$+$06	jr z,$+$00
4d3e	fa 42 4d 	jp m,$4d42	jp m,$0000
4d41	50 	ld d,b	ld d,b
4d42	7a 	ld a,d	ld a,d
4d43	dd 86 01 	add a,(ix+$01)	add a,(ix+$00)
4d46	5f 	ld e,a	ld e,a
4d47	fe 0b 	cp $0b	cp $00
4d49	38 17 	jr c,$+$19	jr c,$+$00
4d4b	78 	ld a,b	ld a,b
4d4c	11 01 01 	ld de,$0101	ld de,$0000
4d4f	b7 	or a	or a
4d50	fa 66 4d 	jp m,$4d66	jp m,$0000
4d53	28 0d 	jr z,$+$0f	jr z,$+$00
4d55	dd 7e 01 	ld a,(ix+$01)	ld a,(ix+$00)
4d58	b7 	or a	or a
4d59	20 02 	jr nz,$+$04	jr nz,$+$00
4d5b	3e 0a 	ld a,$0a	ld a,$00
4d5d	b8 	cp b	cp b
4d5e	38 06 	jr c,$+$08	jr c,$+$00
4d60	50 	ld d,b	ld d,b
4d61	58 	ld e,b	ld e,b
4d62	78 	ld a,b	ld a,b
4d63	c6 81 	add a,$81	add a,$00
4d65	4f 	ld c,a	ld c,a
4d66	cb fa 	set 7,d	set 7,d
4d68	1d 	dec e	dec e
4d69	7a 	ld a,d	ld a,d
4d6a	b9 	cp c	cp c
4d6b	30 0c 	jr nc,$+$0e	jr nc,$+$00
4d6d	f1 	pop af	pop af
4d6e	28 03 	jr z,$+$05	jr z,$+$00
4d70	f2 7b 4d 	jp p,$4d7b	jp p,$0000
4d73	f5 	push af	push af
4d74	1c 	inc e	inc e
4d75	1d 	dec e	dec e
4d76	fa 8a 4d 	jp m,$4d8a	jp m,$0000
4d79	3e 30 	ld a,$30	ld a,$00
4d7b	15 	dec d	dec d
4d7c	e2 82 4d 	jp po,$4d82	jp po,$0000
4d7f	36 2e 	ld (hl),$2e	ld (hl),$00
4d81	23 	inc hl	inc hl
4d82	77 	ld (hl),a	ld (hl),a
4d83	23 	inc hl	inc hl
4d84	1d 	dec e	dec e
4d85	f2 69 4d 	jp p,$4d69	jp p,$0000
4d88	18 e3 	jr $-$1b	jr $-$00
4d8a	f1 	pop af	pop af
4d8b	0c 	inc c	inc c
4d8c	4d 	ld c,l	ld c,l
4d8d	20 27 	jr nz,$+$29	jr nz,$+$00
4d8f	36 45 	ld (hl),$45	ld (hl),$00
4d91	23 	inc hl	inc hl
4d92	78 	ld a,b	ld a,b
4d93	3d 	dec a	dec a
4d94	f2 9c 4d 	jp p,$4d9c	jp p,$0000
4d97	36 2d 	ld (hl),$2d	ld (hl),$00
4d99	23 	inc hl	inc hl
4d9a	ed 44 	neg	neg
4d9c	36 30 	ld (hl),$30	ld (hl),$00
4d9e	28 15 	jr z,$+$17	jr z,$+$00
4da0	fe 0a 	cp $0a	cp $00
4da2	47 	ld b,a	ld b,a
4da3	3e 3a 	ld a,$3a	ld a,$00
4da5	38 03 	jr c,$+$05	jr c,$+$00
4da7	23 	inc hl	inc hl
4da8	36 30 	ld (hl),$30	ld (hl),$00
4daa	34 	inc (hl)	inc (hl)
4dab	be 	cp (hl)	cp (hl)
4dac	20 05 	jr nz,$+$07	jr nz,$+$00
4dae	36 30 	ld (hl),$30	ld (hl),$00
4db0	2b 	dec hl	dec hl
4db1	34 	inc (hl)	inc (hl)
4db2	23 	inc hl	inc hl
4db3	10 f5 	djnz $-$09	djnz $-$00
4db5	23 	inc hl	inc hl
4db6	eb 	ex de,hl	ex de,hl
4db7	c9 	ret	ret
4db8	cd a5 4f 	call $4fa5	call $0000
4dbb	0e 00 	ld c,$00	ld c,$00
4dbd	cd 3d 4e 	call $4e3d	call $0000
4dc0	fe 2e 	cp $2e	cp $00
4dc2	06 00 	ld b,$00	ld b,$00
4dc4	cc 3b 4e 	call z,$4e3b	call z,$0000
4dc7	fe 45 	cp $45	cp $00
4dc9	3e 00 	ld a,$00	ld a,$00
4dcb	cc 0c 4e 	call z,$4e0c	call z,$0000
4dce	cb 7c 	bit 7,h	bit 7,h
4dd0	20 08 	jr nz,$+$0a	jr nz,$+$00
4dd2	b7 	or a	or a
4dd3	20 05 	jr nz,$+$07	jr nz,$+$00
4dd5	b8 	cp b	cp b
4dd6	20 02 	jr nz,$+$04	jr nz,$+$00
4dd8	b9 	cp c	cp c
4dd9	c8 	ret z	ret z
4dda	90 	sub b	sub b
4ddb	81 	add a,c	add a,c
4ddc	0e 9f 	ld c,$9f	ld c,$00
4dde	cd 1c 4f 	call $4f1c	call $0000
4de1	cb bc 	res 7,h	res 7,h
4de3	b7 	or a	or a
4de4	c8 	ret z	ret z
4de5	fa f0 4d 	jp m,$4df0	jp m,$0000
4de8	cd 79 50 	call $5079	call $0000
4deb	cd 91 47 	call $4791	call $0000
4dee	af 	xor a	xor a
4def	c9 	ret	ret
4df0	fe da 	cp $da	cp $00
4df2	38 0a 	jr c,$+$0c	jr c,$+$00
4df4	ed 44 	neg	neg
4df6	cd 79 50 	call $5079	call $0000
4df9	cd 21 47 	call $4721	call $0000
4dfc	af 	xor a	xor a
4dfd	c9 	ret	ret
4dfe	f5 	push af	push af
4dff	3e 26 	ld a,$26	ld a,$00
4e01	cd 79 50 	call $5079	call $0000
4e04	cd 21 47 	call $4721	call $0000
4e07	f1 	pop af	pop af
4e08	c6 26 	add a,$26	add a,$00
4e0a	18 e4 	jr $-$1a	jr $-$00
4e0c	c5 	push bc	push bc
4e0d	47 	ld b,a	ld b,a
4e0e	0e 02 	ld c,$02	ld c,$00
4e10	dd 23 	inc ix	inc ix
4e12	cd 67 51 	call $5167	call $0000
4e15	08 	ex af,af'	ex af,af'
4e16	cd 5d 51 	call $515d	call $0000
4e19	38 17 	jr c,$+$19	jr c,$+$00
4e1b	78 	ld a,b	ld a,b
4e1c	87 	add a,a	add a,a
4e1d	87 	add a,a	add a,a
4e1e	80 	add a,b	add a,b
4e1f	87 	add a,a	add a,a
4e20	47 	ld b,a	ld b,a
4e21	dd 7e 00 	ld a,(ix)	ld a,(ix)
4e24	dd 23 	inc ix	inc ix
4e26	e6 0f 	and $0f	and $00
4e28	80 	add a,b	add a,b
4e29	47 	ld b,a	ld b,a
4e2a	0d 	dec c	dec c
4e2b	f2 16 4e 	jp p,$4e16	jp p,$0000
4e2e	06 64 	ld b,$64	ld b,$00
4e30	18 e4 	jr $-$1a	jr $-$00
4e32	08 	ex af,af'	ex af,af'
4e33	fe 2d 	cp $2d	cp $00
4e35	78 	ld a,b	ld a,b
4e36	c1 	pop bc	pop bc
4e37	c0 	ret nz	ret nz
4e38	ed 44 	neg	neg
4e3a	c9 	ret	ret
4e3b	dd 23 	inc ix	inc ix
4e3d	cd 5d 51 	call $515d	call $0000
4e40	d8 	ret c	ret c
4e41	04 	inc b	inc b
4e42	dd 23 	inc ix	inc ix
4e44	cd f0 4f 	call $4ff0	call $0000
4e47	38 13 	jr c,$+$15	jr c,$+$00
4e49	0d 	dec c	dec c
4e4a	0c 	inc c	inc c
4e4b	20 0f 	jr nz,$+$11	jr nz,$+$00
4e4d	e6 0f 	and $0f	and $00
4e4f	d9 	exx	exx
4e50	06 00 	ld b,$00	ld b,$00
4e52	4f 	ld c,a	ld c,a
4e53	09 	add hl,bc	add hl,bc
4e54	d9 	exx	exx
4e55	30 e6 	jr nc,$-$18	jr nc,$-$00
4e57	23 	inc hl	inc hl
4e58	7c 	ld a,h	ld a,h
4e59	b5 	or l	or l
4e5a	20 e1 	jr nz,$-$1d	jr nz,$-$00
4e5c	0c 	inc c	inc c
4e5d	cd 63 4f 	call $4f63	call $0000
4e60	18 db 	jr $-$23	jr $-$00
4e62	08 	ex af,af'	ex af,af'
4e63	af 	xor a	xor a
4e64	08 	ex af,af'	ex af,af'
4e65	cb fc 	set 7,h	set 7,h
4e67	cd 68 4f 	call $4f68	call $0000
4e6a	b9 	cp c	cp c
4e6b	c8 	ret z	ret z
4e6c	d2 67 4e 	jp nc,$4e67	jp nc,$0000
4e6f	c3 76 4f 	jp $4f76	jp $0000
4e72	cd 60 4f 	call $4f60	call $0000
4e75	cd 7b 4e 	call $4e7b	call $0000
4e78	cd 60 4f 	call $4f60	call $0000
4e7b	0d 	dec c	dec c
4e7c	0c 	inc c	inc c
4e7d	c8 	ret z	ret z
4e7e	cb 7c 	bit 7,h	bit 7,h
4e80	f5 	push af	push af
4e81	3e 9f 	ld a,$9f	ld a,$00
4e83	cd 62 4e 	call $4e62	call $0000
4e86	f1 	pop af	pop af
4e87	0e 00 	ld c,$00	ld c,$00
4e89	c8 	ret z	ret z
4e8a	b7 	or a	or a
4e8b	d9 	exx	exx
4e8c	d5 	push de	push de
4e8d	eb 	ex de,hl	ex de,hl
4e8e	21 00 00 	ld hl,$0000	ld hl,$0000
4e91	ed 52 	sbc hl,de	sbc hl,de
4e93	d1 	pop de	pop de
4e94	d9 	exx	exx
4e95	d5 	push de	push de
4e96	eb 	ex de,hl	ex de,hl
4e97	21 00 00 	ld hl,$0000	ld hl,$0000
4e9a	ed 52 	sbc hl,de	sbc hl,de
4e9c	d1 	pop de	pop de
4e9d	c9 	ret	ret
4e9e	d9 	exx	exx
4e9f	2f 	cpl	cpl
4ea0	e5 	push hl	push hl
4ea1	b7 	or a	or a
4ea2	ed 62 	sbc hl,hl	sbc hl,hl
4ea4	ed 42 	sbc hl,bc	sbc hl,bc
4ea6	44 	ld b,h	ld b,h
4ea7	4d 	ld c,l	ld c,l
4ea8	e1 	pop hl	pop hl
4ea9	18 e1 	jr $-$1d	jr $-$00
4eab	3e 96 	ld a,$96	ld a,$00
4ead	b9 	cp c	cp c
4eae	3e 17 	ld a,$17	ld a,$00
4eb0	da aa 45 	jp c,$45aa	jp c,$0000
4eb3	cd 92 4a 	call $4a92	call $0000
4eb6	d9 	exx	exx
4eb7	01 69 21 	ld bc,$2169	ld bc,$0000
4eba	d9 	exx	exx
4ebb	cb fa 	set 7,d	set 7,d
4ebd	cb fc 	set 7,h	set 7,h
4ebf	79 	ld a,c	ld a,c
4ec0	0e 00 	ld c,$00	ld c,$00
4ec2	dd 21 00 00 	ld ix,$0000	ld ix,$0000
4ec6	dd e5 	push ix	push ix
4ec8	b8 	cp b	cp b
4ec9	38 3a 	jr c,$+$3c	jr c,$+$00
4ecb	d9 	exx	exx
4ecc	e3 	ex (sp),hl	ex (sp),hl
4ecd	ed 42 	sbc hl,bc	sbc hl,bc
4ecf	e3 	ex (sp),hl	ex (sp),hl
4ed0	ed 52 	sbc hl,de	sbc hl,de
4ed2	d9 	exx	exx
4ed3	ed 52 	sbc hl,de	sbc hl,de
4ed5	30 09 	jr nc,$+$0b	jr nc,$+$00
4ed7	d9 	exx	exx
4ed8	e3 	ex (sp),hl	ex (sp),hl
4ed9	09 	add hl,bc	add hl,bc
4eda	e3 	ex (sp),hl	ex (sp),hl
4edb	ed 5a 	adc hl,de	adc hl,de
4edd	d9 	exx	exx
4ede	ed 5a 	adc hl,de	adc hl,de
4ee0	3f 	ccf	ccf
4ee1	cb 11 	rl c	rl c
4ee3	30 02 	jr nc,$+$04	jr nc,$+$00
4ee5	cb f9 	set 7,c	set 7,c
4ee7	3d 	dec a	dec a
4ee8	b8 	cp b	cp b
4ee9	38 19 	jr c,$+$1b	jr c,$+$00
4eeb	e3 	ex (sp),hl	ex (sp),hl
4eec	29 	add hl,hl	add hl,hl
4eed	e3 	ex (sp),hl	ex (sp),hl
4eee	d9 	exx	exx
4eef	ed 6a 	adc hl,hl	adc hl,hl
4ef1	d9 	exx	exx
4ef2	ed 6a 	adc hl,hl	adc hl,hl
4ef4	30 d5 	jr nc,$-$29	jr nc,$-$00
4ef6	b7 	or a	or a
4ef7	d9 	exx	exx
4ef8	e3 	ex (sp),hl	ex (sp),hl
4ef9	ed 42 	sbc hl,bc	sbc hl,bc
4efb	e3 	ex (sp),hl	ex (sp),hl
4efc	ed 52 	sbc hl,de	sbc hl,de
4efe	d9 	exx	exx
4eff	ed 52 	sbc hl,de	sbc hl,de
4f01	b7 	or a	or a
4f02	18 dc 	jr $-$22	jr $-$00
4f04	3c 	inc a	inc a
4f05	59 	ld e,c	ld e,c
4f06	4f 	ld c,a	ld c,a
4f07	d9 	exx	exx
4f08	c1 	pop bc	pop bc
4f09	d9 	exx	exx
4f0a	cb 7c 	bit 7,h	bit 7,h
4f0c	c0 	ret nz	ret nz
4f0d	d9 	exx	exx
4f0e	cb 21 	sla c	sla c
4f10	cb 10 	rl b	rl b
4f12	ed 6a 	adc hl,hl	adc hl,hl
4f14	d9 	exx	exx
4f15	ed 6a 	adc hl,hl	adc hl,hl
4f17	0d 	dec c	dec c
4f18	c2 0a 4f 	jp nz,$4f0a	jp nz,$0000
4f1b	c9 	ret	ret
4f1c	cb 7c 	bit 7,h	bit 7,h
4f1e	c0 	ret nz	ret nz
4f1f	d9 	exx	exx
4f20	29 	add hl,hl	add hl,hl
4f21	d9 	exx	exx
4f22	ed 6a 	adc hl,hl	adc hl,hl
4f24	0d 	dec c	dec c
4f25	c2 1c 4f 	jp nz,$4f1c	jp nz,$0000
4f28	c9 	ret	ret
4f29	08 	ex af,af'	ex af,af'
4f2a	c6 2e 	add a,$2e	add a,$00
4f2c	08 	ex af,af'	ex af,af'
4f2d	cd 60 4f 	call $4f60	call $0000
4f30	cd 36 4f 	call $4f36	call $0000
4f33	cd 60 4f 	call $4f60	call $0000
4f36	0d 	dec c	dec c
4f37	0c 	inc c	inc c
4f38	c0 	ret nz	ret nz
4f39	cd 85 4f 	call $4f85	call $0000
4f3c	c8 	ret z	ret z
4f3d	7c 	ld a,h	ld a,h
4f3e	b7 	or a	or a
4f3f	fc 8a 4e 	call m,$4e8a	call m,$0000
4f42	0e 9f 	ld c,$9f	ld c,$00
4f44	cd 1c 4f 	call $4f1c	call $0000
4f47	b7 	or a	or a
4f48	f8 	ret m	ret m
4f49	cb bc 	res 7,h	res 7,h
4f4b	c9 	ret	ret
4f4c	d9 	exx	exx
4f4d	01 01 00 	ld bc,$0001	ld bc,$0000
4f50	09 	add hl,bc	add hl,bc
4f51	d9 	exx	exx
4f52	d0 	ret nc	ret nc
4f53	c5 	push bc	push bc
4f54	01 01 00 	ld bc,$0001	ld bc,$0000
4f57	09 	add hl,bc	add hl,bc
4f58	c1 	pop bc	pop bc
4f59	c9 	ret	ret
4f5a	b7 	or a	or a
4f5b	d9 	exx	exx
4f5c	cb c5 	set 0,l	set 0,l
4f5e	d9 	exx	exx
4f5f	c9 	ret	ret
4f60	79 	ld a,c	ld a,c
4f61	48 	ld c,b	ld c,b
4f62	47 	ld b,a	ld b,a
4f63	eb 	ex de,hl	ex de,hl
4f64	d9 	exx	exx
4f65	eb 	ex de,hl	ex de,hl
4f66	d9 	exx	exx
4f67	c9 	ret	ret
4f68	cd 06 50 	call $5006	call $0000
4f6b	d9 	exx	exx
4f6c	cb 18 	rr b	rr b
4f6e	cb 19 	rr c	rr c
4f70	08 	ex af,af'	ex af,af'
4f71	b0 	or b	or b
4f72	08 	ex af,af'	ex af,af'
4f73	d9 	exx	exx
4f74	0c 	inc c	inc c
4f75	c0 	ret nz	ret nz
4f76	3e 14 	ld a,$14	ld a,$00
4f78	c3 aa 45 	jp $45aa	jp $0000
4f7b	cd 85 4f 	call $4f85	call $0000
4f7e	c8 	ret z	ret z
4f7f	7c 	ld a,h	ld a,h
4f80	e6 80 	and $80	and $00
4f82	f6 40 	or $40	or $00
4f84	c9 	ret	ret
4f85	7c 	ld a,h	ld a,h
4f86	b5 	or l	or l
4f87	d9 	exx	exx
4f88	b4 	or h	or h
4f89	b5 	or l	or l
4f8a	d9 	exx	exx
4f8b	c9 	ret	ret
4f8c	78 	ld a,b	ld a,b
4f8d	b1 	or c	or c
4f8e	20 0a 	jr nz,$+$0c	jr nz,$+$00
4f90	cd a2 4f 	call $4fa2	call $0000
4f93	3e 00 	ld a,$00	ld a,$00
4f95	c8 	ret z	ret z
4f96	3e 80 	ld a,$80	ld a,$00
4f98	1f 	rra	rra
4f99	c9 	ret	ret
4f9a	cd 2d 4f 	call $4f2d	call $0000
4f9d	cd af 4f 	call $4faf	call $0000
4fa0	18 f1 	jr $-$0d	jr $-$00
4fa2	cd ce 4f 	call $4fce	call $0000
4fa5	3e 00 	ld a,$00	ld a,$00
4fa7	d9 	exx	exx
4fa8	67 	ld h,a	ld h,a
4fa9	6f 	ld l,a	ld l,a
4faa	d9 	exx	exx
4fab	67 	ld h,a	ld h,a
4fac	6f 	ld l,a	ld l,a
4fad	4f 	ld c,a	ld c,a
4fae	c9 	ret	ret
4faf	cd c1 4f 	call $4fc1	call $0000
4fb2	18 f1 	jr $-$0d	jr $-$00
4fb4	79 	ld a,c	ld a,c
4fb5	b8 	cp b	cp b
4fb6	c0 	ret nz	ret nz
4fb7	ed 52 	sbc hl,de	sbc hl,de
4fb9	19 	add hl,de	add hl,de
4fba	c0 	ret nz	ret nz
4fbb	d9 	exx	exx
4fbc	ed 52 	sbc hl,de	sbc hl,de
4fbe	19 	add hl,de	add hl,de
4fbf	d9 	exx	exx
4fc0	c9 	ret	ret
4fc1	7c 	ld a,h	ld a,h
4fc2	aa 	xor d	xor d
4fc3	7c 	ld a,h	ld a,h
4fc4	17 	rla	rla
4fc5	f8 	ret m	ret m
4fc6	30 ec 	jr nc,$-$12	jr nc,$-$00
4fc8	cd b4 4f 	call $4fb4	call $0000
4fcb	c8 	ret z	ret z
4fcc	3f 	ccf	ccf
4fcd	c9 	ret	ret
4fce	7c 	ld a,h	ld a,h
4fcf	aa 	xor d	xor d
4fd0	f2 b7 4f 	jp p,$4fb7	jp p,$0000
4fd3	7c 	ld a,h	ld a,h
4fd4	17 	rla	rla
4fd5	c9 	ret	ret
4fd6	05 	dec b	dec b
4fd7	0c 	inc c	inc c
4fd8	cd 12 50 	call $5012	call $0000
4fdb	cd 05 50 	call $5005	call $0000
4fde	cd 05 50 	call $5005	call $0000
4fe1	08 	ex af,af'	ex af,af'
4fe2	d9 	exx	exx
4fe3	19 	add hl,de	add hl,de
4fe4	d9 	exx	exx
4fe5	ed 5a 	adc hl,de	adc hl,de
4fe7	c9 	ret	ret
4fe8	d9 	exx	exx
4fe9	b7 	or a	or a
4fea	ed 52 	sbc hl,de	sbc hl,de
4fec	d9 	exx	exx
4fed	ed 52 	sbc hl,de	sbc hl,de
4fef	c9 	ret	ret
4ff0	cd 12 50 	call $5012	call $0000
4ff3	cd ff 4f 	call $4fff	call $0000
4ff6	d8 	ret c	ret c
4ff7	cd ff 4f 	call $4fff	call $0000
4ffa	d8 	ret c	ret c
4ffb	cd e2 4f 	call $4fe2	call $0000
4ffe	d8 	ret c	ret c
4fff	d9 	exx	exx
5000	29 	add hl,hl	add hl,hl
5001	d9 	exx	exx
5002	ed 6a 	adc hl,hl	adc hl,hl
5004	c9 	ret	ret
5005	0c 	inc c	inc c
5006	cb 3c 	srl h	srl h
5008	cb 1d 	rr l	rr l
500a	d9 	exx	exx
500b	cb 1c 	rr h	rr h
500d	cb 1d 	rr l	rr l
500f	d9 	exx	exx
5010	c9 	ret	ret
5011	41 	ld b,c	ld b,c
5012	54 	ld d,h	ld d,h
5013	5d 	ld e,l	ld e,l
5014	d9 	exx	exx
5015	54 	ld d,h	ld d,h
5016	5d 	ld e,l	ld e,l
5017	d9 	exx	exx
5018	c9 	ret	ret
5019	cd 11 50 	call $5011	call $0000
501c	cd 91 47 	call $4791	call $0000
501f	dd e1 	pop ix	pop ix
5021	c5 	push bc	push bc
5022	e5 	push hl	push hl
5023	d9 	exx	exx
5024	e5 	push hl	push hl
5025	d9 	exx	exx
5026	dd e9 	jp (ix)	jp (ix)
5028	dd e1 	pop ix	pop ix
502a	d9 	exx	exx
502b	d1 	pop de	pop de
502c	d9 	exx	exx
502d	d1 	pop de	pop de
502e	79 	ld a,c	ld a,c
502f	c1 	pop bc	pop bc
5030	41 	ld b,c	ld b,c
5031	4f 	ld c,a	ld c,a
5032	dd e9 	jp (ix)	jp (ix)
5034	cd 1f 50 	call $501f	call $0000
5037	cd 87 4a 	call $4a87	call $0000
503a	cd c9 46 	call $46c9	call $0000
503d	cd 28 50 	call $5028	call $0000
5040	cd 1f 50 	call $501f	call $0000
5043	cd 60 4f 	call $4f60	call $0000
5046	cd 87 4a 	call $4a87	call $0000
5049	cd b3 46 	call $46b3	call $0000
504c	cd 28 50 	call $5028	call $0000
504f	c3 21 47 	jp $4721	jp $0000
5052	dd 21 02 00 	ld ix,$0002	ld ix,$0000
5056	dd 39 	add ix,sp	add ix,sp
5058	dd e3 	ex (sp),ix	ex (sp),ix
505a	cd 75 1a 	call $1a75	call $0000
505d	cd 91 47 	call $4791	call $0000
5060	11 05 00 	ld de,$0005	ld de,$0000
5063	dd 19 	add ix,de	add ix,de
5065	cd 75 1a 	call $1a75	call $0000
5068	dd e3 	ex (sp),ix	ex (sp),ix
506a	04 	inc b	inc b
506b	05 	dec b	dec b
506c	fa c9 46 	jp m,$46c9	jp m,$0000
506f	cd c9 46 	call $46c9	call $0000
5072	cd 75 1a 	call $1a75	call $0000
5075	dd e3 	ex (sp),ix	ex (sp),ix
5077	18 e4 	jr $-$1a	jr $-$00
5079	3c 	inc a	inc a
507a	08 	ex af,af'	ex af,af'
507b	e5 	push hl	push hl
507c	d9 	exx	exx
507d	e5 	push hl	push hl
507e	d9 	exx	exx
507f	cd 87 4a 	call $4a87	call $0000
5082	cd 60 4f 	call $4f60	call $0000
5085	af 	xor a	xor a
5086	08 	ex af,af'	ex af,af'
5087	3d 	dec a	dec a
5088	28 20 	jr z,$+$22	jr z,$+$00
508a	f2 91 50 	jp p,$5091	jp p,$0000
508d	b9 	cp c	cp c
508e	38 1a 	jr c,$+$1c	jr c,$+$00
5090	3c 	inc a	inc a
5091	08 	ex af,af'	ex af,af'
5092	3c 	inc a	inc a
5093	cb fc 	set 7,h	set 7,h
5095	cd d8 4f 	call $4fd8	call $0000
5098	30 05 	jr nc,$+$07	jr nc,$+$00
509a	08 	ex af,af'	ex af,af'
509b	cd 05 50 	call $5005	call $0000
509e	08 	ex af,af'	ex af,af'
509f	08 	ex af,af'	ex af,af'
50a0	dc 4c 4f 	call c,$4f4c	call c,$0000
50a3	0c 	inc c	inc c
50a4	fa 86 50 	jp m,$5086	jp m,$0000
50a7	c3 76 4f 	jp $4f76	jp $0000
50aa	cd 60 4f 	call $4f60	call $0000
50ad	cb ba 	res 7,d	res 7,d
50af	d9 	exx	exx
50b0	e1 	pop hl	pop hl
50b1	d9 	exx	exx
50b2	e1 	pop hl	pop hl
50b3	08 	ex af,af'	ex af,af'
50b4	c9 	ret	ret
50b5	b7 	or a	or a
50b6	ed 42 	sbc hl,bc	sbc hl,bc
50b8	d9 	exx	exx
50b9	ed 42 	sbc hl,bc	sbc hl,bc
50bb	d9 	exx	exx
50bc	30 05 	jr nc,$+$07	jr nc,$+$00
50be	09 	add hl,bc	add hl,bc
50bf	d9 	exx	exx
50c0	ed 4a 	adc hl,bc	adc hl,bc
50c2	d9 	exx	exx
50c3	3f 	ccf	ccf
50c4	cb 13 	rl e	rl e
50c6	cb 12 	rl d	rl d
50c8	d9 	exx	exx
50c9	cb 13 	rl e	rl e
50cb	cb 12 	rl d	rl d
50cd	d9 	exx	exx
50ce	3c 	inc a	inc a
50cf	f0 	ret p	ret p
50d0	ed 6a 	adc hl,hl	adc hl,hl
50d2	d9 	exx	exx
50d3	ed 6a 	adc hl,hl	adc hl,hl
50d5	d9 	exx	exx
50d6	30 de 	jr nc,$-$20	jr nc,$-$00
50d8	b7 	or a	or a
50d9	ed 42 	sbc hl,bc	sbc hl,bc
50db	d9 	exx	exx
50dc	ed 42 	sbc hl,bc	sbc hl,bc
50de	d9 	exx	exx
50df	37 	scf	scf
50e0	c3 c4 50 	jp $50c4	jp $0000
50e3	b7 	or a	or a
50e4	d9 	exx	exx
50e5	cb 1a 	rr d	rr d
50e7	cb 1b 	rr e	rr e
50e9	d9 	exx	exx
50ea	cb 1a 	rr d	rr d
50ec	cb 1b 	rr e	rr e
50ee	30 05 	jr nc,$+$07	jr nc,$+$00
50f0	09 	add hl,bc	add hl,bc
50f1	d9 	exx	exx
50f2	ed 4a 	adc hl,bc	adc hl,bc
50f4	d9 	exx	exx
50f5	3c 	inc a	inc a
50f6	f0 	ret p	ret p
50f7	d9 	exx	exx
50f8	cb 1c 	rr h	rr h
50fa	cb 1d 	rr l	rr l
50fc	d9 	exx	exx
50fd	cb 1c 	rr h	rr h
50ff	cb 1d 	rr l	rr l
5101	c3 e4 50 	jp $50e4	jp $0000
5104	ed 42 	sbc hl,bc	sbc hl,bc
5106	d9 	exx	exx
5107	ed 42 	sbc hl,bc	sbc hl,bc
5109	d9 	exx	exx
510a	0c 	inc c	inc c
510b	30 07 	jr nc,$+$09	jr nc,$+$00
510d	0d 	dec c	dec c
510e	09 	add hl,bc	add hl,bc
510f	d9 	exx	exx
5110	ed 4a 	adc hl,bc	adc hl,bc
5112	d9 	exx	exx
5113	0d 	dec c	dec c
5114	3c 	inc a	inc a
5115	f0 	ret p	ret p
5116	cb 21 	sla c	sla c
5118	cb 10 	rl b	rl b
511a	0c 	inc c	inc c
511b	d9 	exx	exx
511c	cb 11 	rl c	rl c
511e	cb 10 	rl b	rl b
5120	cd 4c 51 	call $514c	call $0000
5123	cd 4c 51 	call $514c	call $0000
5126	d9 	exx	exx
5127	d2 04 51 	jp nc,$5104	jp nc,$0000
512a	b7 	or a	or a
512b	ed 42 	sbc hl,bc	sbc hl,bc
512d	d9 	exx	exx
512e	ed 42 	sbc hl,bc	sbc hl,bc
5130	d9 	exx	exx
5131	0c 	inc c	inc c
5132	c3 14 51 	jp $5114	jp $0000
5135	29 	add hl,hl	add hl,hl
5136	d9 	exx	exx
5137	ed 6a 	adc hl,hl	adc hl,hl
5139	d9 	exx	exx
513a	38 ee 	jr c,$-$10	jr c,$-$00
513c	3c 	inc a	inc a
513d	0c 	inc c	inc c
513e	ed 42 	sbc hl,bc	sbc hl,bc
5140	d9 	exx	exx
5141	ed 42 	sbc hl,bc	sbc hl,bc
5143	d9 	exx	exx
5144	d0 	ret nc	ret nc
5145	09 	add hl,bc	add hl,bc
5146	d9 	exx	exx
5147	ed 4a 	adc hl,bc	adc hl,bc
5149	d9 	exx	exx
514a	0d 	dec c	dec c
514b	c9 	ret	ret
514c	d9 	exx	exx
514d	cb 23 	sla e	sla e
514f	cb 12 	rl d	rl d
5151	d9 	exx	exx
5152	cb 13 	rl e	rl e
5154	cb 12 	rl d	rl d
5156	d9 	exx	exx
5157	ed 6a 	adc hl,hl	adc hl,hl
5159	d9 	exx	exx
515a	ed 6a 	adc hl,hl	adc hl,hl
515c	c9 	ret	ret
515d	dd 7e 00 	ld a,(ix)	ld a,(ix)
5160	fe 3a 	cp $3a	cp $00
5162	3f 	ccf	ccf
5163	d8 	ret c	ret c
5164	fe 30 	cp $30	cp $00
5166	c9 	ret	ret
5167	dd 7e 00 	ld a,(ix)	ld a,(ix)
516a	dd 23 	inc ix	inc ix
516c	fe 20 	cp $20	cp $00
516e	28 f7 	jr z,$-$07	jr z,$-$00
5170	fe 2b 	cp $2b	cp $00
5172	c8 	ret z	ret z
5173	fe 2d 	cp $2d	cp $00
5175	c8 	ret z	ret z
5176	dd 2b 	dec ix	dec ix
5178	c9 	ret	ret
5179	08 	ex af,af'	ex af,af'
517a	cb 7c 	bit 7,h	bit 7,h
517c	c4 8a 4e 	call nz,$4e8a	call nz,$0000
517f	cd 60 4f 	call $4f60	call $0000
5182	cb 7c 	bit 7,h	bit 7,h
5184	c4 8a 4e 	call nz,$4e8a	call nz,$0000
5187	44 	ld b,h	ld b,h
5188	4d 	ld c,l	ld c,l
5189	21 00 00 	ld hl,$0000	ld hl,$0000
518c	d9 	exx	exx
518d	44 	ld b,h	ld b,h
518e	4d 	ld c,l	ld c,l
518f	21 00 00 	ld hl,$0000	ld hl,$0000
5192	c9 	ret	ret
5193
