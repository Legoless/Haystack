Classes
=======

This wiki describes utility classes in Haystack SDK.

HSMath
--------
A basic class for all the missing mathematical and arithmetic operations and functions.

```objective-c
+ (double)degreesToRadians:(double)angle;

+ (double)radiansToDegrees:(double)radians;

+ (double)random;

+ (double)randomBetweenMin:(double)min max:(double)max;

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max;
```

HSWeakPointer
--------
A weak pointer wrapper object to be used to store weak references to certain objects.

```objective-c

@property (nonatomic, weak) id object;

- (BOOL)isValid;

+ (instancetype)weakPointerWithObject:(id)object;
```
