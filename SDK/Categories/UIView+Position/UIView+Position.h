//
//  UIView+Position.h
//  Haystack
//
//  Created by Dal Rupnik on 17/09/15.
//  Copyright © 2015 Unified Sense. All rights reserved.
//

@import UIKit;

@interface UIView (Position)

/*!
 *  Returns YES if view is above specified view.
 *
 *  @param view to check
 *
 *  @return YES if above
 */
- (BOOL)hay_isAboveView:(UIView *)view;

/*!
 *  Returns YES if view is below specified view.
 *
 *  @param view to check
 *
 *  @return YES if below
 */
- (BOOL)hay_isBelowView:(UIView *)view;

@end
