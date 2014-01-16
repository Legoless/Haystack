//
//  NSDate+Timestamp.m
//

#import "NSDate+Timestamp.h"

@implementation NSDate (Timestamp)

+ (NSTimeInterval)unixTimestampFromDate:(NSDate *)date
{
    NSTimeInterval timestamp = ([date timeIntervalSince1970] * 1000.0);
    
    return timestamp;
}

+ (NSTimeInterval)timeIntervalUntilUnixTimeStamp:(NSTimeInterval)timestamp;
{
    NSDate *timeStampDate = [NSDate dateWithTimeIntervalSince1970:(timestamp / 1000.0)];
    
    return [timeStampDate timeIntervalSinceNow] * 1000.0;
}

- (NSTimeInterval)unixTimestamp
{
    return [self timeIntervalSince1970] * 1000.0;
}

@end
