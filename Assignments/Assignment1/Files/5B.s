.global _hamm

_hamm:
  xorl %edi, %esi         #b = a^b
  movq $0, %rdx

  movq $0, %rax         #accumulator of sum of (a^b) & pow(2,i) for i = 0 to 31

  movq $0, %rcx         #%rcx = i = 0
.loop:
  movl $1, %edx          
  shll %cl, %edx         #%rdx = pow(2,i)
  andl %esi, %edx         #%rdx = pow(2,i) if ith bit of (a^b) is 1, else 0

  shrl %cl, %edx         #%rdx = ith bit of (a^b)
  addq %rdx, %rax       #sum += ith bit

  incq %rcx
  cmp $32, %rcx        
  jne .loop             #if i = 32, then repeat
  
.exit:
  ret
