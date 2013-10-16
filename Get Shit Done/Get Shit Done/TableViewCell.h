//
//  TableViewCell.h
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCellDelegate.h"


@class ToDoItem;
@class GSDTextLabel;

@interface TableViewCell : UITableViewCell <UITextFieldDelegate>

@property (nonatomic, strong) ToDoItem *toDoItem;
@property (nonatomic, assign) id <TableViewCellDelegate> delegate;
@property (nonatomic, strong) GSDTextLabel *label;

@end
