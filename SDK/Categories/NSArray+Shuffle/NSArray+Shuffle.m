//
//  NSArray+Shuffle.m
//

#import "NSArray+Shuffle.h"

@implementation NSArray (Shuffle)

- (NSArray *)hay_shuffledArray
{
    NSMutableArray *arrayCopy = [self mutableCopy];
    
    NSUInteger count = [arrayCopy count];
    
    for (int i = 0; i < count - 1; i++)
    {
        // Select a random element between i and end of array to swap with.
        int nElements = (int)count - i;
        int n = arc4random_uniform(nElements) + (int)i;
        [arrayCopy exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    return arrayCopy.copy;
}

@end
