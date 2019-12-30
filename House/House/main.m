//
//  main.m
//  House
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "House.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        House *myHouse = [[House alloc] initWithAddress:@"2911 Ross Ave."];
        int number = myHouse.numberOfBedrooms;
 
        NSLog(@"%@", myHouse.address);
        NSLog(@"%d", number);
    }
    return 0;
}
