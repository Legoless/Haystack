//
//  UINavigationController+BackgroundImage.m
//

#import "UINavigationController+BackgroundImage.h"

@implementation UINavigationController (BackgroundImage)

- (void)setBackgroundImage:(UIImage *)image
{
    if ([self.view.subviews count] && [self.view.subviews[0] isKindOfClass:[UIImageView class]])
    {
        UIImageView* imageView = self.view.subviews[0];
        
        imageView.image = image;
    }
    else if ([self.view.subviews count])
    {
        UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
        
        /*
         [self.view addSubview:imageView];
         [self.view sendSubviewToBack:imageView];
         */
        
        [self.view insertSubview:imageView atIndex:0];
    }
    else
    {
        UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
        
        /*
         [self.view addSubview:imageView];
         [self.view sendSubviewToBack:imageView];
         */
        
        [self.view addSubview:imageView];
    }
}

- (UIImage *)backgroundImage
{
    if ([self.view.subviews count] && [self.view.subviews[0] isKindOfClass:[UIImageView class]])
    {
        UIImageView* imageView = self.view.subviews[0];
        
        return imageView.image;
    }
    
    return nil;
}

- (UIImageView *)backgroundImageView
{
    if ([self.view.subviews count] && [self.view.subviews[0] isKindOfClass:[UIImageView class]])
    {
        return self.view.subviews[0];
    }
    
    return nil;
}

@end
