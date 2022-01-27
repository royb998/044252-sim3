.text
main:   # Start of your code

    lw      t1, 0x08(x0)
    lw      t2, 0x0c(x0)
    sw2     t1, 0x10(x0)
    sw2     t2, 0x14(x0)

    # End of your code
    add     t6, x0, x0
    beq     t6, x0, finish

deadend: beq    t6, x0, deadend

finish:
    lw      t4, 0(x0)
    lw      t5, 4(x0)
    sw      t5, 0xFF(t4)
    beq     t6, x0, deadend
