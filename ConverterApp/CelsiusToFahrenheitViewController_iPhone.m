//
//  CelsiusToFahrenheitViewController.m
//  ConverterApp
//
//  Created by nguillot on 18/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "CelsiusToFahrenheitViewController_iPhone.h"

@interface CelsiusToFahrenheitViewController_iPhone ()

@property (weak, nonatomic) IBOutlet UITextField *celsiusText;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *fahrenheitResult;

@end

@implementation CelsiusToFahrenheitViewController_iPhone

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.celsiusText.accessibilityIdentifier = kCelsiusInputText;
    self.convertButton.accessibilityIdentifier = kCelsiusToFahrenheitBtn;
    self.fahrenheitResult.accessibilityIdentifier = kFahrenheitResult;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
