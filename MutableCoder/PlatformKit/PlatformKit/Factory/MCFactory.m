//
//  MCFactory.m
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "MCFactory.h"

@implementation MCFactory {
    NSMutableDictionary *_classes;
}

+ (instancetype)sharedFactor {
    static dispatch_once_t onceToken;
    static MCFactory *instance_ = nil;
    dispatch_once( &onceToken, ^{
        instance_ = [[self alloc] init];
    });
    return instance_;
}

- (instancetype)init {
    self = [super init];
    _classes = [[NSMutableDictionary alloc] init];
    return self;
}

- (void)registerClass:(Class)cls name:(NSString*)name {
    [_classes setObject:cls forKey:name];
}

- (id)createWithName:(NSString*)name {
    Class cls = [_classes objectForKey:name];
    return [cls new];
}

@end
