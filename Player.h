//
//  Player.h
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic, strong) NSNumber *playerId;
@property (nonatomic, strong) NSString *playerName;
@property (nonatomic, strong) NSString *playerNationality;
@property (nonatomic, strong) NSNumber *playerAge;
@property (nonatomic, strong) NSNumber *playerHeight;
@property (nonatomic, strong) NSString *playerPosition;
@property (nonatomic, strong) NSString *ownerTeam;
@property (nonatomic, strong) NSNumber *squadNo;
@property (nonatomic, strong) NSString *profilePicture;

-           (id) init : (NSNumber*) playerid
        andplayerName : (NSString*) name
 andplayerNationality : (NSString*) nationality
        andplayerAge  : (NSNumber*) age
      andplayerHeight : (NSNumber*) height
    andplayerPosition : (NSString*) position
            OwnerTeam : (NSString*) ownerteam
           andSquadNo : (NSNumber*) squardno
     andplayerProfile : (NSString*) profile;

@end
