//
//  UIColor+Create.m
//

@implementation UIColor (Create)

+ (UIColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:(red / 255.0) green:(green / 255.0) blue:(blue / 255.0) alpha:alpha];
}

+ (UIColor *)colorWithHex:(NSString *)hex
{
    //
    // Test for hash on start, remove it if necessary
    //
    
    if ([hex characterAtIndex:0] == '#')
    {
        hex = [hex substringFromIndex:1];
    }
    
    unsigned alphaInt = 0;
    
    if ([hex length] == 8)
    {
        NSString *alphaHex = [NSString stringWithFormat:@"0x%@", [hex substringWithRange:NSMakeRange(1, 2)]];
        
        NSScanner *rScanner = [NSScanner scannerWithString:alphaHex];
        [rScanner scanHexInt:&alphaInt];
        
        hex = [hex substringFromIndex:2];
    }
    else if ([hex length] == 6)
    {
        alphaInt = 255;
    }
    else
    {
        return nil;
    }
    
    NSString *redHex = [NSString stringWithFormat:@"0x%@", [hex substringWithRange:NSMakeRange(0, 2)]];
    NSString *greenHex = [NSString stringWithFormat:@"0x%@", [hex substringWithRange:NSMakeRange(2, 2)]];
    NSString *blueHex = [NSString stringWithFormat:@"0x%@", [hex substringWithRange:NSMakeRange(4, 2)]];
    
    
    unsigned redInt = 0;
    NSScanner *rScanner = [NSScanner scannerWithString:redHex];
    [rScanner scanHexInt:&redInt];
    
    unsigned greenInt = 0;
    NSScanner *gScanner = [NSScanner scannerWithString:greenHex];
    [gScanner scanHexInt:&greenInt];
    
    unsigned blueInt = 0;
    NSScanner *bScanner = [NSScanner scannerWithString:blueHex];
    [bScanner scanHexInt:&blueInt];
    
    return [UIColor colorWith8BitRed:redInt green:greenInt blue:blueInt alpha:alphaInt / 255.0];
}

+ (UIColor *)colorWithObject:(id)object
{
    if ([object isKindOfClass:[NSString class]])
    {
        return [self colorWithHex:object];
    }
    else if ([object isKindOfClass:[UIColor class]])
    {
        return object;
    }
    
    return nil;
}

@end
