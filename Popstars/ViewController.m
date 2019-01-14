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

@property (weak, nonatomic) IBOutlet UIImageView *artistImageView;
@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;

@end

@implementation ViewController

- (IBAction)changeArtistButtonTapped:(UIButton *)sender {
    [self updateArtist];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self updateArtist];
}

- (void)updateArtist {
    Artist *artist = [ArtistFactory nextArtist];
    self.artistImageView.image = artist.image;
    self.artistNameLabel.text = artist.name;
}

@end
