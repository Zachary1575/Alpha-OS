global _start

section .text

_start:
	mov ah, 0x0e	; int 10/ah = 0eh -->scrolling teletype BIOS routine
	
	mov al, 'H'
	int 0x10
	mov al, 'e'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'o'
	int 0x10
	mov al, ' '
	int 0x10
	mov al, 'W'
	int 0x10
	mov al, 'o'
	int 0x10
	mov al, 'r'
	int 0x10
	mov al,	'l'
	int 0x10
	mov al, 'd'
	int 0x10
	mov al, '!'
	int 0x10

	jmp $		; Infinite loop to avoid termination
	

times 510-($-$$) db 0	; Program must fit into 512 bytes, pad the boot sector
			; with 0's

dw 0xaa55		; Magic Number for BIOS to know we are a Boot Sector

