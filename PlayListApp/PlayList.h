//
//  PlayList.h
//  PlayListApp
//
//  Created by Harish Upadhyayula on 3/22/15.
//  Copyright (c) 2015 Harish Upadhyayula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PlayList : NSObject

@property (nonatomic,strong)NSString *title;
@property (nonatomic,strong)NSString *desc;
@property (nonatomic,strong)UIImage *icon;
@property (nonatomic,strong)UIImage *largeIcon;
@property (nonatomic,strong)UIColor *backgroundColor;
@property (nonatomic,strong)NSArray *artists;

-(instancetype)initWithIndex:(NSUInteger)index;


@end
