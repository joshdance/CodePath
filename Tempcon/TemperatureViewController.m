//
//  TemperatureViewController.m
//  Tempcon
//
//  Created by Erin Parker on 10/3/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Tempcon";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.celsiusTextField.delegate = self;
    self.fahrenheitTextField.delegate = self;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(doneTyping)];
    
    [self.view addGestureRecognizer:tap];
  
}

- (void)doneTyping {
    [self.view endEditing:YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == self.fahrenheitTextField) {
        [self updateC];
    } else if (textField == self.celsiusTextField) {
        [self updateF];
    }
        
    return;
}

- (void)updateC {
    float fahrenheit = [self.fahrenheitTextField.text floatValue];
    float fahrenheitToCelsius = (fahrenheit-32) * 5.0/9.0;
    self.celsiusTextField.text = [NSString stringWithFormat:@"%f", fahrenheitToCelsius];
}


- (void)updateF {
    float celsius = [self.celsiusTextField.text floatValue];
    float celsiusToFahrenheit = celsius * 9.0/5.0 + 32;
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%f", celsiusToFahrenheit];
}

- (IBAction)clear:(id)sender {
    self.fahrenheitTextField.text = nil;
    self.celsiusTextField.text = nil;
}
@end
