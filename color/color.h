//
//  color.h
//  color
//
//  Created by virgil on 15-6-23.
//  Copyright (c) 2015年 xtownmobile. All rights reserved.
//

#import <AppKit/AppKit.h>

@class color;

static color *sharedPlugin;

@interface color : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end