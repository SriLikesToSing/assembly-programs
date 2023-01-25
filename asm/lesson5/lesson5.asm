;external include files

;when do you choose to push registers onto the stack?
	; for the functions file it was prbably because this program might have had used those registers 
		; for something else entirely

%include 'functions.asm'

SECTION .data
msg1 db 'Hello, brave new world!' , 0Ah
msg2 db 'This is how we recycle in NASM.', 0Ah

SECTION .text
global _start

_start:

	mov eax, msg1
	call sprint

	mov eax, msg2
	call sprint


	call quit



























































