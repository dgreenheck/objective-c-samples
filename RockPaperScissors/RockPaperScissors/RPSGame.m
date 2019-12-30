//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn
                      secondTurn:(RPSTurn*) computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

-(BOOL) isTie {
    if (self.firstTurn.move == self.secondTurn.move) {
        return true;
    }
    else {
        return false;
    }
}

-(RPSTurn*)winner {
    if ([self.firstTurn defeats:self.secondTurn]) {
        return self.firstTurn;
    }
    else {
        return self.secondTurn;
    }
}

-(RPSTurn*)loser {
    if ([self.firstTurn defeats:self.secondTurn]) {
        return self.secondTurn;
    }
    else {
        return self.firstTurn;
    }
}

-(NSString*)resultString {
    return [self.firstTurn defeats:self.secondTurn] ? @"You win!" : @"You lose!";
}

@end
