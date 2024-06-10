start:
    ldi r16, 50                        // deljenec
    ldi r17, 5                        // deljitelj
    cp r17, r16
    brsh manjse_ali_enako
    ldi r18, 0                        // števec, na koncu kaže rezultat

deli_loop:
    sub r16, r17
    inc r18

    cp r17, r16
    brsh ali_sta_enaka

    rjmp deli_loop

ali_sta_enaka:
    cp r16, r17
    breq enaka
    rjmp forever

enaka:
    sub r16, r17
    inc r18
    rjmp forever

manjse_ali_enako:
    cp r16, r17
    breq deli_loop                //sta enaka

forever:
    rjmp forever

// r18 je rezultat
// r16 je ostanek
