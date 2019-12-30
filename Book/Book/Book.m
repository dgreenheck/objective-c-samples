//
//  Book.m
//  Book
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import "Book.h"

@implementation Book

-(instancetype)initWithTitle: (NSString*)title
                      author: (Person*)author
                        year: (int)year {
    self = [super init];
    
    if(self) {
        _title = title;
        _author = author;
        _yearOfPublication = year;
    }
    
    return self;
}

@end
