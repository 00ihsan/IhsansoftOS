bootloader_location = "sector 1\bootloader.asm"

bootloader_location: iso flp bin

iso: bootloader_location
	nasm ${bootloader_location} -f bin -o bootloader.iso
	move "bootloader.iso" "build"

flp: bootloader_location
	nasm ${bootloader_location} -f bin -o bootloader.flp
	move "bootloader.flp" "build"
	
bin: bootloader_location
	nasm ${bootloader_location} -f bin -o bootloader.bin
	move "bootloader.bin" "build"