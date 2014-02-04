//
//  UIColor+Create.h
//

#define UIColorFromKey(color) [UIColor colorWithObject:color]

#import <UIKit/UIKit.h>

@interface UIColor (Create)

/*!
 * Returns UIColor from separate red, green and blue components.
 *
 * @param NSInteger red component
 * @param NSInteger green component
 * @param NSInteger blue component
 * @param CGFloat alpha component - between 0.0 and 1.0
 * @return UIColor object
 */
+ (UIColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

/*!
* Converts hex string (HTML color) to UIColor object.
*
* @param NSString color in hex notation
* @return UIColor color object
*/
+ (UIColor *)colorWithHex:(NSString *)hex;

/*!
 * Returns UIColor object if object is a Hex value color as string, returns same if it is UIColor already, otherwise nil.
 *
 * @param NSString or UIColor object
 * @return UIColor color object
 */
+ (UIColor *)colorWithObject:(id)object;

@end
