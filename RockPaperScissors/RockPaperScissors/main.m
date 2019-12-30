//
//  main.m
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the controller for the game
        RPSController* gameController = [[RPSController alloc] init];
        [gameController throwDown:Rock];
        
        // Build the messages to display to the user
        NSString *playerMessage = [[gameController game] firstTurn].description;
        NSString *opponentMessage = [[gameController game] secondTurn].description;
        NSString *resultsMessage = [gameController messageForGame:gameController.game];
        
        NSLog(@"You threw a %@.",playerMessage);
        NSLog(@"Your opponent threw a %@.",opponentMessage);
        NSLog(@"%@",resultsMessage);
    }
    
    return 0;
}
