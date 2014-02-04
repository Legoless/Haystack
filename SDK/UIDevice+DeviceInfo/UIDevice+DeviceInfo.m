//
//  UIDevice+DeviceInfo.m
//

#import "UIDevice+DeviceInfo.h"

int	sysctlbyname(const char *, void *, size_t *, void *, size_t);

@implementation UIDevice (DeviceInfo)

- (BOOL)isWidescreen
{
    return (fabs( (double)[[UIScreen mainScreen] bounds].size.height - (double)568.0) < DBL_EPSILON);
}

- (BOOL)isRetina
{
    if ([[UIScreen mainScreen] scale] == 2.0)
    {
        return YES;
    }
    
    return NO;
}

- (BOOL)isiPhone
{
    if ([self.model isEqualToString:@"iPhone"] && [self userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return YES;
    }
    
    return NO;
}

- (BOOL)isiPod
{
    if ([self.model isEqualToString:@"iPod"] && [self userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        return YES;
    }
    
    return NO;
}

- (BOOL)isiPad
{
    if ([self userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        return YES;
    }
    
    return NO;
}

- (NSString *)getSysInfoByName:(char *)typeSpecifier
{
    size_t size;
    sysctlbyname(typeSpecifier, NULL, &size, NULL, 0);
    
    char *answer = malloc(size);
    sysctlbyname(typeSpecifier, answer, &size, NULL, 0);
    
    NSString *results = [NSString stringWithCString:answer encoding: NSUTF8StringEncoding];
    
    free(answer);
    return results;
}

- (NSString *)modelIdentifier
{
    return [self getSysInfoByName:"hw.machine"];
}

- (NSString *)modelName
{
    return [self modelNameForModelIdentifier:[self modelIdentifier]];
}

- (NSString *)modelNameForModelIdentifier:(NSString *)modelIdentifier
{
    //
    // iPhone http://theiphonewiki.com/wiki/IPhone
    //
    
    if ([modelIdentifier isEqualToString:@"iPhone1,1"])
    {
        return @"iPhone 1G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone1,2"])
    {
        return @"iPhone 3G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone2,1"])
    {
        return @"iPhone 3GS";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone3,1"])
    {
        return @"iPhone 4 (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone3,2"])
    {
        return @"iPhone 4 (GSM Rev A)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone3,3"])
    {
        return @"iPhone 4 (CDMA)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone4,1"])
    {
        return @"iPhone 4S";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone5,1"])
    {
        return @"iPhone 5 (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone5,2"])
    {
        return @"iPhone 5 (Global)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone5,3"])
    {
        return @"iPhone 5C (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone5,4"])
    {
        return @"iPhone 5C (Global)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone6,1"])
    {
        return @"iPhone 5S (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPhone6,2"])
    {
        return @"iPhone 5S (Global)";
    }
    
    //
    // iPad http://theiphonewiki.com/wiki/IPad
    //
    
    if ([modelIdentifier isEqualToString:@"iPad1,1"])
    {
        return @"iPad 1G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,1"])
    {
        return @"iPad 2 (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,2"])
    {
        return @"iPad 2 (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,3"])
    {
        return @"iPad 2 (CDMA)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,4"])
    {
        return @"iPad 2 (Rev A)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,1"])
    {
        return @"iPad 3 (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,2"])
    {
        return @"iPad 3 (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,3"])
    {
        return @"iPad 3 (Global)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,4"])
    {
        return @"iPad 4 (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,5"])
    {
        return @"iPad 4 (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad3,6"])
    {
        return @"iPad 4 (Global)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad4,1"])
    {
        return @"iPad Air (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad4,2"])
    {
        return @"iPad Air (Cellular)";
    }
    
    //
    // iPad Mini http://theiphonewiki.com/wiki/IPad_mini
    //
    
    if ([modelIdentifier isEqualToString:@"iPad2,5"])
    {
        return @"iPad Mini 1G (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,6"])
    {
        return @"iPad Mini 1G (GSM)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad2,7"])
    {
        return @"iPad Mini 1G (Global)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad4,4"])
    {
        return @"iPad Mini Retina (WiFi)";
    }
    
    if ([modelIdentifier isEqualToString:@"iPad4,5"])
    {
        return @"iPad Mini Retina (Cellular)";
    }
    
    //
    // iPod http://theiphonewiki.com/wiki/IPod
    //
    
    if ([modelIdentifier isEqualToString:@"iPod1,1"])
    {
        return @"iPod Touch 1G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPod2,1"])
    {
        return @"iPod Touch 2G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPod3,1"])
    {
        return @"iPod Touch 3G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPod4,1"])
    {
        return @"iPod Touch 4G";
    }
    
    if ([modelIdentifier isEqualToString:@"iPod5,1"])
    {
        return @"iPod Touch 5G";
    }
    
    //
    // Simulator
    //
    if ([modelIdentifier hasSuffix:@"86"] || [modelIdentifier isEqual:@"x86_64"])
    {
        BOOL smallerScreen = ([[UIScreen mainScreen] bounds].size.width < 768.0);
        return (smallerScreen ? @"iPhone Simulator" : @"iPad Simulator");
    }
    
    return modelIdentifier;
}

- (UIDeviceFamily) deviceFamily
{
    NSString *modelIdentifier = [self modelIdentifier];
    
    if ([modelIdentifier hasPrefix:@"iPhone"])
    {
        return UIDeviceFamilyiPhone;
    }
    
    if ([modelIdentifier hasPrefix:@"iPod"])
    {
        return UIDeviceFamilyiPod;
    }
    
    if ([modelIdentifier hasPrefix:@"iPad"])
    {
        return UIDeviceFamilyiPad;
    }
    
    return UIDeviceFamilyUnknown;
}

@end
