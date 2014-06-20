//
//  UIButton+Position.m
//

@implementation UIButton (Position)

- (void)setTitleBelowWithSpacing:(CGFloat)spacing
{
    // Get the size of the elements here for readability

    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;

    // Get the height they will take up as a unit

    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);

    // Raise the image and push it right to center it

    self.imageEdgeInsets = UIEdgeInsetsMake(-(totalHeight - imageSize.height), self.imageEdgeInsets.left, 0.0, - titleSize.width);

    // lower the text and push it left to center it

    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (totalHeight - titleSize.height), 0.0);
}

@end
