[org 0x7c00] ;define start adress so the bios knows where to find the program and data.

mov [BOOT_DISK], dl ;move boot disk number to variable

mov bp, 0x7c00 ;begin point in memory.
mov sp, bp ;assign stack pointer to begin point.

mov bx, InitString
call PrintString
call ReadDisk

jmp $ ;make an infinite loop

%include "sector 1\print.asm"
%include "sector 1\readDisk.asm"

times 510-($-$$) db 0; the bootloader must be 512 bytes. 

dw 0xaa55