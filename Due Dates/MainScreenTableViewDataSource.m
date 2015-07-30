//
//  MainScreenTableViewDataSource.m
//  Due Dates
//
//  Created by Zack Spicer on 7/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MainScreenTableViewDataSource.h"

static NSString *newEntry = @"newEntry";
static NSString *viewStatistics = @"viewStatistics";
static NSString *viewCategory = @"viewCategory";

@implementation MainScreenTableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if (indexPath.row == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:newEntry];
    }else if (indexPath.row == 1)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:viewStatistics];
    }else
    {
        cell = [tableView dequeueReusableCellWithIdentifier:viewCategory];
    }
    
    cell.textLabel.text = [MainScreenTableViewDataSource categories][indexPath.row];
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

+ (NSArray *)categories
{
    return @[@"New Entry", @"Statistics", @"Homework", @"Essays", @"Projects", @"Tests", @"Chores", @"Practice", @"Other"];
}

@end
