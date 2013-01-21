//
//  MileToKmViewController.m
//  ConverterApp
//
//  Created by nguillot on 18/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "MileToKmViewController_iPhone.h"

@interface MileToKmViewController_iPhone ()

@property (weak, nonatomic) IBOutlet UITextField *milesText;
@property (weak, nonatomic) IBOutlet UILabel *kmResult;
@property (weak, nonatomic) IBOutlet UIButton *convertBtn;

- (IBAction)convertMiles:(id)sender;
@end

@implementation MileToKmViewController_iPhone


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// pour l'exemple, peut être définit dans IB
    self.milesText.isAccessibilityElement = YES;
    
    self.milesText.accessibilityIdentifier = kMilesInputText;
    self.convertBtn.accessibilityIdentifier = kMilesToKmBtn;
    self.kmResult.accessibilityIdentifier = kKmResult;
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
@end
