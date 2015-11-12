Classes
=======

This wiki describes utility classes in Haystack SDK.

HAYMath
--------
A basic class for all the missing mathematical and arithmetic operations and functions that are of common usage.

```objective-c
+ (double)degreesToRadians:(double)angle;

+ (double)radiansToDegrees:(double)radians;

+ (double)random;

+ (double)randomBetweenMin:(double)min max:(double)max;

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max;
```

HAYUnitFormatter
--------
A simple class that helps with formatting units and adds correct prefix, such as milli, kilo, etc.

```objective-c
+ (NSString *)stringFromNumber:(NSNumber *)number forUnit:(HSUnitFormatterUnitType)unit;

+ (NSString *)fullStringFromNumber:(NSNumber *)number forUnit:(HSUnitFormatterUnitType)unit;
```

HAYWeakPointer
--------
A weak pointer wrapper object to be used to store weak references to certain objects.

```objective-c

@property (nonatomic, weak) id object;

- (BOOL)isValid;

+ (instancetype)weakPointerWithObject:(id)object;
```
