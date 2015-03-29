//
//  MusicLibrary.h
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/22/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicLibrary : NSObject

extern NSString * const kTitle;
extern NSString * const kDescription;
extern NSString * const kIcon;
extern NSString * const kLargeIcon;
extern NSString * const kBackgroundColor;
extern NSString * const kArtists; // NSArray


@property (nonatomic, strong)NSArray *library;

@end
