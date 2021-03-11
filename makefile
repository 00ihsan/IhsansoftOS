bootloader_location = "sector 1\bootloader.asm"
extendexProgram_location = "sector 2\extendedProgram.asm"
output = IhsansoftOS.iso

program:
	nasm ${bootloader_location} -f bin -o bootloader.bin
	nasm ${extendexProgram_location} -f bin -o extendedProgram.bin
	copy /b "extendedProgram.bin"+"bootloader.bin" ${output}
	move ${output} "build"
	del "extendedProgram.bin"
	del "bootloader.bin"
	echo "make finished successfully!"