//
//  FAQViewController.m
//  Due Dates
//
//  Created by Zack Spicer on 7/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FAQViewController.h"

@interface FAQViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FAQViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"FAQ's";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
