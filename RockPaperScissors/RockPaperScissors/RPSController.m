//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move) playersMove {
    
    // Generate the opponent's move
    RPSTurn *playerTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computerTurn = [[RPSTurn alloc] initWithRandomMove];
    
    // RPSGame stores the results of the game
    self.game = [[RPSGame alloc] initWithFirstTurn:playerTurn
                                        secondTurn:computerTurn];
}

-(NSString*)messageForGame:(RPSGame*)game {
    // First, handle the tie
    if ([game isTie]) {
        return @"It's a tie.";
    }
    else {
        // Then build up the results message "Rock defeats Scissors. You Win!" etc.
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultsString = [game resultString];
        NSString *wholeString = [[NSString alloc] initWithFormat: @"%@ defeats %@. %@",winnerString,loserString,resultsString];
        
        return wholeString;
    }
}

@end
