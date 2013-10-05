//
//  TipViewController.h
//  Tipster
//
//  Created by Erin Parker on 10/3/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *billTextField;
@property (nonatomic, weak) IBOutlet UILabel *tipLabel;
@property (nonatomic, weak) IBOutlet UILabel *totalLabel;
@property (nonatomic, weak) IBOutlet UISegmentedControl *tipControl; 

@end
