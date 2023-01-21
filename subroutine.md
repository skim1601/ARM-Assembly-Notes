## Subroutine
- If there is no branching instruction in an ARM assembly program, the program will continue to execute the next instruction in the sequence. In other words, the program will "fall through" to the next instruction, without explicitly branching to a different location.

- For example, consider the following code:
```
subroutine1:
    ; code for subroutine1
    ; ...
    ; no branching instruction here
subroutine2:
    ; code for subroutine2
    ; ...
```

- In this case, if the program execution reaches the end of subroutine1 without any branching instruction, it will continue to the next instruction which is the start of subroutine2.

- It's worth noting that if you want to jump to a specific subroutine from another point in the program, you can use the "branch" (```B```) instruction to do so, specifying the address of the subroutine as the target.

- You can also use the "branch with link" (```BL```) instruction to call a subroutine, this instruction will save the return address in the link register (```LR```) before branching to the subroutine, and you will use "branch exchange" (```BX LR```) to return to the calling function.