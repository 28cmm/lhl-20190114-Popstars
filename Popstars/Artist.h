//
//  Artist.h
//  Popstars
//
//  Created by Roland on 2019-01-13.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// The artist class is a data model class
@interface Artist : NSObject

// An artist has two properties, a name and an image
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) UIImage *image;

// This convenience initializer is used to create an artist object
// with the provided name and image
- (instancetype)initWithName:(NSString *)name
                    andImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
