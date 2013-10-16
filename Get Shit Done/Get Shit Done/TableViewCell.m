//
//  TableViewCell.m
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import "TableViewCell.h"
#import "GSDTextLabel.h"
#import "ToDoItem.h"
#import "ViewController.h"

@implementation TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[GSDTextLabel alloc] initWithFrame:CGRectNull];
        _label.delegate = self;
        _label.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        [self addSubview:_label];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _label.frame = CGRectMake(40.0f, 0, self.bounds.size.width - 40.0f, self.bounds.size.height);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self.delegate cellDidBeginEditing:self];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self.delegate cellDidEndEditing:self];
    self.toDoItem.text = textField.text;
    
}

@end
