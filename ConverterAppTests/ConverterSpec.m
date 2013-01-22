#import "Kiwi.h"
#import "Converter.h"

SPEC_BEGIN(ConverterSpec)

describe(@"Converter", ^{
    it(@"convert miles to km", ^{
        NSString *miles = @"1.6";
        NSString *km = @"2.574";
        
        [[[Converter kmFromMiles:miles locale:[NSLocale currentLocale]] should] equal:km];
    });
    
    it(@"convert celsius to fahrenheit", ^{
        NSString *celsius = @"20";
        NSString *fahrenheit = @"68";
        
        [[[Converter fahrenheitFromCelsius:celsius  locale:[NSLocale currentLocale]] should] equal:fahrenheit];
    });
    
    it(@"convert only number input type to km", ^{
        NSString *miles = @"error";
        
        [[Converter kmFromMiles:miles locale:[NSLocale currentLocale]] shouldBeNil];
    });
    
    it(@"convert only number input type to fahrenheit", ^{
        NSString *celsius = @"error";
        
        [[Converter fahrenheitFromCelsius:celsius  locale:[NSLocale currentLocale]] shouldBeNil];
    });
});

SPEC_END