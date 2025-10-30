; Blocks for rooms
L7188:	DEFB	$FF,$2F,$30,$31,$32,$FF	; Front block 6x2 - pile of garbage
	DEFB	$33,$34,$35,$36,$37,$38
L7194:	DEFB	$0E,$0F,$10,$11		; Back block 4x3 - pier fencing
	DEFB	$12,$0D,$0D,$0D
	DEFB	$12,$0D,$0D,$0D
L71A0:	DEFB	$00,$01,$02		; Front block 3x3 - box
	DEFB	$03,$04,$05
	DEFB	$06,$07,$08
L71A9:	DEFB	$0D,$0D,$0D,$0E		; Front block 4x4 - computer part
	DEFB	$0F,$10,$10,$11
	DEFB	$0D,$13,$0D,$0D
	DEFB	$12,$12,$12,$12
L71B9:	DEFB	$07,$0A			; Back block 2x1 - ladder black on blue
L71BB:	DEFB	$1F,$20			; Front block 2x4 - console
	DEFB	$21,$22
	DEFB	$23,$24
	DEFB	$25,$26

; Room 791E (room with pier)
L791E:	DEFW	LB446	; Room procedure (AI/logic handler)
L7920:	DEFW	LC64C	; Initialization routine (for actors, consoles, etc.)
	DEFW	$0000	; Unused
	DEFW	L79C6	; Room to the right
	DEFW	$0000	; Room to the left
	DEFW	$0000	; Room below
	DEFB	$04,$0D	; Fill entire screen with $0D
	DEFB	$03,$FF,$07,$0A,$79,$66	; Rectangle 7x10 tiles with $FF at $6679
	DEFB	$02,$17,$F5,$70,$67	; Fill horz 23 tiles with $F5 at $6770
	DEFB	$02,$17,$0B,$EE,$70	; Fill horz 23 tiles with $0B at $70EE
	DEFB	$03,$0C,$17,$03,$0C,$71	; Rectangle 23x3 tiles with $0C at $710C
	DEFB	$02,$13,$F6,$6A,$66	; Fill horz 19 tiles with $F6 at $666A
	DEFB	$01,$08,$0C,$89,$66	; Fill vert 8 tiles with $0C at $6689
	DEFB	$01,$08,$0C,$8E,$66	; Fill vert 8 tiles with $0C at $668E
	DEFB	$01,$08,$0C,$93,$66	; Fill vert 8 tiles with $0C at $6693
	DEFB	$01,$0C,$F2,$EB,$65	; Fill vert 12 tiles with $F2 at $65EB
	DEFB	$05,$04,$03,$94,$71,$11,$66	; Block 4x3 tiles from 7194 to $6611
	DEFB	$05,$04,$03,$94,$71,$15,$66	; Block 4x3 tiles from 7194 to $6615
	DEFB	$05,$04,$03,$94,$71,$19,$66	; Block 4x3 tiles from 7194 to $6619
	DEFB	$05,$04,$03,$94,$71,$1D,$66	; Block 4x3 tiles from 7194 to $661D
	DEFB	$05,$04,$03,$94,$71,$21,$66	; Block 4x3 tiles from 7194 to $6621
	DEFB	$01,$03,$12,$25,$66	; Fill vert 3 tiles with $12 at $6625
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7984:	DEFB	$F1,$F0		; Back block 2x5 - ladder black on blue
	DEFB	$07,$0A
	DEFB	$07,$0A
	DEFB	$07,$0A
	DEFB	$07,$0A
L798E:	DEFB	$FF,$FF,$39,$58	; Front block 4x7 - ladder fencing
	DEFB	$FF,$39,$3A,$58
	DEFB	$39,$3A,$3A,$58
	DEFB	$3A,$3A,$3A,$58
	DEFB	$3A,$3A,$3B,$FF
	DEFB	$3A,$3B,$FF,$FF
	DEFB	$3B,$FF,$FF,$FF
L79AA:	DEFB	$59,$3C,$FF,$FF	; Front block 4x7 - ladder fencing
	DEFB	$59,$3D,$3C,$FF
	DEFB	$59,$3D,$3D,$3C
	DEFB	$59,$3D,$3D,$3D
	DEFB	$FF,$3E,$3D,$3D
	DEFB	$FF,$FF,$3E,$3D
	DEFB	$FF,$FF,$FF,$3E

; Room 79C6 (next to room with pier)
L79C6:	DEFW	LB452	; Room procedure
	DEFW	LB42E	; Initialization
	DEFW	L791E	; Room to Left
	DEFW	L7A17	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$0D			; Fill entire screen with $0D
	DEFB	$03,$FF,$1E,$0A,$62,$66	; Rectangle 30x10 tiles with $FF at $6662
	DEFB	$03,$02,$15,$06,$C5,$66	; Rectangle 21x6 tiles with $02 at $66C5
	DEFB	$02,$15,$03,$A7,$66	; Fill horz 21 tiles with $03 at $66A7
	DEFB	$0C,$B9,$71,$02,$09,$6C,$66	; Block 2 tiles from 71B9 to $666C copy 9 times
	DEFB	$03,$00,$08,$06,$C4,$65	; Rectangle 8x6 tiles with $00 at $65C4
	DEFB	$02,$0A,$FF,$A4,$65	; Fill horz 10 tiles with $FF at $65A4
	DEFB	$05,$02,$04,$BB,$71,$F8,$6F	; Block 2x4 tiles from 71BB to $6FF8
	DEFB	$0E,$2A,$B9,$6F		; Put tile $2A at $6FB9
	DEFB	$01,$05,$2B,$D7,$6F	; Fill vert 5 tiles with $2B at $6FD7
	DEFB	$05,$06,$02,$88,$71,$3D,$71	; Block 6x2 tiles from 7188 to $713D
	DEFB	$0E,$F1,$6C,$66		; Put tile $F1 at $666C
	DEFB	$0E,$F0,$6D,$66		; Put tile $F0 at $666D
	DEFB	$FF	; End of sequence

; Room 7A17
L7A17:	DEFW	LB483	; Room procedure
	DEFW	LA142	; Initialization
	DEFW	L79C6	; Room to Left
	DEFW	L7B90	; Room to Right
	DEFW	L8238	; Room Up
	DEFW	$0000
	DEFB	$04,$02			; Fill entire screen with $02
	DEFB	$08,$FF,$06,$CD,$66	; Triangle with $FF, count=6 at $66CD
	DEFB	$02,$12,$FF,$70,$67	; Fill horz 18 tiles with $FF at $6770
	DEFB	$03,$FF,$0C,$08,$B0,$66	; Rectangle 12x8 tiles with $FF at $66B0
	DEFB	$03,$00,$04,$06,$AE,$65	; Rectangle 4x6 tiles with $00 at $65AE
	DEFB	$02,$0B,$FF,$80,$66	; Fill horz 11 tiles with $FF at $6680
	DEFB	$02,$05,$FF,$62,$66	; Fill horz 5 tiles with $FF at $6662
	DEFB	$01,$05,$2B,$C6,$6F	; Fill vert 5 tiles with $2B at $6FC6
	DEFB	$0E,$2A,$A8,$6F		; Put tile $2A at $6FA8
	DEFB	$02,$05,$FF,$90,$65	; Fill horz 5 tiles with $FF at $6590
	DEFB	$02,$0C,$FF,$9A,$65	; Fill horz 12 tiles with $FF at $659A
	DEFB	$0C,$B9,$71,$02,$08,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 8 times
	DEFB	$05,$04,$07,$8E,$79,$9F,$70	; Block 4x7 tiles from 798E to $709F
	DEFB	$05,$04,$07,$8E,$79,$48,$70	; Block 4x7 tiles from 798E to $7048
	DEFB	$05,$04,$07,$8E,$79,$2B,$70	; Block 4x7 tiles from 798E to $702B
	DEFB	$FF	; End of sequence

; Room 7A75
L7A75:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L7BD2	; Room Up
	DEFW	L7A9E	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$02,$12,$03,$0F,$66	; Fill horz 18 tiles with $03 at $660F
	DEFB	$03,$02,$12,$05,$2D,$66	; Rectangle 18x5 tiles with $02 at $662D
	DEFB	$0C,$B9,$71,$02,$11,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 17 times
	DEFB	$0E,$F1,$C4,$66		; Put tile $F1 at $66C4
	DEFB	$0E,$F0,$C5,$66		; Put tile $F0 at $66C5
	DEFB	$FF	; End of sequence

; Room 7A9E
L7A9E:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L7ACD	; Room to Right
	DEFW	L7A75	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$02,$1C,$03,$82,$66	; Fill horz 28 tiles with $03 at $6682
	DEFB	$03,$02,$1C,$06,$A0,$66	; Rectangle 28x6 tiles with $02 at $66A0
	DEFB	$0C,$B9,$71,$02,$0F,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 15 times
	DEFB	$05,$06,$02,$88,$71,$15,$71	; Block 6x2 tiles from 7188 to $7115
	DEFB	$05,$06,$02,$88,$71,$20,$71	; Block 6x2 tiles from 7188 to $7120
	DEFB	$FF	; End of sequence

; Room 7ACD
L7ACD:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L7A9E	; Room to Left
	DEFW	L7AF8	; Room to Right
	DEFW	L7B56	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$1E,$06,$80,$66	; Rectangle 30x6 tiles with $02 at $6680
	DEFB	$02,$1A,$03,$66,$66	; Fill horz 26 tiles with $03 at $6666
	DEFB	$02,$04,$03,$80,$66	; Fill horz 4 tiles with $03 at $6680
	DEFB	$02,$0A,$02,$34,$67	; Fill horz 10 tiles with $02 at $6734
	DEFB	$0C,$B9,$71,$02,$0E,$A2,$65	; Block 2 tiles from 71B9 to $65A2 copy 14 times
	DEFB	$FF	; End of sequence

; Room 7AF8
L7AF8:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L7ACD	; Room to Left
	DEFW	$0001
	DEFW	L7C6D	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$1C,$08,$80,$66	; Rectangle 28x8 tiles with $02 at $6680
	DEFB	$02,$0D,$03,$86,$66	; Fill horz 13 tiles with $03 at $6686
	DEFB	$0C,$B9,$71,$02,$0F,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 15 times
	DEFB	$02,$06,$03,$62,$66	; Fill horz 6 tiles with $03 at $6662
	DEFB	$02,$09,$FF,$93,$66	; Fill horz 9 tiles with $FF at $6693
	DEFB	$02,$09,$03,$B1,$66	; Fill horz 9 tiles with $03 at $66B1
	DEFB	$05,$06,$02,$88,$71,$3C,$71	; Block 6x2 tiles from 7188 to $713C
	DEFB	$02,$02,$FF,$34,$67	; Fill horz 2 tiles with $FF at $6734
	DEFB	$02,$0E,$FF,$52,$67	; Fill horz 14 tiles with $FF at $6752
	DEFB	$0E,$FE,$83,$67		; Put tile $FE at $6783
	DEFB	$0E,$FE,$8A,$67		; Put tile $FE at $678A
	DEFB	$05,$01,$02,$4F,$7B,$56,$67	; Block 1x2 tiles from 7B4F to $6756
	DEFB	$05,$01,$02,$4F,$7B,$5E,$67	; Block 1x2 tiles from 7B4F to $675E
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7B4F:	DEFB	$FE	; Back block 1x2 - vertical pipe
	DEFB	$FD
L7B51:	DEFB	$FD	; Back block 1x1 - vertical pipe
L7B52:	DEFB	$FD	; Back block 1x4 - vertical pipe
	DEFB	$FD
	DEFB	$FD
	DEFB	$FC

; Room 7B56
L7B56:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L7D5A	; Room Up
	DEFW	L7ACD	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$08,$06,$28,$66	; Rectangle 8x6 tiles with $02 at $6628
	DEFB	$03,$02,$0A,$05,$33,$66	; Rectangle 10x5 tiles with $02 at $6633
	DEFB	$02,$08,$03,$0A,$66	; Fill horz 8 tiles with $03 at $660A
	DEFB	$02,$0A,$03,$15,$66	; Fill horz 10 tiles with $03 at $6615
	DEFB	$0C,$B9,$71,$02,$0B,$94,$65	; Block 2 tiles from 71B9 to $6594 copy 11 times
	DEFB	$0C,$B9,$71,$02,$11,$A2,$65	; Block 2 tiles from 71B9 to $65A2 copy 17 times
	DEFB	$0C,$84,$79,$02,$01,$CE,$66	; Block 2 tiles from 7984 to $66CE copy 1 times
	DEFB	$FF	; End of sequence

; Room 7B90
L7B90:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L7A17	; Room to Left
	DEFW	L7BD2	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$03,$02,$05,$09,$90,$65	; Rectangle 5x9 tiles with $02 at $6590
	DEFB	$02,$06,$FF,$92,$65	; Fill horz 6 tiles with $FF at $6592
	DEFB	$0E,$2A,$A9,$6F		; Put tile $2A at $6FA9
	DEFB	$01,$07,$2B,$C7,$6F	; Fill vert 7 tiles with $2B at $6FC7
	DEFB	$03,$FF,$0F,$08,$9E,$66	; Rectangle 15x8 tiles with $FF at $669E
	DEFB	$03,$FF,$0F,$03,$43,$67	; Rectangle 15x3 tiles with $FF at $6743
	DEFB	$07,$FF,$04,$CB,$66	; Triangle with $FF, count=4 at $66CB
	DEFB	$05,$04,$07,$AA,$79,$68,$70	; Block 4x7 tiles from 79AA to $7068
	DEFB	$05,$04,$07,$AA,$79,$2A,$70	; Block 4x7 tiles from 79AA to $702A
	DEFB	$FF	; End of sequence

; Room 7BD2
L7BD2:	DEFW	LB41F	; Room procedure
L7BD4:	DEFW	LB422	; Initialization
	DEFW	L7B90	; Room to Left
	DEFW	L7D5A	; Room to Right
	DEFW	L8162	; Room Up
	DEFW	L7A75	; Room Down
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$03,$FF,$14,$03,$34,$67	; Rectangle 20x3 tiles with $FF at $6734
	DEFB	$02,$0A,$FF,$84,$67	; Fill horz 10 tiles with $FF at $6784
	DEFB	$0E,$FF,$66,$67		; Put tile $FF at $6766
	DEFB	$05,$03,$04,$0C,$7C,$B5,$70	; Block 3x4 tiles from 7C0C to $70B5
	DEFB	$05,$03,$03,$18,$7C,$24,$71	; Block 3x3 tiles from 7C18 to $7124
	DEFB	$0C,$2A,$7C,$02,$0E,$9E,$65	; Block 2 tiles from 7C2A to $659E copy 14 times
	DEFB	$05,$02,$03,$84,$79,$3C,$67	; Block 2x3 tiles from 7984 to $673C
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7C0C:	DEFB	$3F,$40,$41	; Front block 3x4
	DEFB	$42,$43,$44
	DEFB	$45,$46,$47
	DEFB	$48,$49,$4A
L7C18:	DEFB	$4B,$4C,$4D	; Front block 3x3
	DEFB	$45,$46,$47
	DEFB	$48,$49,$4A
L7C21:	DEFB	$14,$15,$16	; Front block 3x3 - barrel - to drow using token #00
	DEFB	$17,$18,$19
	DEFB	$1A,$1B,$1C
L7C2A:	DEFB	$06,$09	; Back block 2x1 - ladder black on green
L7C2C:	DEFB	$ED,$EC	; Back block 2x1 - ladder black on green

; Room 7C2E
L7C2E:	DEFW	LB458	; Room procedure
	DEFW	LA1A6	; Initialization
	DEFW	L7D5A	; Room to Left
	DEFW	$0000
	DEFW	L7DA9	; Room Up
	DEFW	L7C6D	; Room Down
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$03,$FF,$1E,$04,$16,$67	; Rectangle 30x4 tiles with $FF at $6716
	DEFB	$03,$FF,$05,$06,$90,$65	; Rectangle 5x6 tiles with $FF at $6590
	DEFB	$03,$FF,$03,$0D,$AB,$65	; Rectangle 3x13 tiles with $FF at $65AB
	DEFB	$0E,$2A,$3B,$70		; Put tile $2A at $703B
	DEFB	$01,$06,$2B,$59,$70	; Fill vert 6 tiles with $2B at $7059
	DEFB	$0C,$2A,$7C,$02,$0D,$95,$65	; Block 2 tiles from 7C2A to $6595 copy 13 times
	DEFB	$05,$02,$04,$84,$79,$1E,$67	; Block 2x4 tiles from 7984 to $671E
	DEFB	$05,$02,$04,$84,$79,$2A,$67	; Block 2x4 tiles from 7984 to $672A
	DEFB	$FF	; End of sequence

; Room 7C6D
L7C6D:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L7FC4	; Room to Right
	DEFW	L7C2E	; Room Up
	DEFW	L7AF8	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$0C,$B9,$71,$02,$11,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 17 times
	DEFB	$03,$02,$0E,$06,$90,$66	; Rectangle 14x6 tiles with $02 at $6690
	DEFB	$02,$09,$03,$72,$66	; Fill horz 9 tiles with $03 at $6672
	DEFB	$02,$05,$03,$99,$66	; Fill horz 5 tiles with $03 at $6699
	DEFB	$0C,$B9,$71,$02,$0E,$A4,$65	; Block 2 tiles from 71B9 to $65A4 copy 14 times
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7C9A:	DEFB	$06,$09	; Back block 2x1 - ladder black on green

; Room 7C9C
L7C9C:	DEFW	LC6A5	; Room procedure
	DEFW	L791B	; Initialization
L7CA0:	DEFW	L947C	; Room to Left
L7CA2:	DEFW	L93DF	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$02,$1E,$03,$62,$66	; Fill horz 30 tiles with $03 at $6662
	DEFB	$03,$02,$1E,$07,$80,$66	; Rectangle 30x7 tiles with $02 at $6680
	DEFB	$03,$22,$04,$02,$AB,$66	; Rectangle 4x2 tiles with $22 at $66AB
	DEFB	$03,$21,$1E,$02,$16,$67	; Rectangle 30x2 tiles with $21 at $6716
	DEFB	$05,$06,$07,$0D,$7D,$82,$70	; Block 6x7 tiles from 7D0D to $7082
	DEFB	$05,$05,$01,$08,$7D,$53,$67	; Block 5x1 tiles from 7D08 to $6753
	DEFB	$05,$05,$01,$08,$7D,$62,$67	; Block 5x1 tiles from 7D08 to $6762
	DEFB	$05,$05,$07,$E5,$7C,$87,$66	; Block 5x7 tiles from 7CE5 to $6687
	DEFB	$05,$05,$07,$37,$7D,$92,$66	; Block 5x7 tiles from 7D37 to $6692
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7CE5:	DEFB	$02,$E9,$E8,$E7,$E7	; Back block 5x7 - Train part
	DEFB	$17,$0D,$15,$15,$0D
	DEFB	$18,$0D,$15,$15,$0D
	DEFB	$19,$0D,$0D,$0D,$0D
	DEFB	$22,$22,$22,$22,$22
	DEFB	$22,$22,$22,$22,$22
	DEFB	$1F,$0D,$0D,$0D,$0D
	DEFB	$FB,$FB,$FF,$FF,$FB
L7D0D:	DEFB	$56,$4E,$4E,$4E,$4E,$57	; Front block 6x7 - Train central part
	DEFB	$52,$4F,$4F,$4F,$4F,$54
	DEFB	$52,$4F,$4F,$4F,$4F,$54
	DEFB	$52,$6C,$6D,$6E,$50,$54
	DEFB	$53,$6F,$70,$71,$51,$55
	DEFB	$53,$72,$73,$74,$51,$55
	DEFB	$52,$50,$50,$50,$50,$54
L7D37:	DEFB	$E7,$E7,$E6,$E5,$02	; Back block 5x7 - Train part
	DEFB	$0D,$15,$15,$0D,$1C
	DEFB	$0D,$15,$15,$0D,$1D
	DEFB	$0D,$0D,$0D,$0D,$1E
	DEFB	$22,$22,$22,$22,$22
	DEFB	$22,$22,$22,$22,$22
	DEFB	$0D,$0D,$0D,$0D,$20

; Room 7D5A
L7D5A:	DEFW	LB483	; Room procedure
	DEFW	LA14A	; Initialization
	DEFW	L7BD2	; Room to Left
	DEFW	L7C2E	; Room to Right
	DEFW	$0000
	DEFW	L7B56	; Room Down
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$03,$FF,$1E,$06,$90,$65	; Rectangle 30x6 tiles with $FF at $6590
	DEFB	$0C,$2A,$7C,$02,$10,$9B,$65	; Block 2 tiles from 7C2A to $659B copy 16 times
	DEFB	$02,$02,$EA,$31,$66	; Fill horz 2 tiles with $EA at $6631
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$03,$FF,$06,$03,$2E,$67	; Rectangle 6x3 tiles with $FF at $672E
	DEFB	$08,$FF,$02,$4B,$67	; Triangle with $FF, count=2 at $674B
	DEFB	$0C,$84,$79,$02,$01,$74,$67	; Block 2 tiles from 7984 to $6774 copy 1 times
	DEFB	$0C,$84,$79,$02,$01,$82,$67	; Block 2 tiles from 7984 to $6782 copy 1 times
	DEFB	$0E,$2A,$56,$70		; Put tile $2A at $7056
	DEFB	$01,$06,$2B,$74,$70	; Fill vert 6 tiles with $2B at $7074
	DEFB	$05,$04,$07,$8E,$79,$A9,$70	; Block 4x7 tiles from 798E to $70A9
	DEFB	$FF	; End of sequence

; Room 7DA9
L7DA9:	DEFW	L7918	; Room procedure
	DEFW	LA0E8	; Initialization
	DEFW	$0000
	DEFW	L7E8C	; Room to Right
	DEFW	L7E05	; Room Up
	DEFW	L7C2E	; Room Down
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$03,$FF,$03,$03,$AE,$65	; Rectangle 3x3 tiles with $FF at $65AE
	DEFB	$01,$0C,$EB,$09,$66	; Fill vert 12 tiles with $EB at $6609
	DEFB	$05,$03,$04,$0C,$7C,$F0,$70	; Block 3x4 tiles from 7C0C to $70F0
	DEFB	$0C,$2C,$7C,$02,$01,$75,$67	; Block 2 tiles from 7C2C to $6775 copy 1 times
	DEFB	$0C,$9A,$7C,$02,$10,$99,$65	; Block 2 tiles from 7C9A to $6599 copy 16 times
	DEFB	$0C,$9A,$7C,$02,$10,$9C,$65	; Block 2 tiles from 7C9A to $659C copy 16 times
	DEFB	$0C,$9A,$7C,$02,$10,$9F,$65	; Block 2 tiles from 7C9A to $659F copy 16 times
	DEFB	$05,$03,$03,$18,$7C,$22,$71	; Block 3x3 tiles from 7C18 to $7122
	DEFB	$05,$03,$04,$0C,$7C,$01,$71	; Block 3x4 tiles from 7C0C to $7101
	DEFB	$05,$03,$04,$0C,$7C,$06,$71	; Block 3x4 tiles from 7C0C to $7106
	DEFB	$FF	; End of sequence

; Room 7E05
L7E05:	DEFW	LB452	; Room procedure
	DEFW	LA35C	; Initialization
	DEFW	$0000
	DEFW	L80A7	; Room to Right
	DEFW	L83ED	; Room Up
	DEFW	L7DA9	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$0C,$2C,$7C,$02,$01,$79,$67	; Block 2 tiles from 7C2C to $6779 copy 1 times
	DEFB	$0C,$2C,$7C,$02,$01,$7C,$67	; Block 2 tiles from 7C2C to $677C copy 1 times
	DEFB	$0C,$2C,$7C,$02,$01,$7F,$67	; Block 2 tiles from 7C2C to $677F copy 1 times
	DEFB	$0C,$48,$73,$02,$10,$99,$65	; Block 2 tiles from 7348 to $6599 copy 16 times
	DEFB	$01,$0C,$EB,$09,$66	; Fill vert 12 tiles with $EB at $6609
	DEFB	$05,$03,$03,$21,$7C,$B5,$70	; Block 3x3 tiles from 7C21 to $70B5
	DEFB	$05,$03,$03,$21,$7C,$0E,$71	; Block 3x3 tiles from 7C21 to $710E
	DEFB	$05,$03,$03,$21,$7C,$11,$71	; Block 3x3 tiles from 7C21 to $7111
	DEFB	$05,$03,$04,$0C,$7C,$03,$71	; Block 3x4 tiles from 7C0C to $7103
	DEFB	$05,$04,$03,$7B,$7E,$1F,$71	; Block 4x3 tiles from 7E7B to $711F
	DEFB	$05,$03,$01,$87,$7E,$44,$71	; Block 3x1 tiles from 7E87 to $7144
	DEFB	$05,$02,$01,$8A,$7E,$61,$71	; Block 2x1 tiles from 7E8A to $7161
	DEFB	$05,$02,$01,$8A,$7E,$64,$71	; Block 2x1 tiles from 7E8A to $7164
	DEFB	$02,$05,$FF,$90,$65	; Fill horz 5 tiles with $FF at $6590
	DEFB	$03,$FF,$03,$03,$AE,$65	; Rectangle 3x3 tiles with $FF at $65AE
	DEFB	$FF	; End of sequence

; Blocks for rooms
L7E7B:	DEFB	$00,$01,$01,$02	; Front block 4x3 wooden box
	DEFB	$03,$04,$04,$05
	DEFB	$06,$07,$07,$08
L7E87:	DEFB	$09,$1D,$0A	; Block 3x1
L7E8A:	DEFB	$09,$0A	; Block 2x1

; Room 7E8C
L7E8C:	DEFW	L7918	; Room procedure
	DEFW	LA0ED	; Initialization
	DEFW	L7DA9	; Room to Left
	DEFW	L7EF2	; Room to Right
	DEFW	$0000
	DEFW	L7F48	; Room Down
	DEFB	$04,$01	; Fill entire screen with $01
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$0C,$2C,$7C,$02,$01,$72,$67	; Block 2 tiles from 7C2C to $6772 copy 1 times
	DEFB	$0C,$2C,$7C,$02,$01,$84,$67	; Block 2 tiles from 7C2C to $6784 copy 1 times
	DEFB	$05,$03,$03,$18,$7C,$0C,$71	; Block 3x3 tiles from 7C18 to $710C
	DEFB	$05,$03,$04,$0C,$7C,$F2,$70	; Block 3x4 tiles from 7C0C to $70F2
	DEFB	$05,$04,$03,$7B,$7E,$11,$71	; Block 4x3 tiles from 7E7B to $7111
	DEFB	$05,$04,$03,$7B,$7E,$15,$71	; Block 4x3 tiles from 7E7B to $7115
	DEFB	$05,$04,$03,$7B,$7E,$BE,$70	; Block 4x3 tiles from 7E7B to $70BE
	DEFB	$05,$03,$03,$A0,$71,$BA,$70	; Block 3x3 tiles from 71A0 to $70BA
	DEFB	$05,$03,$03,$A0,$71,$1B,$71	; Block 3x3 tiles from 71A0 to $711B
	DEFB	$05,$03,$03,$18,$7C,$22,$71	; Block 3x3 tiles from 7C18 to $7122
	DEFB	$05,$03,$04,$0C,$7C,$06,$71	; Block 3x4 tiles from 7C0C to $7106
	DEFB	$FF	; End of sequence

; Room 7EF2
L7EF2:	DEFW	LB47A	; Room procedure
	DEFW	LA154	; Initialization
	DEFW	L7E8C	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$01			; Fill entire screen with $01
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$01,$0F,$EB,$CA,$65	; Fill vert 15 tiles with $EB at $65CA
	DEFB	$05,$04,$03,$7B,$7E,$63,$70	; Block 4x3 tiles from 7E7B to $7063
	DEFB	$05,$04,$03,$7B,$7E,$BA,$70	; Block 4x3 tiles from 7E7B to $70BA
	DEFB	$05,$04,$03,$7B,$7E,$17,$71	; Block 4x3 tiles from 7E7B to $7117
	DEFB	$05,$03,$03,$A0,$71,$C0,$70	; Block 3x3 tiles from 71A0 to $70C0
	DEFB	$05,$03,$03,$A0,$71,$0E,$71	; Block 3x3 tiles from 71A0 to $710E
	DEFB	$05,$03,$03,$A0,$71,$12,$71	; Block 3x3 tiles from 71A0 to $7112
	DEFB	$05,$03,$03,$A0,$71,$1C,$71	; Block 3x3 tiles from 71A0 to $711C
	DEFB	$05,$03,$03,$A0,$71,$23,$71	; Block 3x3 tiles from 71A0 to $7123
	DEFB	$FF	; End of sequence

; Room 7F48
L7F48:	DEFW	LB483	; Room procedure
	DEFW	LA14F	; Initialization
	DEFW	$0000
	DEFW	L7F9C	; Room to Right
	DEFW	L7E8C	; Room Up
	DEFW	L7FC4	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$01,$08,$0C,$B2,$65	; Rectangle 8x12 tiles with $01 at $65B2
	DEFB	$03,$01,$12,$07,$6E,$66	; Rectangle 18x7 tiles with $01 at $666E
	DEFB	$02,$04,$01,$1E,$67	; Fill horz 4 tiles with $01 at $671E
	DEFB	$07,$01,$05,$D8,$65	; Triangle with $01, count=5 at $65D8
	DEFB	$0C,$9A,$7C,$02,$0D,$92,$65	; Block 2 tiles from 7C9A to $6592 copy 13 times
	DEFB	$0C,$9A,$7C,$02,$0E,$A4,$65	; Block 2 tiles from 7C9A to $65A4 copy 14 times
L7F7A:	DEFB	$01,$01,$E4,$5E,$66	; Fill vert 1 tiles with $E4 at $665E
	DEFB	$05,$03,$03,$18,$7C,$DF,$70	; Block 3x3 tiles from 7C18 to $70DF
	DEFB	$05,$01,$03,$4F,$7B,$42,$67	; Block 1x3 tiles from 7B4F to $6742
	DEFB	$05,$01,$03,$4F,$7B,$4B,$67	; Block 1x3 tiles from 7B4F to $674B
	DEFB	$05,$02,$03,$84,$79,$3E,$67	; Block 2x3 tiles from 7984 to $673E
	DEFB	$FF	; End of sequence

; Room 7F9C
L7F9C:	DEFW	LB458	; Room procedure
	DEFW	LA1B5	; Initialization
	DEFW	L7F48	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L8008	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$01,$1B,$07,$62,$66	; Rectangle 27x7 tiles with $01 at $6662
	DEFB	$01,$01,$E4,$46,$66	; Fill vert 1 tiles with $E4 at $6646
	DEFB	$05,$02,$03,$84,$79,$38,$67	; Block 2x3 tiles from 7984 to $6738
	DEFB	$05,$02,$03,$84,$79,$48,$67	; Block 2x3 tiles from 7984 to $6748
	DEFB	$FF	; End of sequence

; Room 7FC4
L7FC4:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L7C6D	; Room to Left
	DEFW	L8008	; Room to Right
	DEFW	L7F48	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$0D,$06,$80,$66	; Rectangle 13x6 tiles with $02 at $6680
	DEFB	$02,$04,$03,$80,$66	; Fill horz 4 tiles with $03 at $6680
	DEFB	$02,$09,$03,$66,$66	; Fill horz 9 tiles with $03 at $6666
	DEFB	$0C,$B9,$71,$02,$0E,$9A,$65	; Block 2 tiles from 71B9 to $659A copy 14 times
	DEFB	$01,$11,$FD,$9E,$65	; Fill vert 17 tiles with $FD at $659E
	DEFB	$02,$0E,$03,$36,$66	; Fill horz 14 tiles with $03 at $6636
	DEFB	$03,$02,$0E,$05,$54,$66	; Rectangle 14x5 tiles with $02 at $6654
	DEFB	$05,$01,$06,$4F,$7B,$F1,$66	; Block 1x6 tiles from 7B4F to $66F1
	DEFB	$05,$01,$05,$51,$7B,$A7,$65	; Block 1x5 tiles from 7B51 to $65A7
	DEFB	$FF	; End of sequence

; Room 8008
L8008:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L7FC4	; Room to Left
	DEFW	$0000
	DEFW	L7F9C	; Room Up
	DEFW	L8076	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$02,$0D,$03,$26,$66	; Fill horz 13 tiles with $03 at $6626
	DEFB	$02,$0B,$03,$36,$66	; Fill horz 11 tiles with $03 at $6636
	DEFB	$03,$02,$0D,$05,$44,$66	; Rectangle 13x5 tiles with $02 at $6644
	DEFB	$03,$02,$0B,$06,$54,$66	; Rectangle 11x6 tiles with $02 at $6654
	DEFB	$02,$0A,$02,$DD,$66	; Fill horz 10 tiles with $02 at $66DD
	DEFB	$0C,$B9,$71,$02,$0C,$94,$65	; Block 2 tiles from 71B9 to $6594 copy 12 times
	DEFB	$0C,$B9,$71,$02,$0C,$A4,$65	; Block 2 tiles from 71B9 to $65A4 copy 12 times
	DEFB	$05,$02,$05,$84,$79,$FF,$66	; Block 2x5 tiles from 7984 to $66FF
	DEFB	$05,$02,$05,$84,$79,$0C,$67	; Block 2x5 tiles from 7984 to $670C
	DEFB	$05,$01,$05,$4F,$7B,$02,$67	; Block 1x5 tiles from 7B4F to $6702
	DEFB	$05,$01,$05,$4F,$7B,$0A,$67	; Block 1x5 tiles from 7B4F to $670A
	DEFB	$05,$01,$05,$4F,$7B,$11,$67	; Block 1x5 tiles from 7B4F to $6711
	DEFB	$05,$01,$05,$51,$7B,$A2,$65	; Block 1x5 tiles from 7B51 to $65A2
	DEFB	$05,$01,$05,$51,$7B,$A9,$65	; Block 1x5 tiles from 7B51 to $65A9
	DEFB	$01,$11,$FD,$9E,$65	; Fill vert 17 tiles with $FD at $659E
	DEFB	$FF	; End of sequence

; Room 8076
L8076:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L8008	; Room Up
	DEFW	L8384	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$01,$11,$FD,$9A,$65	; Fill vert 17 tiles with $FD at $659A
	DEFB	$01,$11,$FD,$9E,$65	; Fill vert 17 tiles with $FD at $659E
	DEFB	$01,$11,$FD,$A2,$65	; Fill vert 17 tiles with $FD at $65A2
	DEFB	$01,$11,$FD,$A9,$65	; Fill vert 17 tiles with $FD at $65A9
	DEFB	$0C,$B9,$71,$02,$11,$97,$65	; Block 2 tiles from 71B9 to $6597 copy 17 times
	DEFB	$0C,$B9,$71,$02,$11,$A4,$65	; Block 2 tiles from 71B9 to $65A4 copy 17 times
	DEFB	$FF	; End of sequence

; Room 80A7
L80A7:	DEFW	LB458	; Room procedure
	DEFW	LA1CB	; Initialization
	DEFW	L7E05	; Room to Left
	DEFW	L80F6	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$03,$04,$0C,$7C,$F0,$70	; Block 3x4 tiles from 7C0C to $70F0
	DEFB	$05,$03,$03,$21,$7C,$13,$71	; Block 3x3 tiles from 7C21 to $7113
	DEFB	$05,$03,$03,$A0,$71,$17,$71	; Block 3x3 tiles from 71A0 to $7117
	DEFB	$05,$04,$03,$7B,$7E,$1C,$71	; Block 4x3 tiles from 7E7B to $711C
	DEFB	$05,$03,$03,$21,$7C,$C3,$70	; Block 3x3 tiles from 7C21 to $70C3
	DEFB	$05,$03,$03,$21,$7C,$C9,$70	; Block 3x3 tiles from 7C21 to $70C9
	DEFB	$05,$03,$03,$21,$7C,$22,$71	; Block 3x3 tiles from 7C21 to $7122
	DEFB	$05,$03,$03,$21,$7C,$25,$71	; Block 3x3 tiles from 7C21 to $7125
	DEFB	$FF	; End of sequence

; Room 80F6
L80F6:	DEFW	LB452	; Room procedure
	DEFW	LA38E	; Initialization
	DEFW	L80A7	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$03,$FF,$02,$10,$AC,$65	; Rectangle 2x16 tiles with $FF at $65AC
	DEFB	$05,$02,$04,$BB,$71,$F1,$70	; Block 2x4 tiles from 71BB to $70F1
	DEFB	$05,$03,$03,$21,$7C,$BA,$70	; Block 3x3 tiles from 7C21 to $70BA
	DEFB	$05,$03,$03,$21,$7C,$12,$71	; Block 3x3 tiles from 7C21 to $7112
	DEFB	$05,$03,$03,$21,$7C,$15,$71	; Block 3x3 tiles from 7C21 to $7115
	DEFB	$05,$03,$03,$21,$7C,$6F,$70	; Block 3x3 tiles from 7C21 to $706F
	DEFB	$05,$03,$03,$21,$7C,$C7,$70	; Block 3x3 tiles from 7C21 to $70C7
	DEFB	$05,$03,$03,$21,$7C,$CB,$70	; Block 3x3 tiles from 7C21 to $70CB
	DEFB	$05,$03,$03,$21,$7C,$1F,$71	; Block 3x3 tiles from 7C21 to $711F
	DEFB	$05,$03,$03,$21,$7C,$22,$71	; Block 3x3 tiles from 7C21 to $7122
	DEFB	$05,$03,$03,$21,$7C,$25,$71	; Block 3x3 tiles from 7C21 to $7125
	DEFB	$05,$04,$03,$7B,$7E,$1A,$71	; Block 4x3 tiles from 7E7B to $711A
	DEFB	$05,$02,$01,$8A,$7E,$55,$71	; Block 2x1 tiles from 7E8A to $7155
	DEFB	$FF	; End of sequence

; Room 8162
L8162:	DEFW	LB458	; Room procedure
	DEFW	LA1C0	; Initialization
	DEFW	L81E5	; Room to Left
	DEFW	$0000
	DEFW	L8321	; Room Up
	DEFW	L7BD2	; Room Down
	DEFB	$03,$01,$1C,$08,$80,$66	; Rectangle 28x8 tiles with $01 at $6680
	DEFB	$02,$1C,$FF,$62,$66	; Fill horz 28 tiles with $FF at $6662
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$0D,$FF,$90,$65	; Fill horz 13 tiles with $FF at $6590
	DEFB	$02,$07,$FF,$A7,$65	; Fill horz 7 tiles with $FF at $65A7
	DEFB	$0C,$E3,$81,$02,$0F,$CA,$65	; Block 2 tiles from 81E3 to $65CA copy 15 times
	DEFB	$0C,$48,$73,$02,$07,$A0,$65	; Block 2 tiles from 7348 to $65A0 copy 7 times
	DEFB	$05,$02,$04,$BB,$71,$E7,$6F	; Block 2x4 tiles from 71BB to $6FE7
	DEFB	$05,$03,$04,$0C,$7C,$EF,$70	; Block 3x4 tiles from 7C0C to $70EF
	DEFB	$05,$03,$03,$18,$7C,$10,$71	; Block 3x3 tiles from 7C18 to $7110
	DEFB	$05,$03,$03,$18,$7C,$1D,$71	; Block 3x3 tiles from 7C18 to $711D
	DEFB	$05,$03,$04,$0C,$7C,$04,$71	; Block 3x4 tiles from 7C0C to $7104
	DEFB	$05,$03,$03,$18,$7C,$25,$71	; Block 3x3 tiles from 7C18 to $7125
	DEFB	$0E,$2A,$A8,$6F		; Put tile $2A at $6FA8
	DEFB	$01,$05,$2B,$C6,$6F	; Fill vert 5 tiles with $2B at $6FC6
	DEFB	$0E,$2A,$AF,$6F		; Put tile $2A at $6FAF
	DEFB	$01,$05,$2B,$CD,$6F	; Fill vert 5 tiles with $2B at $6FCD
	DEFB	$0E,$2A,$BC,$6F		; Put tile $2A at $6FBC
	DEFB	$01,$05,$2B,$DA,$6F	; Fill vert 5 tiles with $2B at $6FDA
	DEFB	$0C,$2C,$7C,$02,$01,$7E,$67	; Block 2 tiles from 7C2C to $677E copy 1 times
	DEFB	$FF	; End of sequence

; Blocks for rooms
L81E3:	DEFB	$FF,$FF	; Block 2x1

; Room 81E5
L81E5:	DEFW	LB452	; Room procedure
	DEFW	LA353	; Initialization
	DEFW	L8238	; Room to Left
	DEFW	L8162	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$03,$FF,$1E,$09,$80,$66	; Rectangle 30x9 tiles with $FF at $6680
	DEFB	$03,$01,$1C,$07,$A0,$66	; Rectangle 28x7 tiles with $01 at $66A0
	DEFB	$02,$05,$00,$80,$66	; Fill horz 5 tiles with $00 at $6680
	DEFB	$02,$06,$FF,$9E,$66	; Fill horz 6 tiles with $FF at $669E
	DEFB	$02,$0C,$FF,$90,$65	; Fill horz 12 tiles with $FF at $6590
	DEFB	$02,$0B,$FF,$A3,$65	; Fill horz 11 tiles with $FF at $65A3
	DEFB	$06,$FF,$02,$AE,$65	; Triangle with $FF, count=2 at $65AE
	DEFB	$0E,$2A,$AC,$6F		; Put tile $2A at $6FAC
	DEFB	$0E,$2A,$B8,$6F		; Put tile $2A at $6FB8
	DEFB	$01,$06,$2B,$CA,$6F	; Fill vert 6 tiles with $2B at $6FCA
	DEFB	$01,$05,$2B,$D6,$6F	; Fill vert 5 tiles with $2B at $6FD6
	DEFB	$02,$0A,$01,$94,$66	; Fill horz 10 tiles with $01 at $6694
	DEFB	$02,$18,$01,$A4,$66	; Fill horz 24 tiles with $01 at $66A4
	DEFB	$02,$0B,$FF,$75,$66	; Fill horz 11 tiles with $FF at $6675
	DEFB	$FF	; End of sequence

; Room 8238
L8238:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L81E5	; Room to Right
	DEFW	L8279	; Room Up
	DEFW	L7A17	; Room Down
	DEFB	$04,$FF	; Fill entire screen with $FF
	DEFB	$03,$00,$1C,$06,$EC,$65	; Rectangle 28x6 tiles with $00 at $65EC
	DEFB	$02,$0E,$00,$A0,$66	; Fill horz 14 tiles with $00 at $66A0
	DEFB	$0C,$B9,$71,$02,$11,$98,$65	; Block 2 tiles from 71B9 to $6598 copy 17 times
	DEFB	$0C,$48,$73,$02,$07,$F2,$65	; Block 2 tiles from 7348 to $65F2 copy 7 times
	DEFB	$05,$02,$01,$84,$79,$C4,$66	; Block 2x1 tiles from 7984 to $66C4
	DEFB	$0E,$2A,$E4,$6F		; Put tile $2A at $6FE4
	DEFB	$0E,$2A,$F8,$6F		; Put tile $2A at $6FF8
	DEFB	$01,$06,$2B,$02,$70	; Fill vert 6 tiles with $2B at $7002
	DEFB	$01,$05,$2B,$16,$70	; Fill vert 5 tiles with $2B at $7016
	DEFB	$FF	; End of sequence

; Room 8279
L8279:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L82DD	; Room to Right
	DEFW	$0000
	DEFW	L8238	; Room Down
	DEFB	$0C,$E3,$81,$02,$11,$90,$65	; Block 2 tiles from 81E3 to $6590 copy 17 times
	DEFB	$07,$FF,$04,$BE,$66	; Triangle with $FF, count=4 at $66BE
	DEFB	$02,$0F,$FF,$34,$67	; Fill horz 15 tiles with $FF at $6734
	DEFB	$02,$15,$FF,$52,$67	; Fill horz 21 tiles with $FF at $6752
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$03,$03,$21,$7C,$A5,$70	; Block 3x3 tiles from 7C21 to $70A5
	DEFB	$05,$03,$03,$21,$7C,$C7,$70	; Block 3x3 tiles from 7C21 to $70C7
	DEFB	$05,$03,$03,$21,$7C,$DB,$70	; Block 3x3 tiles from 7C21 to $70DB
	DEFB	$05,$03,$03,$21,$7C,$FD,$70	; Block 3x3 tiles from 7C21 to $70FD
	DEFB	$05,$03,$03,$21,$7C,$00,$71	; Block 3x3 tiles from 7C21 to $7100
	DEFB	$05,$03,$03,$21,$7C,$21,$71	; Block 3x3 tiles from 7C21 to $7121
	DEFB	$05,$03,$03,$21,$7C,$24,$71	; Block 3x3 tiles from 7C21 to $7124
	DEFB	$05,$02,$03,$84,$79,$3C,$67	; Block 2x3 tiles from 7984 to $673C
	DEFB	$0E,$00,$BE,$66	; Put tile $00 at $66BE
	DEFB	$FF	; End of sequence

; Room 82DD
L82DD:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8279	; Room to Left
	DEFW	L8321	; Room to Right
	DEFW	$0000
	DEFW	L81E5	; Room Down
	DEFB	$02,$0D,$FF,$70,$67	; Fill horz 13 tiles with $FF at $6770
	DEFB	$02,$07,$FF,$58,$67	; Fill horz 7 tiles with $FF at $6758
	DEFB	$02,$06,$FF,$64,$67	; Fill horz 6 tiles with $FF at $6764
	DEFB	$02,$0C,$FF,$82,$67	; Fill horz 12 tiles with $FF at $6782
	DEFB	$05,$03,$03,$21,$7C,$0C,$71	; Block 3x3 tiles from 7C21 to $710C
	DEFB	$05,$03,$03,$21,$7C,$0F,$71	; Block 3x3 tiles from 7C21 to $710F
	DEFB	$05,$03,$03,$21,$7C,$F5,$70	; Block 3x3 tiles from 7C21 to $70F5
	DEFB	$05,$03,$03,$A0,$71,$02,$71	; Block 3x3 tiles from 71A0 to $7102
	DEFB	$05,$04,$03,$7B,$7E,$25,$71	; Block 4x3 tiles from 7E7B to $7125
	DEFB	$FF	; End of sequence

; Room 8321
L8321:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L82DD	; Room to Left
	DEFW	$0000
	DEFW	L844E	; Room Up
	DEFW	L8162	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$02,$01,$84,$79,$80,$67	; Block 2x1 tiles from 7984 to $6780
	DEFB	$03,$FF,$03,$04,$AB,$65	; Rectangle 3x4 tiles with $FF at $65AB
	DEFB	$01,$0C,$EB,$24,$66	; Fill vert 12 tiles with $EB at $6624
	DEFB	$05,$04,$03,$7B,$7E,$0E,$71	; Block 4x3 tiles from 7E7B to $710E
	DEFB	$05,$04,$03,$7B,$7E,$B6,$70	; Block 4x3 tiles from 7E7B to $70B6
	DEFB	$05,$03,$03,$A0,$71,$13,$71	; Block 3x3 tiles from 71A0 to $7113
	DEFB	$05,$03,$03,$21,$7C,$18,$71	; Block 3x3 tiles from 7C21 to $7118
	DEFB	$05,$03,$03,$A0,$71,$1F,$71	; Block 3x3 tiles from 71A0 to $711F
	DEFB	$05,$03,$03,$A0,$71,$24,$71	; Block 3x3 tiles from 71A0 to $7124
	DEFB	$05,$02,$01,$8A,$7E,$5F,$71	; Block 2x1 tiles from 7E8A to $715F
	DEFB	$05,$04,$03,$7B,$7E,$C7,$70	; Block 4x3 tiles from 7E7B to $70C7
	DEFB	$0C,$48,$73,$02,$10,$A0,$65	; Block 2 tiles from 7348 to $65A0 copy 16 times
	DEFB	$FF	; End of sequence

; Room 8384
L8384:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L8076	; Room Up
	DEFW	L9376	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$0F,$07,$28,$66	; Rectangle 15x7 tiles with $02 at $6628
	DEFB	$02,$0F,$03,$0A,$66	; Fill horz 15 tiles with $03 at $660A
	DEFB	$03,$02,$06,$07,$3C,$66	; Rectangle 6x7 tiles with $02 at $663C
	DEFB	$02,$06,$03,$1E,$66	; Fill horz 6 tiles with $03 at $661E
	DEFB	$0C,$B9,$71,$02,$0C,$97,$65	; Block 2 tiles from 71B9 to $6597 copy 12 times
	DEFB	$0C,$B9,$71,$02,$11,$A4,$65	; Block 2 tiles from 71B9 to $65A4 copy 17 times
	DEFB	$05,$02,$05,$84,$79,$FC,$66	; Block 2x5 tiles from 7984 to $66FC
	DEFB	$05,$02,$01,$84,$79,$0C,$67	; Block 2x1 tiles from 7984 to $670C
	DEFB	$01,$11,$FD,$A2,$65	; Fill vert 17 tiles with $FD at $65A2
	DEFB	$05,$01,$04,$52,$7B,$9A,$65	; Block 1x4 tiles from 7B52 to $659A
	DEFB	$05,$01,$04,$52,$7B,$9E,$65	; Block 1x4 tiles from 7B52 to $659E
	DEFB	$05,$01,$04,$52,$7B,$A9,$65	; Block 1x4 tiles from 7B52 to $65A9
	DEFB	$05,$01,$05,$4F,$7B,$02,$67	; Block 1x5 tiles from 7B4F to $6702
	DEFB	$05,$01,$05,$4F,$7B,$11,$67	; Block 1x5 tiles from 7B4F to $6711
	DEFB	$FF	; End of sequence

; Room 83ED
L83ED:	DEFW	LB452	; Room procedure
	DEFW	LA361	; Initialization
	DEFW	$0000
	DEFW	L920A	; Room to Right
	DEFW	L913F	; Room Up
	DEFW	L7E05	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$0C,$48,$73,$02,$10,$99,$65	; Block 2 tiles from 7348 to $6599 copy 16 times
	DEFB	$05,$02,$01,$84,$79,$79,$67	; Block 2x1 tiles from 7984 to $6779
	DEFB	$03,$FF,$03,$04,$90,$65	; Rectangle 3x4 tiles with $FF at $6590
	DEFB	$02,$02,$FF,$93,$65	; Fill horz 2 tiles with $FF at $6593
	DEFB	$01,$0C,$EB,$09,$66	; Fill vert 12 tiles with $EB at $6609
	DEFB	$05,$03,$04,$0C,$7C,$F2,$70	; Block 3x4 tiles from 7C0C to $70F2
	DEFB	$05,$03,$03,$A0,$71,$0E,$71	; Block 3x3 tiles from 71A0 to $710E
	DEFB	$05,$02,$01,$8A,$7E,$4E,$71	; Block 2x1 tiles from 7E8A to $714E
	DEFB	$05,$04,$03,$7B,$7E,$C4,$70	; Block 4x3 tiles from 7E7B to $70C4
	DEFB	$05,$04,$03,$7B,$7E,$1B,$71	; Block 4x3 tiles from 7E7B to $711B
	DEFB	$05,$03,$04,$0C,$7C,$06,$71	; Block 3x4 tiles from 7C0C to $7106
	DEFB	$05,$04,$03,$7B,$7E,$21,$71	; Block 4x3 tiles from 7E7B to $7121
	DEFB	$FF	; End of sequence

; Room 844E
L844E:	DEFW	LB452	; Room procedure
	DEFW	LA37F	; Initialization
	DEFW	L84A8	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L8321	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$06,$FF,$52,$67	; Fill horz 6 tiles with $FF at $6752
	DEFB	$03,$FF,$03,$04,$AB,$65	; Rectangle 3x4 tiles with $FF at $65AB
	DEFB	$01,$0C,$EB,$24,$66	; Fill vert 12 tiles with $EB at $6624
	DEFB	$05,$02,$01,$84,$79,$80,$67	; Block 2x1 tiles from 7984 to $6780
	DEFB	$05,$03,$03,$A0,$71,$F0,$70	; Block 3x3 tiles from 71A0 to $70F0
	DEFB	$05,$03,$03,$A0,$71,$12,$71	; Block 3x3 tiles from 71A0 to $7112
	DEFB	$00,$BE,$70	; Barrel 3x3 tiles at $70BE
	DEFB	$00,$16,$71	; Barrel 3x3 tiles at $7116
	DEFB	$00,$19,$71	; Barrel 3x3 tiles at $7119
	DEFB	$05,$04,$03,$7B,$7E,$1F,$71	; Block 4x3 tiles from 7E7B to $711F
	DEFB	$05,$03,$04,$9C,$84,$07,$71	; Block 3x4 tiles from 849C to $7107
	DEFB	$FF	; End of sequence

; Blocks for rooms
L849C:	DEFB	$00,$01,$02	; Front block 3x4
	DEFB	$03,$04,$05
	DEFB	$03,$04,$05
	DEFB	$06,$07,$08

; Room 84A8
L84A8:	DEFW	LB41F	; Room procedure
	DEFW	LF973	; Initialization
	DEFW	L84EE	; Room to Left
	DEFW	L844E	; Room to Right
	DEFW	$0000
	DEFW	L82DD	; Room Down
	DEFB	$03,$FF,$0D,$02,$52,$67	; Rectangle 13x2 tiles with $FF at $6752
	DEFB	$03,$FF,$0C,$02,$64,$67	; Rectangle 12x2 tiles with $FF at $6764
	DEFB	$02,$03,$FF,$BC,$65	; Fill horz 3 tiles with $FF at $65BC
	DEFB	$02,$0D,$FF,$9A,$65	; Fill horz 13 tiles with $FF at $659A
	DEFB	$00,$F0,$70	; Barrel 3x3 tiles at $70F0
	DEFB	$00,$97,$70	; Barrel 3x3 tiles at $7097
	DEFB	$05,$04,$03,$7B,$7E,$04,$71	; Block 4x3 tiles from 7E7B to $7104
	DEFB	$05,$05,$03,$DF,$84,$F2,$70	; Block 5x3 tiles from 84DF to $70F2
	DEFB	$FF	; End of sequence

; Blocks for rooms
L84DF:	DEFB	$00,$01,$01,$01,$02	; Front block 5x3 - box
	DEFB	$03,$04,$04,$04,$05
	DEFB	$06,$07,$07,$07,$08

; Room 84EE
L84EE:	DEFW	L7918	; Room procedure
	DEFW	LA10B	; Initialization
	DEFW	$0000
	DEFW	L84A8	; Room to Right
	DEFW	L8526	; Room Up
	DEFW	$0000
	DEFB	$03,$FF,$02,$0F,$90,$65	; Rectangle 2x15 tiles with $FF at $6590
	DEFB	$03,$FF,$1E,$02,$52,$67	; Rectangle 30x2 tiles with $FF at $6752
	DEFB	$0C,$48,$73,$02,$0F,$98,$65	; Block 2 tiles from 7348 to $6598 copy 15 times
	DEFB	$00,$F0,$70	; Barrel 3x3 tiles at $70F0
	DEFB	$00,$F3,$70	; Barrel 3x3 tiles at $70F3
	DEFB	$00,$4D,$70	; Barrel 3x3 tiles at $704D
	DEFB	$00,$A6,$70	; Barrel 3x3 tiles at $70A6
	DEFB	$00,$A9,$70	; Barrel 3x3 tiles at $70A9
	DEFB	$00,$FE,$70	; Barrel 3x3 tiles at $70FE
	DEFB	$00,$01,$71	; Barrel 3x3 tiles at $7101
	DEFB	$00,$04,$71	; Barrel 3x3 tiles at $7104
	DEFB	$FF	; End of sequence

; Room 8526
L8526:	DEFW	LB483	; Room procedure
	DEFW	LA179	; Initialization
	DEFW	$0000
	DEFW	L858F	; Room to Right
	DEFW	L8608	; Room Up
	DEFW	L84EE	; Room Down
	DEFB	$0C,$E3,$81,$02,$10,$90,$65	; Block 2 tiles from 81E3 to $6590 copy 16 times
	DEFB	$0C,$48,$73,$02,$10,$98,$65	; Block 2 tiles from 7348 to $6598 copy 16 times
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$02,$01,$84,$79,$78,$67	; Block 2x1 tiles from 7984 to $6778
	DEFB	$00,$B4,$70	; Barrel 3x3 tiles at $70B4
	DEFB	$00,$0F,$71	; Barrel 3x3 tiles at $710F
	DEFB	$00,$26,$71	; Barrel 3x3 tiles at $7126
	DEFB	$05,$02,$02,$77,$85,$38,$71	; Block 2x2 tiles from 8577 to $7138
	DEFB	$05,$03,$04,$9C,$84,$00,$71	; Block 3x4 tiles from 849C to $7100
	DEFB	$05,$02,$02,$77,$85,$3E,$71	; Block 2x2 tiles from 8577 to $713E
	DEFB	$05,$02,$02,$77,$85,$41,$71	; Block 2x2 tiles from 8577 to $7141
	DEFB	$02,$06,$FF,$9F,$65	; Fill horz 6 tiles with $FF at $659F
	DEFB	$FF	; End of sequence

; Blocks for rooms
L8577:	DEFB	$00,$02	; Front block 2x2 - box
	DEFB	$06,$08
L857B:	DEFB	$00,$01,$01,$01,$02	; Front block 5x4 - box
	DEFB	$03,$04,$04,$04,$05
	DEFB	$03,$04,$04,$04,$05
	DEFB	$06,$07,$07,$07,$08

; Room 858F
L858F:	DEFW	L7918	; Room procedure
	DEFW	LA106	; Initialization
	DEFW	L8526	; Room to Left
	DEFW	L85BD	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$05,$04,$7B,$85,$F2,$70	; Block 5x4 tiles from 857B to $70F2
	DEFB	$05,$05,$04,$7B,$85,$F9,$70	; Block 5x4 tiles from 857B to $70F9
	DEFB	$05,$02,$01,$8A,$7E,$4E,$71	; Block 2x1 tiles from 7E8A to $714E
	DEFB	$05,$03,$03,$A0,$71,$1E,$71	; Block 3x3 tiles from 71A0 to $711E
	DEFB	$FF	; End of sequence

; Room 85BD
L85BD:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L858F	; Room to Left
	DEFW	$0000
	DEFW	L8689	; Room Up
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$03,$FF,$03,$04,$AB,$65	; Rectangle 3x4 tiles with $FF at $65AB
	DEFB	$01,$0C,$EB,$24,$66	; Fill vert 12 tiles with $EB at $6624
	DEFB	$0C,$48,$73,$02,$10,$9D,$65	; Block 2 tiles from 7348 to $659D copy 16 times
	DEFB	$00,$04,$70		; Barrel 3x3 tiles at $7004
	DEFB	$00,$5D,$70		; Barrel 3x3 tiles at $705D
	DEFB	$00,$60,$70		; Barrel 3x3 tiles at $7060
	DEFB	$00,$B5,$70		; Barrel 3x3 tiles at $70B5
	DEFB	$00,$B8,$70		; Barrel 3x3 tiles at $70B8
	DEFB	$00,$BB,$70		; Barrel 3x3 tiles at $70BB
	DEFB	$00,$0E,$71		; Barrel 3x3 tiles at $710E
	DEFB	$00,$11,$71		; Barrel 3x3 tiles at $7111
	DEFB	$00,$14,$71		; Barrel 3x3 tiles at $7114
	DEFB	$00,$1D,$71		; Barrel 3x3 tiles at $711D
	DEFB	$00,$21,$71		; Barrel 3x3 tiles at $7121
	DEFB	$00,$24,$71		; Barrel 3x3 tiles at $7124
	DEFB	$00,$17,$71		; Barrel 3x3 tiles at $7117
	DEFB	$FF	; End of sequence

; Room 8608
L8608:	DEFW	LB452	; Room procedure
	DEFW	LA37A	; Initialization
	DEFW	$0000
	DEFW	L86FD	; Room to Right
	DEFW	$0000
	DEFW	L8526	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$1C,$FF,$82,$66	; Fill horz 28 tiles with $FF at $6682
	DEFB	$02,$0C,$FF,$74,$66	; Fill horz 12 tiles with $FF at $6674
	DEFB	$0C,$E3,$81,$02,$10,$90,$65	; Block 2 tiles from 81E3 to $6590 copy 16 times
	DEFB	$02,$0E,$FF,$92,$65	; Fill horz 14 tiles with $FF at $6592
	DEFB	$0C,$E3,$81,$02,$07,$BA,$66	; Block 2 tiles from 81E3 to $66BA copy 7 times
	DEFB	$05,$02,$01,$84,$79,$78,$67	; Block 2x1 tiles from 7984 to $6778
	DEFB	$05,$03,$03,$A0,$71,$C4,$6F	; Block 3x3 tiles from 71A0 to $6FC4
	DEFB	$05,$04,$03,$7B,$7E,$1E,$70	; Block 4x3 tiles from 7E7B to $701E
	DEFB	$05,$03,$03,$A0,$71,$24,$70	; Block 3x3 tiles from 71A0 to $7024
	DEFB	$00,$28,$70		; Barrel 3x3 tiles at $7028
	DEFB	$05,$03,$03,$18,$7C,$11,$70	; Block 3x3 tiles from 7C18 to $7011
	DEFB	$05,$03,$04,$0C,$7C,$F7,$6F	; Block 3x4 tiles from 7C0C to $6FF7
	DEFB	$05,$03,$03,$18,$7C,$18,$71	; Block 3x3 tiles from 7C18 to $7118
	DEFB	$00,$B5,$70		; Barrel 3x3 tiles at $70B5
	DEFB	$00,$0E,$71		; Barrel 3x3 tiles at $710E
	DEFB	$00,$11,$71		; Barrel 3x3 tiles at $7111
	DEFB	$00,$C4,$70		; Barrel 3x3 tiles at $70C4
	DEFB	$00,$C8,$70		; Barrel 3x3 tiles at $70C8
	DEFB	$00,$CB,$70		; Barrel 3x3 tiles at $70CB
	DEFB	$00,$1C,$71		; Barrel 3x3 tiles at $711C
	DEFB	$00,$1F,$71		; Barrel 3x3 tiles at $711F
	DEFB	$00,$22,$71		; Barrel 3x3 tiles at $7122
	DEFB	$00,$25,$71		; Barrel 3x3 tiles at $7125
	DEFB	$FF	; End of sequence

; Room 8689
L8689:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L86FD	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L85BD	; Room Down
	DEFB	$02,$39,$FF,$BC,$66	; Fill horz 57 tiles with $FF at $66BC
	DEFB	$03,$FF,$03,$11,$AB,$65	; Rectangle 3x17 tiles with $FF at $65AB
	DEFB	$05,$02,$02,$84,$79,$C9,$66	; Block 2x2 tiles from 7984 to $66C9
	DEFB	$0C,$48,$73,$02,$05,$05,$67	; Block 2 tiles from 7348 to $6705 copy 5 times
	DEFB	$05,$03,$03,$18,$7C,$67,$70	; Block 3x3 tiles from 7C18 to $7067
	DEFB	$05,$04,$02,$F5,$86,$21,$70	; Block 4x2 tiles from 86F5 to $7021
	DEFB	$05,$04,$03,$7B,$7E,$5B,$70	; Block 4x3 tiles from 7E7B to $705B
	DEFB	$05,$03,$03,$A0,$71,$60,$70	; Block 3x3 tiles from 71A0 to $7060
	DEFB	$05,$03,$01,$87,$7E,$96,$70	; Block 3x1 tiles from 7E87 to $7096
	DEFB	$05,$05,$03,$DF,$84,$B9,$6F	; Block 5x3 tiles from 84DF to $6FB9
	DEFB	$05,$03,$03,$A0,$71,$12,$70	; Block 3x3 tiles from 71A0 to $7012
	DEFB	$05,$04,$03,$7B,$7E,$15,$70	; Block 4x3 tiles from 7E7B to $7015
	DEFB	$05,$04,$03,$7B,$7E,$6B,$70	; Block 4x3 tiles from 7E7B to $706B
	DEFB	$05,$04,$03,$7B,$7E,$6F,$70	; Block 4x3 tiles from 7E7B to $706F
	DEFB	$FF	; End of sequence

; Blocks for rooms
L86F5:	DEFB	$00,$01,$01,$02	; Front block 4x2 - box
	DEFB	$06,$07,$07,$08

; Room 86FD
L86FD:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8608	; Room to Left
	DEFW	L8689	; Room to Right
	DEFW	L8739	; Room Up
	DEFW	$0000
	DEFB	$06,$FF,$04,$16,$67	; Triangle with $FF, count=4 at $6716
	DEFB	$02,$41,$FF,$BC,$66	; Fill horz 65 tiles with $FF at $66BC
	DEFB	$07,$FF,$02,$87,$66	; Triangle with $FF, count=2 at $6687
	DEFB	$03,$FF,$07,$03,$62,$66	; Rectangle 7x3 tiles with $FF at $6662
	DEFB	$0C,$48,$73,$02,$07,$93,$65	; Block 2 tiles from 7348 to $6593 copy 7 times
	DEFB	$05,$04,$07,$AA,$79,$E6,$6F	; Block 4x7 tiles from 79AA to $6FE6
	DEFB	$00,$0E,$70		; Barrel 3x3 tiles at $700E
	DEFB	$00,$66,$70		; Barrel 3x3 tiles at $7066
	DEFB	$00,$69,$70		; Barrel 3x3 tiles at $7069
	DEFB	$00,$6F,$70		; Barrel 3x3 tiles at $706F
	DEFB	$FF	; End of sequence

; Room 8739
L8739:	DEFW	L7918	; Room procedure
	DEFW	LA101	; Initialization
	DEFW	L8799	; Room to Left
	DEFW	L8802	; Room to Right
	DEFW	$0000
	DEFW	L86FD	; Room Down
	DEFB	$01,$09,$3A,$94,$65	; Fill vert 9 tiles with $3A at $6594
	DEFB	$01,$09,$3A,$9E,$65	; Fill vert 9 tiles with $3A at $659E
	DEFB	$01,$09,$3A,$A1,$65	; Fill vert 9 tiles with $3A at $65A1
	DEFB	$01,$05,$3A,$A8,$65	; Fill vert 5 tiles with $3A at $65A8
	DEFB	$02,$78,$FF,$9E,$66	; Fill horz 120 tiles with $FF at $669E
	DEFB	$05,$02,$04,$84,$79,$A1,$66	; Block 2x4 tiles from 7984 to $66A1
	DEFB	$0C,$48,$73,$02,$04,$19,$67	; Block 2 tiles from 7348 to $6719 copy 4 times
	DEFB	$05,$02,$04,$BB,$71,$2E,$70	; Block 2x4 tiles from 71BB to $702E
	DEFB	$05,$03,$03,$18,$7C,$44,$70	; Block 3x3 tiles from 7C18 to $7044
	DEFB	$05,$03,$04,$0C,$7C,$23,$70	; Block 3x4 tiles from 7C0C to $7023
	DEFB	$05,$03,$04,$0C,$7C,$33,$70	; Block 3x4 tiles from 7C0C to $7033
	DEFB	$FF	; End of sequence

; Blocks for rooms
L8789:	DEFB	$00,$01,$01,$02	; Front block 4x4
	DEFB	$03,$04,$04,$05
	DEFB	$03,$04,$04,$05
	DEFB	$06,$07,$07,$08

; Room 8799
L8799:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L8739	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$01,$0F,$3A,$98,$65	; Fill vert 15 tiles with $3A at $6598
	DEFB	$01,$0B,$3A,$9D,$65	; Fill vert 11 tiles with $3A at $659D
	DEFB	$01,$09,$3A,$A1,$65	; Fill vert 9 tiles with $3A at $65A1
	DEFB	$01,$09,$3A,$A4,$65	; Fill vert 9 tiles with $3A at $65A4
	DEFB	$01,$09,$3A,$A7,$65	; Fill vert 9 tiles with $3A at $65A7
	DEFB	$01,$09,$3A,$AB,$65	; Fill vert 9 tiles with $3A at $65AB
	DEFB	$0C,$E3,$81,$02,$0F,$90,$65	; Block 2 tiles from 81E3 to $6590 copy 15 times
	DEFB	$03,$FF,$10,$02,$52,$67	; Rectangle 16x2 tiles with $FF at $6752
	DEFB	$03,$FF,$0E,$04,$AE,$66	; Rectangle 14x4 tiles with $FF at $66AE
	DEFB	$08,$FF,$06,$AD,$66	; Triangle with $FF, count=6 at $66AD
	DEFB	$06,$FF,$04,$26,$67	; Triangle with $FF, count=4 at $6726
	DEFB	$02,$08,$FA,$CE,$65	; Fill horz 8 tiles with $FA at $65CE
	DEFB	$05,$03,$03,$A0,$71,$78,$70	; Block 3x3 tiles from 71A0 to $7078
	DEFB	$05,$04,$04,$89,$87,$D2,$70	; Block 4x4 tiles from 8789 to $70D2
	DEFB	$05,$04,$07,$8E,$79,$7F,$70	; Block 4x7 tiles from 798E to $707F
	DEFB	$05,$04,$07,$8E,$79,$28,$70	; Block 4x7 tiles from 798E to $7028
	DEFB	$FF	; End of sequence

; Room 8802
L8802:	DEFW	LB452	; Room procedure
	DEFW	LA375	; Initialization
	DEFW	L8739	; Room to Left
	DEFW	$0000
	DEFW	L8834	; Room Up
	DEFW	$0000
	DEFB	$01,$09,$3A,$9D,$65	; Fill vert 9 tiles with $3A at $659D
	DEFB	$01,$08,$3A,$A2,$65	; Fill vert 8 tiles with $3A at $65A2
	DEFB	$03,$FF,$03,$11,$AB,$65	; Rectangle 3x17 tiles with $FF at $65AB
	DEFB	$02,$84,$FF,$92,$66	; Fill horz 132 tiles with $FF at $6692
	DEFB	$00,$42,$70		; Barrel 3x3 tiles at $7042
	DEFB	$00,$46,$70		; Barrel 3x3 tiles at $7046
	DEFB	$00,$2F,$70		; Barrel 3x3 tiles at $702F
	DEFB	$0C,$48,$73,$02,$08,$A7,$65	; Block 2 tiles from 7348 to $65A7 copy 8 times
	DEFB	$FF	; End of sequence

; Room 8834
L8834:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L889F	; Room to Left
	DEFW	L890E	; Room to Right
	DEFW	L8A81	; Room Up
	DEFW	L8802	; Room Down
	DEFB	$01,$0B,$3A,$EC,$65	; Fill vert 11 tiles with $3A at $65EC
	DEFB	$01,$0E,$3A,$97,$65	; Fill vert 14 tiles with $3A at $6597
	DEFB	$01,$10,$3A,$9D,$65	; Fill vert 16 tiles with $3A at $659D
	DEFB	$01,$11,$3A,$A2,$65	; Fill vert 17 tiles with $3A at $65A2
	DEFB	$02,$0A,$FF,$84,$67	; Fill horz 10 tiles with $FF at $6784
	DEFB	$0C,$48,$73,$02,$10,$A7,$65	; Block 2 tiles from 7348 to $65A7 copy 16 times
	DEFB	$0E,$3A,$5C,$67		; Put tile $3A at $675C
	DEFB	$05,$02,$01,$9D,$88,$D3,$66	; Block 2x1 tiles from 889D to $66D3
	DEFB	$05,$02,$01,$84,$79,$87,$67	; Block 2x1 tiles from 7984 to $6787
	DEFB	$02,$07,$FA,$7A,$67	; Fill horz 7 tiles with $FA at $677A
	DEFB	$05,$01,$02,$98,$88,$5E,$67	; Block 1x2 tiles from 8898 to $675E
	DEFB	$02,$0C,$FA,$34,$67	; Fill horz 12 tiles with $FA at $6734
	DEFB	$02,$04,$FA,$80,$66	; Fill horz 4 tiles with $FA at $6680
	DEFB	$02,$04,$FA,$E0,$66	; Fill horz 4 tiles with $FA at $66E0
	DEFB	$02,$06,$FA,$CD,$66	; Fill horz 6 tiles with $FA at $66CD
	DEFB	$01,$03,$28,$88,$6F	; Fill vert 3 tiles with $28 at $6F88
	DEFB	$FF	; End of sequence

; Blocks for rooms
L8898:	DEFB	$F9	; Back block 1x1
L8899:	DEFB	$F8	; Back block 1x4
	DEFB	$F9
	DEFB	$F9
	DEFB	$F9
L889D:	DEFB	$EF,$EE	; Back block 2x1 - ladder on yellow

; Room 889F
L889F:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8953	; Room to Left
	DEFW	L8834	; Room to Right
	DEFW	L89B9	; Room Up
	DEFW	L8739	; Room Down
	DEFB	$01,$11,$3A,$94,$65	; Fill vert 17 tiles with $3A at $6594
	DEFB	$01,$11,$3A,$A8,$65	; Fill vert 17 tiles with $3A at $65A8
	DEFB	$01,$0C,$3A,$9C,$65	; Fill vert 12 tiles with $3A at $659C
	DEFB	$01,$06,$3A,$9F,$65	; Fill vert 6 tiles with $3A at $659F
	DEFB	$01,$06,$3A,$A3,$65	; Fill vert 6 tiles with $3A at $65A3
	DEFB	$01,$04,$3A,$24,$67	; Fill vert 4 tiles with $3A at $6724
	DEFB	$01,$06,$3A,$EB,$66	; Fill vert 6 tiles with $3A at $66EB
	DEFB	$02,$07,$63,$53,$66	; Fill horz 7 tiles with $63 at $6653
	DEFB	$01,$07,$3A,$19,$66	; Fill vert 7 tiles with $3A at $6619
	DEFB	$0E,$63,$55,$66		; Put tile $63 at $6655
	DEFB	$02,$04,$FA,$A2,$66	; Fill horz 4 tiles with $FA at $66A2
	DEFB	$02,$0A,$FA,$DA,$66	; Fill horz 10 tiles with $FA at $66DA
	DEFB	$02,$03,$FA,$04,$67	; Fill horz 3 tiles with $FA at $6704
L88EB:	DEFB	$02,$0B,$FA,$5F,$67	; Fill horz 11 tiles with $FA at $675F
	DEFB	$02,$06,$FA,$98,$66	; Fill horz 6 tiles with $FA at $6698
	DEFB	$02,$03,$FA,$4F,$67	; Fill horz 3 tiles with $FA at $674F
	DEFB	$02,$06,$FA,$6A,$67	; Fill horz 6 tiles with $FA at $676A
	DEFB	$05,$01,$01,$99,$88,$A4,$66	; Block 1x1 tiles from 8899 to $66A4
	DEFB	$05,$01,$04,$98,$88,$C2,$66	; Block 1x4 tiles from 8898 to $66C2
	DEFB	$FF	; End of sequence

; Room 890E
L890E:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8834	; Room to Left
	DEFW	L8BF0	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$01,$10,$3A,$99,$65	; Fill vert 16 tiles with $3A at $6599
	DEFB	$01,$10,$3A,$A1,$65	; Fill vert 16 tiles with $3A at $65A1
	DEFB	$01,$07,$3A,$B6,$66	; Fill vert 7 tiles with $3A at $66B6
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$03,$03,$18,$7C,$12,$71	; Block 3x3 tiles from 7C18 to $7112
	DEFB	$02,$05,$63,$19,$66	; Fill horz 5 tiles with $63 at $6619
	DEFB	$02,$03,$FA,$AE,$66	; Fill horz 3 tiles with $FA at $66AE
	DEFB	$02,$07,$FA,$97,$66	; Fill horz 7 tiles with $FA at $6697
	DEFB	$02,$09,$FA,$84,$66	; Fill horz 9 tiles with $FA at $6684
	DEFB	$01,$07,$F9,$F3,$65	; Fill vert 7 tiles with $F9 at $65F3
	DEFB	$0E,$F8,$89,$66		; Put tile $F8 at $6689
	DEFB	$FF	; End of sequence

; Room 8953
L8953:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L889F	; Room to Right
	DEFW	L89B9	; Room Up
	DEFW	L8799	; Room Down
	DEFB	$01,$11,$3A,$98,$65	; Fill vert 17 tiles with $3A at $6598
	DEFB	$01,$10,$3A,$9D,$65	; Fill vert 16 tiles with $3A at $659D
	DEFB	$01,$05,$3A,$A0,$65	; Fill vert 5 tiles with $3A at $65A0
	DEFB	$01,$09,$3A,$A3,$65	; Fill vert 9 tiles with $3A at $65A3
	DEFB	$01,$11,$3A,$AB,$65	; Fill vert 17 tiles with $3A at $65AB
	DEFB	$01,$07,$3A,$CD,$66	; Fill vert 7 tiles with $3A at $66CD
	DEFB	$01,$07,$3A,$D0,$66	; Fill vert 7 tiles with $3A at $66D0
	DEFB	$01,$02,$3A,$69,$67	; Fill vert 2 tiles with $3A at $6769
	DEFB	$0C,$E3,$81,$02,$11,$90,$65	; Block 2 tiles from 81E3 to $6590 copy 17 times
	DEFB	$0C,$48,$73,$02,$09,$95,$65	; Block 2 tiles from 7348 to $6595 copy 9 times
	DEFB	$02,$05,$63,$33,$66	; Fill horz 5 tiles with $63 at $6633
	DEFB	$02,$07,$FA,$A0,$66	; Fill horz 7 tiles with $FA at $66A0
	DEFB	$02,$08,$FA,$54,$67	; Fill horz 8 tiles with $FA at $6754
	DEFB	$02,$03,$FA,$7C,$67	; Fill horz 3 tiles with $FA at $677C
	DEFB	$02,$05,$FA,$AE,$66	; Fill horz 5 tiles with $FA at $66AE
	DEFB	$02,$06,$FA,$47,$67	; Fill horz 6 tiles with $FA at $6747
L89B3:	DEFB	$02,$17,$FA,$E1,$66	; Fill horz 23 tiles with $FA at $66E1
	DEFB	$FF	; End of sequence

; Room 89B9
L89B9:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L8A2D	; Room to Right
	DEFW	$0000
	DEFW	L8953	; Room Down
	DEFB	$0E,$3A,$B6,$66		; Put tile $3A at $66B6
	DEFB	$0E,$3A,$2A,$67		; Put tile $3A at $672A
	DEFB	$01,$08,$3A,$AB,$66	; Fill vert 8 tiles with $3A at $66AB
	DEFB	$01,$08,$3A,$B9,$66	; Fill vert 8 tiles with $3A at $66B9
	DEFB	$01,$02,$3A,$62,$67	; Fill vert 2 tiles with $3A at $6762
	DEFB	$01,$02,$3A,$65,$67	; Fill vert 2 tiles with $3A at $6765
	DEFB	$06,$FF,$0B,$90,$65	; Triangle with $FF, count=11 at $6590
	DEFB	$02,$13,$FF,$9B,$65	; Fill horz 19 tiles with $FF at $659B
	DEFB	$0C,$E3,$81,$02,$08,$9E,$66	; Block 2 tiles from 81E3 to $669E copy 8 times
	DEFB	$0C,$48,$73,$02,$0B,$2B,$66	; Block 2 tiles from 7348 to $662B copy 11 times
	DEFB	$05,$02,$01,$9D,$88,$75,$67	; Block 2x1 tiles from 889D to $6775
L8A00:	DEFB	$02,$0B,$FA,$77,$67	; Fill horz 11 tiles with $FA at $6777
	DEFB	$02,$04,$FA,$8B,$66	; Fill horz 4 tiles with $FA at $668B
	DEFB	$02,$05,$FA,$44,$67	; Fill horz 5 tiles with $FA at $6744
	DEFB	$02,$08,$FA,$96,$66	; Fill horz 8 tiles with $FA at $6696
	DEFB	$05,$01,$04,$98,$88,$F0,$66	; Block 1x4 tiles from 8898 to $66F0
	DEFB	$05,$01,$03,$98,$88,$D4,$66	; Block 1x3 tiles from 8898 to $66D4
	DEFB	$02,$02,$FA,$F0,$66	; Fill horz 2 tiles with $FA at $66F0
	DEFB	$02,$03,$FA,$0B,$67	; Fill horz 3 tiles with $FA at $670B
	DEFB	$FF	; End of sequence

; Room 8A2D
L8A2D:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L89B9	; Room to Left
	DEFW	L8A81	; Room to Right
	DEFW	L8B25	; Room Up
	DEFW	L889F	; Room Down
	DEFB	$01,$08,$3A,$A2,$66	; Fill vert 8 tiles with $3A at $66A2
	DEFB	$01,$08,$3A,$AD,$66	; Fill vert 8 tiles with $3A at $66AD
	DEFB	$01,$08,$3A,$B1,$66	; Fill vert 8 tiles with $3A at $66B1
	DEFB	$01,$05,$3A,$04,$67	; Fill vert 5 tiles with $3A at $6704
	DEFB	$02,$03,$FF,$90,$65	; Fill horz 3 tiles with $FF at $6590
L8A52:	DEFB	$02,$0F,$FA,$80,$66	; Fill horz 15 tiles with $FA at $6680
	DEFB	$02,$05,$FA,$8F,$66	; Fill horz 5 tiles with $FA at $668F
	DEFB	$0C,$48,$73,$02,$08,$A1,$65	; Block 2 tiles from 7348 to $65A1 copy 8 times
	DEFB	$02,$08,$FA,$55,$67	; Fill horz 8 tiles with $FA at $6755
	DEFB	$02,$05,$FA,$E2,$66	; Fill horz 5 tiles with $FA at $66E2
	DEFB	$02,$04,$FA,$86,$67	; Fill horz 4 tiles with $FA at $6786
	DEFB	$05,$01,$03,$99,$88,$E3,$66	; Block 1x3 tiles from 8899 to $66E3
	DEFB	$05,$01,$03,$98,$88,$3D,$67	; Block 1x3 tiles from 8898 to $673D
	DEFB	$FF	; End of sequence

; Room 8A81
L8A81:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8A2D	; Room to Left
	DEFW	L8AF4	; Room to Right
	DEFW	$0000
	DEFW	L8834	; Room Down
	DEFB	$01,$06,$3A,$E1,$66	; Fill vert 6 tiles with $3A at $66E1
	DEFB	$01,$0C,$3A,$33,$66	; Fill vert 12 tiles with $3A at $6633
	DEFB	$01,$05,$3A,$0A,$67	; Fill vert 5 tiles with $3A at $670A
	DEFB	$09,$FF,$04,$A7,$65	; Triangle with $FF, count=4 at $65A7
	DEFB	$06,$FF,$04,$A8,$65	; Triangle with $FF, count=4 at $65A8
	DEFB	$0C,$48,$73,$02,$0E,$01,$66	; Block 2 tiles from 7348 to $6601 copy 14 times
	DEFB	$05,$02,$01,$9D,$88,$F1,$66	; Block 2x1 tiles from 889D to $66F1
	DEFB	$05,$02,$01,$9D,$88,$4B,$67	; Block 2x1 tiles from 889D to $674B
	DEFB	$02,$05,$FA,$4D,$67	; Fill horz 5 tiles with $FA at $674D
	DEFB	$02,$06,$FA,$EB,$66	; Fill horz 6 tiles with $FA at $66EB
	DEFB	$02,$03,$FA,$C1,$66	; Fill horz 3 tiles with $FA at $66C1
	DEFB	$01,$04,$28,$0E,$71	; Fill vert 4 tiles with $28 at $710E
	DEFB	$02,$0B,$FA,$B8,$65	; Fill horz 11 tiles with $FA at $65B8
	DEFB	$05,$01,$05,$98,$88,$9D,$65	; Block 1x5 tiles from 8898 to $659D
	DEFB	$02,$03,$FA,$FF,$66	; Fill horz 3 tiles with $FA at $66FF
	DEFB	$02,$06,$FA,$1F,$67	; Fill horz 6 tiles with $FA at $671F
	DEFB	$05,$01,$04,$99,$88,$1E,$67	; Block 1x4 tiles from 8899 to $671E
	DEFB	$05,$01,$02,$98,$88,$E2,$66	; Block 1x2 tiles from 8898 to $66E2
	DEFB	$FF	; End of sequence

; Room 8AF4
L8AF4:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8A81	; Room to Left
	DEFW	L8C5A	; Room to Right
	DEFW	L8BAB	; Room Up
	DEFW	L890E	; Room Down
	DEFB	$01,$08,$3A,$A7,$66	; Fill vert 8 tiles with $3A at $66A7
	DEFB	$01,$08,$3A,$AF,$66	; Fill vert 8 tiles with $3A at $66AF
	DEFB	$02,$0B,$FA,$34,$67	; Fill horz 11 tiles with $FA at $6734
	DEFB	$02,$13,$FA,$88,$66	; Fill horz 19 tiles with $FA at $6688
	DEFB	$0C,$48,$73,$02,$08,$A4,$65	; Block 2 tiles from 7348 to $65A4 copy 8 times
	DEFB	$01,$06,$F9,$8E,$66	; Fill vert 6 tiles with $F9 at $668E
	DEFB	$0E,$F8,$8E,$66		; Put tile $F8 at $668E
	DEFB	$FF	; End of sequence

; Room 8B25
L8B25:	DEFW	LB483	; Room procedure
	DEFW	LA174	; Initialization
	DEFW	$0000
	DEFW	L8B71	; Room to Right
	DEFW	$0000
	DEFW	L8A2D	; Room Down
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$48,$FF,$90,$65	; Fill horz 72 tiles with $FF at $6590
	DEFB	$0C,$48,$73,$02,$0E,$DD,$65	; Block 2 tiles from 7348 to $65DD copy 14 times
	DEFB	$05,$02,$01,$84,$79,$81,$67	; Block 2x1 tiles from 7984 to $6781
	DEFB	$05,$04,$04,$A9,$71,$F7,$70	; Block 4x4 tiles from 71A9 to $70F7
	DEFB	$05,$04,$04,$A9,$71,$F5,$70	; Block 4x4 tiles from 71A9 to $70F5
	DEFB	$05,$04,$04,$A9,$71,$F0,$70	; Block 4x4 tiles from 71A9 to $70F0
	DEFB	$05,$04,$04,$A9,$71,$07,$71	; Block 4x4 tiles from 71A9 to $7107
	DEFB	$06,$FF,$0B,$EA,$65	; Triangle with $FF, count=11 at $65EA
	DEFB	$03,$FF,$03,$04,$F8,$66	; Rectangle 3x4 tiles with $FF at $66F8
	DEFB	$FF	; End of sequence

; Room 8B71
L8B71:	DEFW	L7918	; Room procedure
	DEFW	LA0FC	; Initialization
	DEFW	L8B25	; Room to Left
	DEFW	L8BAB	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$02,$3C,$FF,$90,$65	; Fill horz 60 tiles with $FF at $6590
	DEFB	$05,$04,$04,$A9,$71,$EF,$70	; Block 4x4 tiles from 71A9 to $70EF
	DEFB	$05,$04,$04,$A9,$71,$F5,$70	; Block 4x4 tiles from 71A9 to $70F5
	DEFB	$05,$04,$04,$A9,$71,$FB,$70	; Block 4x4 tiles from 71A9 to $70FB
	DEFB	$05,$04,$04,$A9,$71,$00,$71	; Block 4x4 tiles from 71A9 to $7100
	DEFB	$05,$04,$04,$A9,$71,$07,$71	; Block 4x4 tiles from 71A9 to $7107
	DEFB	$FF	; End of sequence

; Room 8BAB
L8BAB:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8B71	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L8AF4	; Room Down
	DEFB	$02,$3C,$FF,$90,$65	; Fill horz 60 tiles with $FF at $6590
	DEFB	$03,$FF,$02,$0E,$E8,$65	; Rectangle 2x14 tiles with $FF at $65E8
	DEFB	$02,$09,$FF,$70,$67	; Fill horz 9 tiles with $FF at $6770
	DEFB	$02,$10,$FF,$7E,$67	; Fill horz 16 tiles with $FF at $677E
	DEFB	$0C,$48,$73,$02,$0E,$E0,$65	; Block 2 tiles from 7348 to $65E0 copy 14 times
	DEFB	$05,$02,$01,$9D,$88,$84,$67	; Block 2x1 tiles from 889D to $6784
	DEFB	$05,$03,$03,$A0,$71,$1B,$71	; Block 3x3 tiles from 71A0 to $711B
	DEFB	$05,$04,$04,$A9,$71,$F2,$70	; Block 4x4 tiles from 71A9 to $70F2
	DEFB	$05,$04,$04,$A9,$71,$06,$71	; Block 4x4 tiles from 71A9 to $7106
	DEFB	$FF	; End of sequence

; Room 8BF0
L8BF0:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L890E	; Room to Left
	DEFW	L8CC8	; Room to Right
	DEFW	$0000
	DEFW	L9005	; Room Down
	DEFB	$01,$10,$3A,$93,$65	; Fill vert 16 tiles with $3A at $6593
	DEFB	$01,$08,$3A,$98,$65	; Fill vert 8 tiles with $3A at $6598
	DEFB	$01,$08,$3A,$9C,$65	; Fill vert 8 tiles with $3A at $659C
	DEFB	$01,$08,$3A,$A0,$65	; Fill vert 8 tiles with $3A at $65A0
	DEFB	$01,$08,$3A,$A3,$65	; Fill vert 8 tiles with $3A at $65A3
	DEFB	$01,$08,$3A,$A7,$65	; Fill vert 8 tiles with $3A at $65A7
	DEFB	$01,$08,$3A,$AB,$65	; Fill vert 8 tiles with $3A at $65AB
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$03,$FF,$04,$07,$B8,$66	; Rectangle 4x7 tiles with $FF at $66B8
	DEFB	$02,$17,$FF,$87,$66	; Fill horz 23 tiles with $FF at $6687
	DEFB	$0C,$48,$73,$02,$07,$B0,$66	; Block 2 tiles from 7348 to $66B0 copy 7 times
	DEFB	$05,$02,$01,$84,$79,$82,$67	; Block 2x1 tiles from 7984 to $6782
	DEFB	$02,$04,$FA,$80,$66	; Fill horz 4 tiles with $FA at $6680
	DEFB	$0E,$F9,$95,$65		; Put tile $F9 at $6595
	DEFB	$02,$06,$63,$31,$66	; Fill horz 6 tiles with $63 at $6631
	DEFB	$0E,$2A,$9D,$70		; Put tile $2A at $709D
	DEFB	$01,$06,$2B,$BB,$70	; Fill vert 6 tiles with $2B at $70BB
	DEFB	$01,$01,$FF,$89,$66	; Fill vert 1 tiles with $FF at $6689
	DEFB	$FF	; End of sequence

; Room 8C5A
L8C5A:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8AF4	; Room to Left
	DEFW	L8D18	; Room to Right
	DEFW	$0000
	DEFW	L8BF0	; Room Down
	DEFB	$01,$05,$3A,$DD,$66	; Fill vert 5 tiles with $3A at $66DD
	DEFB	$01,$0D,$3A,$F2,$65	; Fill vert 13 tiles with $3A at $65F2
	DEFB	$01,$0F,$3A,$D8,$65	; Fill vert 15 tiles with $3A at $65D8
	DEFB	$01,$07,$3A,$CC,$66	; Fill vert 7 tiles with $3A at $66CC
	DEFB	$01,$07,$3A,$CF,$66	; Fill vert 7 tiles with $3A at $66CF
	DEFB	$01,$0D,$3A,$1F,$66	; Fill vert 13 tiles with $3A at $661F
	DEFB	$01,$0D,$3A,$23,$66	; Fill vert 13 tiles with $3A at $6623
	DEFB	$09,$FF,$03,$A6,$65	; Triangle with $FF, count=3 at $65A6
	DEFB	$03,$FF,$07,$04,$A7,$65	; Rectangle 7x4 tiles with $FF at $65A7
	DEFB	$02,$0A,$FA,$B3,$65	; Fill horz 10 tiles with $FA at $65B3
	DEFB	$05,$01,$03,$98,$88,$98,$65	; Block 1x3 tiles from 8898 to $6598
	DEFB	$01,$03,$F9,$1B,$67	; Fill vert 3 tiles with $F9 at $671B
	DEFB	$02,$07,$FA,$73,$67	; Fill horz 7 tiles with $FA at $6773
	DEFB	$0E,$F8,$75,$67		; Put tile $F8 at $6775
L8CAE:	DEFB	$02,$0A,$FA,$BD,$66	; Fill horz 10 tiles with $FA at $66BD
	DEFB	$02,$04,$FA,$E5,$66	; Fill horz 4 tiles with $FA at $66E5
	DEFB	$02,$04,$FA,$AE,$66	; Fill horz 4 tiles with $FA at $66AE
	DEFB	$02,$03,$FA,$EF,$66	; Fill horz 3 tiles with $FA at $66EF
	DEFB	$02,$05,$FA,$2F,$67	; Fill horz 5 tiles with $FA at $672F
	DEFB	$FF	; End of sequence

; Room 8CC8
L8CC8:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8BF0	; Room to Left
	DEFW	L8E9C	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$01,$0C,$3A,$96,$65	; Fill vert 12 tiles with $3A at $6596
	DEFB	$01,$10,$3A,$9E,$65	; Fill vert 16 tiles with $3A at $659E
	DEFB	$01,$10,$3A,$A3,$65	; Fill vert 16 tiles with $3A at $65A3
	DEFB	$01,$10,$3A,$AA,$65	; Fill vert 16 tiles with $3A at $65AA
	DEFB	$07,$FF,$07,$A1,$66	; Triangle with $FF, count=7 at $66A1
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$03,$FF,$03,$08,$80,$66	; Rectangle 3x8 tiles with $FF at $6680
	DEFB	$02,$06,$63,$F5,$65	; Fill horz 6 tiles with $63 at $65F5
	DEFB	$02,$0A,$FA,$92,$66	; Fill horz 10 tiles with $FA at $6692
	DEFB	$05,$04,$07,$AA,$79,$9B,$70	; Block 4x7 tiles from 79AA to $709B
	DEFB	$05,$04,$07,$AA,$79,$3E,$70	; Block 4x7 tiles from 79AA to $703E
	DEFB	$05,$04,$07,$AA,$79,$00,$70	; Block 4x7 tiles from 79AA to $7000
	DEFB	$FF	; End of sequence

; Room 8D18
L8D18:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8C5A	; Room to Left
	DEFW	L8EE1	; Room to Right
	DEFW	L8D5C	; Room Up
	DEFW	L8CC8	; Room Down
	DEFB	$01,$03,$3A,$3A,$67	; Fill vert 3 tiles with $3A at $673A
	DEFB	$01,$03,$3A,$42,$67	; Fill vert 3 tiles with $3A at $6742
	DEFB	$01,$03,$3A,$4E,$67	; Fill vert 3 tiles with $3A at $674E
	DEFB	$01,$11,$3A,$A3,$65	; Fill vert 17 tiles with $3A at $65A3
	DEFB	$03,$FF,$0A,$04,$90,$65	; Rectangle 10x4 tiles with $FF at $6590
	DEFB	$0C,$48,$73,$02,$0D,$9A,$65	; Block 2 tiles from 7348 to $659A copy 13 times
L8D45:	DEFB	$02,$12,$FA,$16,$67	; Fill horz 18 tiles with $FA at $6716
	DEFB	$02,$06,$FA,$2E,$67	; Fill horz 6 tiles with $FA at $672E
	DEFB	$02,$05,$63,$74,$66	; Fill horz 5 tiles with $63 at $6674
	DEFB	$05,$02,$04,$BB,$71,$A1,$70	; Block 2x4 tiles from 71BB to $70A1
	DEFB	$FF	; End of sequence

; Room 8D5C
L8D5C:	DEFW	LB483	; Room procedure
	DEFW	LA1A1	; Initialization
	DEFW	L8DCA	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L8D18	; Room Down
	DEFB	$04,$01	; Fill entire screen with $01
	DEFB	$02,$3E,$FF,$90,$65	; Fill horz 62 tiles with $FF at $6590
	DEFB	$03,$FF,$02,$04,$EA,$65	; Rectangle 2x4 tiles with $FF at $65EA
	DEFB	$02,$04,$FF,$62,$66	; Fill horz 4 tiles with $FF at $6662
	DEFB	$09,$FF,$07,$E4,$65	; Triangle with $FF, count=7 at $65E4
	DEFB	$03,$FF,$05,$0C,$E5,$65	; Rectangle 5x12 tiles with $FF at $65E5
	DEFB	$02,$41,$FF,$4D,$67	; Fill horz 65 tiles with $FF at $674D
	DEFB	$05,$02,$02,$84,$79,$5C,$67	; Block 2x2 tiles from 7984 to $675C
	DEFB	$05,$03,$03,$A0,$71,$F2,$70	; Block 3x3 tiles from 71A0 to $70F2
	DEFB	$05,$03,$03,$A0,$71,$A3,$70	; Block 3x3 tiles from 71A0 to $70A3
	DEFB	$05,$03,$03,$A0,$71,$A7,$70	; Block 3x3 tiles from 71A0 to $70A7
	DEFB	$05,$03,$03,$A0,$71,$FC,$70	; Block 3x3 tiles from 71A0 to $70FC
	DEFB	$05,$03,$03,$A0,$71,$FF,$70	; Block 3x3 tiles from 71A0 to $70FF
	DEFB	$05,$03,$03,$A0,$71,$03,$71	; Block 3x3 tiles from 71A0 to $7103
L8DBB:	DEFB	$01,$01,$FF,$64,$66	; Fill vert 1 tiles with $FF at $6664
	DEFB	$0E,$2A,$78,$70		; Put tile $2A at $7078
	DEFB	$01,$06,$2B,$96,$70	; Fill vert 6 tiles with $2B at $7096
	DEFB	$FF	; End of sequence

; Room 8DCA (helicopter)
L8DCA:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L8D5C	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$01	; Fill entire screen with $01
	DEFB	$02,$3F,$FF,$90,$65	; Fill horz 63 tiles with $FF at $6590
	DEFB	$03,$FF,$02,$0D,$EA,$65	; Rectangle 2x13 tiles with $FF at $65EA
	DEFB	$02,$25,$FF,$69,$67	; Fill horz 37 tiles with $FF at $6769
	DEFB	$02,$0A,$91,$5A,$67	; Fill horz 10 tiles with $91 at $675A
	DEFB	$02,$17,$01,$93,$65	; Fill horz 23 tiles with $01 at $6593
	DEFB	$02,$1B,$E2,$AF,$65	; Fill horz 27 tiles with $E2 at $65AF
	DEFB	$0E,$FF,$E6,$65		; Put tile $FF at $65E6
	DEFB	$03,$FF,$03,$06,$E7,$65	; Rectangle 3x6 tiles with $FF at $65E7
	DEFB	$0E,$2A,$91,$70		; Put tile $2A at $7091
	DEFB	$01,$06,$2B,$AF,$70	; Fill vert 6 tiles with $2B at $70AF
	DEFB	$05,$04,$07,$47,$8E,$63,$70	; Block 4x7 tiles from 8E47 to $7063
	DEFB	$05,$02,$06,$6C,$8E,$89,$66	; Block 2x6 tiles from 8E6C to $6689
	DEFB	$05,$05,$01,$67,$8E,$3E,$67	; Block 5x1 tiles from 8E67 to $673E
	DEFB	$05,$01,$02,$63,$8E,$06,$67	; Block 1x2 tiles from 8E63 to $6706
	DEFB	$05,$03,$08,$78,$8E,$71,$66	; Block 3x8 tiles from 8E78 to $6671
	DEFB	$02,$11,$D4,$2C,$66	; Fill horz 17 tiles with $D4 at $662C
	DEFB	$05,$01,$02,$65,$8E,$34,$66	; Block 1x2 tiles from 8E65 to $6634
	DEFB	$05,$03,$04,$90,$8E,$56,$66	; Block 3x4 tiles from 8E90 to $6656
	DEFB	$03,$1B,$04,$04,$8B,$66	; Rectangle 4x4 tiles with $1B at $668B
	DEFB	$FF	; End of sequence

; Blocks for rooms
L8E47:	DEFB	$64,$65,$5A,$5A	; Front block 4x7
	DEFB	$5B,$FF,$5C,$63
	DEFB	$FF,$FF,$FF,$62
	DEFB	$5A,$5A,$61,$62
	DEFB	$5A,$5A,$5A,$60
	DEFB	$5A,$5A,$5A,$5F
	DEFB	$5D,$5A,$5A,$5E
L8E63:	DEFB	$23		; Block 1x2
	DEFB	$24
L8E65:	DEFB	$D3		; Block 1x2
	DEFB	$D2
L8E67:	DEFB	$E0,$D9,$D8,$D5,$E0	; Back block 5x1
L8E6C:	DEFB	$01,$DA		; Back block 2x6
	DEFB	$DC,$DB
	DEFB	$DD,$D7
	DEFB	$DE,$D6
	DEFB	$DF,$D6
	DEFB	$01,$E1
L8E78:	DEFB	$2F,$30,$01	; Back block 3x8
	DEFB	$2E,$28,$31
	DEFB	$2D,$28,$28
	DEFB	$2B,$28,$2C
	DEFB	$28,$28,$2A
	DEFB	$28,$29,$01
	DEFB	$27,$01,$01
	DEFB	$25,$26,$01
L8E90:	DEFB	$36,$01,$01	; Back block 3x4
	DEFB	$34,$35,$37
	DEFB	$28,$28,$01
	DEFB	$32,$33,$01

; Room 8E9C
L8E9C:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8CC8	; Room to Left
	DEFW	$0000
	DEFW	L8EE1	; Room Up
	DEFW	L8F20	; Room Down
	DEFB	$01,$10,$3A,$91,$65	; Fill vert 16 tiles with $3A at $6591
	DEFB	$01,$10,$3A,$99,$65	; Fill vert 16 tiles with $3A at $6599
	DEFB	$01,$10,$3A,$9C,$65	; Fill vert 16 tiles with $3A at $659C
	DEFB	$01,$06,$3A,$C1,$66	; Fill vert 6 tiles with $3A at $66C1
	DEFB	$01,$07,$3A,$CF,$66	; Fill vert 7 tiles with $3A at $66CF
	DEFB	$01,$07,$3A,$D3,$66	; Fill vert 7 tiles with $3A at $66D3
	DEFB	$02,$0E,$FF,$70,$67	; Fill horz 14 tiles with $FF at $6770
	DEFB	$02,$08,$FA,$A1,$66	; Fill horz 8 tiles with $FA at $66A1
	DEFB	$02,$06,$FA,$B1,$66	; Fill horz 6 tiles with $FA at $66B1
	DEFB	$02,$04,$FA,$45,$67	; Fill horz 4 tiles with $FA at $6745
	DEFB	$03,$FF,$02,$11,$AC,$65	; Rectangle 2x17 tiles with $FF at $65AC
	DEFB	$FF	; End of sequence

; Room 8EE1
L8EE1:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8D18	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L8E9C	; Room Down
	DEFB	$01,$03,$3A,$35,$67	; Fill vert 3 tiles with $3A at $6735
	DEFB	$01,$0F,$3A,$D5,$65	; Fill vert 15 tiles with $3A at $65D5
	DEFB	$0E,$3A,$7C,$67		; Put tile $3A at $677C
	DEFB	$0E,$FF,$93,$65		; Put tile $FF at $6593
	DEFB	$03,$FF,$1A,$02,$94,$65	; Rectangle 26x2 tiles with $FF at $6594
	DEFB	$03,$FF,$02,$0F,$E8,$65	; Rectangle 2x15 tiles with $FF at $65E8
	DEFB	$09,$FF,$07,$E7,$65	; Triangle with $FF, count=7 at $65E7
	DEFB	$02,$04,$FA,$16,$67	; Fill horz 4 tiles with $FA at $6716
	DEFB	$02,$07,$FA,$5B,$67	; Fill horz 7 tiles with $FA at $675B
	DEFB	$02,$04,$63,$E0,$66	; Fill horz 4 tiles with $63 at $66E0
	DEFB	$FF	; End of sequence

; Room 8F20
L8F20:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L8FBD	; Room to Left
	DEFW	$0000
	DEFW	L8E9C	; Room Up
	DEFW	L8F84	; Room Down
	DEFB	$02,$0E,$FF,$90,$65	; Fill horz 14 tiles with $FF at $6590
L8F31:	DEFB	$01,$01,$FF,$96,$65	; Fill vert 1 tiles with $FF at $6596
	DEFB	$0E,$2A,$AA,$6F		; Put tile $2A at $6FAA
	DEFB	$0E,$2A,$AF,$6F		; Put tile $2A at $6FAF
	DEFB	$01,$07,$2B,$C8,$6F	; Fill vert 7 tiles with $2B at $6FC8
	DEFB	$01,$07,$2B,$CD,$6F	; Fill vert 7 tiles with $2B at $6FCD
	DEFB	$03,$FF,$02,$09,$AC,$65	; Rectangle 2x9 tiles with $FF at $65AC
	DEFB	$03,$FF,$1E,$08,$9E,$66	; Rectangle 30x8 tiles with $FF at $669E
	DEFB	$05,$02,$02,$84,$79,$6A,$67	; Block 2x2 tiles from 7984 to $676A
	DEFB	$03,$00,$08,$06,$B2,$66	; Rectangle 8x6 tiles with $00 at $66B2
	DEFB	$09,$00,$05,$B1,$66	; Triangle with $00, count=5 at $66B1
	DEFB	$05,$04,$07,$AA,$79,$87,$70	; Block 4x7 tiles from 79AA to $7087
	DEFB	$05,$04,$07,$AA,$79,$2A,$70	; Block 4x7 tiles from 79AA to $702A
	DEFB	$01,$0E,$3A,$A3,$65	; Fill vert 14 tiles with $3A at $65A3
	DEFB	$01,$0F,$3A,$A7,$65	; Fill vert 15 tiles with $3A at $65A7
	DEFB	$02,$05,$FA,$97,$66	; Fill horz 5 tiles with $FA at $6697
	DEFB	$FF	; End of sequence

; Room 8F84
L8F84:	DEFW	L7918	; Room procedure
	DEFW	LA0F7	; Initialization
	DEFW	L9053	; Room to Left
	DEFW	$0000
	DEFW	L8F20	; Room Up
	DEFW	L91BA	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$1C,$08,$26,$66	; Rectangle 28x8 tiles with $00 at $6626
	DEFB	$08,$00,$04,$C5,$65	; Triangle with $00, count=4 at $65C5
	DEFB	$03,$00,$02,$03,$E6,$65	; Rectangle 2x3 tiles with $00 at $65E6
	DEFB	$0E,$00,$C8,$65		; Put tile $00 at $65C8
	DEFB	$05,$02,$04,$BB,$71,$A2,$70	; Block 2x4 tiles from 71BB to $70A2
	DEFB	$0C,$48,$73,$02,$0D,$A8,$65	; Block 2 tiles from 7348 to $65A8 copy 13 times
	DEFB	$05,$02,$04,$84,$79,$2A,$67	; Block 2x4 tiles from 7984 to $672A
	DEFB	$FF	; End of sequence

; Room 8FBD
L8FBD:	DEFW	LB483	; Room procedure
	DEFW	LA16A	; Initialization
	DEFW	L9005	; Room to Left
	DEFW	L8F20	; Room to Right
	DEFW	$0000
	DEFW	L9053	; Room Down
	DEFB	$03,$FF,$1E,$08,$9E,$66	; Rectangle 30x8 tiles with $FF at $669E
	DEFB	$03,$39,$07,$07,$C5,$66	; Rectangle 7x7 tiles with $39 at $66C5
	DEFB	$02,$05,$38,$A8,$66	; Fill horz 5 tiles with $38 at $66A8
	DEFB	$02,$06,$FF,$90,$65	; Fill horz 6 tiles with $FF at $6590
	DEFB	$02,$04,$FF,$AA,$65	; Fill horz 4 tiles with $FF at $65AA
	DEFB	$0E,$2A,$A5,$6F		; Put tile $2A at $6FA5
	DEFB	$0E,$2A,$BF,$6F		; Put tile $2A at $6FBF
	DEFB	$01,$07,$2B,$C3,$6F	; Fill vert 7 tiles with $2B at $6FC3
	DEFB	$01,$07,$2B,$DD,$6F	; Fill vert 7 tiles with $2B at $6FDD
	DEFB	$05,$02,$04,$BB,$71,$1F,$70	; Block 2x4 tiles from 71BB to $701F
	DEFB	$05,$02,$04,$BB,$71,$31,$70	; Block 2x4 tiles from 71BB to $7031
	DEFB	$FF	; End of sequence

; Room 9005
L9005:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L92A7	; Room to Left
	DEFW	L8FBD	; Room to Right
	DEFW	L8BF0	; Room Up
	DEFW	$0000
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$05,$02,$04,$BB,$71,$33,$70	; Block 2x4 tiles from 71BB to $7033
	DEFB	$0C,$48,$73,$02,$08,$C0,$65	; Block 2 tiles from 7348 to $65C0 copy 8 times
	DEFB	$05,$02,$01,$84,$79,$A2,$65	; Block 2x1 tiles from 7984 to $65A2
	DEFB	$0E,$2A,$B1,$6F		; Put tile $2A at $6FB1
	DEFB	$01,$07,$2B,$CF,$6F	; Fill vert 7 tiles with $2B at $6FCF
	DEFB	$03,$FF,$13,$05,$A9,$66	; Rectangle 19x5 tiles with $FF at $66A9
	DEFB	$02,$4F,$FF,$3F,$67	; Fill horz 79 tiles with $FF at $673F
	DEFB	$08,$FF,$05,$C6,$66	; Triangle with $FF, count=5 at $66C6
	DEFB	$05,$04,$07,$8E,$79,$7B,$70	; Block 4x7 tiles from 798E to $707B
	DEFB	$05,$04,$07,$8E,$79,$24,$70	; Block 4x7 tiles from 798E to $7024
	DEFB	$FF	; End of sequence

; Room 9053
L9053:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L909F	; Room to Left
	DEFW	L8F84	; Room to Right
	DEFW	L8FBD	; Room Up
	DEFW	L90DB	; Room Down
	DEFB	$03,$FF,$1E,$09,$90,$65	; Rectangle 30x9 tiles with $FF at $6590
	DEFB	$03,$00,$0A,$04,$3A,$66	; Rectangle 10x4 tiles with $00 at $663A
	DEFB	$02,$27,$FF,$67,$67	; Fill horz 39 tiles with $FF at $6767
	DEFB	$02,$04,$FF,$30,$67	; Fill horz 4 tiles with $FF at $6730
	DEFB	$02,$06,$FF,$4C,$67	; Fill horz 6 tiles with $FF at $674C
L907A:	DEFB	$05,$02,$04,$BB,$71,$F1,$70	; Block 2x4 tiles from 71BB to $70F1
	DEFB	$05,$02,$04,$BB,$71,$E5,$70	; Block 2x4 tiles from 71BB to $70E5
	DEFB	$03,$39,$07,$08,$99,$65	; Rectangle 7x8 tiles with $39 at $6599
	DEFB	$03,$39,$04,$07,$A7,$66	; Rectangle 4x7 tiles with $39 at $66A7
	DEFB	$02,$04,$38,$79,$67	; Fill horz 4 tiles with $38 at $6779
	DEFB	$02,$04,$38,$89,$66	; Fill horz 4 tiles with $38 at $6689
	DEFB	$FF	; End of sequence

; Room 909F
L909F:	DEFW	LB47A	; Room procedure
	DEFW	LA15F	; Initialization
	DEFW	L92EF	; Room to Left
	DEFW	L9053	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$90,$65	; Fill horz 30 tiles with $FF at $6590
	DEFB	$09,$FF,$08,$CB,$65	; Triangle with $FF, count=8 at $65CB
	DEFB	$03,$FF,$05,$09,$62,$66	; Rectangle 5x9 tiles with $FF at $6662
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$07,$FF,$08,$85,$66	; Triangle with $FF, count=8 at $6685
	DEFB	$05,$04,$07,$AA,$79,$9E,$70	; Block 4x7 tiles from 79AA to $709E
	DEFB	$05,$04,$07,$AA,$79,$41,$70	; Block 4x7 tiles from 79AA to $7041
	DEFB	$05,$04,$07,$AA,$79,$E4,$6F	; Block 4x7 tiles from 79AA to $6FE4
	DEFB	$FF	; End of sequence

; Room 90DB
L90DB:	DEFW	LB452	; Room procedure
	DEFW	LA370	; Initialization
	DEFW	L913F	; Room to Left
	DEFW	L91BA	; Room to Right
	DEFW	L9053	; Room Up
	DEFW	$0000
	DEFB	$04,$FF	; Fill entire screen with $FF
	DEFB	$03,$00,$16,$06,$D4,$65	; Rectangle 22x6 tiles with $00 at $65D4
	DEFB	$02,$0C,$00,$C0,$65	; Fill horz 12 tiles with $00 at $65C0
	DEFB	$06,$00,$07,$92,$66	; Triangle with $00, count=7 at $6692
	DEFB	$03,$00,$12,$06,$9E,$66	; Rectangle 18x6 tiles with $00 at $669E
	DEFB	$02,$04,$39,$99,$65	; Fill horz 4 tiles with $39 at $6599
	DEFB	$02,$04,$38,$B7,$65	; Fill horz 4 tiles with $38 at $65B7
	DEFB	$05,$03,$03,$18,$7C,$F5,$70	; Block 3x3 tiles from 7C18 to $70F5
	DEFB	$05,$03,$03,$18,$7C,$F9,$70	; Block 3x3 tiles from 7C18 to $70F9
	DEFB	$0E,$2A,$95,$70		; Put tile $2A at $7095
	DEFB	$01,$05,$2B,$B3,$70	; Fill vert 5 tiles with $2B at $70B3
	DEFB	$0E,$2A,$A4,$70		; Put tile $2A at $70A4
	DEFB	$01,$05,$2B,$C2,$70	; Fill vert 5 tiles with $2B at $70C2
	DEFB	$05,$04,$07,$8E,$79,$88,$70	; Block 4x7 tiles from 798E to $7088
	DEFB	$05,$04,$07,$8E,$79,$31,$70	; Block 4x7 tiles from 798E to $7031
	DEFB	$05,$04,$07,$8E,$79,$14,$70	; Block 4x7 tiles from 798E to $7014
	DEFB	$FF	; End of sequence

; Room 913F
L913F:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L90DB	; Room to Right
	DEFW	$0000
	DEFW	L83ED	; Room Down
	DEFB	$09,$FF,$09,$AD,$65	; Triangle with $FF, count=9 at $65AD
	DEFB	$02,$27,$FF,$67,$67	; Fill horz 39 tiles with $FF at $6767
	DEFB	$02,$05,$FF,$90,$65	; Fill horz 5 tiles with $FF at $6590
	DEFB	$03,$FF,$03,$03,$AE,$65	; Rectangle 3x3 tiles with $FF at $65AE
	DEFB	$01,$0C,$EB,$09,$66	; Fill vert 12 tiles with $EB at $6609
	DEFB	$05,$02,$01,$84,$79,$79,$67	; Block 2x1 tiles from 7984 to $6779
	DEFB	$05,$03,$03,$A0,$71,$0E,$71	; Block 3x3 tiles from 71A0 to $710E
	DEFB	$05,$03,$03,$18,$7C,$11,$71	; Block 3x3 tiles from 7C18 to $7111
	DEFB	$05,$02,$01,$8A,$7E,$4E,$71	; Block 2x1 tiles from 7E8A to $714E
	DEFB	$05,$03,$04,$0C,$7C,$FE,$70	; Block 3x4 tiles from 7C0C to $70FE
	DEFB	$05,$03,$01,$87,$7E,$3A,$71	; Block 3x1 tiles from 7E87 to $713A
	DEFB	$05,$03,$01,$87,$7E,$56,$71	; Block 3x1 tiles from 7E87 to $7156
	DEFB	$05,$02,$01,$8A,$7E,$37,$71	; Block 2x1 tiles from 7E8A to $7137
	DEFB	$05,$02,$01,$8A,$7E,$54,$71	; Block 2x1 tiles from 7E8A to $7154
	DEFB	$05,$02,$01,$8A,$7E,$5A,$71	; Block 2x1 tiles from 7E8A to $715A
	DEFB	$05,$02,$01,$8A,$7E,$40,$71	; Block 2x1 tiles from 7E8A to $7140
	DEFB	$05,$02,$01,$8A,$7E,$43,$71	; Block 2x1 tiles from 7E8A to $7143
	DEFB	$FF	; End of sequence

; Room 91BA
L91BA:	DEFW	LB452	; Room procedure
	DEFW	LA36B	; Initialization
	DEFW	L90DB	; Room to Left
	DEFW	$0000
	DEFW	L8F84	; Room Up
	DEFW	L924E	; Room Down
	DEFB	$02,$04,$FF,$90,$65	; Fill horz 4 tiles with $FF at $6590
	DEFB	$0E,$2A,$A5,$6F		; Put tile $2A at $6FA5
	DEFB	$01,$07,$2B,$C3,$6F	; Fill vert 7 tiles with $2B at $6FC3
	DEFB	$03,$FF,$04,$03,$9E,$66	; Rectangle 4x3 tiles with $FF at $669E
	DEFB	$02,$98,$FF,$F6,$66	; Fill horz 152 tiles with $FF at $66F6
	DEFB	$0C,$E3,$81,$02,$0B,$AC,$65	; Block 2 tiles from 81E3 to $65AC copy 11 times
	DEFB	$07,$FF,$02,$C0,$66	; Triangle with $FF, count=2 at $66C0
	DEFB	$0C,$48,$73,$02,$0C,$A4,$65	; Block 2 tiles from 7348 to $65A4 copy 12 times
	DEFB	$05,$02,$05,$84,$79,$0C,$67	; Block 2x5 tiles from 7984 to $670C
	DEFB	$05,$03,$03,$18,$7C,$9B,$70	; Block 3x3 tiles from 7C18 to $709B
	DEFB	$00,$9F,$70		; Barrel 3x3 tiles at $709F
	DEFB	$00,$A2,$70		; Barrel 3x3 tiles at $70A2
	DEFB	$00,$AD,$70		; Barrel 3x3 tiles at $70AD
	DEFB	$FF	; End of sequence

; Room 920A
L920A:	DEFW	L7918	; Room procedure
	DEFW	LA0F2	; Initialization
	DEFW	L83ED	; Room to Left
	DEFW	L924E	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$05,$03,$04,$0C,$7C,$F1,$70	; Block 3x4 tiles from 7C0C to $70F1
	DEFB	$05,$03,$03,$A0,$71,$13,$71	; Block 3x3 tiles from 71A0 to $7113
	DEFB	$00,$17,$71		; Barrel 3x3 tiles at $7117
	DEFB	$00,$1A,$71		; Barrel 3x3 tiles at $711A
	DEFB	$00,$BE,$70		; Barrel 3x3 tiles at $70BE
	DEFB	$00,$C1,$70		; Barrel 3x3 tiles at $70C1
	DEFB	$00,$26,$71		; Barrel 3x3 tiles at $7126
	DEFB	$05,$04,$03,$7B,$7E,$C4,$70	; Block 4x3 tiles from 7E7B to $70C4
	DEFB	$05,$04,$03,$7B,$7E,$1B,$71	; Block 4x3 tiles from 7E7B to $711B
	DEFB	$05,$04,$03,$7B,$7E,$20,$71	; Block 4x3 tiles from 7E7B to $7120
	DEFB	$FF	; End of sequence

; Room 924E
L924E:	DEFW	LB452	; Room procedure
	DEFW	LA366	; Initialization
	DEFW	L920A	; Room to Left
	DEFW	$0000
	DEFW	L91BA	; Room Up
	DEFW	$0000
	DEFB	$02,$10,$FF,$9E,$65	; Fill horz 16 tiles with $FF at $659E
	DEFB	$0C,$E3,$81,$02,$0E,$CA,$65	; Block 2 tiles from 81E3 to $65CA copy 14 times
	DEFB	$02,$20,$FF,$6E,$67	; Fill horz 32 tiles with $FF at $676E
	DEFB	$0C,$48,$73,$02,$0F,$C2,$65	; Block 2 tiles from 7348 to $65C2 copy 15 times
	DEFB	$05,$02,$01,$B9,$71,$A4,$65	; Block 2x1 tiles from 71B9 to $65A4
	DEFB	$05,$03,$03,$A0,$71,$1C,$71	; Block 3x3 tiles from 71A0 to $711C
	DEFB	$05,$03,$03,$A0,$71,$CB,$70	; Block 3x3 tiles from 71A0 to $70CB
	DEFB	$05,$04,$03,$7B,$7E,$24,$71	; Block 4x3 tiles from 7E7B to $7124
	DEFB	$00,$5D,$70		; Barrel 3x3 tiles at $705D
	DEFB	$00,$B5,$70		; Barrel 3x3 tiles at $70B5
	DEFB	$00,$B9,$70		; Barrel 3x3 tiles at $70B9
	DEFB	$00,$BC,$70		; Barrel 3x3 tiles at $70BC
	DEFB	$00,$0E,$71		; Barrel 3x3 tiles at $710E
	DEFB	$00,$11,$71		; Barrel 3x3 tiles at $7111
	DEFB	$00,$14,$71		; Barrel 3x3 tiles at $7114
	DEFB	$00,$18,$71		; Barrel 3x3 tiles at $7118
	DEFB	$FF	; End of sequence

; Room 92A7
L92A7:	DEFW	LB483	; Room procedure
	DEFW	LA16F	; Initialization
	DEFW	$0000
	DEFW	L9005	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$20,$FF,$90,$65	; Fill horz 32 tiles with $FF at $6590
	DEFB	$0C,$E3,$81,$02,$0D,$CC,$65	; Block 2 tiles from 81E3 to $65CC copy 13 times
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$05,$04,$04,$A9,$71,$D1,$70	; Block 4x4 tiles from 71A9 to $70D1
	DEFB	$05,$04,$04,$A9,$71,$E1,$70	; Block 4x4 tiles from 71A9 to $70E1
	DEFB	$05,$02,$04,$BB,$71,$D6,$70	; Block 2x4 tiles from 71BB to $70D6
	DEFB	$05,$02,$04,$BB,$71,$D8,$70	; Block 2x4 tiles from 71BB to $70D8
	DEFB	$05,$02,$04,$BB,$71,$DB,$70	; Block 2x4 tiles from 71BB to $70DB
	DEFB	$05,$02,$04,$BB,$71,$DE,$70	; Block 2x4 tiles from 71BB to $70DE
	DEFB	$FF	; End of sequence

; Room 92EF
L92EF:	DEFW	L7918	; Room procedure
	DEFW	L791B	; Initialization
	DEFW	$0000
	DEFW	L909F	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF	; Fill entire screen with $FF
	DEFB	$03,$00,$1A,$06,$B2,$65	; Rectangle 26x6 tiles with $00 at $65B2
	DEFB	$03,$02,$16,$06,$DE,$66	; Rectangle 22x6 tiles with $02 at $66DE
	DEFB	$03,$CC,$06,$04,$1C,$67	; Rectangle 6x4 tiles with $CC at $671C
	DEFB	$02,$07,$D1,$38,$67	; Fill horz 7 tiles with $D1 at $6738
	DEFB	$0E,$D0,$3D,$67		; Put tile $D0 at $673D
	DEFB	$02,$0C,$CD,$22,$67	; Fill horz 12 tiles with $CD at $6722
	DEFB	$05,$01,$04,$72,$93,$24,$67	; Block 1x4 tiles from 9372 to $6724
	DEFB	$05,$01,$04,$72,$93,$26,$67	; Block 1x4 tiles from 9372 to $6726
	DEFB	$05,$01,$04,$72,$93,$28,$67	; Block 1x4 tiles from 9372 to $6728
	DEFB	$05,$01,$04,$72,$93,$2A,$67	; Block 1x4 tiles from 9372 to $672A
	DEFB	$05,$01,$04,$72,$93,$2C,$67	; Block 1x4 tiles from 9372 to $672C
	DEFB	$05,$01,$04,$72,$93,$2E,$67	; Block 1x4 tiles from 9372 to $672E
	DEFB	$05,$04,$04,$A9,$71,$E1,$6F	; Block 4x4 tiles from 71A9 to $6FE1
	DEFB	$05,$02,$04,$BB,$71,$E6,$6F	; Block 2x4 tiles from 71BB to $6FE6
	DEFB	$05,$02,$04,$BB,$71,$E9,$6F	; Block 2x4 tiles from 71BB to $6FE9
	DEFB	$05,$02,$04,$BB,$71,$EC,$6F	; Block 2x4 tiles from 71BB to $6FEC
	DEFB	$05,$02,$04,$BB,$71,$EF,$6F	; Block 2x4 tiles from 71BB to $6FEF
	DEFB	$05,$02,$04,$BB,$71,$F2,$6F	; Block 2x4 tiles from 71BB to $6FF2
	DEFB	$FF	; End of sequence

; Blocks for rooms
L9372:	DEFB	$CE	; Back block 1x4
	DEFB	$CF
	DEFB	$CF
	DEFB	$CF

; Room 9376
L9376:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L93DF	; Room to Left
	DEFW	$0000
	DEFW	L8384	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$0C,$06,$80,$66	; Rectangle 12x6 tiles with $02 at $6680
	DEFB	$03,$02,$0B,$06,$90,$66	; Rectangle 11x6 tiles with $02 at $6690
	DEFB	$02,$0C,$03,$62,$66	; Fill horz 12 tiles with $03 at $6662
	DEFB	$02,$0B,$03,$72,$66	; Fill horz 11 tiles with $03 at $6672
	DEFB	$03,$0C,$0B,$02,$FE,$70	; Rectangle 11x2 tiles with $0C at $70FE
	DEFB	$02,$0B,$0B,$E0,$70	; Fill horz 11 tiles with $0B at $70E0
	DEFB	$0C,$B9,$71,$02,$0E,$94,$65	; Block 2 tiles from 71B9 to $6594 copy 14 times
	DEFB	$0C,$B9,$71,$02,$0E,$A4,$65	; Block 2 tiles from 71B9 to $65A4 copy 14 times
	DEFB	$05,$06,$02,$88,$71,$F3,$70	; Block 6x2 tiles from 7188 to $70F3
	DEFB	$01,$07,$FD,$9A,$65	; Fill vert 7 tiles with $FD at $659A
	DEFB	$01,$07,$FD,$A2,$65	; Fill vert 7 tiles with $FD at $65A2
	DEFB	$01,$07,$FD,$A9,$65	; Fill vert 7 tiles with $FD at $65A9
	DEFB	$05,$01,$03,$4F,$7B,$36,$67	; Block 1x3 tiles from 7B4F to $6736
	DEFB	$05,$01,$03,$4F,$7B,$3A,$67	; Block 1x3 tiles from 7B4F to $673A
	DEFB	$05,$01,$03,$4F,$7B,$3E,$67	; Block 1x3 tiles from 7B4F to $673E
	DEFB	$FF	; End of sequence

; Room 93DF
L93DF:	DEFW	LB41F	; Room procedure
L93E1:	DEFW	LC671	; Initialization
	DEFW	L7C9C	; Room to Left
	DEFW	L9376	; Room to Right
	DEFW	L9431	; Room Up
	DEFW	$0000
	DEFB	$04,$02			; Fill entire screen with $02
	DEFB	$03,$21,$05,$02,$16,$67	; Rectangle 5x2 tiles with $21 at $6716
	DEFB	$02,$04,$03,$7C,$66	; Fill horz 4 tiles with $03 at $667C
	DEFB	$02,$99,$FF,$90,$65	; Fill horz 153 tiles with $FF at $6590
	DEFB	$02,$10,$FF,$36,$66	; Fill horz 16 tiles with $FF at $6636
	DEFB	$02,$04,$FF,$5E,$66	; Fill horz 4 tiles with $FF at $665E
	DEFB	$02,$11,$FF,$1B,$67	; Fill horz 17 tiles with $FF at $671B
	DEFB	$02,$56,$FF,$38,$67	; Fill horz 86 tiles with $FF at $6738
	DEFB	$0C,$B9,$71,$02,$0D,$96,$65	; Block 2 tiles from 71B9 to $6596 copy 13 times
	DEFB	$01,$05,$FD,$9E,$65	; Fill vert 5 tiles with $FD at $659E
	DEFB	$01,$06,$FD,$A7,$65	; Fill vert 6 tiles with $FD at $65A7
	DEFB	$05,$01,$04,$4F,$7B,$24,$67	; Block 1x4 tiles from 7B4F to $6724
	DEFB	$05,$01,$03,$4F,$7B,$4B,$67	; Block 1x3 tiles from 7B4F to $674B
	DEFB	$FF	; End of sequence

; Room 9431
L9431:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9451	; Room Up
	DEFW	L93DF	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$0C,$B9,$71,$02,$11,$96,$65	; Block 2 tiles from 71B9 to $6596 copy 17 times
	DEFB	$01,$11,$FD,$9E,$65	; Fill vert 17 tiles with $FD at $659E
	DEFB	$01,$11,$FD,$A7,$65	; Fill vert 17 tiles with $FD at $65A7
	DEFB	$FF	; End of sequence

; Room 9451
L9451:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	$0000
	DEFW	L9431	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$05,$02,$04,$84,$79,$1C,$67	; Block 2x4 tiles from 7984 to $671C
	DEFB	$01,$11,$FD,$9E,$65	; Fill vert 17 tiles with $FD at $659E
	DEFB	$01,$11,$FD,$A7,$65	; Fill vert 17 tiles with $FD at $65A7
	DEFB	$03,$02,$18,$06,$65,$66	; Rectangle 24x6 tiles with $02 at $6665
	DEFB	$02,$18,$03,$47,$66	; Fill horz 24 tiles with $03 at $6647
	DEFB	$FF	; End of sequence

; Room 947C
L947C:	DEFW	LB41F	; Room procedure
L947E:	DEFW	LC671	; Initialization
	DEFW	L94AB	; Room to Left
	DEFW	L7C9C	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$15,$07,$26,$66	; Rectangle 21x7 tiles with $02 at $6626
	DEFB	$03,$02,$07,$06,$79,$66	; Rectangle 7x6 tiles with $02 at $6679
	DEFB	$01,$08,$02,$3B,$66	; Fill vert 8 tiles with $02 at $663B
	DEFB	$01,$07,$02,$5A,$66	; Fill vert 7 tiles with $02 at $665A
	DEFB	$02,$08,$21,$2C,$67	; Fill horz 8 tiles with $21 at $672C
	DEFB	$02,$07,$21,$4B,$67	; Fill horz 7 tiles with $21 at $674B
	DEFB	$FF	; End of sequence

; Room 94AB
L94AB:	DEFW	L7918	; Room procedure
	DEFW	LA0DF	; Initialization
	DEFW	L95D6	; Room to Left
	DEFW	L947C	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$1E,$07,$26,$66	; Rectangle 30x7 tiles with $00 at $6626
	DEFB	$03,$02,$02,$07,$42,$66	; Rectangle 2x7 tiles with $02 at $6642
	DEFB	$0E,$2A,$37,$70		; Put tile $2A at $7037
	DEFB	$01,$06,$2B,$55,$70	; Fill vert 6 tiles with $2B at $7055
	DEFB	$FF	; End of sequence

; Room 94CF
L94CF:	DEFW	L7918	; Room procedure
	DEFW	LA11A	; Initialization
	DEFW	L9552	; Room to Left
	DEFW	L9A9A	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$03,$0D,$12,$07,$80,$66	; Rectangle 18x7 tiles with $0D at $6680
	DEFB	$03,$A3,$1B,$02,$90,$65	; Rectangle 27x2 tiles with $A3 at $6590
	DEFB	$0E,$9C,$AB,$65		; Put tile $9C at $65AB
	DEFB	$0E,$9B,$C9,$65		; Put tile $9B at $65C9
	DEFB	$03,$BF,$12,$06,$CC,$65	; Rectangle 18x6 tiles with $BF at $65CC
	DEFB	$05,$02,$04,$BB,$71,$E8,$70	; Block 2x4 tiles from 71BB to $70E8
	DEFB	$02,$12,$BA,$CC,$65	; Fill horz 18 tiles with $BA at $65CC
	DEFB	$02,$12,$B3,$62,$66	; Fill horz 18 tiles with $B3 at $6662
	DEFB	$05,$01,$06,$28,$95,$CD,$65	; Block 1x6 tiles from 9528 to $65CD
	DEFB	$05,$01,$06,$2E,$95,$D4,$65	; Block 1x6 tiles from 952E to $65D4
	DEFB	$05,$02,$06,$34,$95,$DA,$65	; Block 2x6 tiles from 9534 to $65DA
	DEFB	$05,$03,$06,$40,$95,$DE,$65	; Block 3x6 tiles from 9540 to $65DE
	DEFB	$FF	; End of sequence

; Blocks for rooms
L9528:	DEFB	$A9	; Back block 1x6
	DEFB	$A8
	DEFB	$A8
	DEFB	$A8
	DEFB	$A8
	DEFB	$A7
L952E:	DEFB	$A6	; Back block 1x6
	DEFB	$A5
	DEFB	$A4
	DEFB	$A8
	DEFB	$A2
	DEFB	$A1
L9534:	DEFB	$BA,$CB	; Back block 2x6
	DEFB	$BF,$CA
	DEFB	$C9,$C8
	DEFB	$C7,$C6
	DEFB	$CA,$BF
	DEFB	$C4,$B3
L9540:	DEFB	$BA,$BA,$C3	; Back block 3x6
	DEFB	$BF,$C2,$C1
	DEFB	$BF,$C0,$00
	DEFB	$C2,$C1,$00
	DEFB	$C0,$00,$00
	DEFB	$C1,$00,$00

; Room 9552
L9552:	DEFW	LB483	; Room procedure
	DEFW	LA197	; Initialization
	DEFW	L9A5A	; Room to Left
	DEFW	L94CF	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$03,$0D,$12,$07,$8C,$66	; Rectangle 18x7 tiles with $0D at $668C
	DEFB	$03,$A3,$1B,$02,$93,$65	; Rectangle 27x2 tiles with $A3 at $6593
	DEFB	$0E,$9E,$92,$65		; Put tile $9E at $6592
	DEFB	$0E,$9D,$B0,$65		; Put tile $9D at $65B0
	DEFB	$03,$BF,$12,$06,$D8,$65	; Rectangle 18x6 tiles with $BF at $65D8
	DEFB	$05,$02,$04,$BB,$71,$DD,$70	; Block 2x4 tiles from 71BB to $70DD
	DEFB	$05,$02,$04,$BB,$71,$E3,$70	; Block 2x4 tiles from 71BB to $70E3
	DEFB	$02,$12,$BA,$D8,$65	; Fill horz 18 tiles with $BA at $65D8
	DEFB	$02,$12,$B3,$6E,$66	; Fill horz 18 tiles with $B3 at $666E
	DEFB	$05,$01,$06,$28,$95,$E8,$65	; Block 1x6 tiles from 9528 to $65E8
	DEFB	$05,$01,$06,$B2,$95,$E1,$65	; Block 1x6 tiles from 95B2 to $65E1
	DEFB	$05,$02,$06,$B8,$95,$DA,$65	; Block 2x6 tiles from 95B8 to $65DA
	DEFB	$05,$03,$06,$C4,$95,$D5,$65	; Block 3x6 tiles from 95C4 to $65D5
	DEFB	$FF	; End of sequence

; Blocks for rooms
L95B2:	DEFB	$A0		; Back block 1x6
	DEFB	$A2
	DEFB	$A8
	DEFB	$A4
	DEFB	$A5
	DEFB	$9F
L95B8:	DEFB	$BB,$BA		; Back block 2x6
	DEFB	$B9,$BF
	DEFB	$B8,$B7
	DEFB	$B6,$B5
	DEFB	$BF,$B9
	DEFB	$B3,$B2
L95C4:	DEFB	$B1,$BA,$BA	; Back block 3x6
	DEFB	$B0,$AF,$BF
	DEFB	$00,$AE,$BF
	DEFB	$00,$B0,$AF
	DEFB	$00,$00,$AE
	DEFB	$00,$00,$B0

; Room 95D6
L95D6:	DEFW	LB483	; Room procedure
	DEFW	LA183	; Initialization
	DEFW	L95F8	; Room to Left
	DEFW	L94AB	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$96,$FF,$90,$65	; Fill horz 150 tiles with $FF at $6590
	DEFB	$03,$FF,$10,$05,$06,$67	; Rectangle 16x5 tiles with $FF at $6706
	DEFB	$02,$07,$00,$06,$67	; Fill horz 7 tiles with $00 at $6706
	DEFB	$02,$10,$FA,$16,$67	; Fill horz 16 tiles with $FA at $6716
	DEFB	$FF	; End of sequence

; Room 95F8
L95F8:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L95D6	; Room to Right
	DEFW	$0000
	DEFW	L9634	; Room Down
	DEFB	$04,$FF	; Fill entire screen with $FF
	DEFB	$03,$00,$17,$08,$2D,$66	; Rectangle 23x8 tiles with $00 at $662D
	DEFB	$06,$FF,$03,$2D,$66	; Triangle with $FF, count=3 at $662D
	DEFB	$02,$0C,$FA,$28,$67	; Fill horz 12 tiles with $FA at $6728
	DEFB	$02,$0A,$00,$48,$67	; Fill horz 10 tiles with $00 at $6748
	DEFB	$02,$16,$00,$5A,$67	; Fill horz 22 tiles with $00 at $675A
	DEFB	$02,$18,$00,$76,$67	; Fill horz 24 tiles with $00 at $6776
	DEFB	$0C,$48,$73,$02,$0C,$34,$66	; Block 2 tiles from 7348 to $6634 copy 12 times
	DEFB	$05,$02,$01,$9D,$88,$24,$67	; Block 2x1 tiles from 889D to $6724
	DEFB	$FF	; End of sequence

; Room 9634
L9634:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L968A	; Room to Right
	DEFW	L95F8	; Room Up
	DEFW	L990D	; Room Down
	DEFB	$03,$FF,$04,$0D,$90,$65	; Rectangle 4x13 tiles with $FF at $6590
	DEFB	$03,$FF,$18,$04,$1C,$67	; Rectangle 24x4 tiles with $FF at $671C
	DEFB	$07,$FF,$05,$84,$66	; Triangle with $FF, count=5 at $6684
	DEFB	$0E,$00,$84,$66		; Put tile $00 at $6684
	DEFB	$09,$FF,$03,$1B,$67	; Triangle with $FF, count=3 at $671B
	DEFB	$05,$02,$02,$86,$96,$52,$67	; Block 2x2 tiles from 9686 to $6752
	DEFB	$0C,$48,$73,$02,$0D,$9E,$65	; Block 2 tiles from 7348 to $659E copy 13 times
	DEFB	$02,$0C,$00,$28,$67	; Fill horz 12 tiles with $00 at $6728
	DEFB	$02,$0C,$00,$62,$67	; Fill horz 12 tiles with $00 at $6762
	DEFB	$02,$10,$00,$7C,$67	; Fill horz 16 tiles with $00 at $677C
	DEFB	$0C,$48,$73,$02,$02,$6B,$67	; Block 2 tiles from 7348 to $676B copy 2 times
	DEFB	$05,$02,$01,$9D,$88,$4D,$67	; Block 2x1 tiles from 889D to $674D
	DEFB	$FF	; End of sequence

; Blocks for rooms
L9686:	DEFB	$B4,$AA	; Back block 2x2
	DEFB	$AD,$AB

; Room 968A
L968A:	DEFW	LB483	; Room procedure
	DEFW	LA188	; Initialization
	DEFW	L9634	; Room to Left
	DEFW	L96CC	; Room to Right
	DEFW	$0000
	DEFW	L9715	; Room Down
	DEFB	$03,$FF,$10,$05,$9E,$65	; Rectangle 16x5 tiles with $FF at $659E
	DEFB	$01,$0C,$3A,$40,$66	; Fill vert 12 tiles with $3A at $6640
	DEFB	$03,$FF,$0B,$02,$52,$67	; Rectangle 11x2 tiles with $FF at $6752
	DEFB	$02,$10,$FF,$34,$67	; Fill horz 16 tiles with $FF at $6734
	DEFB	$02,$09,$FA,$44,$67	; Fill horz 9 tiles with $FA at $6744
	DEFB	$02,$06,$FA,$6A,$67	; Fill horz 6 tiles with $FA at $676A
	DEFB	$05,$02,$04,$BB,$71,$B6,$70	; Block 2x4 tiles from 71BB to $70B6
	DEFB	$0C,$48,$73,$02,$02,$5E,$67	; Block 2 tiles from 7348 to $675E copy 2 times
	DEFB	$05,$02,$01,$9D,$88,$40,$67	; Block 2x1 tiles from 889D to $6740
	DEFB	$FF	; End of sequence

; Room 96CC
L96CC:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L968A	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L96F3	; Room Down
	DEFB	$02,$96,$FF,$90,$65	; Fill horz 150 tiles with $FF at $6590
	DEFB	$03,$FF,$0F,$0C,$35,$66	; Rectangle 15x12 tiles with $FF at $6635
	DEFB	$09,$FF,$09,$34,$66	; Triangle with $FF, count=9 at $6634
	DEFB	$01,$0C,$3A,$27,$66	; Fill vert 12 tiles with $3A at $6627
	DEFB	$02,$04,$FA,$52,$67	; Fill horz 4 tiles with $FA at $6752
	DEFB	$FF	; End of sequence

; Room 96F3
L96F3:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L9715	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L976E	; Room Down
	DEFB	$03,$FF,$0F,$11,$9F,$65	; Rectangle 15x17 tiles with $FF at $659F
	DEFB	$01,$11,$3A,$91,$65	; Fill vert 17 tiles with $3A at $6591
	DEFB	$01,$0A,$3A,$68,$66	; Fill vert 10 tiles with $3A at $6668
	DEFB	$02,$09,$FA,$80,$66	; Fill horz 9 tiles with $FA at $6680
	DEFB	$FF	; End of sequence

; Room 9715
L9715:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L96F3	; Room to Right
	DEFW	L968A	; Room Up
	DEFW	L9739	; Room Down
	DEFB	$03,$FF,$0B,$11,$90,$65	; Rectangle 11x17 tiles with $FF at $6590
	DEFB	$0C,$48,$73,$02,$11,$9C,$65	; Block 2 tiles from 7348 to $659C copy 17 times
	DEFB	$01,$11,$3A,$AA,$65	; Fill vert 17 tiles with $3A at $65AA
	DEFB	$02,$08,$FA,$96,$66	; Fill horz 8 tiles with $FA at $6696
	DEFB	$FF	; End of sequence

; Room 9739
L9739:	DEFW	LB452	; Room procedure
	DEFW	LA384	; Initialization
	DEFW	L99A6	; Room to Left
	DEFW	L976E	; Room to Right
	DEFW	L9715	; Room Up
	DEFW	L97A6	; Room Down
	DEFB	$03,$FF,$0B,$0A,$90,$65	; Rectangle 11x10 tiles with $FF at $6590
	DEFB	$08,$00,$06,$12,$66	; Triangle with $00, count=6 at $6612
	DEFB	$02,$22,$FF,$6C,$67	; Fill horz 34 tiles with $FF at $676C
L9755:	DEFB	$01,$01,$E4,$A0,$66	; Fill vert 1 tiles with $E4 at $66A0
	DEFB	$01,$0F,$3A,$AA,$65	; Fill vert 15 tiles with $3A at $65AA
	DEFB	$05,$02,$01,$9D,$88,$76,$67	; Block 2x1 tiles from 889D to $6776
	DEFB	$0C,$48,$73,$02,$10,$9C,$65	; Block 2 tiles from 7348 to $659C copy 16 times
	DEFB	$FF	; End of sequence

; Room 976E
L976E:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L9739	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$0F,$08,$90,$65	; Rectangle 15x8 tiles with $00 at $6590
	DEFB	$03,$00,$07,$07,$80,$66	; Rectangle 7x7 tiles with $00 at $6680
	DEFB	$02,$06,$00,$87,$66	; Fill horz 6 tiles with $00 at $6687
	DEFB	$02,$04,$00,$A5,$66	; Fill horz 4 tiles with $00 at $66A5
	DEFB	$02,$02,$00,$C3,$66	; Fill horz 2 tiles with $00 at $66C3
	DEFB	$01,$0F,$3A,$91,$65	; Fill vert 15 tiles with $3A at $6591
	DEFB	$01,$0F,$3A,$96,$65	; Fill vert 15 tiles with $3A at $6596
	DEFB	$0E,$FA,$E0,$66	; Put tile $FA at $66E0
	DEFB	$FF	; End of sequence

; Room 97A6
L97A6:	DEFW	LB483	; Room procedure
	DEFW	LB368	; Initialization
	DEFW	L9876	; Room to Left
	DEFW	L97F8	; Room to Right
	DEFW	L9739	; Room Up
	DEFW	$0000
	DEFB	$03,$FF,$09,$07,$80,$66	; Rectangle 9x7 tiles with $FF at $6680
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$07,$FF,$06,$A7,$66	; Triangle with $FF, count=6 at $66A7
	DEFB	$0C,$48,$73,$02,$08,$96,$65	; Block 2 tiles from 7348 to $6596 copy 8 times
	DEFB	$03,$FF,$04,$08,$AA,$65	; Rectangle 4x8 tiles with $FF at $65AA
L97CF:	DEFB	$0E,$00,$31,$67		; Put tile $00 at $6731
	DEFB	$0E,$2A,$91,$70		; Put tile $2A at $7091
	DEFB	$01,$06,$2B,$AF,$70	; Fill vert 6 tiles with $2B at $70AF
	DEFB	$05,$04,$07,$AA,$79,$82,$70	; Block 4x7 tiles from 79AA to $7082
	DEFB	$05,$04,$07,$AA,$79,$25,$70	; Block 4x7 tiles from 79AA to $7025
	DEFB	$05,$04,$07,$AA,$79,$06,$70	; Block 4x7 tiles from 79AA to $7006
	DEFB	$03,$02,$02,$07,$9C,$66	; Rectangle 2x7 tiles with $02 at $669C
	DEFB	$FF	; End of sequence

; Room 97F8
L97F8:	DEFW	L7918	; Room procedure
	DEFW	LA115	; Initialization
	DEFW	L97A6	; Room to Left
	DEFW	$0000
	DEFW	$0000
	DEFW	L982B	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$1C,$07,$80,$66	; Rectangle 28x7 tiles with $02 at $6680
	DEFB	$03,$02,$10,$04,$0E,$66	; Rectangle 16x4 tiles with $02 at $660E
	DEFB	$08,$02,$03,$2B,$66	; Triangle with $02, count=3 at $662B
	DEFB	$07,$02,$03,$3C,$66	; Triangle with $02, count=3 at $663C
	DEFB	$0C,$B9,$71,$02,$09,$99,$66	; Block 2 tiles from 71B9 to $6699 copy 9 times
	DEFB	$05,$02,$01,$84,$79,$6B,$67	; Block 2x1 tiles from 7984 to $676B
	DEFB	$FF	; End of sequence

; Room 982B
L982B:	DEFW	LB41F	; Room procedure
L982D:	DEFW	LC681	; Initialization
	DEFW	L7C9C	; Room to Left
	DEFW	$0000
	DEFW	L97F8	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$13,$06,$B7,$65	; Rectangle 19x6 tiles with $02 at $65B7
	DEFB	$03,$02,$13,$06,$62,$66	; Rectangle 19x6 tiles with $02 at $6662
	DEFB	$08,$02,$05,$D4,$65	; Triangle with $02, count=5 at $65D4
	DEFB	$06,$02,$05,$75,$66	; Triangle with $02, count=5 at $6675
	DEFB	$02,$12,$21,$16,$67	; Fill horz 18 tiles with $21 at $6716
	DEFB	$02,$11,$21,$34,$67	; Fill horz 17 tiles with $21 at $6734
	DEFB	$0C,$B9,$71,$02,$07,$A9,$65	; Block 2 tiles from 71B9 to $65A9 copy 7 times
	DEFB	$05,$04,$07,$8E,$79,$86,$70	; Block 4x7 tiles from 798E to $7086
	DEFB	$05,$04,$07,$8E,$79,$2F,$70	; Block 4x7 tiles from 798E to $702F
	DEFB	$05,$04,$07,$8E,$79,$F5,$6F	; Block 4x7 tiles from 798E to $6FF5
	DEFB	$FF	; End of sequence

; Room 9876
L9876:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L98C0	; Room to Left
	DEFW	L97A6	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$0A,$07,$80,$66	; Rectangle 10x7 tiles with $00 at $6680
	DEFB	$03,$00,$0E,$07,$2E,$66	; Rectangle 14x7 tiles with $00 at $662E
	DEFB	$03,$00,$0A,$07,$C2,$65	; Rectangle 10x7 tiles with $00 at $65C2
	DEFB	$08,$00,$02,$4B,$66	; Triangle with $00, count=2 at $664B
	DEFB	$08,$00,$03,$DF,$65	; Triangle with $00, count=3 at $65DF
	DEFB	$06,$00,$02,$02,$67	; Triangle with $00, count=2 at $6702
	DEFB	$06,$00,$03,$96,$66	; Triangle with $00, count=3 at $6696
	DEFB	$05,$04,$07,$8E,$79,$7F,$70	; Block 4x7 tiles from 798E to $707F
	DEFB	$05,$04,$07,$8E,$79,$31,$70	; Block 4x7 tiles from 798E to $7031
	DEFB	$05,$04,$07,$8E,$79,$14,$70	; Block 4x7 tiles from 798E to $7014
	DEFB	$FF	; End of sequence

; Room 98C0 (think door)
L98C0:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	L9A9A	; Room to Left
	DEFW	L9876	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$F0,$FF,$90,$65	; Fill horz 240 tiles with $FF at $6590
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$05,$04,$03,$7B,$7E,$EF,$70	; Block 4x3 tiles from 7E7B to $70EF
	DEFB	$05,$03,$03,$A0,$71,$98,$70	; Block 3x3 tiles from 71A0 to $7098
	DEFB	$05,$03,$03,$A0,$71,$F4,$70	; Block 3x3 tiles from 71A0 to $70F4
	DEFB	$05,$01,$05,$03,$99,$AB,$66	; Block 1x5 tiles from 9903 to $66AB
	DEFB	$05,$01,$05,$08,$99,$AE,$66	; Block 1x5 tiles from 9908 to $66AE
	DEFB	$0C,$01,$99,$02,$07,$8E,$66	; Block 2 tiles from 9901 to $668E copy 7 times
	DEFB	$FF	; End of sequence

; Blocks for rooms
L9901:	DEFB	$9A,$99	; Back block 2x1
L9903:	DEFB	$C5	; Back block 1x5
	DEFB	$C5
	DEFB	$BC
	DEFB	$C5
	DEFB	$C5
L9908:	DEFB	$C5	; Back block 1x5
	DEFB	$C5
	DEFB	$BD
	DEFB	$C5
	DEFB	$C5

; Room 990D
L990D:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9634	; Room Up
	DEFW	$0000
	DEFB	$03,$FF,$14,$11,$9A,$65	; Rectangle 20x17 tiles with $FF at $659A
	DEFB	$03,$00,$11,$0C,$9B,$65	; Rectangle 17x12 tiles with $00 at $659B
	DEFB	$03,$00,$08,$04,$0C,$67	; Rectangle 8x4 tiles with $00 at $670C
	DEFB	$09,$00,$03,$0B,$67	; Triangle with $00, count=3 at $670B
	DEFB	$0C,$48,$73,$02,$10,$A9,$65	; Block 2 tiles from 7348 to $65A9 copy 16 times
	DEFB	$05,$04,$07,$AA,$79,$A5,$70	; Block 4x7 tiles from 79AA to $70A5
	DEFB	$05,$04,$07,$AA,$79,$86,$70	; Block 4x7 tiles from 79AA to $7086
	DEFB	$03,$0D,$02,$11,$94,$65	; Rectangle 2x17 tiles with $0D at $6594
	DEFB	$01,$07,$2B,$26,$70	; Fill vert 7 tiles with $2B at $7026
	DEFB	$05,$03,$01,$97,$99,$B2,$65	; Block 3x1 tiles from 9997 to $65B2
	DEFB	$05,$03,$01,$97,$99,$2A,$66	; Block 3x1 tiles from 9997 to $662A
	DEFB	$05,$03,$01,$97,$99,$C0,$66	; Block 3x1 tiles from 9997 to $66C0
	DEFB	$05,$03,$01,$97,$99,$38,$67	; Block 3x1 tiles from 9997 to $6738
	DEFB	$05,$04,$03,$9A,$99,$CC,$65	; Block 4x3 tiles from 999A to $65CC
	DEFB	$05,$04,$03,$9A,$99,$26,$66	; Block 4x3 tiles from 999A to $6626
	DEFB	$05,$04,$03,$9A,$99,$80,$66	; Block 4x3 tiles from 999A to $6680
	DEFB	$05,$04,$03,$9A,$99,$DA,$66	; Block 4x3 tiles from 999A to $66DA
	DEFB	$05,$04,$03,$9A,$99,$34,$67	; Block 4x3 tiles from 999A to $6734
	DEFB	$05,$04,$02,$9E,$99,$90,$65	; Block 4x2 tiles from 999E to $6590
	DEFB	$FF	; End of sequence

; Blocks for rooms
L9997:	DEFB	$1A,$1A,$16	; Back block 3x1
L999A:	DEFB	$B4,$AA,$B4,$AA	; Back block 4x1
L999E:	DEFB	$AC,$BE,$AC,$BE	; Back block 4x2
	DEFB	$AD,$AB,$AD,$AB

; Room 99A6
L99A6:	DEFW	L7918	; Room procedure
	DEFW	LA110	; Initialization
	DEFW	$0000
	DEFW	L9739	; Room to Right
	DEFW	$0000
	DEFW	$0000
	DEFB	$02,$1E,$FF,$70,$67	; Fill horz 30 tiles with $FF at $6770
	DEFB	$01,$0E,$FF,$D6,$65	; Fill vert 14 tiles with $FF at $65D6
	DEFB	$01,$07,$2B,$9E,$70	; Fill vert 7 tiles with $2B at $709E
	DEFB	$03,$FF,$14,$02,$9A,$65	; Rectangle 20x2 tiles with $FF at $659A
	DEFB	$03,$FF,$03,$08,$E7,$65	; Rectangle 3x8 tiles with $FF at $65E7
	DEFB	$0E,$00,$B9,$66		; Put tile $00 at $66B9
	DEFB	$05,$02,$04,$BB,$71,$01,$71	; Block 2x4 tiles from 71BB to $7101
	DEFB	$03,$0D,$02,$10,$94,$65	; Rectangle 2x16 tiles with $0D at $6594
	DEFB	$05,$04,$03,$9A,$99,$CC,$65	; Block 4x3 tiles from 999A to $65CC
	DEFB	$05,$04,$03,$9A,$99,$26,$66	; Block 4x3 tiles from 999A to $6626
	DEFB	$05,$04,$03,$9A,$99,$80,$66	; Block 4x3 tiles from 999A to $6680
	DEFB	$05,$04,$03,$9A,$99,$DA,$66	; Block 4x3 tiles from 999A to $66DA
	DEFB	$05,$04,$02,$9A,$99,$34,$67	; Block 4x2 tiles from 999A to $6734
	DEFB	$05,$03,$01,$97,$99,$EE,$65	; Block 3x1 tiles from 9997 to $65EE
	DEFB	$05,$03,$01,$97,$99,$48,$66	; Block 3x1 tiles from 9997 to $6648
	DEFB	$05,$03,$01,$97,$99,$C0,$66	; Block 3x1 tiles from 9997 to $66C0
	DEFB	$05,$04,$02,$9E,$99,$90,$65	; Block 4x2 tiles from 999E to $6590
	DEFB	$FF	; End of sequence

; Room 9A1E
L9A1E:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	L7C9C	; Room to Right
	DEFW	L9A5A	; Room Up
	DEFW	$0000
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$02,$06,$08,$92,$65	; Rectangle 6x8 tiles with $02 at $6592
	DEFB	$03,$02,$08,$06,$D4,$65	; Rectangle 8x6 tiles with $02 at $65D4
	DEFB	$09,$02,$06,$8F,$66	; Triangle with $02, count=6 at $668F
	DEFB	$03,$02,$0E,$06,$72,$66	; Rectangle 14x6 tiles with $02 at $6672
	DEFB	$07,$02,$04,$FA,$65	; Triangle with $02, count=4 at $65FA
	DEFB	$0C,$B9,$71,$02,$08,$94,$65	; Block 2 tiles from 71B9 to $6594 copy 8 times
	DEFB	$02,$0F,$21,$25,$67	; Fill horz 15 tiles with $21 at $6725
	DEFB	$02,$0E,$21,$44,$67	; Fill horz 14 tiles with $21 at $6744
	DEFB	$FF	; End of sequence

; Room 9A5A
L9A5A:	DEFW	LB452	; Room procedure
	DEFW	LA389	; Initialization
	DEFW	$0000
	DEFW	L9552	; Room to Right
	DEFW	L9B51	; Room Up
	DEFW	L9A1E	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$1C,$0B,$92,$65	; Rectangle 28x11 tiles with $00 at $6592
	DEFB	$03,$00,$07,$04,$F1,$66	; Rectangle 7x4 tiles with $00 at $66F1
	DEFB	$09,$00,$03,$F0,$66	; Triangle with $00, count=3 at $66F0
	DEFB	$03,$02,$06,$02,$54,$67	; Rectangle 6x2 tiles with $02 at $6754
	DEFB	$02,$04,$02,$37,$67	; Fill horz 4 tiles with $02 at $6737
	DEFB	$0C,$B9,$71,$02,$05,$FC,$66	; Block 2 tiles from 71B9 to $66FC copy 5 times
	DEFB	$05,$02,$01,$84,$79,$DE,$66	; Block 2x1 tiles from 7984 to $66DE
	DEFB	$0C,$48,$73,$02,$0B,$99,$65	; Block 2 tiles from 7348 to $6599 copy 11 times
	DEFB	$FF	; End of sequence

; Room 9A9A
L9A9A:	DEFW	LB483	; Room procedure
	DEFW	LA192	; Initialization
	DEFW	L94CF	; Room to Left
	DEFW	L98C0	; Room to Right
	DEFW	L9ADC	; Room Up
	DEFW	$0000
	DEFB	$02,$0A,$FF,$91,$65	; Fill horz 10 tiles with $FF at $6591
	DEFB	$02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB	$03,$FF,$04,$08,$AA,$65	; Rectangle 4x8 tiles with $FF at $65AA
	DEFB	$0E,$2A,$90,$70		; Put tile $2A at $7090
	DEFB	$01,$06,$2B,$AE,$70	; Fill vert 6 tiles with $2B at $70AE
	DEFB	$0C,$48,$73,$02,$0F,$A5,$65	; Block 2 tiles from 7348 to $65A5 copy 15 times
	DEFB	$05,$04,$04,$A9,$71,$D4,$70	; Block 4x4 tiles from 71A9 to $70D4
	DEFB	$05,$04,$04,$A9,$71,$DB,$70	; Block 4x4 tiles from 71A9 to $70DB
	DEFB	$05,$04,$04,$A9,$71,$E0,$70	; Block 4x4 tiles from 71A9 to $70E0
	DEFB	$FF	; End of sequence

; Room 9ADC
L9ADC:	DEFW	LB41F	; Room procedure
	DEFW	LB422	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9B19	; Room Up
	DEFW	L9A9A	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$18,$08,$92,$65	; Rectangle 24x8 tiles with $00 at $6592
	DEFB	$03,$00,$0F,$07,$8B,$66	; Rectangle 15x7 tiles with $00 at $668B
	DEFB	$09,$00,$06,$8A,$66	; Triangle with $00, count=6 at $668A
	DEFB	$0C,$48,$73,$02,$11,$A5,$65	; Block 2 tiles from 7348 to $65A5 copy 17 times
	DEFB	$01,$0F,$3A,$A0,$65	; Fill vert 15 tiles with $3A at $65A0
	DEFB	$02,$0D,$FF,$70,$66	; Fill horz 13 tiles with $FF at $6670
	DEFB	$02,$0D,$27,$66,$70	; Fill horz 13 tiles with $27 at $7066
	DEFB	$05,$02,$01,$9D,$88,$67,$67	; Block 2x1 tiles from 889D to $6767
	DEFB	$FF	; End of sequence

; Room 9B19
L9B19:	DEFW	L7918	; Room procedure
	DEFW	LA133	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9BE7	; Room Up
	DEFW	L9ADC	; Room Down
	DEFB	$03,$FF,$02,$11,$90,$65	; Rectangle 2x17 tiles with $FF at $6590
	DEFB	$03,$FF,$04,$11,$AA,$65	; Rectangle 4x17 tiles with $FF at $65AA
	DEFB	$0C,$48,$73,$02,$11,$A5,$65	; Block 2 tiles from 7348 to $65A5 copy 17 times
	DEFB	$01,$11,$3A,$A0,$65	; Fill vert 17 tiles with $3A at $65A0
	DEFB	$02,$1A,$FA,$F9,$66	; Fill horz 26 tiles with $FA at $66F9
	DEFB	$05,$03,$03,$A0,$71,$96,$70	; Block 3x3 tiles from 71A0 to $7096
	DEFB	$05,$02,$01,$9D,$88,$0D,$67	; Block 2x1 tiles from 889D to $670D
	DEFB	$FF	; End of sequence

; Room 9B51
L9B51:	DEFW	L7918	; Room procedure
	DEFW	LA11F	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9B9D	; Room Up
	DEFW	L9A5A	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$1A,$0E,$92,$65	; Rectangle 26x14 tiles with $00 at $6592
	DEFB	$01,$07,$00,$7F,$66	; Fill vert 7 tiles with $00 at $667F
	DEFB	$01,$07,$2B,$74,$70	; Fill vert 7 tiles with $2B at $7074
	DEFB	$0C,$48,$73,$02,$02,$5B,$67	; Block 2 tiles from 7348 to $675B copy 2 times
	DEFB	$0C,$48,$73,$02,$0E,$A5,$65	; Block 2 tiles from 7348 to $65A5 copy 14 times
	DEFB	$05,$02,$01,$9D,$88,$3D,$67	; Block 2x1 tiles from 889D to $673D
	DEFB	$00,$D5,$70		; Barrel 3x3 tiles at $70D5
	DEFB	$05,$04,$04,$89,$87,$B4,$70	; Block 4x4 tiles from 8789 to $70B4
	DEFB	$05,$04,$04,$89,$87,$C0,$70	; Block 4x4 tiles from 8789 to $70C0
	DEFB	$05,$03,$03,$A0,$71,$E9,$70	; Block 3x3 tiles from 71A0 to $70E9
	DEFB	$FF	; End of sequence

; Room 9B9D
L9B9D:	DEFW	LB458	; Room procedure
	DEFW	LA1D6	; Initialization
	DEFW	$0000
	DEFW	$0000
	DEFW	L9F3A	; Room Up
	DEFW	L9B51	; Room Down
	DEFB	$04,$FF			; Fill entire screen with $FF
	DEFB	$03,$00,$1A,$07,$A0,$66	; Rectangle 26x7 tiles with $00 at $66A0
	DEFB	$03,$00,$18,$08,$94,$65	; Rectangle 24x8 tiles with $00 at $6594
	DEFB	$05,$02,$01,$9D,$88,$85,$67	; Block 2x1 tiles from 889D to $6785
	DEFB	$05,$02,$01,$9D,$88,$8A,$66	; Block 2x1 tiles from 889D to $668A
	DEFB	$0C,$48,$73,$02,$07,$A8,$66	; Block 2 tiles from 7348 to $66A8 copy 7 times
	DEFB	$0C,$48,$73,$02,$08,$A6,$65	; Block 2 tiles from 7348 to $65A6 copy 8 times
	DEFB	$05,$03,$03,$A0,$71,$24,$71	; Block 3x3 tiles from 71A0 to $7124
	DEFB	$00,$B5,$70		; Barrel 3x3 tiles at $70B5
	DEFB	$00,$0F,$71		; Barrel 3x3 tiles at $710F
	DEFB	$00,$12,$71		; Barrel 3x3 tiles at $7112
	DEFB	$00,$19,$71		; Barrel 3x3 tiles at $7119
	DEFB	$FF	; End of sequence

; Room 9BE7
L9BE7:	DEFW	LB483	; Room procedure
	DEFW	LA19C	; Initialization
	DEFW	$0000
	DEFW	L9DF5	; Room to Right
	DEFW	L9E73	; Room Up
	DEFW	L9B19	; Room Down
	DEFB	$03,$FF,$02,$0C,$26,$66	; Rectangle 2x12 tiles with $FF at $6626
	DEFB	$03,$FF,$09,$05,$96,$65	; Rectangle 9x5 tiles with $FF at $6596
	DEFB	$08,$FF,$05,$95,$65	; Triangle with $FF, count=5 at $6595
	DEFB	$06,$FF,$09,$28,$66	; Triangle with $FF, count=9 at $6628
	DEFB	$02,$04,$FF,$AA,$65	; Fill horz 4 tiles with $FF at $65AA
	DEFB	$03,$FF,$04,$04,$30,$67	; Rectangle 4x4 tiles with $FF at $6730
	DEFB	$01,$11,$3A,$A0,$65	; Fill vert 17 tiles with $3A at $65A0
	DEFB	$0C,$48,$73,$02,$0D,$A2,$65	; Block 2 tiles from 7348 to $65A2 copy 13 times
	DEFB	$0C,$48,$73,$02,$03,$49,$67	; Block 2 tiles from 7348 to $6749 copy 3 times
	DEFB	$02,$1A,$FA,$17,$67	; Fill horz 26 tiles with $FA at $6717
	DEFB	$05,$02,$01,$9D,$88,$2B,$67	; Block 2x1 tiles from 889D to $672B
	DEFB	$01,$04,$F9,$A5,$66	; Fill vert 4 tiles with $F9 at $66A5
	DEFB	$FF	; End of sequence

; Room 9DF5
L9DF5:	DEFW L7918	; Room procedure
	DEFW LA138	; Initialization
	DEFW L9BE7	; Room to Left
	DEFW $0000
	DEFW L9E22	; Room Up
	DEFW $0000
	DEFB $02,$07,$FF,$90,$65	; Fill horz 7 tiles with $FF at $6590
	DEFB $03,$FF,$02,$0C,$AC,$65	; Rectangle 2x12 tiles with $FF at $65AC
	DEFB $02,$7A,$FF,$14,$67	; Fill horz 122 tiles with $FF at $6714
	DEFB $0C,$48,$73,$02,$0D,$A4,$65	; Block 2 tiles from 7348 to $65A4 copy 13 times
	DEFB $0E,$2A,$A7,$6F		; Put tile $2A at $6FA7
	DEFB $01,$0B,$2B,$C5,$6F	; Fill vert 11 tiles with $2B at $6FC5
	DEFB $FF	; End of sequence

; Room 9E22
L9E22:	DEFW LB41F	; Room procedure
	DEFW LB422	; Initialization
	DEFW $0000
	DEFW $0000
	DEFW $0000
	DEFW L9DF5	; Room Down
	DEFB $04,$FF	; Fill entire screen with $FF
	DEFB $03,$00,$14,$02,$5A,$67	; Rectangle 20x2 tiles with $00 at $675A
	DEFB $03,$02,$1A,$0C,$B0,$65	; Rectangle 26x12 tiles with $02 at $65B0
	DEFB $09,$FF,$05,$C9,$65	; Triangle with $FF, count=5 at $65C9
	DEFB $0C,$48,$73,$02,$03,$48,$67	; Block 2 tiles from 7348 to $6748 copy 3 times
	DEFB $05,$02,$01,$9D,$88,$2A,$67	; Block 2x1 tiles from 889D to $672A
	DEFB $05,$02,$04,$BB,$71,$A5,$70	; Block 2x4 tiles from 71BB to $70A5
	DEFB $05,$03,$03,$A0,$71,$B7,$70	; Block 3x3 tiles from 71A0 to $70B7
	DEFB $05,$03,$03,$A0,$71,$BD,$70	; Block 3x3 tiles from 71A0 to $70BD
	DEFB $05,$03,$03,$A0,$71,$CA,$70	; Block 3x3 tiles from 71A0 to $70CA
	DEFB $05,$03,$04,$9C,$84,$96,$70	; Block 3x4 tiles from 849C to $7096
	DEFB $FF	; End of sequence

; Room 9E73
L9E73:	DEFW LB41F	; Room procedure
	DEFW LB422	; Initialization
	DEFW L9EB8	; Room to Left
	DEFW $0000
	DEFW $0000
	DEFW L9BE7	; Room Down
	DEFB $02,$78,$FF,$90,$65	; Fill horz 120 tiles with $FF at $6590
	DEFB $03,$FF,$06,$0D,$20,$66	; Rectangle 6x13 tiles with $FF at $6620
	DEFB $03,$FF,$06,$06,$E4,$66	; Rectangle 6x6 tiles with $FF at $66E4
	DEFB $08,$FF,$04,$1F,$67	; Triangle with $FF, count=4 at $671F
	DEFB $02,$0C,$FA,$DA,$66	; Fill horz 12 tiles with $FA at $66DA
	DEFB $01,$0D,$3A,$18,$66	; Fill vert 13 tiles with $3A at $6618
	DEFB $01,$07,$3A,$0C,$66	; Fill vert 7 tiles with $3A at $660C
	DEFB $02,$0A,$FA,$E9,$66	; Fill horz 10 tiles with $FA at $66E9
	DEFB $0C,$48,$73,$02,$0D,$1A,$66	; Block 2 tiles from 7348 to $661A copy 13 times
	DEFB $05,$02,$01,$9D,$88,$EC,$66	; Block 2x1 tiles from 889D to $66EC
	DEFB $FF	; End of sequence

; Room 9EB8
L9EB8:	DEFW L7918	; Room procedure
	DEFW LA12E	; Initialization
	DEFW L9ED9	; Room to Left
	DEFW L9E73	; Room to Right
	DEFW $0000
	DEFW $0000
	DEFB $02,$78,$FF,$90,$65	; Fill horz 120 tiles with $FF at $6590
	DEFB $02,$1E,$FA,$DA,$66	; Fill horz 30 tiles with $FA at $66DA
	DEFB $01,$07,$28,$03,$70	; Fill vert 7 tiles with $28 at $7003
	DEFB $01,$07,$28,$13,$70	; Fill vert 7 tiles with $28 at $7013
	DEFB $FF	; End of sequence

; Room 9ED9
L9ED9:	DEFW LB41F	; Room procedure
	DEFW LB422	; Initialization
	DEFW L9EFA	; Room to Left
	DEFW L9EB8	; Room to Right
	DEFW $0000
	DEFW $0000
	DEFB $02,$78,$FF,$90,$65	; Fill horz 120 tiles with $FF at $6590
	DEFB $02,$1E,$FA,$DA,$66	; Fill horz 30 tiles with $FA at $66DA
	DEFB $01,$07,$28,$05,$70	; Fill vert 7 tiles with $28 at $7005
	DEFB $01,$07,$28,$11,$70	; Fill vert 7 tiles with $28 at $7011
	DEFB $FF	; End of sequence

; Room 9EFA
L9EFA:	DEFW LB41F	; Room procedure
	DEFW LB422	; Initialization
	DEFW $0000
	DEFW L9ED9	; Room to Right
	DEFW $0000
	DEFW L9F3A	; Room Down
	DEFB $02,$7D,$FF,$90,$65	; Fill horz 125 tiles with $FF at $6590
	DEFB $03,$FF,$05,$0C,$26,$66	; Rectangle 5x12 tiles with $FF at $6626
	DEFB $03,$FF,$14,$05,$01,$67	; Rectangle 20x5 tiles with $FF at $6701
	DEFB $02,$13,$FF,$DF,$66	; Fill horz 19 tiles with $FF at $66DF
	DEFB $02,$06,$FA,$F2,$66	; Fill horz 6 tiles with $FA at $66F2
	DEFB $01,$07,$3A,$16,$66	; Fill vert 7 tiles with $3A at $6616
	DEFB $01,$07,$28,$17,$70	; Fill vert 7 tiles with $28 at $7017
	DEFB $0C,$48,$73,$02,$0D,$0E,$66	; Block 2 tiles from 7348 to $660E copy 13 times
	DEFB $05,$02,$01,$9D,$88,$E0,$66	; Block 2x1 tiles from 889D to $66E0
	DEFB $FF	; End of sequence

; Room 9F3A
L9F3A:	DEFW L7918	; Room procedure
	DEFW LA124	; Initialization
	DEFW $0000
	DEFW L9F7E	; Room to Right
	DEFW L9EFA	; Room Up
	DEFW L9B9D	; Room Down
	DEFB $03,$FF,$05,$0F,$90,$65	; Rectangle 5x15 tiles with $FF at $6590
	DEFB $02,$3C,$FF,$52,$67	; Fill horz 60 tiles with $FF at $6752
	DEFB $03,$FF,$14,$02,$99,$65	; Rectangle 20x2 tiles with $FF at $6599
	DEFB $0C,$48,$73,$02,$0F,$96,$65	; Block 2 tiles from 7348 to $6596 copy 15 times
	DEFB $05,$02,$04,$BB,$71,$E3,$70	; Block 2x4 tiles from 71BB to $70E3
	DEFB $01,$0D,$3A,$DA,$65	; Fill vert 13 tiles with $3A at $65DA
	DEFB $01,$0D,$3A,$E5,$65	; Fill vert 13 tiles with $3A at $65E5
	DEFB $05,$02,$01,$9D,$88,$68,$67	; Block 2x1 tiles from 889D to $6768
	DEFB $05,$02,$01,$48,$73,$86,$67	; Block 2x1 tiles from 7348 to $6786
	DEFB $FF	; End of sequence

; Room 9F7E
L9F7E:	DEFW L7918	; Room procedure
	DEFW LA129	; Initialization
	DEFW L9F3A	; Room to Left
	DEFW LA022	; Room to Right
	DEFW $0000
	DEFW $0000
	DEFB $03,$FF,$02,$02,$52,$67	; Rectangle 2x2 tiles with $FF at $6752
	DEFB $03,$A3,$1B,$02,$55,$67	; Rectangle 27x2 tiles with $A3 at $6755
	DEFB $05,$01,$02,$08,$A0,$54,$67	; Block 1x2 tiles from A008 to $6754
	DEFB $03,$F5,$1A,$0A,$20,$70	; Rectangle 26x10 tiles with $F5 at $7020
	DEFB $03,$FF,$02,$02,$20,$70	; Rectangle 2x2 tiles with $FF at $7020
	DEFB $05,$02,$02,$04,$A0,$2A,$66	; Block 2x2 tiles from A004 to $662A
	DEFB $05,$04,$04,$0A,$A0,$7C,$70	; Block 4x4 tiles from A00A to $707C
	DEFB $05,$04,$04,$0A,$A0,$80,$70	; Block 4x4 tiles from A00A to $7080
	DEFB $05,$04,$04,$0A,$A0,$84,$70	; Block 4x4 tiles from A00A to $7084
	DEFB $05,$04,$04,$0A,$A0,$88,$70	; Block 4x4 tiles from A00A to $7088
	DEFB $05,$04,$04,$0A,$A0,$8C,$70	; Block 4x4 tiles from A00A to $708C
	DEFB $05,$04,$04,$0A,$A0,$90,$70	; Block 4x4 tiles from A00A to $7090
	DEFB $03,$1B,$18,$04,$86,$66	; Rectangle 24x4 tiles with $1B at $6686
	DEFB $03,$A3,$18,$02,$F0,$65	; Rectangle 24x2 tiles with $A3 at $65F0
	DEFB $05,$01,$02,$08,$A0,$EF,$65	; Block 1x2 tiles from A008 to $65EF
	DEFB $0E,$98,$D3,$65		; Put tile $98 at $65D3
	DEFB $02,$16,$0D,$D4,$65	; Fill horz 22 tiles with $0D at $65D4
	DEFB $05,$04,$02,$1A,$A0,$A6,$65	; Block 4x2 tiles from A01A to $65A6
	DEFB $03,$0D,$04,$02,$AA,$65	; Rectangle 4x2 tiles with $0D at $65AA
	DEFB $FF	; End of sequence

; Blocks for rooms
LA004:	DEFB $00,$98	; Back block 2x2
	DEFB $98,$95
LA008:	DEFB $9E	; Back block 1x2
	DEFB $9D
LA00A:	DEFB $FE,$FB,$FB,$F8	; Front block 4x4
	DEFB $FD,$FF,$FF,$F7
	DEFB $FD,$FF,$FF,$F7
	DEFB $FC,$F9,$F9,$F6
LA01A:	DEFB $00,$00,$97,$96	; Back block 4x2
	DEFB $97,$96,$0D,$0D

; Room A022
LA022:	DEFW LB41F	; Room procedure
	DEFW LB422	; Initialization
	DEFW L9F7E	; Room to Left
	DEFW $0000
	DEFW $0000
	DEFW $0000
	DEFB $03,$A3,$1B,$02,$52,$67	; Rectangle 27x2 tiles with $A3 at $6752
	DEFB $03,$F5,$1A,$0A,$1C,$70	; Rectangle 26x10 tiles with $F5 at $701C
	DEFB $03,$FF,$02,$02,$34,$70	; Rectangle 2x2 tiles with $FF at $7034
	DEFB $05,$02,$02,$A7,$A0,$3E,$66	; Block 2x2 tiles from A0A7 to $663E
	DEFB $05,$04,$04,$0A,$A0,$76,$70	; Block 4x4 tiles from A00A to $7076
	DEFB $05,$04,$04,$0A,$A0,$7A,$70	; Block 4x4 tiles from A00A to $707A
	DEFB $05,$04,$04,$0A,$A0,$7E,$70	; Block 4x4 tiles from A00A to $707E
	DEFB $05,$04,$04,$0A,$A0,$82,$70	; Block 4x4 tiles from A00A to $7082
	DEFB $05,$04,$04,$0A,$A0,$86,$70	; Block 4x4 tiles from A00A to $7086
	DEFB $05,$04,$04,$0A,$A0,$8A,$70	; Block 4x4 tiles from A00A to $708A
	DEFB $03,$1B,$18,$04,$80,$66	; Rectangle 24x4 tiles with $1B at $6680
	DEFB $03,$A3,$18,$02,$EA,$65	; Rectangle 24x2 tiles with $A3 at $65EA
	DEFB $05,$01,$02,$AB,$A0,$02,$66	; Block 1x2 tiles from A0AB to $6602
	DEFB $0E,$94,$E2,$65		; Put tile $94 at $65E2
	DEFB $02,$16,$0D,$CC,$65	; Fill horz 22 tiles with $0D at $65CC
	DEFB $05,$04,$02,$AD,$A0,$94,$65	; Block 4x2 tiles from A0AD to $6594
	DEFB $03,$0D,$04,$02,$90,$65	; Rectangle 4x2 tiles with $0D at $6590
	DEFB $01,$08,$FF,$7B,$66	; Fill vert 8 tiles with $FF at $667B
	DEFB $05,$01,$02,$AB,$A0,$6D,$67	; Block 1x2 tiles from A0AB to $676D
	DEFB $FF	; End of sequence

; Blocks for rooms
LA0A7:	DEFB $94,$00	; Back block 2x2
	DEFB $0D,$94
LA0AB:	DEFB $9C	; Back block 1x2
	DEFB $9B
LA0AD:	DEFB $93,$92,$00,$00	; Back block 4x2
	DEFB $0D,$0D,$93,$92

; Room B513: Initial Room
LB513:	DEFW LB446	; Room procedure
	DEFW LB422	; Initialization
	DEFW $0000
	DEFW L791E	; Room to Right
	DEFW $0000
	DEFW $0000
	DEFB $04,$0D		; Fill entire screen with $0D
	DEFB $02,$1E,$F5,$70,$67	; Fill horz 30 tiles with $F5 at $6770
	DEFB $02,$1E,$0B,$EE,$70	; Fill horz 30 tiles with $0B at $70EE
	DEFB $03,$0C,$1E,$03,$0C,$71	; Rectangle 30x3 tiles with $0C at $710C
	DEFB $FF	; End of sequence

