The solution involves using the `compare:` method of `NSDecimalNumber` instead of `isEqual:`. The `compare:` method allows you to specify a comparison level of precision, so minor discrepancies from floating-point rounding errors won't affect the comparison result.

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@