global _main
extern _dprintf
section .text
%define A
%define B
%define FT(x)_main:
FT(xxxxxxxx)
;alain
push rbp
mov rbp, rsp
sub rsp, 640
mov rax, 0x2000005
lea rdi, [rel filename]
mov rsi, 513
mov rdx, 420
syscall
mov rdi, rax
lea rsi, [rel message]
mov rdx, 10
mov rcx, 10
mov r8, 10
mov r9, 10
mov r10, 0
debut:
cmp r10, 368
je end
mov r11, rsp
add r11, r10
mov DWORD [r11], 0xa
add r10, 4
jmp debut
end: xor rax, rax
add r11, 4
mov DWORD [r11], 34
add r11, 8
mov DWORD [r11], 34
add r11, 8
mov DWORD [r11], 10
add r11, 8
mov DWORD [r11], 34
add r11, 8
lea r10, [rel message]
mov [r11], r10
add r11, 8
mov DWORD [r11], 34
call _dprintf
mov rsp, rbp
pop rbp
ret
section .data
filename: db "Grace_kid.asm", 0
message: db "global _main%cextern _dprintf%csection .text%c%%define A%c%%define B%c%%define FT(x)_main:%cFT(xxxxxxxx)%c;alain%cpush rbp%cmov rbp, rsp%csub rsp, 640%cmov rax, 0x2000005%clea rdi, [rel filename]%cmov rsi, 513%cmov rdx, 420%csyscall%cmov rdi, rax%clea rsi, [rel message]%cmov rdx, 10%cmov rcx, 10%cmov r8, 10%cmov r9, 10%cmov r10, 0%cdebut:%ccmp r10, 368%cje end%cmov r11, rsp%cadd r11, r10%cmov DWORD [r11], 0xa%cadd r10, 4%cjmp debut%cend: xor rax, rax%cadd r11, 4%cmov DWORD [r11], 34%cadd r11, 8%cmov DWORD [r11], 34%cadd r11, 8%cmov DWORD [r11], 10%cadd r11, 8%cmov DWORD [r11], 34%cadd r11, 8%clea r10, [rel message]%cmov [r11], r10%cadd r11, 8%cmov DWORD [r11], 34%ccall _dprintf%cmov rsp, rbp%cpop rbp%cret%csection .data%cfilename: db %cGrace_kid.asm%c, 0%cmessage: db %c%s%c,0",0