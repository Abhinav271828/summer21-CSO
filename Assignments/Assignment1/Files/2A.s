.global _main
.text

_main:
  movq L@GOTPCREL(%rip), %rdi   #get address of L
  movq c@GOTPCREL(%rip), %rsi   #get address of c
  movw (%rsi), %si              #get value of c
  movq $0, %rax                 #index i

.iter:
  cmpw (%rdi,%rax,2), %si      
  je .exit                      #if L[i] == c, then return i
  incq %rax                     #else i++
  cmpq $32, %rax
  jne .iter
  movq $-1, %rax                #if i == 32, then return -1

.exit:                          
  ret                           #%rax contains the index of c if c is in L, else -1

.rodata:                        #initialise
L: .word 31
   .word 30
   .word 29
   .word 28
   .word 27
   .word 26
   .word 25
   .word 24
   .word 23
   .word 22
   .word 21
   .word 20
   .word 19
   .word 18
   .word 17
   .word 16
   .word 15
   .word 14
   .word 13
   .word 12
   .word 11
   .word 10
   .word 9
   .word 8
   .word 7
   .word 6
   .word 5
   .word 4
   .word 3
   .word 2
   .word 1
   .word 0

c: .word 28

