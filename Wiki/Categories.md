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

An UIColor category that encapsulates flat colors used in multiple applications.

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
- (BOOL)containsObjectOfClass:(Class)objectClass;

- (BOOL)containsObjectOfInheritedClass:(Class)objectClass;

- (BOOL)containsAllObjectsOfClass:(Class)objectClass;

- (BOOL)containsAllObjectsOfInheritedClass:(Class)objectClass;
```

### NSDate+Timestamp

A category that adds Unix timestamp methods to `NSDate`.

```objective-c
+ (NSTimeInterval)unixTimestampFromDate:(NSDate *)date;

+ (NSTimeInterval)timeIntervalUntilUnixTimeStamp:(NSTimeInterval)timestamp;

- (NSTimeInterval)unixTimestamp;
```

### NSString+Additional

Adds certain methods to `NSString`.

```objective-c
- (BOOL)endsWith:(NSString *)string;

- (BOOL)startsWith:(NSString *)string;
```
