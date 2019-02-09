//
//  MainModel.m
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "MainModel.h"

@implementation MainModel

+ (instancetype)modelWithName:(NSString*)name context:(NSString*)context {
    MainModel *model = [self new];
    model.name = name.copy;
    model.context = context.copy;
    return model;
}

@end
