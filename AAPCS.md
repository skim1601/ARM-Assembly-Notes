## Clobbered Register
- A clobbered register in ARM architecture is a register whose value is changed or destroyed by a subroutine, making the previous value unavailable for the caller function. This can cause unexpected behavior and bugs if the caller function relies on the previous value of the clobbered register.
- To avoid such issues, it is recommended to follow a specific protocol for register usage, such as the Procedure Call Standard for the ARM Architecture (AAPCS). By following this standard, developers can ensure that subroutines do not clobber registers that are needed by the caller function, leading to more reliable and predictable code behavior.

## Protocedure Call Standard for the ARM Architecture (AAPCS)
- The AAPCS defines a set of rules for register usage, including which registers can be clobbered and which must be preserved across function calls. 
-  It specifies a set of rules for how functions should use registers and the stack, in order to ensure that function calls are interoperable across different compilers and platforms.
- Some key aspects of the AAPCS include:
    - Register Usage: The AAPCS specifies which registers can be used for argument passing, and which must be preserved across function calls. For example, R0-R3 are designated as argument passing registers, while R4-R11 must be preserved.
    - Stack Usage: The AAPCS also defines how the stack should be used for argument passing and register preservation. In general, if more arguments are passed than can be accommodated in the argument passing registers, the rest of the arguments will be passed on the stack.
    - Alignment: The AAPCS requires that data on the stack be aligned to a 4-byte boundary. This ensures that accessing data on the stack is as efficient as possible.
    - Function Prologue and Epilogue: The AAPCS requires that function prologues and epilogues follow a specific format. The prologue is responsible for setting up the stack frame, and the epilogue is responsible for tearing it down.
- By following the AAPCS, developers can ensure that function calls are portable across different platforms, and that functions can be called from code written in different languages and using different compilers. This makes it easier to write reliable, interoperable code that runs efficiently on the ARM architecture.