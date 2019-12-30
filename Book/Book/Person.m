//
//  Person.m
//  Book
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithFirstName: (NSString*)firstName
                        lastName: (NSString*)lastName
                        birthday: (NSDate*)birthday {
    self = [super init];
    
    if(self) {
        _firstName = firstName;
        _lastName = lastName;
        _birthday = birthday;
    }
    
    return self;
}

@end
