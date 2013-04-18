//
//  ShowAllPlayer.h
//  FootballManage
//
//  Created by ThanhTung on 4/18/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowAllPlayer : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *myTableView;
@end
