In Objective-C, a subtle bug can occur when dealing with `NSDecimalNumber` and comparing them for equality using the `isEqual:` method.  This method performs a precise comparison, which can lead to unexpected results if you're dealing with numbers that have been calculated through floating-point operations. Floating-point arithmetic is not exact; it introduces tiny rounding errors, which can cause numbers that *should* be equal to fail the `isEqual:` comparison.

For example:

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@