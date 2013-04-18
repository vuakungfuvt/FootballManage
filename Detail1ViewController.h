//
//  Detail1ViewController.h
//  Football
//
//  Created by ThanhTung on 4/14/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@interface Detail1ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) Player *Footballer;
@end
