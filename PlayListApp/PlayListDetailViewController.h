//
//  PlayListDetailViewController.h
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/21/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayList.h"

@interface PlayListDetailViewController : UIViewController

@property (nonatomic,strong)NSString *labelText;

@property (nonatomic,strong)PlayList *playListObject;

@property (weak, nonatomic) IBOutlet UIImageView *playListImage;
@property (weak, nonatomic) IBOutlet UILabel *playListTitle;
@property (weak, nonatomic) IBOutlet UILabel *playListDescription;

@end
