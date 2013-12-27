Haystack
========

Haystack SDK contains a collection of simple iOS classes and small libraries that make development easier. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on.

Categories
=======

UINavigationController+BackgroundImage
--------
A simple UINavigationController category that enables the usage of a base background image in navigation controller. Pushing transparent views on top of the navigation stack now keeps the same background image.

```objective-c
/*!
 * Sets background image to UINavigationController.
 */
- (void)setBackgroundImage:(UIImage *)image;

/*!
 * Returns background image for navigation controller if set, nil otherwise.
 */
- (UIImage *)backgroundImage;

/*!
 * Returns background image view for direct access to image view in navigation controller.
 */
- (UIImageView *)backgroundImageView;
```

UIColor+Create
--------
An UIColor category that allows the creation of UIColors from Hex HTML strings and 8-bit colors.

```objective-c
/*!
 * Returns UIColor from separate red, green and blue components.
 */
+ (UIColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

/*!
* Converts hex string (HTML color) to UIColor object.
*/
+ (UIColor *)colorWithHex:(NSString *)hex;

/*!
 * Returns UIColor object if object is a Hex value color as string, returns same if it is UIColor already, otherwise nil.
 */
+ (UIColor *)colorWithObject:(id)object;
```

UIDevice+DeviceInfo
--------
This category extends the UIDevice functionality with additional information about current device.
