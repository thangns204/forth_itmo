global _start

%include "macro.inc"

%define pc r15
%define w r14
%define rstack r13

section .text

%include "words_.inc"

section .bss

resq 1023
rstack_start: resq 1

usr_mem: resq 65536

section .data

last_word: dq _lw
dp: dq usr_mem
stack_start: dq 0

section .text

_start:
	mov rstack, rstack_start
	mov [stack_start], rsp
	mov pc, forth_init

next:
	mov w, pc
	add pc, 8
	mov w, [w]
	jmp [w]
