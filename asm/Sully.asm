global _main
extern _system
extern _dprintf
section .text
_main:
push rbp
mov rbp, rsp
sub rsp, 1280
mov r10, 5
cmp r10, 0
jle return
mov rax, 0x20000bc
lea rdi, [rel sully]
lea rsi, [rbp - 144]
syscall
cmp rax, 0
je ninc
inc r10
ninc:
dec r10
add BYTE [rel filename + 6], r10b
add BYTE [rel nasm + 21], r10b
add BYTE [rel nasm + 40], r10b
add BYTE [rel nasm + 53], r10b
add BYTE [rel nasm + 66], r10b
inc r10
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
mov rax, r10
dec rax
mov r10, 0
debut:
cmp r10, 656
je fin
cmp r10, 32
jne cont
mov r11, rsp
add r11, r10
mov DWORD [r11], eax
add r10, 8
cont:
mov r11, rsp
add r11, r10
mov DWORD [r11], 0xa
add r10, 4
jmp debut
fin:
add r11, 4
mov rax, 0
begin:
cmp rax, 3
jge end
mov DWORD [r11], 34
add r11, 8
mov DWORD [r11], 34
add r11, 8
mov DWORD [r11], 10
add r11, 8
inc rax
jmp begin
end:
mov DWORD [r11], 34
add r11, 8
lea r10, [rel message]
mov [r11], r10
add r11, 8
mov DWORD [r11], 34
xor rax, rax
call _dprintf
lea rdi, [rel nasm]
call _system
return:
mov rsp, rbp
pop rbp
ret
section .data
sully: db "Sully_5.asm", 0
filename: db "Sully_0.asm", 0
nasm: db "nasm -fmacho64 Sully_0.asm && gcc Sully_0.o -o Sully_0 && ./Sully_0", 0
message: db "global _main%cextern _system%cextern _dprintf%csection .text%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 1280%cmov r10, %d%ccmp r10, 0%cjle return%cmov rax, 0x20000bc%clea rdi, [rel sully]%clea rsi, [rbp - 144]%csyscall%ccmp rax, 0%cje ninc%cinc r10%cninc:%cdec r10%cadd BYTE [rel filename + 6], r10b%cadd BYTE [rel nasm + 21], r10b%cadd BYTE [rel nasm + 40], r10b%cadd BYTE [rel nasm + 53], r10b%cadd BYTE [rel nasm + 66], r10b%cinc r10%cmov rax, 0x2000005%clea rdi, [rel filename]%cmov rsi, 513%cmov rdx, 420%csyscall%cmov rdi, rax%clea rsi, [rel message]%cmov rdx, 10%cmov rcx, 10%cmov r8, 10%cmov r9, 10%cmov rax, r10%cdec rax%cmov r10, 0%cdebut:%ccmp r10, 656%cje fin%ccmp r10, 32%cjne cont%cmov r11, rsp%cadd r11, r10%cmov DWORD [r11], eax%cadd r10, 8%ccont:%cmov r11, rsp%cadd r11, r10%cmov DWORD [r11], 0xa%cadd r10, 4%cjmp debut%cfin:%cadd r11, 4%cmov rax, 0%cbegin:%ccmp rax, 3%cjge end%cmov DWORD [r11], 34%cadd r11, 8%cmov DWORD [r11], 34%cadd r11, 8%cmov DWORD [r11], 10%cadd r11, 8%cinc rax%cjmp begin%cend:%cmov DWORD [r11], 34%cadd r11, 8%clea r10, [rel message]%cmov [r11], r10%cadd r11, 8%cmov DWORD [r11], 34%cxor rax, rax%ccall _dprintf%clea rdi, [rel nasm]%ccall _system%creturn:%cmov rsp, rbp%cpop rbp%cret%csection .data%csully: db %cSully_5.asm%c, 0%cfilename: db %cSully_0.asm%c, 0%cnasm: db %cnasm -fmacho64 Sully_0.asm && gcc Sully_0.o -o Sully_0 && ./Sully_0%c, 0%cmessage: db %c%s%c,0",0