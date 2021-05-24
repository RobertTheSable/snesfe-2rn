hirom

ORG $84E5C9
	JSL $C03E00

ORG $C03E00
	PHA
	JSL $80A73A
	phy
	ldy $15
	phy
	sta $15
	JSL $80A73A
	clc
	adc $15
	lsr
	ply
	sty $15
	ply
	CMP $01,s
	PLA
	RTL