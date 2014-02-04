#define ARC4RANDOM_MAX 0x100000000

@implementation DRMath ()

+ (double)degreesToRadians:(double)angle
{
    return (angle / 180.0 * M_PI);
}

+ (double)radiansToDegrees:(double)radians
{
    return (radians * 180.0 / M_PI);
}

+ (double)random
{
    return (double)arc4random() / ARC4RANDOM_MAX;
}

+ (double)randomBetweenMin:(double)min max:(double)max
{
    return ((max - min) * [self random]) + min;
}

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max
{
    (NSInteger)(min + arc4random_uniform(max + 1 - min));
}

@end