//
//  ShowAllPlayer.m
//  FootballManage
//
//  Created by ThanhTung on 4/18/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "ShowAllPlayer.h"
#import "Player.h"
#import "Detail1ViewController.h"
@interface ShowAllPlayer (){
    NSArray *_arrPlayer;
    Detail1ViewController *_detailVC;
}

@end

@implementation ShowAllPlayer

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"All player";
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Player" ofType:@"plist"];
    _arrPlayer = [[NSArray alloc] initWithContentsOfFile:path];
    _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    [self.view addSubview:_myTableView];

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
        NSDictionary *myDict = [_arrPlayer objectAtIndex: [indexPath row]];
        NSNumber *idplayer = [myDict objectForKey:@"playerId"];
        NSString *nameplayer = [myDict objectForKey:@"playerName"];
        NSString *nationplayer = [myDict objectForKey:@"playerNationality"];
        NSString *position = [myDict objectForKey:@"playerPosition"];
        NSString *owner = [myDict objectForKey:@"ownerTeam"];
        NSString *profile = [myDict objectForKey:@"profilePicture"];
        NSNumber *age = [myDict objectForKey:@"playerAge"];
        NSNumber *height = [myDict objectForKey:@"playerHeight"];
        NSNumber *squad = [myDict objectForKey:@"squadNo"];
        //Footballer Image
        Player *player = [[Player alloc] init:idplayer
                                andplayerName:nameplayer
                         andplayerNationality:nationplayer
                                 andplayerAge:age
                              andplayerHeight:height
                            andplayerPosition:position
                                    OwnerTeam:owner
                                   andSquadNo:squad
                             andplayerProfile:profile];
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
    return [_arrPlayer count];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _detailVC = [[Detail1ViewController alloc] init];
    //_detailVC.team = [myarr objectAtIndex:button.tag];
    UIBarButtonItem *myBarButtonItem = [UIBarButtonItem new];
    myBarButtonItem.title = @"Back"; // or whatever text you want
    self.navigationItem.backBarButtonItem = myBarButtonItem;
    int k = [indexPath row];
    NSDictionary *myDict = [_arrPlayer objectAtIndex:k];
    NSNumber *idplayer = [myDict objectForKey:@"playerId"];
    NSString *nameplayer = [myDict objectForKey:@"playerName"];
    NSString *nationplayer = [myDict objectForKey:@"playerNationality"];
    NSString *position = [myDict objectForKey:@"playerPosition"];
    NSString *owner = [myDict objectForKey:@"ownerTeam"];
    NSString *profile = [myDict objectForKey:@"profilePicture"];
    NSNumber *age = [myDict objectForKey:@"playerAge"];
    NSNumber *height = [myDict objectForKey:@"playerHeight"];
    NSNumber *squad = [myDict objectForKey:@"squadNo"];
    //Footballer Image
    Player *player = [[Player alloc] init:idplayer
                            andplayerName:nameplayer
                     andplayerNationality:nationplayer
                             andplayerAge:age
                          andplayerHeight:height
                        andplayerPosition:position
                                OwnerTeam:owner
                               andSquadNo:squad
                         andplayerProfile:profile];
    _detailVC.Footballer = player;
    [self.navigationController pushViewController:_detailVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
