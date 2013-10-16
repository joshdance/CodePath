//
//  TableViewCellDelegate.h
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

@class TableViewCell;

@protocol TableViewCellDelegate <NSObject>

- (void) cellDidBeginEditing: (TableViewCell *)cell;
- (void) cellDidEndEditing: (TableViewCell *)cell;

@end
