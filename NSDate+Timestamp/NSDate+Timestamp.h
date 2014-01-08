//
//  NSDate+Timestamp.h
//

#import <Foundation/Foundation.h>

@interface NSDate (Timestamp)

/*!
 *  Transforms NSDate into Unix timestamp in milliseconds
 *  @param date to be transformed to Unix timestamp
 *  @return unixTimestamp of passed date
 */
+ (NSTimeInterval)getUnixTimeStampFromNSDate:(NSDate *)date;

/*!
 * @return time interval since/until the Unix timestamp in milliseconds.
 *
 * If timestamp is in the future, interval is positive, if it is in the past
 * it is negative.
 */
+ (NSTimeInterval)timeIntervalUntilUnixTimeStamp:(NSNumber *)timestamp;

/*!
 * Returns Unix timestamp of current date
 *
 * @return NSTimeInterval Unix timestamp
 */
- (NSTimeInterval)unixTimestamp;

@end
