//
//  NSString+Additional.m
//

#import "NSString+Additional.h"

@implementation NSString (Additional)

- (BOOL)endsWith:(NSString *)string
{
    return [self hasSuffix:string];
}

- (BOOL)startsWith:(NSString *)string
{
    return [self hasPrefix:string];
}

- (NSUInteger)numberOfOccurencesOfString:(NSString *)string
{
    NSUInteger count = 0, length = [str length];
    NSRange range = NSMakeRange(0, length);
    
    while (range.location != NSNotFound)
    {
        range = [str rangeOfString: @"cake" options:0 range:range];
        
        if (range.location != NSNotFound)
        {
            range = NSMakeRange(range.location + range.length, length - (range.location + range.length));
            count++; 
        }
    }
    
    return count;
}

@end