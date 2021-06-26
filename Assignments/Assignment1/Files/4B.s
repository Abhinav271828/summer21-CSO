.global _freq

_freq:
  movq $0, %rax                 #from the i = 0th letter A

.alph:
  movq $0, %rbx                 #array index j
  movq $0, %rcx                 #counter for freq of ith letter

.iter:
  addq $65, %rax
  cmpb (%rdi,%rbx), %al         
  jne .check                    #if L[j] != ith letter, then go to next letter

  incq %rcx                     #else increase frequency
  jmp .check

.check:
  subq $65, %rax
  incq %rbx                     #j++
  cmpq $32, %rbx
  jne .iter                     #if j != 32, then repeat

.out:
  movq %rcx, (%rsi,%rax,4)      #move frequency of ith letter to f[i]
  incq %rax                     #i++
  cmpq $26, %rax                
  jne .alph                     #if i != 26, then repeat
  
.exit:
  ret
