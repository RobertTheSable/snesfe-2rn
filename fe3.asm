lorom

if read1($00FFDB) == $01
    !hook = $83B831
else 
    !hook = $83B81C
endif

; 1.1 = 83B831
ORG $83B81C
    jsl $DACB10     ; this is the hook to the new routine

ORG $DACB10
    php             ; save processor flags
    jsl $93EA87     ; load 1st random number
    sta $15         ; save 1st random number
    jsl $93EA87     ; load second random number
    clc             ; clear carry flag for addition
    adc $15         ; add random numbers together
    lsr             ; divide by 2 to get the average
    plp             ; restore processor flags
    rtl             ; return to check hit rate
