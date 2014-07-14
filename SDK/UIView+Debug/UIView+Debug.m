//
//  UIView+Debug.m
//

#import "UIView+Debug.h"

@implementation UIView (Debug)

- (NSString *)detailedDebugDescription
{
    NSMutableString* debugDescription = [[self debugDescription] mutableCopy];
    
    if ([self isKindOfClass:[UIButton class]])
    {
        [debugDescription appendString:[self titleForState:UIControlStateNormal]];
    }
    
    return [debugDescription copy];
}

@end
