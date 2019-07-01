; Template for console application 
.586 
.MODEL flat, C
OPTION CASEMAP:NONE 
includelib legacy_stdio_definitions.lib

extern exit :proc
EXTERN printf :PROC
EXTERN scanf :PROC
EXTERN asm_out :PROC
EXTERN puts :proc

.CONST 
MsgA DB 13,10,"Input your string1: ", 13, 10, 0 
MsgB DB 13,10,"Input your string2: ", 13, 10, 0 
.STACK ;Define a stack segment of 1KB (Not required for this example) 
.DATA
szRead BYTE "%s", 0
str1 db 125 dup(?)
str2 db 125 dup(?) 

.DATA? 
inbuf DB 100 DUP (?) 

.CODE ;Indicates the start of a code segment. 


asm_in PROC, first:PTR DWORD , second:PTR DWORD
lea edx,MsgA
push edx
call puts
sub esp,4

lea edx, first 
push edx 
lea ebx, szRead 
push ebx 
call scanf 
sub esp, 8

lea edx,MsgB
push edx
call puts
sub esp,4

lea edx, second 
push edx 
lea ebx, szRead 
push ebx 
call scanf 
sub esp, 8



lea edx, first 
push edx 
lea ebx, second
push ebx
call asm_out
add esp, 8





xor eax, eax 
ret 
asm_in ENDP 


End 