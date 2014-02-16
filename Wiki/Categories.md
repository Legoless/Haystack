Categories
=======

This document describes functions in categories in detail. Categories are in on particular order.

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
