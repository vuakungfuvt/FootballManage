//
//  MainScreenVC.m
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "MainScreenVC.h"
#import "DetailViewController.h"
@interface MainScreenVC ()
{
    NSArray *myarr;
    NSArray *myarrImage;
    int dem;
    DetailViewController *_detailVC;
}
@end

@implementation MainScreenVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Footballplayer";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    dem = 0;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Team" ofType:@"plist"];
	myarr = [[NSArray alloc] initWithContentsOfFile:path];
    NSLog(@"%d", [myarr count]);
    for (int i = 20; i <= 200; i += 150) {
        for (int j = 20; j <= 300; j += 120) {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(i, j, 100, 100)];
            btn.tag = dem;
            NSDictionary *dict = [myarr objectAtIndex:dem];
            NSString *name = [dict objectForKey:@"logoName"];
            //NSLog(@"%@",name);
            [btn setImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
            [btn addTarget : self
                    action : @selector(onUserTap:)
          forControlEvents : UIControlEventTouchUpInside];
            [self.view addSubview:btn];
            dem++;
            if (dem == 5) {
                break;
            }
        }
    }
}
- (void) onUserTap: (UIButton *) button
{
    NSLog(@"Button tapped: %d", button.tag);
    _detailVC = [[DetailViewController alloc] init];
    _detailVC.team = [myarr objectAtIndex:button.tag];
     UIBarButtonItem *myBarButtonItem = [UIBarButtonItem new];
    myBarButtonItem.title = @"Back"; // or whatever text you want
    self.navigationItem.backBarButtonItem = myBarButtonItem;
    [self.navigationController pushViewController:_detailVC animated:YES];
}
- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    self.window = [[UIWindow alloc]
                   initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    [self.window addSubview:self.navigationController.view];
    return YES; }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
