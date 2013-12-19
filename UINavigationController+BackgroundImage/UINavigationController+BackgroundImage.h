//
//  UINavigationController+BackgroundImage.h
//

/*!
 * Category for UINavigationController which enables us to set it BackgroundImage
 */
@interface UINavigationController (BackgroundImage)

/*!
 * Sets background image to UINavigationController.
 *
 *  @param image which will be used as background
 */
- (void)setBackgroundImage:(UIImage *)image;

/*!
 * Returns background image for navigation controller if set, nil otherwise.
 *
 * @return UIImage background image for navigation controller
 */
- (UIImage *)backgroundImage;

/*!
 * Returns background image view for direct access to image view in navigation controller.
 */
- (UIImageView *)backgroundImageView;

@end
