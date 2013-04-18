//
//  DetailViewController.m
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "DetailViewController.h"
#import "Detail1ViewController.h"

@interface DetailViewController (){
    NSArray *_arrPlayer;
    Detail1ViewController *_detailVC;
    NSMutableArray *_arrPlayerofTeam;
}

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //self.title = [_team objectForKey:@"teamName"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tabBarController.tabBar setHidden:NO];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Player" ofType:@"plist"];
    _arrPlayer = [[NSArray alloc] initWithContentsOfFile:path];
    self.title = [_team objectForKey:@"teamName"];
    _arrPlayerofTeam = [[NSMutableArray alloc]init];
    NSLog(@"%d", [_arrPlayer count]);
    UIImageView *imv1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    NSString *imName = [_team objectForKey:@"teamName"];
    imv1.image = [UIImage imageNamed:imName];
    [self.view addSubview:imv1];
	// Do any additional setup after loading the view.
    //NSString *s1 = [_team objectForKey:@"teamName"];
    _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, 320, 380)];
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    [self.view addSubview:_myTableView];
    for (int i = 0; i < [_arrPlayer count]; i++) {
        NSDictionary *myDict = [_arrPlayer objectAtIndex:i];
        NSNumber *idplayer = [myDict objectForKey:@"playerId"];
        NSString *nameplayer = [myDict objectForKey:@"playerName"];
        NSString *nationplayer = [myDict objectForKey:@"playerNationality"];
        NSString *position = [myDict objectForKey:@"playerPosition"];
        NSString *owner = [myDict objectForKey:@"ownerTeam"];
        NSString *profile = [myDict objectForKey:@"profilePicture"];
        NSNumber *age = [myDict objectForKey:@"playerAge"];
        NSNumber *height = [myDict objectForKey:@"playerHeight"];
        NSNumber *squad = [myDict objectForKey:@"squadNo"];
        Player *player = [[Player alloc] init:idplayer
                                andplayerName:nameplayer
                         andplayerNationality:nationplayer
                                 andplayerAge:age
                              andplayerHeight:height
                            andplayerPosition:position
                                    OwnerTeam:owner
                                   andSquadNo:squad
                             andplayerProfile:profile];
        NSString *x = [_team objectForKey:@"teamName"];
        if ([player.ownerTeam isEqualToString:x]) {
            [_arrPlayerofTeam addObject:player];
        }
    }
    NSLog(@"%d", [_arrPlayerofTeam count]);
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* result = nil;
    if ([tableView isEqual:self.myTableView]){
        static NSString *MyCellIdentifier = @"SimpleCell";
        /* We will try to retrieve an existing cell with the given identifier */
        result = [tableView dequeueReusableCellWithIdentifier:MyCellIdentifier];
        if (result == nil){
            result = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyCellIdentifier];
        }
        Player *player = [_arrPlayerofTeam objectAtIndex: [indexPath row]];
        //Footballer Image
        UIImage *playerImage = [UIImage imageNamed:player.profilePicture];
        //CGSize size = CGSizeMake(200, 200);
        //playerImage = [[Team sharedManager] imageWithImage:playerImage convertToSize:size];
        result.imageView.image = playerImage;
        //Footballer Name
        NSString *name = player.playerName;
        result.textLabel.text = name;
        result.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    return result;
}
- (NSInteger) tableView:(UITableView *)tableView
  numberOfRowsInSection:(NSInteger)section{
    return [_arrPlayerofTeam count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _detailVC = [[Detail1ViewController alloc] init];
    //_detailVC.team = [myarr objectAtIndex:button.tag];
    UIBarButtonItem *myBarButtonItem = [UIBarButtonItem new];
    myBarButtonItem.title = @"Back"; // or whatever text you want
    self.navigationItem.backBarButtonItem = myBarButtonItem;
    int k = [indexPath row];
    _detailVC.Footballer = [_arrPlayerofTeam objectAtIndex:k];
    [self.navigationController pushViewController:_detailVC animated:YES];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
