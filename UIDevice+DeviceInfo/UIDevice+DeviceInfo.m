//
//  UIDevice+DeviceInfo.m
//

#import "UIDevice+DeviceInfo.h"

@implementation UIDevice (DeviceInfo)

- (BOOL)isWidescreen
{
    return (fabs( (double)[[UIScreen mainScreen] bounds].size.height - (double)568.0) < DBL_EPSILON);
}

- (BOOL)isRetina
{
    if ([[UIScreen mainScreen] scale] == 2.0)
    {
        return YES;
    }
    
    return NO;
}

@end
