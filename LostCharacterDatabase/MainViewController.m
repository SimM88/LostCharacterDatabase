//
//  MainViewController.m
//  LostCharacterDatabase
//
//  Created by Marlon Simeus on 4/1/14.
//  Copyright (c) 2014 Marlon Simeus. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSDictionary *actorDictionary;
    NSArray *actors;
}
@end

@implementation MainViewController

- (void)viewDidLoad
{
   // NSDictionary *actorDictionary =
    
    
    NSString *paths = [[NSBundle mainBundle] pathForResource:@"lost" ofType:@"plist"];
    actors = [[NSArray alloc] initWithContentsOfFile:paths];
    
    NSLog(@"%@", actors);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return actors.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *dict = actors[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellReusID"];
    cell.textLabel.text = [dict objectForKey:@"passenger"];

    return cell;
}

@end
