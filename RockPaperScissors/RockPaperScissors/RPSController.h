//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

#pragma mark - Properties

@property (nonatomic) RPSGame *game;

#pragma mark - Methods

-(void)throwDown:(Move) move;

-(NSString*)messageForGame:(RPSGame*)game;

@end

NS_ASSUME_NONNULL_END
