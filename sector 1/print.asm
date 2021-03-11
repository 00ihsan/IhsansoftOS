PrintString:
    mov ah, 0x0e ;enable bios to display text.
    .Loop: ;loop for the string.
    cmp [bx], byte 0 ;conditional loop, so if the char is value 0 jump to exit.
    je .Exit
        mov al, [bx] ; load the data out of bx into al.
        int 0x10 ; generate interutp to signal the computer to print.
        inc bx ; increment adress bx.
        jmp .Loop ; go back to loop.
    .Exit:
    ret ;return

InitString:
    db '(C) Ihsansoft 2021',0