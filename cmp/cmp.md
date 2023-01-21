## Using 'CMP'
- The "compare" (```CMP```) instruction in ARM assembly is used to compare two values and set the condition flags (N, Z, C, and V) based on the result of the comparison. The instruction takes the form:
```CMP{cond}{S} Rn, Operand2```

- Where:
    - ```{cond}``` is an optional condition code that specifies when the instruction should be executed.
    - ```{S}``` is an optional flag that specifies whether the instruction should update the condition flags.
    - ```Rn``` is the register containing the first operand.
    - ```Operand2``` is the second operand, which can be a register or an immediate value.
    - Here are some examples of how to use the ```CMP``` instruction:

Compare two registers:
```
mov r0, #5
mov r1, #7
cmp r0, r1
```
- In this example, the instruction compares the contents of register ```r0``` (5) with the contents of register ```r1``` (7). The result of the comparison is that ```r0``` is less than ```r1```.

- Compare a register with an immediate value:
```
mov r2, #10
cmp r2, #5
```
- In this example, the instruction compares the contents of register r2 (10) with the immediate value 5. The result of the comparison is that r2 is greater than 5.

- Compare a register with an immediate value and update the condition flags:
```
mov r3, #5
cmp r3, #7
```

- In this example, the instruction compares the contents of register r3 (5) with the immediate value 7. The result of the comparison is that r3 is less than 7. The instruction also updates the condition flags (N, Z, C, and V) based on the result of the comparison.

- Once the comparison is done, you can use branch instructions such as BEQ, BNE, BGT, BLT, etc. that use the result of the comparison to decide whether to branch or not.

- It's worth noting that the CMP instruction doesn't modify the contents of the register, it only updates the condition flags and the register contents remain unchanged.