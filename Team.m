//
//  Team.m
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "Team.h"

@implementation Team
- (id) init : (NSNumber*) teamid
AndteamName : (NSString*) teamname
AndlogoName : (NSString*) logoname
Andstadium  : (NSString*) stadiumname
AndcoachName: (NSString*) coachname{
    if (self == [super init]) {
        _teamId = teamid;
        _teamName = teamname;
        _logoName = logoname;
        _stadiumName = stadiumname;
        _coachName = coachname;
    }
    return self;
}
@end
