# Computer Systems Organisation (CS2.201)
## Summer 2021, IIIT Hyderabad
## 28 July, Wednesday (Lecture 28) – Virtual Memory

Taught by Ziaul Choudhury

## Virtual Memory (contd.)
### Advantages
Virtual memory has two main advantages: memory management and memory protection:

* As a tool for memory management (or allocation), virtual memory aids in the use of RAM as a cache for the hard disk. It also simplifies sharing (communication between processes or IPC), linking (combining object files) and loading (moving code from hard disk to memory).
* As a tool for memory protection, virtual memory enables us to store "permissions" for memory blocks (in the form of bits in the page table).

### Address Translation
The task of the MMU is to convert a virtual address to a physical address.  

In the virtual address, if the page size is $2^n$ bytes, the LS $n$ bits (the page offset) identify the byte we need to access in the page; it is unchanged from the virtual to the physical address. The remaining part of the address form a virtual page number, which is converted to the physical page number by looking it up in the translation lookaside buffer (TLB).
