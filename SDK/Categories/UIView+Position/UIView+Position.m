//
//  UIView+Position.m
//  Haystack
//
//  Created by Dal Rupnik on 17/09/15.
//  Copyright © 2015 Unified Sense. All rights reserved.
//

#import "UIView+Position.h"

@implementation UIView (Position)

- (BOOL)hay_isAboveView:(UIView *)view
{
    if (!self.superview || !view.superview || view == self)
    {
        return NO;
    }
    
    //
    // Different superviews
    //
    if (view.superview != self.superview)
    {
        return NO;
    }
    
    NSUInteger selfIndex = [self.superview.subviews indexOfObject:self];
    NSUInteger viewIndex = [view.superview.subviews indexOfObject:view];
    
    return selfIndex > viewIndex;
}

- (BOOL)hay_isBelowView:(UIView *)view
{
    if (!self.superview || !view.superview || view == self)
    {
        return NO;
    }
    
    //
    // Different superviews
    //
    if (view.superview != self.superview)
    {
        return NO;
    }
    
    NSUInteger selfIndex = [self.superview.subviews indexOfObject:self];
    NSUInteger viewIndex = [view.superview.subviews indexOfObject:view];
    
    return selfIndex < viewIndex;
}

@end
