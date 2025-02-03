# Uncommon Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in Hack.  The bug is not immediately obvious and highlights the importance of careful consideration of potential overflows when dealing with large integer values in Hack.

The `bug.hack` file contains the buggy code. The `bugSolution.hack` file provides a corrected version which addresses the integer overflow issue. The main function calls the `baz()` function, which executes the chain of functions, including the function calls that could potentially cause an overflow.  Careful analysis of these functions and potential overflow during addition and multiplication is needed. 

The problem is exacerbated by the chain of functions.  Each function performs an operation that could potentially cause an overflow, making it more challenging to trace the exact point of failure.

**How to reproduce:** Run the `bug.hack` file with a very large input value for `x` (close to the maximum representable 64-bit integer) and observe the unexpected output. The `bugSolution.hack` file demonstrates the solution.