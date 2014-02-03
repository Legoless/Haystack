Haystack
========

Haystack SDK contains a collection of simple iOS classes and small libraries that fit in almost every project. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on. Basically it is meant to fill the hole of classes without libraries.

Please contact me for contributions to the SDK. If you notice an useful extension to the iOS SDK's that can be included in the SDK, contact me.

Usage
=======

Installation & Setup
--------
You can install the SDK via CocoaPods:
```
pod 'Haystack', :git => 'https://github.com/Legoless/Haystack.git'
```

Or manually drag & drop `Haystack` folder into Xcode project, then follow the using in project suggestion.

Using in project
--------
It is recommended for you to add Haystack.h file into precompiled header (.pch) file. That way all classes and categories are added to all files and you can use them everywhere throughout the project.

Documentation
-------
All header files and fully documented for ease of use. Only method stubs are displayed in readme, to keep it short. The documentation is in DoxyGen format, allowing you to automatically generate documentation.

Classes
=======

DRMath
--------
A basic class for all the missing mathematical and number operations .

```objective-c
+ (double)degreesToRadians:(double)angle;

+ (double)radiansToDegrees:(double)radians;

+ (double)random;

+ (double)randomBetweenMin:(double)min max:(double)max;

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max;
```

HSViewController
--------
Subclass of view controller with additional methods.

HSTableViewController
--------
Subclass of table view controller with additional methods.

Categories
=======

UINavigationController+BackgroundImage
--------
A simple UINavigationController category that enables the usage of a base background image in navigation controller. Pushing transparent views on top of the navigation stack now keeps the same background image.

```objective-c
- (void)setBackgroundImage:(UIImage *)image;

- (void)setBackgroundImage:(UIImage *)image animated:(BOOL)animated;

- (UIImage *)backgroundImage;

- (UIImageView *)backgroundImageView;
```

UIButton+Position
--------
The UIButton alwqys positions title label to the right of the image. In certain cases you want the title to be placed above or below the image. This category fixes the problem.

```objective-c
- (void)setTitleBelowWithSpacing:(CGFloat)spacing;

- (void)setTitleAboveWithSpacing:(CGFloat)spacing;

- (void)setTitleRightWithSpacing:(CGFloat)spacing;

- (void)setTitleLeftWithSpacing:(CGFloat)spacing;
```

UIColor+Create
--------
An UIColor category that allows the creation of UIColors from Hex HTML strings and 8-bit colors.

```objective-c
+ (UIColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(NSString *)hex;

+ (UIColor *)colorWithObject:(id)object;
```

UIColor+Flat
--------
An UIColor category that encapsulates flat colors used in multiple applications.

```objective-c
+ (UIColor *)turquoiseColor;

+ (UIColor *)greenSeaColor;

+ (UIColor *)emeraldColor;

+ (UIColor *)nephritisColor;

+ (UIColor *)peterRiverColor;

+ (UIColor *)belizeHoleColor;

+ (UIColor *)amethystColor;

+ (UIColor *)wisteriaColor;

+ (UIColor *)wetAsphaltColor;

+ (UIColor *)midnightBlueColor;

+ (UIColor *)sunFlowerColor;

+ (UIColor *)carrotColor;

+ (UIColor *)orangeFruitColor;

+ (UIColor *)pumpkinColor;

+ (UIColor *)alizarinColor;

+ (UIColor *)pomegranateColor;

+ (UIColor *)cloudsColor;

+ (UIColor *)silverColor;

+ (UIColor *)concreteColor;

+ (UIColor *)asbestosColor;
```

UIDevice+DeviceInfo
--------
This category extends the UIDevice functionality with additional information about current device.

```objective-c
- (BOOL)isiPhone;

- (BOOL)isiPod;

- (BOOL)isiPad;

- (BOOL)isRetina;

- (BOOL)isWidescreen;

- (NSString *)modelIdentifier;

- (NSString *)modelName;

- (UIDeviceFamily)deviceFamily;
```

UIApplication+Version
--------
UIApplication category that adds utility methods for application bundle.

```objective-c
+ (NSString *)name;

+ (NSString *)version;

+ (NSString *)build;
```

NSDate+Timestamp
--------
A category that adds Unix timestamp methods to NSDate.

```objective-c
+ (NSTimeInterval)unixTimestampFromDate:(NSDate *)date;

+ (NSTimeInterval)timeIntervalUntilUnixTimeStamp:(NSTimeInterval)timestamp;

- (NSTimeInterval)unixTimestamp;
```

NSInvocation+Delay
--------
A NSInvocation category that performs invocations after delay with an NSTimer.

NSString+Additional
--------
Adds certain methods to NSString.

```objective-c
- (BOOL)endsWith:(NSString *)string;

- (BOOL)startsWith:(NSString *)string;
```


Documents
=======
Haystack SDK includes documents that can be used in development.

Libraries
--------
Below is the list of iOS libraries that are common to use in almost every iOS project (in addition to **Haystack SDK**).

Haystack
========

Haystack SDK contains a collection of simple iOS classes and small libraries that fit in almost every project. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on. Basically it is meant to fill the hole of classes without libraries.

Please contact me for contributions to the SDK. If you notice an useful extension to the iOS SDK's that can be included in the SDK, contact me.

Usage
=======

Installation & Setup
--------
You can install the SDK via CocoaPods:
```
pod 'Haystack', :git => 'https://github.com/Legoless/Haystack.git'
```

Or manually drag & drop `Haystack` folder into Xcode project, then follow the using in project suggestion.

Using in project
--------
It is recommended for you to add Haystack.h file into precompiled header (.pch) file. That way all classes and categories are added to all files and you can use them everywhere throughout the project.

Documentation
-------
All header files and fully documented for ease of use. Only method stubs are displayed in readme, to keep it short. The documentation is in DoxyGen format, allowing you to automatically generate documentation.

Classes
=======

DRMath
--------
A basic class for all the missing mathematical and number operations .

```objective-c
+ (double)degreesToRadians:(double)angle;

+ (double)radiansToDegrees:(double)radians;

+ (double)random;

+ (double)randomBetweenMin:(double)min max:(double)max;

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max;
```

HSViewController
--------
Subclass of view controller with additional methods.

HSTableViewController
--------
Subclass of table view controller with additional methods.

Categories
=======

UINavigationController+BackgroundImage
--------
A simple UINavigationController category that enables the usage of a base background image in navigation controller. Pushing transparent views on top of the navigation stack now keeps the same background image.

```objective-c
- (void)setBackgroundImage:(UIImage *)image;

- (void)setBackgroundImage:(UIImage *)image animated:(BOOL)animated;

- (UIImage *)backgroundImage;

- (UIImageView *)backgroundImageView;
```

UIButton+Position
--------
The UIButton alwqys positions title label to the right of the image. In certain cases you want the title to be placed above or below the image. This category fixes the problem.

```objective-c
- (void)setTitleBelowWithSpacing:(CGFloat)spacing;

- (void)setTitleAboveWithSpacing:(CGFloat)spacing;

- (void)setTitleRightWithSpacing:(CGFloat)spacing;

- (void)setTitleLeftWithSpacing:(CGFloat)spacing;
```

UIColor+Create
--------
An UIColor category that allows the creation of UIColors from Hex HTML strings and 8-bit colors.

```objective-c
+ (UIColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHex:(NSString *)hex;

+ (UIColor *)colorWithObject:(id)object;
```

UIColor+Flat
--------
An UIColor category that encapsulates flat colors used in multiple applications.

```objective-c
+ (UIColor *)turquoiseColor;

+ (UIColor *)greenSeaColor;

+ (UIColor *)emeraldColor;

+ (UIColor *)nephritisColor;

+ (UIColor *)peterRiverColor;

+ (UIColor *)belizeHoleColor;

+ (UIColor *)amethystColor;

+ (UIColor *)wisteriaColor;

+ (UIColor *)wetAsphaltColor;

+ (UIColor *)midnightBlueColor;

+ (UIColor *)sunFlowerColor;

+ (UIColor *)carrotColor;

+ (UIColor *)orangeFruitColor;

+ (UIColor *)pumpkinColor;

+ (UIColor *)alizarinColor;

+ (UIColor *)pomegranateColor;

+ (UIColor *)cloudsColor;

+ (UIColor *)silverColor;

+ (UIColor *)concreteColor;

+ (UIColor *)asbestosColor;
```

UIDevice+DeviceInfo
--------
This category extends the UIDevice functionality with additional information about current device.

```objective-c
- (BOOL)isiPhone;

- (BOOL)isiPod;

- (BOOL)isiPad;

- (BOOL)isRetina;

- (BOOL)isWidescreen;

- (NSString *)modelIdentifier;

- (NSString *)modelName;

- (UIDeviceFamily)deviceFamily;
```

UIApplication+Version
--------
UIApplication category that adds utility methods for application bundle.

```objective-c
+ (NSString *)name;

+ (NSString *)version;

+ (NSString *)build;
```

NSDate+Timestamp
--------
A category that adds Unix timestamp methods to NSDate.

```objective-c
+ (NSTimeInterval)unixTimestampFromDate:(NSDate *)date;

+ (NSTimeInterval)timeIntervalUntilUnixTimeStamp:(NSTimeInterval)timestamp;

- (NSTimeInterval)unixTimestamp;
```

NSInvocation+Delay
--------
A NSInvocation category that performs invocations after delay with an NSTimer.

NSString+Additional
--------
Adds certain methods to NSString.

```objective-c
- (BOOL)endsWith:(NSString *)string;

- (BOOL)startsWith:(NSString *)string;
```


Documents
=======
Haystack SDK includes documents that can be used in development.

Libraries
--------
Below is the list of iOS libraries that are common to use in almost every iOS project (in addition to **Haystack SDK**).

- **AFNetworking**
 ⋅⋅⋅Networking library with automatic JSON parsing and NSURLSession support.
- **BlocksKit**
⋅⋅⋅Block utility categories for many Foundation classes. 
- **JSONModel**
⋅⋅⋅Create objects from JSON dictionaries by only defining the properties.
- **MagicalRecord**
⋅⋅⋅Active Record like fetching from Core Data database.


License
=======

Copyright (c) 2014 arvystate.net

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



License
=======

Copyright (c) 2014 arvystate.net

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
