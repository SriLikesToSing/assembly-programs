; Hello world program

SECTION .data
msg db 'Fuck Assembly!', 0Ah

SECTION .text
global _start

_start:

	mov edx, 13
	mov ecx, msg 
	mov ebx, 1
	mov eax, 4
 





















