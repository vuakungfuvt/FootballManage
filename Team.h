//
//  Team.h
//  Football
//
//  Created by ThanhTung on 4/13/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject
@property (nonatomic, strong) NSString *teamName;
@property (nonatomic, strong) NSString *logoName;
@property (nonatomic, strong) NSString *coachName;
@property (nonatomic, strong) NSString *stadiumName;
@property (nonatomic, strong) NSNumber *teamId;
- (id) init : (NSNumber*) teamid
AndteamName : (NSString*) teamname
AndlogoName : (NSString*) logoname
Andstadium  : (NSString*) stadiumname
AndcoachName: (NSString*) coachname;
@end
