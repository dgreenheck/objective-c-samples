//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

#pragma mark - Properties

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

#pragma mark - Initializers

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn
                      secondTurn:(RPSTurn*) computerTurn;

#pragma mark - Methods

-(BOOL) isTie;

-(RPSTurn*)winner;

-(RPSTurn*)loser;

-(NSString*)resultString;
    
@end

NS_ASSUME_NONNULL_END
