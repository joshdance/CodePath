//
//  ViewController.h
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDoItem;

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *toDoItems;

- (IBAction)addNewItem:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;
- (void)removeItem: (ToDoItem *)t;
- (void)moveItemAtIndex: (int)from toIndex:(int)to;
- (BOOL)saveItems;

@end
