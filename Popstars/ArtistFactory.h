//
//  ArtistFactory.h
//  Popstars
//
//  Created by Roland on 2019-01-13.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artist.h"

NS_ASSUME_NONNULL_BEGIN

// This data model class creates artist objects
@interface ArtistFactory : NSObject

// This class method randomly generates an artist object
+ (Artist *)nextArtist;

@end

NS_ASSUME_NONNULL_END
