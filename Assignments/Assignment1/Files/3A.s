.global _rotate

_rotate:
  movq $0, %rax                 #outer loop i = 1

.out:
  movq %rax, %rbx               #inner loop j = i
  movq $7, %rcx
  subq %rax, %rcx               #terminating condition j = 7-i

.in:
  leaq (%rax,%rbx,8), %rsi
  leaq (%rdi,%rsi,2), %r8       #M[%r8] = A(j,i)

  movq $7, %rdx
  subq %rax, %rdx
  leaq (%rbx,%rdx,8), %rsi
  leaq (%rdi,%rsi,2), %r9       #M[%r9] = A(7-i,j)

  movq $7, %rdx
  subq %rbx, %rdx
  movq $7, %rsi
  subq %rax, %rsi
  leaq (%rsi,%rdx,8), %rsi
  leaq (%rdi,%rsi,2), %r10      #M[%r10] = A(7-j,7-i)

  movq $7, %rsi
  subq %rbx, %rsi
  leaq (%rsi,%rax,8), %rsi
  leaq (%rdi,%rsi,2), %r11      #M[%r11] = A(i,7-j)

.turn:                          #rotate M[%r8] -> M[%r9] -> M[%r10] -> M[%r11] -> M[%r8]
  movw (%r9), %si

  movw (%r8), %dx
  movw %dx, (%r9)
  movw (%r11), %dx
  movw %dx, (%r8)
  movw (%r10), %dx
  movw %dx, (%r11)

  movw %si, (%r10)

.checkj:
  incq %rbx                     #j++
  cmpq %rbx, %rcx
  jne .in                       #if j != 7-i, then repeat inner

.checki:        
  incq %rax                     #i++
  cmp $4, %rax                  
  jne .out                      #if i != 4, repeat outer

.exit:
  ret
