//
//  ToDoItem.h
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject <NSCoding>

@property (nonatomic, strong) NSString *text;

+ (id)toDoItemWithText: (NSString *)text;
- (id)initWithText: (NSString *)text;

@end
