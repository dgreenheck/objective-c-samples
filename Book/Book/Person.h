//
//  Person.h
//  Book
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

#pragma mark - Properties

@property (nonatomic,copy) NSString *firstName;
@property (nonatomic,copy) NSString *lastName;
@property (nonatomic,copy) NSDate *birthday;

#pragma mark - Initializers

-(instancetype)initWithFirstName:(NSString*) firstName
                        lastName:(NSString*) lastName
                        birthday:(NSDate*) birthday;

@end

NS_ASSUME_NONNULL_END
