//
//  UIFont+SmallCaps.m
//

#import "UIFont+SmallCaps.h"
#import <CoreText/CoreText.h>

@implementation UIFont (SmallCaps)

- (UIFont *)smallCapFont
{
    UIFontDescriptor *descriptor = [self fontDescriptor];
    
    NSArray *array = @[@{UIFontFeatureTypeIdentifierKey : @(kLowerCaseType), UIFontFeatureSelectorIdentifierKey : @(kLowerCaseSmallCapsSelector)}];
    
    descriptor = [descriptor fontDescriptorByAddingAttributes:@{UIFontDescriptorFeatureSettingsAttribute : array}];
    return [UIFont fontWithDescriptor:descriptor size:0];
}

- (BOOL)isSystemFont
{
    return ([self.familyName isEqualToString:[UIFont systemFontOfSize:12.0f].familyName]) ? YES : NO;
}
@end
