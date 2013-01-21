#import "Kiwi.h"
#import "Converter.h"

SPEC_BEGIN(ConverterSpec)

describe(@"Converter", ^{
    it(@"convert miles to km", ^{
        NSString *miles = @"1";
        NSString *km = @"1.609";
        
        [[[Converter kmFromMiles:miles locale:[NSLocale currentLocale]] should] equal:km];
    });
    
    it(@"convert celsius to fahrenheit", ^{
        NSString *celsius = @"20";
        NSString *fahrenheit = @"68";
        
        [[[Converter fahrenheitFromCelsius:celsius  locale:[NSLocale currentLocale]] should] equal:fahrenheit];
    });
});

SPEC_END