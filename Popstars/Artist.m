//
//  Artist.m
//  Popstars
//
//  Created by Roland on 2019-01-13.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (instancetype)initWithName:(NSString *)name andImage:(UIImage *)image {
    self = [super init];
    if (self != nil) {
        self.name = name;
        self.image = image;
    }
    return self;
}

@end
