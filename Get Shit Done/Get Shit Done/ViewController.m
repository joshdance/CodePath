//
//  ViewController.m
//  Get Shit Done
//
//  Created by Erin Parker on 10/15/13.
//  Copyright (c) 2013 Erin Parker. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"
#import "TableViewCell.h"
#import "GSDTextLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [self editButtonItem];
    
    self.toDoItems = [[NSMutableArray alloc] init];
    [self.toDoItems addObject:[ToDoItem toDoItemWithText:@"Snatch 75lbs"]];
    [self.toDoItems addObject:[ToDoItem toDoItemWithText:@"Clean and jerk 105lbs"]];
    [self.toDoItems addObject:[ToDoItem toDoItemWithText:@"Finish Spitfire iOS7 app"]];
  
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Tableview Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    ToDoItem *item = [self.toDoItems objectAtIndex:[indexPath row]];
    cell.label.text = item.text;
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0f;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCellEditingStyle result = UITableViewCellEditingStyleNone;
    
    if ([tableView isEqual:self.tableView]) {
        result = UITableViewCellEditingStyleDelete;
    }
    
    return result;
}

- (void) setEditing:(BOOL)editing animated:(BOOL)animated {
    [super setEditing:editing animated:animated];
    
    [self.tableView setEditing:editing animated:animated];
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        ToDoItem *item = [self.toDoItems objectAtIndex:[indexPath row]];
        [self removeItem:item];
        
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];

    }
}

- (IBAction)addNewItem:(id)sender {
    
    ToDoItem *newToDo = [[ToDoItem alloc] init];
    [self.toDoItems insertObject:newToDo atIndex:0];
    
    NSIndexPath *ip = [NSIndexPath indexPathForRow:0 inSection:0];
    
    [[self tableView] insertRowsAtIndexPaths:[NSArray arrayWithObject:ip] withRowAnimation:UITableViewRowAnimationTop];
}

- (IBAction)toggleEditingMode:(id)sender {
    
    if ([self isEditing]) {
        self.navigationItem.leftBarButtonItem = UIBarButtonSystemItemDone;
        [self setEditing:NO animated:YES];
    } else {
        self.navigationItem.leftBarButtonItem = [self editButtonItem];
        [self setEditing:YES animated:NO];
    }
}

- (void)removeItem:(ToDoItem *)t
{
    [self.toDoItems removeObjectIdenticalTo:t];
}

- (void)moveItemAtIndex:(int)from toIndex:(int)to
{
    if (from == to) {
        return;
    }
    
    ToDoItem *t = [self.toDoItems objectAtIndex:from];
    
    [self.toDoItems removeObjectAtIndex:from];
    [self.toDoItems insertObject:t atIndex:to];
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    if (sourceIndexPath == destinationIndexPath) {
        return;
    }
    
    ToDoItem *t = [self.toDoItems objectAtIndex:[sourceIndexPath row]];
    
    [self.toDoItems removeObjectAtIndex:[sourceIndexPath row]];
    [self.toDoItems insertObject:t atIndex:[destinationIndexPath row]];

}

@end
