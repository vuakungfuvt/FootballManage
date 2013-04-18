//
//  Player.m
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "Player.h"

@implementation Player
-           (id) init : (NSNumber*) playerid
        andplayerName : (NSString*) name
 andplayerNationality : (NSString*) nationality
        andplayerAge  : (NSNumber*) age
      andplayerHeight : (NSNumber*) height
    andplayerPosition : (NSString*) position
            OwnerTeam : (NSString*) ownerteam
           andSquadNo : (NSNumber*) squardno
     andplayerProfile : (NSString*) profile{
    if (self == [super init]) {
        _playerId = playerid;
        _playerName = name;
        _playerNationality = nationality;
        _playerAge = age;
        _playerHeight = height;
        _playerPosition = position;
        _ownerTeam = ownerteam;
        _squadNo = squardno;
        _profilePicture = profile;
    }
    return self;
}
@end
