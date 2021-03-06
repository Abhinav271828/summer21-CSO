# Computer Systems Organisation (CS2.201)
## Summer 2021, IIIT Hyderabad

A collection of notes and resources for the Computer Systems Organisation (CSO) course at IIIT Hyderabad.

## Course Outline
- [x] Computer Arithmetic
- [x] Instruction Set Architecture
- [x] Processor Architecture and Design
- [x] Memory Hierarchies
- [x] Exceptional Control Flow
- [x] Virtual Memory

## Lecture Contents
* Week 1
    * Lecture 1 (24 May, Monday) – Introduction to Computer Systems
        - Goal
        - Course Outline
        - Major Functional Units of a Computer
        - Program Execution on a Computer System
        - Programming Abstractions
        - Instruction Set Architecture
    * Lecture 2 (26 May, Wednesday) – Integer Representation
        - Instruction Set Architecture (contd.)
        - Data Representation (Binary Representation, Word Size, Virtual Address Space)
    * Lecture 3 (28 May, Friday) – Integer Representation (contd.)
        - Storage Format
        - Boolean Algebra and Shift Operations
        - Unsigned and Signed Integers
* Week 2
    * Lecture 4 (31 May, Monday) – Integer Representation (contd.)
        - Integer Addition
        - Negation (Signed Integers)
        - Integer Multiplication
        - 1's Complement Representation
    * Lecture 5 (02 June, Wednesday) – Instruction Set Architecture/Assembly Language Programming
        - Instruction Set Architecture
        - Assembly Code
        - Instruction Format
    * Lecture 6 (04 June, Friday) – Instruction Set Architecture/Assembly Language Programming [3.2, 3.3, 3.4.1]
        - Instruction Format (contd.)
        - Assembly Code Examples
        - Processor State
        - Data Formats
        - Accessing Information: Registers
        - Operand Specifiers
* Week 3
    * Lecture 7 (07 June, Monday) – Data Movement Instructions [3.4]
        - Single-Suffix Instructions
        - Three-Suffix Instructions
        - Stack Operations
        - Example
    * Lecture 8 (09 June, Wednesday) – Arithmetic and Logical Instructions [3.5]
        - The `leal` Instruction
        - Unary and Binary Operations
        - Shift Operations
        - Example
        - Special Arithmetic Operations
    * Lecture 9 (11 June, Friday) – Condition Codes [3.6] 
        - Condition Codes
        - Conditional Instructions
        - Use Cases
* Week 4
    * Lecture 10 (14 June, Monday) – Conditional Branching
        - Jump Instructions
        - If-Then-Else
    * Lecture 11 (18 June, Friday) – Conditional Branching 2
        - Pipelining
        - Loops
            - Do-While
            - While
            - For
        - Switch-Case
* Week 5
    * Lecture 12 (21 June, Monday) – Procedures
        - Procedures
            - Stack Frames
            - Transferring Control
            - Register Usage Conventions
    * Lecture 13 (23 June, Wednesday) – Processor Architecture and Design
        - Procedures (contd.)
            - Recursion
        - CISC vs RISC
        - Y86 ISA
            - Program State
            - Instruction Format
            - Y86 Programs
    * Lecture 14 (25 June, Friday) – Y86 Implementation
        - Sequential Y86 Implementations
        - Instruction Stages
            - Fetch
            - Decode
            - Execute
            - Memory
            - Write-back
            - PC update
        - Hardware Structure
* Week 6
    * Lecture 15 (28 June, Monday) – SEQ Timing
        - SEQ Timing
        - SEQ Stage Implementations
            - Fetch
            - Decode and Write-Back
    * Lecture 16 (30 June, Wednesday)
        - SEQ Stage Implementations (contd.)
            - Execute
            - Memory
            - PC Update
        - Pipelined Instruction Processing
    * Lecture 17 (02 July, Friday)
        - Pipelined Y86: SEQ+
        - Pipelined Y86: PIPE-
            - Pipe Registers
            - Naming Convention
            - Select A
            - Next PC Prediction
            - Pipeline Hazards
        - Pipelined Y86: PIPE
            - Forwarding
    * Lecture 18 (03 July, Saturday)
        - Pipelined Y86: PIPE (contd.)
            - Exception Handling
            - Stage Implementations
* Week 7
    * Lecture 19 (05 July, Monday)
        - Pipelined Y86: PIPE (contd.)
            - Pipeline Control Logic
            - Stalling and Bubbles
    * Lecture 20 (07 July, Wednesday)
        - Memory Organisation
            - Flat vs Hierarchical Memory
            - The Memory Pyramid
        - SRAM vs DRAM
        - DRAM
            - Structure
            - Example
    * Lecture 21 (09 July, Friday)
        - DRAM (contd.)
            - Main Memory
        - Disk Storage
            - Structure
            - Disk Access
* Week 8
    * Lecture 22 (12 July, Monday)
        - Memory Pyramid 2.0
        - Caches
            - Principle of Caching
    * Lecture 23 (14 July, Wednesday)
        - Caches (contd.)
            - Structure of the Cache
    * Lecture 24 (16 July, Friday)
        - Caches (contd.)
            - Examples
* Week 9
    * Lecture 25 (19 July, Monday)
        - Control Flow
            - Smooth and Jittery Transitions
            - Exceptional Control Flow
            - Why ECF
        - Exceptions
            - Handling Exceptions
            - Classes of Exceptions
                - Interrupts
                - Traps and System Calls
                - Faults
                - Aborts
    * Lecture 26 (23 July, Friday)
        - Process Flows
            - Processes
            - The Abstraction
            - System Call Error Handling
            - Process Control
* Week 10
    * Lecture 27 (26 July, Monday)
        - Virtual Memory
            - Introduction
            - Physical and Virtual Addressing
            - Pages and Paging
            - Address Spaces
    * Lecture 28 (28 July, Wednesday)
        - Virtual Memory (contd.)
            - Advantages
            - Address Translation
