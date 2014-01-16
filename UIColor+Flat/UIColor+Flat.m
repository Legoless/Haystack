//
//  UIColor+Flat.m
//

#import "UIColor+Create.h"

@implementation UIColor (Flat)

+ (UIColor *)colorWithTag:(NSString *)color
{
    static NSMutableDictionary* flatColors;
    
    if (!flatColors)
    {
        flatColors = [NSMutableDictionary dictionary];
    }
    
    if (!flatColors[color])
    {
        flatColors[color] = UIColorFromKey(color);
    }
    
    return flatColors[color];
}

+ (UIColor *)turquoiseColor
{
    return [self colorWithTag:@"1abc9c"];
}

+ (UIColor *)greenSeaColor
{
    return [self colorWithTag:@"16a085"];
}

+ (UIColor *)emeraldColor
{
    return [self colorWithTag:@"2ecc71"];
}

+ (UIColor *)nephritisColor
{
    return [self colorWithTag:@"27ae60"];
}

+ (UIColor *)peterRiverColor
{
    return [self colorWithTag:@"3498db"];
}

+ (UIColor *)belizeHoleColor
{
    return [self colorWithTag:@"2980b9"];
}

+ (UIColor *)amethystColor
{
    return [self colorWithTag:@"9b59b6"];
}

+ (UIColor *)wisteriaColor
{
    return [self colorWithTag:@"8e44ad"];
}

+ (UIColor *)wetAsphaltColor
{
    return [self colorWithTag:@"34495e"];
}

+ (UIColor *)midnightBlueColor
{
    return [self colorWithTag:@"2c3e50"];
}

+ (UIColor *)sunFlowerColor
{
    return [self colorWithTag:@"f1c40f"];
}

+ (UIColor *)carrotColor
{
    return [self colorWithTag:@"e67e22"];
}

+ (UIColor *)orangeFruitColor
{
    return [self colorWithTag:@"f39c12"];
}

+ (UIColor *)pumpkinColor
{
    return [self colorWithTag:@"d35400"];
}

+ (UIColor *)alizarinColor
{
    return [self colorWithTag:@"e74c3c"];
}

+ (UIColor *)pomegranateColor
{
    return [self colorWithTag:@"c0392b"];
}

+ (UIColor *)cloudsColor
{
    return [self colorWithTag:@"ecf0f1"];
}

+ (UIColor *)silverColor
{
    return [self colorWithTag:@"bdc3c7"];
}

+ (UIColor *)concreteColor
{
    return [self colorWithTag:@"95a5a6"];
}

+ (UIColor *)asbestosColor
{
    return [self colorWithTag:@"7f8c8d"];
}

@end
