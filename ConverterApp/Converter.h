//
//  Converter.h
//  ConverterApp
//
//  Created by nguillot on 21/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Converter : NSObject

+ (NSString *)kmFromMiles:(NSString *)miles locale:(NSLocale *)locale;
+ (NSString *)fahrenheitFromCelsius:(NSString *)miles locale:(NSLocale *)locale;
@end
