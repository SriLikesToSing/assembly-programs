; calculate length of string because we need it to pass as a parameter for sys_write



SECTION .data
msg db 'Hello, brave new world!', 0Ah

SECTION .text
global _start

_start:
	mov ebx, msg
	mov eax, ebx

nextchar:
	cmp byte[eax], 0
	jz finished
	inc eax
	jmp nextchar

finished:
	sub eax, ebx ;ebx now contains the number of characters in string


	mov edx, eax
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov ebx, 0
	mov eax, 1
	int 80h

































