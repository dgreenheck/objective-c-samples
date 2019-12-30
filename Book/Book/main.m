//
//  main.m
//  Book
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *authorBirthday = [[NSDate alloc] init];
        
        Person *author = [[Person alloc]
                          initWithFirstName: @"Daniel"
                          lastName: @"Greenheck"
                          birthday: authorBirthday];
        
        Book *myBook = [[Book alloc]
                        initWithTitle: @"Gulliver's Island"
                        author: author
                        year: 1895];
        
        NSLog(@"%@", myBook.title);
        NSLog(@"%@ %@", myBook.author.firstName, myBook.author.lastName);
        NSLog(@"%@", myBook.author.birthday);
        NSLog(@"%d", myBook.yearOfPublication);
    }
    return 0;
}
