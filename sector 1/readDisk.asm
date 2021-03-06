PROGRAM_SPACE equ 0x7a00

ReadDisk:
    mov ah, 0x02
    mov bx, PROGRAM_SPACE
    mov al, 100 ;assign diskspace to memory
    mov dl, [BOOT_DISK]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02
    int 0x13
    jc DisplayError
    ret

BOOT_DISK:
    db 0

DiskReadErrorStr:
    db 'Failed reading disk!',0
    
DisplayError:
mov bx, DiskReadErrorStr
call PrintString
jmp $