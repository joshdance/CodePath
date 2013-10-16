//
//  GSDTextLabel.m
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import "GSDTextLabel.h"

@implementation GSDTextLabel
{
    CALayer *textEditingLayer;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        textEditingLayer = [CALayer layer];
        textEditingLayer.backgroundColor = [[UIColor whiteColor] CGColor];
        textEditingLayer.hidden = YES;
        [self.layer addSublayer:textEditingLayer];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

- (void)setText:(NSString *)text
{
    [super setText:text];
}

@end
