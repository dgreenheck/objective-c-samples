//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

#pragma mark - Initializers

-(instancetype)initWithMove:(Move) move {
    self = [super init];
    
    if(self) {
        _move = move;
    }
    
    return self;
}

-(instancetype)initWithRandomMove {
    self = [super init];
    
    if(self) {
        _move = [self generateMove];
    }
    
    return self;
}

#pragma mark - Methods

-(Move)generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    Move move;
    switch (randomNumber) {
        case 0:
            move = Rock;
            break;
        case 1:
            move = Paper;
            break;
        default:
            move = Scissors;
            break;
    }
    
    return move;
}

-(BOOL)defeats:(RPSTurn*) opponent {
    if ((self.move == Rock && opponent.move == Scissors) ||
        (self.move == Scissors && opponent.move == Paper) ||
        (self.move == Paper && opponent.move == Rock))
    {
        return true;
    } else {
        return false;
    }
}

-(NSString*)description {
    NSString *description;
    switch (self.move) {
        case Rock:
            description = @"rock";
            break;
        case Paper:
            description = @"paper";
            break;
        case Scissors:
            description = @"scissors";
            break;
        default:
            description = @"invalid";
            break;
    }
    
    return description;
}


@end
