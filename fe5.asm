lorom

ORG $83D92F
JSL $809760

ORG $809760
	PHP
	REP #$30
	AND #$00FF
	BEQ failure
	CMP #$0064
	BCS success2
	PHY
	LDY $0B
	PHY
	STA $0B 
	JSL $80B116
	sta $15
	JSL $80B116
	clc
	adc $15
	lsr
	CMP $0B
	BCC success
	PLY
	STY $0B
	PLY
failure:
	PLP
	CLC
	RTL
success:
	PLY
	STY $0B
	PLY
success2:
	PLP
	SEC
	RTL