global _test
global _main
extern _printf
section .text;alex
_test:
ret
_main:
push rbp;alain
mov rbp, rsp
sub rsp, 320
lea rdi, [rel message]
mov rsi, 10
mov rdx, 10
mov rcx, 10
mov r8, 10
mov r9, 10
mov r10, 0
debut:
cmp r10, 272
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
lea r10, [rel message]
mov [r11], r10
add r11, 8
mov DWORD [r11], 34
call _printf
call _test
mov rsp, rbp
pop rbp
ret
section .data
message: db "global _test%cglobal _main%cextern _printf%csection .text;alex%c_test:%cret%c_main:%cpush rbp;alain%cmov rbp, rsp%csub rsp, 320%clea rdi, [rel message]%cmov rsi, 10%cmov rdx, 10%cmov rcx, 10%cmov r8, 10%cmov r9, 10%cmov r10, 0%cdebut:%ccmp r10, 272%cje end%cmov r11, rsp%cadd r11, r10%cmov DWORD [r11], 0xa%cadd r10, 4%cjmp debut%cend: xor rax, rax%cadd r11, 4%cmov DWORD [r11], 34%cadd r11, 8%clea r10, [rel message]%cmov [r11], r10%cadd r11, 8%cmov DWORD [r11], 34%ccall _printf%ccall _test%cmov rsp, rbp%cpop rbp%cret%csection .data%cmessage: db %c%s%c,0",0