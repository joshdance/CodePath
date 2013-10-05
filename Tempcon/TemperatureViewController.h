//
//  TemperatureViewController.h
//  Tempcon
//
//  Created by Erin Parker on 10/3/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *celsiusLabel;
@property (strong, nonatomic) IBOutlet UILabel *fahrenheitLabel;

@property (strong, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (strong, nonatomic) IBOutlet UITextField *fahrenheitTextField;

- (IBAction)convert:(id)sender;
- (IBAction)clear:(id)sender;

@end
