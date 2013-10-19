//
//  ToDoItem.m
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

+ (id)toDoItemWithText:(NSString *)text {
    return [[ToDoItem alloc] initWithText:text];
}

- (id)initWithText:(NSString *)text
{
    if (self = [super init]) {
        self.text = text;
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.text forKey:@"text"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
    }
    
    return self;
}

@end
