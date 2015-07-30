//
//  ViewController.m
//  Due Dates
//
//  Created by Zack Spicer on 7/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "MainScreenViewController.h"
#import "MainScreenTableViewDataSource.h"

@interface MainScreenViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"viewCategory"])
    {
        UITableViewCell *cellThatWasTapped = sender;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cellThatWasTapped];
        
        NSString *titleOfNextVC = [MainScreenTableViewDataSource categories][indexPath.row];
        
        ((UIViewController *)segue.destinationViewController).title = titleOfNextVC;
    }else if ([segue.identifier isEqualToString:@"newEntry"])
    {
        UITableViewCell *cellThatWasTapped = sender;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cellThatWasTapped];
        
        NSString *titleOfNextVC = [MainScreenTableViewDataSource categories][indexPath.row];
        
        ((UIViewController *)segue.destinationViewController).title = titleOfNextVC;
    }else if ([segue.identifier isEqualToString:@"viewStatistics"])
    {
        UITableViewCell *cellThatWasTapped = sender;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cellThatWasTapped];
        
        NSString *titleOfNextVC = [MainScreenTableViewDataSource categories][indexPath.row];
        
        ((UIViewController *)segue.destinationViewController).title = titleOfNextVC;
    }
}

@end
