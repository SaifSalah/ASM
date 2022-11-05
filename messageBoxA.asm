
BITS 32

global _start

%define MessageBoxA 0x77762270
%define LoadlibraryA 0x75B22280

_start:

	push "ll"
	push "32.d"
	push "user"
	push esp

	mov eax, LoadlibraryA
	call eax

	;our string
	push "hxD"
	push "sala"
	push "saif"
	mov esi, esp

	xor ebx, ebx
	push ebx
	push esi
	push esi
	push ebx
	mov eax, MessageBoxA
	call eax
