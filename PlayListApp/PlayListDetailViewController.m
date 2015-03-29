//
//  PlayListDetailViewController.m
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/21/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import "PlayListDetailViewController.h"

@interface PlayListDetailViewController ()

@end

@implementation PlayListDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.playListImage.image = self.playListObject.largeIcon;
    self.playListTitle.text = self.playListObject.title;
    self.playListDescription.text = self.playListObject.desc;
    self.playListImage.backgroundColor = self.playListObject.backgroundColor;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
