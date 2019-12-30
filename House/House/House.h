//
//  House.h
//  House
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bedroom.h"

NS_ASSUME_NONNULL_BEGIN

@interface House : NSObject

@property (nonatomic,copy) NSString *address;
@property (nonatomic,readonly) int numberOfBedrooms;
@property (nonatomic) BOOL hasHotTub;

@property (nonatomic) Bedroom *frontBedroom;
@property (nonatomic) Bedroom *backBedroom;

-(instancetype)initWithAddress: (NSString*)address;

@end

NS_ASSUME_NONNULL_END
