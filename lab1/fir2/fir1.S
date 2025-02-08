# fir.S 
# assembly language of Finite Impulse Response (FIR)

// a0: base address of x
// a1: base address of c
// a2: base address of y, later used as pointer to y[j] in j loop
// a3: n
// a4: m

// t0: &y[n-m] to check termination of j loop
// t1: &c[m] to check termination of i loop
// t2: &x[j+m-1]
// t3: sum
// t4: &c[i] in i loop
// t5: &x[j-i+(m-1)] 
// t6: value of c[i]
// a5: value of x[j-1+(m-1)]

.global fir

fir:
    // Initialize &y[n-m]
    sub t0, a3, a4
    addi t6, zero, 4    // t6 holds the value of 4 for multiplication purposes in addresses
    mul t0, t0, t6
    add t0, t0, a2

    // Initialize &c[m]
    mul t1, a4, t6
    add t1, t1, a1

    // Initialize &x[j+m-1]
    addi t2, a4, -1
    mul t2, t2, t6
    add t2, t2, a0

    // a0 = &y[0]
    add  a0, a2, zero

loopj:
    // Goto donej if a2 is greater than t0
    bgt a2, t0, donej

    // Initialize sum
    add t3, zero, zero

    // Initialize c[i]
    add t4, a1, zero

    // Initialize x[j-i+(m-1)]
    add t5, t2, zero

loopi:
    // Math portion of loop

    // Load c[i] and x[j-i+(m-1)] into t6 and a5 respectively
    lw t6, 0(t4)
    lw a5, 0(t5)

    // Multiple c[i] and x[j-i+(m-1)], store the lower bits in a6, store the upper buts in a7
    mul a6, a5, t6
    //mulh a7, a5, t6

    // Shift the lower bits 31 to the right, shift the upper bits 1 to the left
    srli a6, a6, 31
    //slli a7, a7, 1

    // Add the upper and lower values into sum
    add t3, t3, a6
    //add t3, t3, a7

    // Update c[i] and x[j-i+(m-1)]
    addi t4, t4, 4
    addi t5, t5, -4

    // End math portion of loop

    // If t4 is less that t1, goto loopi
    blt t4, t1, loopi
    
    // Store sum in y[j]
    sw t3, 0(a2)

    // Update y[j]
    addi a2, a2, 4

    // Update x[j+(m-1)]
    addi t2, t2, 4

    j loopj




donej:
    ret                 # all done; return
