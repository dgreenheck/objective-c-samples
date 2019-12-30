//
//  Book.h
//  Book
//
//  Created by Daniel Greenheck on 12/29/19.
//  Copyright © 2019 Max Q Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// Book
// Title
// Author
// Year of Publication
// Designated Initializer

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) Person *author;
@property (nonatomic) int yearOfPublication;

-(instancetype)initWithTitle: (NSString*)title
                      author: (Person*)author
                        year: (int)yearOfPublication;

@end

NS_ASSUME_NONNULL_END
