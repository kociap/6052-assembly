; assembler http://skilldrick.github.io/easy6502

; 0 - black
; 1 - white

LDA #$01 ; load color
LDX #$02 ; load display base address

; loop to fill screen
loop_external:
  STX $01

  loop_internal:
    STA ($00), Y
    INY
    CPY #$00
    BNE loop_internal
  
  INX
  CPX #$06
  BNE loop_external
  BRK
