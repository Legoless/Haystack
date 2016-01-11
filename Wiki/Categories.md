Categories
=======

This document describes functions in categories in detail. Categories are in on particular order. To be updated.

## UIKit

Extensions to Apple's most used framework on iOS.

### UIAlertView+Short

Makes displaying alert view very quick and easy.

```objective-c
- (instancetype)hay_initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle;
- (instancetype)hay_initWithTitle:(NSString *)title message:(NSString *)message delegate:(id <UIAlertViewDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle;
+ (void)hay_showWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle;
+ (void)hay_showWithTitle:(NSString *)title message:(NSString *)message delegate:(id <UIAlertViewDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle;
+ (void)hay_showWithTitle:(NSString *)title message:(NSString *)message delegate:(id <UIAlertViewDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;
```

### UIApplication+Information

A simple category for basic information about application.

```objective-c
- (long long)hay_memorySize;
- (NSUInteger)hay_threadCount;
- (float)hay_cpuUsage;
- (BOOL)hay_isRunningTests;
```

### UIApplication+Screenshot

A category that helps by taking screenshots of application window.

```objective-c
- (UIImage *)hay_screenshot;
- (UIImage *)hay_screenshotExcludingWindows:(NSArray *)windows;
- (UIImage *)hay_screenshotExcludingWindows:(NSArray *)windows withStatusBar:(BOOL)statusBar;
```

### UIApplication+Version

UIApplication category that adds utility methods for application bundle.

```objective-c
- (NSString *)hay_name;
- (NSString *)hay_version;
- (NSString *)hay_build;
- (NSString *)hay_bundleIdentifier;
```

### UIButton+Position

The UIButton always positions title label to the right of the image. In certain cases you want the title to be placed above or below the image. This category fixes the problem.

```objective-c
- (void)hay_setTitleBelowWithSpacing:(CGFloat)spacing;
```

### UIColor+Create

An UIColor category that allows the creation of UIColors from Hex HTML strings and 8-bit colors.

```objective-c
+ (UIColor *)hay_colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;
+ (UIColor *)hay_colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
+ (UIColor *)hay_colorWithHex:(NSString *)hex;
+ (UIColor *)hay_colorWithObject:(id)object;
+ (UIColor *)hay_colorWithName:(NSString *)name;
+ (NSArray *)hay_colorsWithName:(NSString *)name;
+ (id)hay_colorObjectWithName:(NSString *)name;
```

### UIColor+Flat

An UIColor category that encapsulates basic flat colors used in multiple applications.

```objective-c
+ (UIColor *)hay_turquoiseColor;
+ (UIColor *)hay_greenSeaColor;
+ (UIColor *)hay_emeraldColor;
+ (UIColor *)hay_nephritisColor;
+ (UIColor *)hay_peterRiverColor;
+ (UIColor *)hay_belizeHoleColor;
+ (UIColor *)hay_amethystColor;
+ (UIColor *)hay_wisteriaColor;
+ (UIColor *)hay_wetAsphaltColor;
+ (UIColor *)hay_midnightBlueColor;
+ (UIColor *)hay_sunFlowerColor;
+ (UIColor *)hay_carrotColor;
+ (UIColor *)hay_orangeFruitColor;
+ (UIColor *)hay_pumpkinColor;
+ (UIColor *)hay_alizarinColor;
+ (UIColor *)hay_pomegranateColor;
+ (UIColor *)hay_cloudsColor;
+ (UIColor *)hay_silverColor;
+ (UIColor *)hay_concreteColor;
+ (UIColor *)hay_asbestosColor;
```

### UIDevice+DeviceInfo

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

- (BOOL)hasTouchID;
```
### UIStoryboard+Initialization

A convenience category that makes initialization of view controllers quick and easy from Storyboards.

```objective-c
+ (UIViewController *)hay_initialViewControllerInStoryboardWithName:(NSString *)name;
```

### UIView+Cell

This category adds ability to find a parent `UITableViewCell` or `UICollectionViewCell` of any view, if the view is distant or close child of cell.

```objective-c
- (UITableViewCell *)hay_parentTableViewCell;
- (UICollectionViewCell *)hay_parentCollectionViewCell;
```

### UIView+Debug

UIView category that adds different debugging outputs to `UIView` that make debugging easier.

```objective-c
- (NSString *)hay_detailedDebugDescription;
```

### UIView+Hierarchy

UIView category that adds different debugging outputs to `UIView` that make debugging easier.

```objective-c
- (UIView *)hay_parentViewOfType:(Class)class;
```

### UIView+Snapshot

UIView category that creates an UIImage snapshot of the specific view.

```objective-c
- (UIImage *)hay_snapshotImage;
- (UIImage *)hay_snapshotImageWithScale:(CGFloat)scale;
```

### UIViewController+BackgroundImage

A simple UIViewController category that enables the usage of a base background image in a view controller.

```objective-c
- (void)hay_setBackgroundImage:(UIImage *)image;
- (void)hay_setBackgroundImage:(UIImage *)image animated:(BOOL)animated;

- (UIImage *)hay_backgroundImage;
- (UIImageView *)hay_backgroundImageView;
```


## Foundation

Additions to the most core framework in iOS and OS X.

### NSArray+Class, NSDictionary+Class, NSSet+Class

A category that adds convenience methods to `NSArray`, `NSDictionary` and `NSSet`. Methods allow searching collections by object class or inherited class.

```objective-c
- (id)hay_firstObjectOfClass:(Class)objectClass;
- (id)hay_lastObjectOfClass:(Class)objectClass;
- (BOOL)hay_containsObjectOfClass:(Class)objectClass;
- (BOOL)hay_containsObjectOfInheritedClass:(Class)objectClass;
- (BOOL)hay_containsAllObjectsOfClass:(Class)objectClass;
- (BOOL)hay_containsAllObjectsOfInheritedClass:(Class)objectClass;
```

### NSData+Base64

Implements Base64 string decoding.

```objective-c
- (NSString *)hay_base64String;
```

### NSDate+Timestamp

A category that adds Unix timestamp methods to `NSDate`.

```objective-c
+ (NSTimeInterval)hay_unixTimestampFromDate:(NSDate *)date;
+ (NSTimeInterval)hay_timeIntervalUntilUnixTimeStamp:(NSTimeInterval)timestamp;
- (NSTimeInterval)hay_unixTimestamp;
+ (NSDate *)hay_dateWithUnixTimestamp:(NSTimeInterval)timestamp;
+ (NSTimeInterval)hay_unixTimestampForToday;
+ (NSTimeInterval)hay_unixTimestampDayForDate:(NSDate *)date;
```

### NSInvocation+Argument

Makes retrieving argument properties from invocations easy.

```objective-c
- (id)hay_objectAtIndex:(NSInteger)index;
```

### NSObject+Property

Information about properties on certain class or object.

```objective-c
- (NSDictionary *)hay_properties;

+ (NSDictionary *)hay_properties;
```

### NSObject+PropertyList

Convenience methods for working with property lists.

```objective-c
- (BOOL)hay_isPropertyList;
```

### NSObject+Runtime

Convenience methods for runtime inspection.

```objective-c
+ (NSArray *)hay_subclasses;
- (NSArray *)hay_subclasses;
+ (NSArray *)hay_subclassesOfClass:(Class)parentClass;
```

### NSObject+Swizzle

Easy and simple method swizzling category.

```objective-c
+ (void)hay_swizzleInstanceMethod:(SEL)firstMethod withMethod:(SEL)secondMethod;
+ (void)hay_swizzleClassMethod:(SEL)firstMethod withMethod:(SEL)secondMethod;
+ (void)hay_swizzleInstanceMethod:(SEL)firstMethod withMethod:(SEL)secondMethod inClass:(Class)class;
+ (void)hay_swizzleClassMethod:(SEL)firstMethod withMethod:(SEL)secondMethod inClass:(Class)class;
```

### NSString+Additional

Adds certain methods to `NSString`.

```objective-c
- (BOOL)hay_endsWith:(NSString *)string;

- (BOOL)hay_startsWith:(NSString *)string;

- (NSUInteger)hay_numberOfOccurencesOfString:(NSString *)string;
```

### NSString+Random

Generate strings with random characters.

```objective-c
+ (NSString *)hay_randomAlphaNumericStringOfLength:(NSUInteger)length;
+ (NSString *)hay_randomAlphaStringOfLength:(NSUInteger)length;
+ (NSString *)hay_randomStringOfLength:(NSUInteger)length;
+ (NSString *)hay_UUID;
```

### NSString+Validation

Validate string with for basic use cases.

```objective-c
- (BOOL)hay_isValidEmail;
- (BOOL)hay_isValidEmailWithStrictFilter:(BOOL)strict;
```

### NSURL+Parameters

Adds parameter manipulating methods to `NSURL`.

```objective-c
- (NSDictionary *)hay_queryParameters;

- (NSURL *)hay_urlByAppendingParameter:(NSString *)parameter value:(NSString *)value;

- (NSURL *)hay_urlByAppendingParameters:(NSDictionary *)parameters;
```
