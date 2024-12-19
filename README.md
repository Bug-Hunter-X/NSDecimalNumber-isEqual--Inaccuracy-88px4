# NSDecimalNumber isEqual: Inaccuracy in Objective-C

This repository demonstrates a subtle bug related to the `isEqual:` method of `NSDecimalNumber` in Objective-C.  Due to the inherent imprecision of floating-point arithmetic, comparing `NSDecimalNumber` objects created through floating-point calculations for equality using `isEqual:` can yield unexpected results. The `isEqual:` method performs an exact comparison, failing when tiny rounding errors cause numbers that are mathematically equivalent to differ at the bit level.

The `bug.m` file contains code that reproduces the issue. The `bugSolution.m` file offers a solution using `NSDecimalNumber`'s `compare:` method to resolve this by comparing with a specified precision.

## How to Reproduce

1. Clone this repository.
2. Open `bug.m` in Xcode.
3. Build and run the project. Observe that the comparison using `isEqual:` fails despite the numbers being numerically the same.

## Solution

The `bugSolution.m` file demonstrates the correct approach using the `compare:` method, which allows for comparison with a specified precision. This handles the rounding errors effectively. 