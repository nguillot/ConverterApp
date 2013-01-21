//
//  ConvertersViewController_iPad.m
//  ConverterApp
//
//  Created by nguillot on 18/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "ConvertersViewController_iPad.h"

@interface ConvertersViewController_iPad ()

@property (weak, nonatomic) IBOutlet UITextField *milesText;
@property (weak, nonatomic) IBOutlet UIButton *milesConvertBtn;
@property (weak, nonatomic) IBOutlet UILabel *kmResult;
@property (weak, nonatomic) IBOutlet UITextField *celsiusText;
@property (weak, nonatomic) IBOutlet UIButton *degreConvertBtn;
@property (weak, nonatomic) IBOutlet UILabel *fahrenheitResult;

- (IBAction)convertMiles:(id)sender;
- (IBAction)convertCelsius:(id)sender;

@end

@implementation ConvertersViewController_iPad

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.milesText.accessibilityIdentifier = kMilesInputText;
    self.milesConvertBtn.accessibilityIdentifier = kMilesToKmBtn;
    self.kmResult.accessibilityIdentifier = kKmResult;
    
    self.celsiusText.accessibilityIdentifier = kCelsiusInputText;
    self.degreConvertBtn.accessibilityIdentifier = kCelsiusToFahrenheitBtn;
    self.fahrenheitResult.accessibilityIdentifier = kFahrenheitResult;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertMiles:(id)sender
{
    self.kmResult.text = [Converter kmFromMiles:self.milesText.text locale:[NSLocale currentLocale]];    
}

- (IBAction)convertCelsius:(id)sender
{
    self.fahrenheitResult.text = [Converter fahrenheitFromCelsius:self.celsiusText.text locale:[NSLocale currentLocale]];
}
@end
