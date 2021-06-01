# Computer Systems Organisation
## Summer 2021, IIIT Hyderabad
## 01 June, Tuesday (Tutorial 1)

Taught by Samartha S M

## Signed Integers
In the signed magnitude system, the MSB indicates the sign (0 for positive, 1 for negative) and the remaining bits are the normal binary representation of the absolute value.  
In the 1's complement system, the bitwise complement of a positive number is used to represent its negation.  

In each of the above systems, there are distinct representations for $+0$ and $-0$. They both have the range $-2^{w-1}+1$ to $+2^{w-1}-1$.  

In the 2's complement system, $2^w -$ (the number) is used to represent its negation. This system has only one representation for 0. Its range is $-2^{w-1}$ to $+2^{w-1}-1$.    

One can easily convert from 2's complement to decimal by negating the MSB's value and taking the value of the remaining bits as usual.  

## Addition and Subtraction
Addition is carried out in hardware by a ripple adder.  
For subtraction, we simply add the negation of the subtrahend in 2's complement representation. Since 2's complement is modular, it works.  

When overflow happens, if the MSB is nonzero, it is discarded; therefore the number gets converted to the value (in the range $-2^{w-1}+1$ to $+2^{w-1}-1$) congruent to it modulo $2^w$.  
In the case of underflow as well, the same principle is followed, with the same result.  
