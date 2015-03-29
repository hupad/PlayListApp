//
//  PlayListMasterViewController.m
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/21/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import "PlayListMasterViewController.h"
#import "PlayListDetailViewController.h"
#import "PlayList.h"

@interface PlayListMasterViewController ()

@end

@implementation PlayListMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < self.playListImages.count; index++) {
        
        // Do Something
        PlayList *playList = [[PlayList alloc] initWithIndex:index];
        
        UIImageView *plaYListImageView = self.playListImages[index];
        
        plaYListImageView.image = playList.icon;
        plaYListImageView.backgroundColor = playList.backgroundColor;
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"playlistIdentifier"]) {
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];

        if ([self.playListImages containsObject:playlistImageView]) {
            NSUInteger index = [self.playListImages indexOfObject:playlistImageView];
            
            PlayListDetailViewController *playlistDetailController = (PlayListDetailViewController *)segue.destinationViewController;
            playlistDetailController.playListObject = [[PlayList alloc] initWithIndex:index];
        }
        
    }
}
- (IBAction)onImageTap:(id)sender {
     [self performSegueWithIdentifier:@"playlistIdentifier" sender: sender];
}

@end
