
main():
   int i = 1
   while i < 10:
      write(1, "x", 1)
      i += 1
   
   return i



/*
main:
	push    rbp
	mov     rbp, rsp
	//      assign [i]
	mov     DWORD PTR -4[rbp], 1
.while1:
	mov     eax, DWORD PTR -4[rbp]
	mov     ebx, 10
	cmp     eax, ebx
	setl    al
	cmp     al, 1
	jne     .endwhile1
	//      assign [edi]
	mov     edi, 1
	//      assign [rsi]
	lea     rsi, .STR1[rip]
	//      assign [edx]
	mov     edx, 1
	call    write
	mov     eax, DWORD PTR -4[rbp]
	add     eax, 1
	//      assign [i]
	mov     DWORD PTR -4[rbp], eax
	jmp     .while1
.endwhile1:
	mov     eax, DWORD PTR -4[rbp]
	leave   
	ret     
.endmain:
*/