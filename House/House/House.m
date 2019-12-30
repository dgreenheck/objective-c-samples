//
//  House.m
//  House
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "House.h"

@interface House()

@property (nonatomic,readwrite) int numberOfBedrooms;

@end

@implementation House

-(instancetype)initWithAddress: (NSString*)address {
    self = [super init];
    
    // Check if self has a value
    if(self) {
        // Use underscore to access instance variable directly
        // Copy passed in string
        _address = [address copy];
        _numberOfBedrooms = 2;
        _hasHotTub = false;
    }
    
    return self;
}

@end
