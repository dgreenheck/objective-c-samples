//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Daniel Greenheck on 12/30/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enums

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};

@interface RPSTurn : NSObject

#pragma mark - Properties

@property (nonatomic) Move move;

#pragma mark - Initializers

-(instancetype)initWithMove:(Move) move;

-(instancetype)initWithRandomMove;

#pragma mark - Methods

-(BOOL)defeats:(RPSTurn*) opponent;

-(NSString*)description;

@end

NS_ASSUME_NONNULL_END
