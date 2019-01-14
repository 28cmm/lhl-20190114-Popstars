//
//  ViewController.m
//  Popstars
//
//  Created by Roland on 2019-01-13.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "ViewController.h"
#import "ArtistFactory.h"

@interface ViewController ()

// MARK: - IBOutlets
// These properties are links to items (UIViews) on the screen of
// this view controller
@property (weak, nonatomic) IBOutlet UIImageView *artistImageView;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;

@end

@implementation ViewController

// MARK: - IBActions
// These methods are caslled in response to the user interacting with
// an element on the view controller's screen
- (IBAction)changeArtistButtonTapped:(UIButton *)sender {
    [self updateArtist];
}

// This method is called right after the view controller loads its view
// (screen)
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateArtist];
}

// This is my own method, to be called whenever I want to update the
// image displayed on screen
- (void)updateArtist {
    Artist *artist = [ArtistFactory nextArtist];
    self.artistImageView.image = artist.image;
    self.artistNameLabel.text = artist.name;
}

@end
