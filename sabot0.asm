;----------------------------------------------------------------------------

	PUBLIC KeyLineEx, KeyLine0, KeyLine7
	PUBLIC JoystickP	; F200DULR
	PUBLIC BorderColor
	PUBLIC dzx0, SABOTCOD0_END

;----------------------------------------------------------------------------

	ORG	100h

	di
	xor A
	out (10h),A			; turn off the quasi-disk
	ld sp,0100h
	ld hl,0C3F3h
	ld (0),HL
	ld A,H
	ld HL,RestartInt
	ld (2),HL
	ld (38h),A
	ld HL,KEYINT			; interrupt handler address
	ld (38h+1),HL

	call SetPaletteGame
	di

; Move encoded block from SABOTCOD0_END to FF00h-LZSIZE1, LZSIZE1 bytes
	ld DE,SABOTCOD0_END		; source addr
	ld BC,0FF00h-LZSIZE1		; destination addr
	ld HL,LZSIZE1			; size
	inc H
Init_1:
	ld A,(DE)
	inc DE
	ld (BC),A
	inc BC
	dec L
	jp nz,Init_1
	dec H
	jp nz,Init_1
; Decompress the code and sprites from C000h-LZSIZE1 to SABOTCOD0_END
	ld DE,0FF00h-LZSIZE1		; source addr
	ld BC,SABOTCOD0_END		; destination addr
	call dzx0

RestartInt:
	ld SP,100h
	ld A,88h
	out (4),A			; initialize R-Sound 2
; Joystick init
	ld A,83h			; control byte
	out (4),A			; initialize the I/O controller
	ld A,9Fh			; bits to check Joystick-P, both P1 and P2
	out (5),A			; set Joystick-P query bits
	in A,(6)			; read Joystick-P initial value
	ld (KEYINT_J+1),A		; store as XOR instruction parameter

; Start SABOTCOD1
	jp	SABOTCOD0_END

; Set game palette
SetPaletteGame:
	ld HL,PaletteGame+15
; Programming the Palette
SetPalette:
	ei
	halt
	ld DE,100Fh
PaletLoop:
	ld A,E
	out (2),A
	ld A,(HL)
	out (0Ch),A
	out (0Ch),A
	out (0Ch),A
	out (0Ch),A
	out (0Ch),A
	dec HL
	out (0Ch),A
	dec E
	out (0Ch),A
	dec D
	out (0Ch),A
	jp nz,PaletLoop
	ret

;----------------------------------------------------------------------------

KEYINT:
	push AF
	ld A,8Ah
	out (0),A
; Keyboard scan
	in A,(1)
	or 00011111b
	ld (KeyLineEx),A
	ld A,0FEh
	out (3),A
	in A,(2)
	ld (KeyLine0),A
;	ld A,0FDh
;	out (3),A
;	in A,(2)
;	ld (KeyLine1),A
;	ld A,0DFh
;	out (3),A
;	in A,(2)
;	ld (KeyLine5),A
;	ld A,0BFh
;	out (3),A
;	in A,(2)
;	ld (KeyLine6),A
;	ld A,07Fh
;	out (3),A
;	in A,(2)
;	ld (KeyLine7),A
; Joystick scan
	in A,(6)		; read Joystick-P
KEYINT_J:
	xor 0			; XOR with initial value - mutable param!
	cpl
	ld (JoystickP),A	; save to analyze later

; Scrolling, screen mode, border
	ld A,88h
	out (0),A
	ld A,2
	out (1),A
	ld A,0FFh
	out (3),A		; scrolling
	ld A,(BorderColor)
	and 0Fh
	out (2),A		; screen mode and border
;
	pop AF
	ei
	ret

KeyLineEx:	DB 11111111b
KeyLine0:	DB 11111111b
;KeyLine1:	DB 11111111b
;KeyLine5:	DB 11111111b
;KeyLine6:	DB 11111111b
;KeyLine7:	DB 11111111b
JoystickP:	DB 11111111b

BorderColor:	DB 0		; border color number 0..15

;----------------------------------------------------------------------------

ColorNone EQU 00000000b    ; Color for empty bits  - black
ColorGame EQU 11011011b    ; Color for $E000-$FFFF - yellow
ColorText EQU 10111111b    ; Color for $C000-$DFFF - blue
ColorBoth EQU 00000111b    ; Color for both planes - red
; Palette colors, game
PaletteGame:		; Palette
	DB	ColorNone, ColorGame, ColorText, ColorBoth	; 0..3
	DB	ColorNone, ColorGame, ColorText, ColorBoth	; 4..7
	DB	ColorNone, ColorGame, ColorText, ColorBoth	; 8..11
	DB	ColorNone, ColorGame, ColorText, ColorBoth	; 12..15

;----------------------------------------------------------------------------

; ZX0 decompressor code by Ivan Gorodetsky
; https://github.com/ivagorRetrocomp/DeZX/blob/main/ZX0/8080/OLD_V1/dzx0_CLASSIC.asm
; input:	de=compressed data start
;		bc=uncompressed destination start
;NOTE: FORWARD decompression only
dzx0:
		ld hl,0FFFFh
		push HL
		inc HL
		ld A,080h
dzx0_literals:
		call dzx0_elias
		call dzx0_ldir
		jp c,dzx0_new_offset
		call dzx0_elias
dzx0_copy:
		ex DE,HL
		ex (SP),HL
		push HL
		add HL,BC
		ex DE,HL
		call dzx0_ldir
		ex DE,HL
		pop HL
		ex (SP),HL
		ex DE,HL
		jp NC,dzx0_literals
dzx0_new_offset:
		call dzx0_elias
		ld H,A
		pop AF
		xor A
		sub L
		ret z
		push HL
		rra
		ld H,A
		ld A,(DE)
		rra
		ld L,A
		inc de
		ex (SP),HL
		ld A,H
		ld HL,1
		call nc,dzx0_elias_backtrack
		inc HL
		jp dzx0_copy
dzx0_elias:
		inc L
dzx0_elias_loop:
		add A,A
		jp NZ,dzx0_elias_skip
		ld A,(de)
		inc DE
		rla
dzx0_elias_skip:
		ret C
dzx0_elias_backtrack:
		add HL,HL
		add A,A
		jp NC,dzx0_elias_loop
		jp dzx0_elias

dzx0_ldir:
		push AF
dzx0_ldir1:
		ld A,(DE)
		ld (BC),A
		inc DE
		inc BC
		dec HL
		ld A,H
		or L
		jp nz,dzx0_ldir1
		pop AF
		add A,A
		ret

;----------------------------------------------------------------------------
SABOTCOD0_END

	.end
