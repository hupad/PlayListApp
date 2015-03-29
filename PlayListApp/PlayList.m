//
//  PlayList.m
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/22/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import "PlayList.h"
#import "MusicLibrary.h"

@implementation PlayList

-(instancetype)initWithIndex:(NSUInteger)index{
    
    self = [super init];
    
    if (self) {
        
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        
        // [ {firstname: Nitin , lastname: pabba, age: 24}, {firstname: Harish, lastname: Upad, age: 30}, {firstname: abc, lastname: bbc, age: 50} ]
        
        NSDictionary *playListDict = musicLibrary.library[index];
        
        _title = [playListDict objectForKey: kTitle];
        
        _desc = [playListDict objectForKey: kDescription];
        
        NSString *icon = [playListDict objectForKey:kIcon];
        
        _icon = [UIImage imageNamed: icon];
        
        NSString *largeIcon = [playListDict objectForKey: kLargeIcon];
        
        _largeIcon = [UIImage imageNamed:largeIcon];
        
        _backgroundColor = [self getColorFromRGB: [playListDict objectForKey:kBackgroundColor] ];
        
        // this will be of type NSArray
        _artists = [playListDict objectForKey:kArtists];
        
    }
    
    return self;
}

-(UIColor *)getColorFromRGB:(NSDictionary *)backgroundColorDict{
    
    // CGFloat ~= double
    CGFloat red = [[backgroundColorDict objectForKey:@"red"] doubleValue];
    CGFloat green = [[backgroundColorDict objectForKey:@"green"] doubleValue];
    CGFloat blue = [[backgroundColorDict objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[backgroundColorDict objectForKey:@"alpha"] doubleValue];
    
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    
    return color;
}

@end
