Haystack
========

Haystack SDK contains a collection of simple iOS classes and small libraries that fit in almost every project. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on. Basically it is meant to fill the hole of classes without libraries.

Please contact me for contributions to the SDK. If you notice an useful extension to the iOS SDK's that can be included in the SDK, contact me.

Usage
=======

Installation & Setup
--------
You can install the SDK via CocoaPods:

Or manually drag & drop files into Xcode project.

Using in project
--------
It is recommended for you to add Haystack.h file into precompiled header (.pch) file. That way all classes and categories are added to all files and you can use them everywhere throughout the project.

Classes
=======

DRMath
--------
A basic class for all the missing mathematical operations.

Categories
=======

UINavigationController+BackgroundImage
--------
A simple UINavigationController category that enables the usage of a base background image in navigation controller. Pushing transparent views on top of the navigation stack now keeps the same background image.

```objective-c
/*!
 * Sets background image to UINavigationController.
 *
 * @param image which will be used as background
 */
- (void)setBackgroundImage:(UIImage *)image;

/*!
 * Sets background image to UINavigationController.
 *
 * @param image which will be used as background
 * @param YES if animated property
 */
- (void)setBackgroundImage:(UIImage *)image animated:(BOOL)animated;

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

```objective-c
/*!
 * Returns YES if device is iPhone.
 */
- (BOOL)isiPhone;

/*!
 * Returns YES if device is iPod.
 */
- (BOOL)isiPod;

/*!
 * Returns YES if device is iPad.
 */
- (BOOL)isiPad;

/*!
 * Returns YES if device has retina display.
 */
- (BOOL)isRetina;

/*!
 * Returns if the device is iPhone 5 or iPod touch that has widescreen display of 16:9 ratio.
 */
- (BOOL)isWidescreen;

/*!
 * Returns formatted consumer name of Apple device
 */
- (NSString *)modelIdentifier;

/*!
 * Returns model name.
 */
- (NSString *)modelName;

/*!
 * Returns device family of the device
 */
- (UIDeviceFamily)deviceFamily;
```

UIApplication+Version
--------
UIApplication category that adds utility methods for application bundle.

```objective-c
/*!
 * Returns application name as defined in bundle.
 *
 * @return NSString application name
 */
+ (NSString *)name;

/*!
 * Returns version number in x.y.z format
 *
 * @return NSString version number
 */
+ (NSString *)version;

/*!
* Returns build number as defined in bundle.
*
 * @return NSString build number
*/
+ (NSString *)build;
```

Documents
=======
Haystack SDK includes documents that can be used in development.

Libraries
--------
AFNetworking
BlocksKit
MagicalRecord


License
=======

Copyright (c) 2013 arvystate.net

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
