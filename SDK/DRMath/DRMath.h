
@interface DRMath : NSObject

/*!
 * Converts angle in degrees to angle in radians.
 *
 * @param double angle in degrees
 * @return double angle in radians
 */
+ (double)degreesToRadians:(double)angle;

/*!
 * Converts angle in radians to angle in degrees.
 *
 * @param double angle in radians
 * @return double angle in degrees
 */
+ (double)radiansToDegrees:(double)radians;

/*!
 * Returns pseudo-random number on interval from 0.0 to 1.0.
 *
 * @return double random number between 0.0 and 1.0
 */
+ (double)random;

/*!
 * Returns pseudo-random floating point number in desired interval
 *
 * @param double minimum
 * @param double maximum
 * @return double random number between minimum and maximum
 */
+ (double)randomBetweenMin:(double)min max:(double)max;

/*!
 * Returns pseudo-random integer number in desired interval
 *
 * @param int minimum
 * @param int maximum
 * @return int pseudo-random number
 */
+ (NSInteger)randomIntegerBetweenMin:(NSInteger)min max:(NSInteger)max;

@end