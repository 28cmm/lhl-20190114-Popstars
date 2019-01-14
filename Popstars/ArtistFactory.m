//
//  ArtistFactory.m
//  Popstars
//
//  Created by Roland on 2019-01-13.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "ArtistFactory.h"
#import <UIKit/UIKit.h>

@interface ArtistFactory()

// This private property is an array of all possible artists
@property (strong, nonatomic, class, readonly) NSArray *allArtists;

@end

@implementation ArtistFactory

+ (NSArray *)allArtists {
    return @[
             [[Artist alloc] initWithName:@"Taylor Swift" andImage:[UIImage imageNamed:@"taylorSwift"]],
             [[Artist alloc] initWithName:@"Ed Sheeran" andImage:[UIImage imageNamed:@"edSheeran"]],
             [[Artist alloc] initWithName:@"Justin Bieber" andImage:[UIImage imageNamed:@"justinBieber"]]
            ];
}

+ (Artist *)nextArtist {
    NSUInteger index = arc4random_uniform((unsigned int)ArtistFactory.allArtists.count);
    return ArtistFactory.allArtists[index];
}

@end
