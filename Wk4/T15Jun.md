# Computer Systems Organisation
## Summer 2021, IIIT Hyderabad
## 15 June, Tuesday (Tutorial 3) – Assembly Programming

Taught by Sai Kalakonda

## Fibonacci in Assembly
    .data           -- the data section
    n:
    .quad 9         -- n is 4 bytes, value 9
    
    .text           -- the code section
    .global main
    main:
    mov n@GOTPCREL(%rip), %r9     -- moves address of n (rel to %rip) to %r9
    movq (%r9), %r9               -- moves value of n to %r9
    movq $0, %rdx
    movq $1, %rcx                 -- base case
    movq %r9, %rdi                -- %rdi is iterator register
    jmp fib
    
    fib:
    cmpq $1, %rdi
    je .Lexit                     -- base case n = 1
    addq %rcx, %rdc               -- now they have to be swapped
    movq %rdx, %rax
    movq %rcx, %rdx
    movq %rax, %rcx               -- swapped
    dec %rdi
    call fib
    
    .Lexit
    ret                           -- return

## Factorial modulo n in Assembly
    .global main
    .test
    main:
    mov $7, %r8             -- x
    mov $100, %rcx          -- n
    mov %r8, %r10
    mov $1, %rbx            -- init
    mov $0, %r9             -- counter
    
    fact:
    incq %r9
    imul %r9, %rbx
    mov %rbx, %rax
    cqto                    -- move to %rax and extend with 0
    idivq %rcx
    mov %rdx, %rbx          -- mod in %rdx
    cmp %r9, %r8
    jne fact
    
    finish:
    mov %rbx, %r11
    
    exit:
    xor %rdi, %rdi
    syscall
    
## Merge in Assembly
We can write one function in assembly and the main function in C (to handle I/O).
    
    .text
    .global merge
    # %rdi -> first start
    # %rsi -> second start
    # %rdx -> ans start
    # %rcx -> size1, %r8 -> size2
    # i -> %r9, j -> %r10, k -> %r11
    merge:
    movl $0, %r9d
    movl $0, $r10d
    movl $0, $r11d
    .check:
    cmpl %r9d, %ecx
    jg check2
    je .fs
    .check2:            -- size1 > i
    cmpl %r10d, %r8d
    jg .actual
    je .ss
    .actual:                    -- size2 > j
    leaq (%rdi,%r9,4), %r12
    mov (%r12), %r13d           -- r13 -> arr1[i]
    leaq (%rsi,%r10,4), %r14
    movl (%r14), %r15d          -- r14 -> arr2[j]
    cmpl %r13d, %r15d
    jg .first
    jle .second
    .first:             -- arr2[j] > arr1[i]
    leaq (%rdx,%r11,4), %rbx
    movl %r13d, (%rbx)  -- arr[k] = arr1[i]
    inc %r11d           -- k++
    inc %r9d            -- i++
    jmp .check
    .second             -- arr2[j] ≤ arr1[j]
    leaq (%rdx,%r11,4), %rbx
    movl %r15d, (%rbx)  -- arr[k] = arr2[j]
    inc %r11d
    inc %r10d
    jmp .check
    
