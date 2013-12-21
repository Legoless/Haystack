//
//  UIDevice+DeviceInfo.h
//

#import <UIKit/UIKit.h>

#define isWideScreen ([[UIDevice currentDevice] isWidescreen])

typedef NS_ENUM(NSUInteger, UIDeviceFamily)
{
    UIDeviceFamilyiPhone,
    UIDeviceFamilyiPod,
    UIDeviceFamilyiPad,
    UIDeviceFamilyAppleTV,
    UIDeviceFamilyUnknown,
};

/*!
 * Category displays detailed information about current device
 */
@interface UIDevice (DeviceInfo)

- (BOOL)isiPhone;

- (BOOL)isiPod;

- (BOOL)isiPad;

- (BOOL)isRetina;

/*!
 * Returns if the device is iPhone 5 or newest generation iPod touch that has widescreen display of 16:9 ratio
 */
- (BOOL)isWidescreen;

//
// Taken from: UIDevice-Hardware
//

/*!
 * Returns formatted consumer name of Apple device
 */
- (NSString *)modelIdentifier;

- (NSString *)modelName;

- (UIDeviceFamily)deviceFamily;


@end
