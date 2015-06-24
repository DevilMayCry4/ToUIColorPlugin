//
//  NSObject_Extension.m
//  color
//
//  Created by virgil on 15-6-23.
//  Copyright (c) 2015年 xtownmobile. All rights reserved.
//


#import "NSObject_Extension.h"
#import "color.h"
#import "OMColorHelper.h"
@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            [OMColorHelper  pluginDidLoad:plugin]; 
        });
    }
}
@end
