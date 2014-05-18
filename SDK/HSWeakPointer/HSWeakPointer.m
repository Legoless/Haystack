#import "HSWeakPointer.h"

@implementation HSWeakPointer


- (BOOL)isValid
{
    return (self.object != nil);
}

@end