//
//  Detail1ViewController.m
//  Football
//
//  Created by ThanhTung on 4/14/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "Detail1ViewController.h"

@interface Detail1ViewController ()

@end

@implementation Detail1ViewController

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
    UIImageView *uiv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 50, 100, 100)];
    uiv.image = [UIImage imageNamed:_Footballer.profilePicture];
    [self.view addSubview:uiv];
    self.title = _Footballer.playerName;
    UILabel *lblplayerName = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 380, 30)];
    lblplayerName.text = _Footballer.playerName;
    [self.view addSubview:lblplayerName];
    UILabel *lblplayerNationality = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 380, 30)];
    lblplayerNationality.text = _Footballer.playerNationality;
    [self.view addSubview:lblplayerNationality];
    UILabel *lblplayerAge = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, 380, 30)];
    lblplayerAge.text = [NSString stringWithFormat:@"%@",_Footballer.playerAge];
    [self.view addSubview:lblplayerAge];
    UILabel *lblplayerHeight = [[UILabel alloc] initWithFrame:CGRectMake(0, 280, 380, 30)];
    lblplayerHeight.text = [NSString stringWithFormat:@"%@",_Footballer.playerHeight];
    [self.view addSubview:lblplayerHeight];
    UILabel *lblplayerPosition = [[UILabel alloc] initWithFrame:CGRectMake(0, 320, 380, 30)];
    lblplayerPosition.text = _Footballer.playerPosition;
    [self.view addSubview:lblplayerPosition];
    UILabel *lblownerTeam = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, 380, 30)];
    lblownerTeam.text = _Footballer.ownerTeam;
    [self.view addSubview:lblownerTeam];
    UILabel *lblsquadNo = [[UILabel alloc] initWithFrame:CGRectMake(0, 380, 380, 30)];
    lblsquadNo.text = [NSString stringWithFormat:@"%@",_Footballer.squadNo];
    [self.view addSubview:lblsquadNo];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
