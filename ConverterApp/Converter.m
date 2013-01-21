//
//  Converter.m
//  ConverterApp
//
//  Created by nguillot on 21/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "Converter.h"

@interface Converter (Private)

+ (NSDecimalNumberHandler *)decimalNumberHandler;
+ (NSString *)stringFromNumber:(NSDecimalNumber *)number locale:(NSLocale *)locale;

@end

@implementation Converter

+ (NSString *)kmFromMiles:(NSString *)miles locale:(NSLocale *)locale
{    
    //on parse le nombre selon la locale
    NSDecimalNumber *milesNumber = [NSDecimalNumber decimalNumberWithString:miles locale:locale];
    
    //on configure le rounding mode
    NSDecimalNumberHandler *handler = [Converter decimalNumberHandler];
    
    //on obtient le résultat
    NSDecimalNumber *km = [[NSDecimalNumber decimalNumberWithString:@"1.609"] decimalNumberByMultiplyingBy:milesNumber withBehavior:handler];
    
    //on le transforme en chaîne de caractère adapté à la locale de l'utilisateur    
    return [Converter stringFromNumber:km locale:locale];
}

+ (NSString *)fahrenheitFromCelsius:(NSString *)celsius locale:(NSLocale *)locale
{
    //on parse le nombre selon la locale
    NSDecimalNumber *celsiusNumber = [NSDecimalNumber decimalNumberWithString:celsius locale:locale];
    
    //on configure le rounding mode
    NSDecimalNumberHandler *handler = [Converter decimalNumberHandler];
    
    //on obtient le résultat suivant la formule Tfahrenheit = Tcelcius×9/5 + 32
    NSDecimalNumber *mult = [celsiusNumber decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithString:@"9"] withBehavior:handler];
    NSDecimalNumber *fahrenheitRatio = [mult decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithString:@"5"] withBehavior:handler];
    
    NSDecimalNumber *fahrenheit =  [fahrenheitRatio decimalNumberByAdding:[NSDecimalNumber decimalNumberWithString:@"32"]];
    
    //on le transforme en chaîne de caractère adapté à la locale de l'utilisateur
    return [Converter stringFromNumber:fahrenheit locale:locale];
}

+ (NSDecimalNumberHandler *)decimalNumberHandler
{
    return [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:3 raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
}

+ (NSString *)stringFromNumber:(NSDecimalNumber *)number locale:(NSLocale *)locale
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    formatter.locale = locale;
    
    return [formatter stringFromNumber:number];
}
@end