# STR vs MOV
- "move" and "store" are not specific instructions in ARM assembly, but they can be used as a general terms to refer to transferring data from one location to another.

- "move" can refer to copying the value of one register to another register, without changing the contents of memory. This can be achieved in ARM assembly using the "mov" instruction. The syntax for this instruction is:
```mov <destination>, <source>```
- here ```<destination>``` is the register where the data will be stored and ```<source>``` is the register where the data is stored.

- "store" can refer to saving the contents of a register to memory. This can be achieved in ARM assembly using the "str" instruction as mentioned before. The syntax is:
```str <destination>, <source>```
- Where ```<destination>``` is the memory location where the data will be stored and ```<source>``` is the register where the data is stored.

- In summary, "move" is used to copy the contents of one register to another and "store" is used to save the contents of a register to memory.