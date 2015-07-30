//
//  MainScreenTableViewDataSource.h
//  Due Dates
//
//  Created by Zack Spicer on 7/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface MainScreenTableViewDataSource : NSObject <UITableViewDataSource>

+ (NSArray *)categories;

@end
