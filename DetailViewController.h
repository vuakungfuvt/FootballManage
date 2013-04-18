//
//  DetailViewController.h
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Team.h"
#import "Player.h"

@interface DetailViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSDictionary *team;
@property (nonatomic, strong) NSNumber *num;
@property (nonatomic, strong) UITableView *myTableView;
@end
