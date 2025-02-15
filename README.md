# COBOL Numeric Overflow Bug

This repository demonstrates a common error in COBOL programs: numeric overflow. The program `bug.cob` is designed to double a user-provided number repeatedly until the user enters 0. However, if the user enters a large enough number, the program will encounter an overflow, leading to incorrect results.

The solution, in `bugSolution.cob`, addresses this by adding checks to prevent overflow.  This example highlights the importance of careful consideration of data types and potential overflow conditions when working with numeric values in COBOL.