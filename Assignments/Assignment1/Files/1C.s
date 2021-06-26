.globl _main
.text

_main:
  movq L@GOTPCREL(%rip), %rdi   #get address of L
  movq $1, %rax                 #outer counter i = 1

.out:
  movq %rax, %r8                
  decq %r8                      #inner counter j = i-1
  movq %rax,%r9                 #%r9 holds the position to which L[i] has to be shifted
  movw (%rdi,%rax,2), %cx       #store L[i] in %cx

.in:
  cmpw (%rdi,%r8,2), %cx
  jge .shift                    #if L[i] > L[j] then move L[i] to %r9
  movq %r8, %r9                 #else %r9 = j
  
  cmpq $0, %r8
  jz .shift                     #if j == 0, then move L[i] to %r9
  decq %r8                      #j--
  jmp .in

.shift:                         #now %r9 is where L[i] should be
  cmpq %r9, %rax
  je .done                      #if %r9 == i then done
  movw %cx, %bx                 #else store L[i] in %bx
  movq %rax, %r8
  decq %r8                      #r8 = i-1
.right:
  movw (%rdi,%r8,2), %cx
  movw %cx, 2(%rdi,%r8,2)       #move L[%r8] to L[%r8+1]
  cmpq %r8, %r9
  je .insert                    #until r8 == r9
  decq %r8                      #r8--
  jmp .right
.insert:                        
  movw %bx, (%rdi,%r9,2)        #put %bx = L[i] in L[%r8]

.done:
  incq %rax                     #i++
  cmpq $32, %rax
  jne .out

.exit:
  ret                           #sorted array is stored in M[%rdi]

.data:                          # initialise
L: .word 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17 , 16 , 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
