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

@interface Artist : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) UIImage *image;

- (instancetype)initWithName:(NSString *)name andImage:(UIImage *)image;

@end

NS_ASSUME_NONNULL_END
