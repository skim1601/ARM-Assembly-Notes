    .data
    num1: .word 5
    num2: .word 7
    result: .word 0

    .text
    .global main
main:
    mov r0, num1      // load address of num1 into r0
    ldr r1, [r0]      // load num1 into r1
    mov r0, num2      // load address of num2 into r0
    ldr r2, [r0]      // load num2 into r2

    bl add_numbers    // call the add_numbers subroutine

    mov r0, result    // load address of result into r0
    str r3, [r0]      // store the sum in result
    b end

add_numbers:
    add r3, r1, r2    // add the contents of r1 and r2 and store the result in r3
    bx lr             // return to the calling function

end:
    b end