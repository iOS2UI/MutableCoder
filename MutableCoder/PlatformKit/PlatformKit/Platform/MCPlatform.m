//
//  MCPlatform.m
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "MCPlatform.h"
#import "MCFactory.h"
#import "MCPContextProtocol.h"
#import "MainController.h"


@implementation MCPlatform

// init
- (instancetype)init {
    self = [super init];
    if (self) {
        MainController *mainVC = [[MainController alloc] initWithStyle:UITableViewStyleGrouped];
        self.mainNav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    }
    return self;
}

// 进入对应 context 的业务
- (void)goWithContext:(NSString *)context {
    id<MCPContextProtocol> mcContext = [[MCFactory sharedFactor] createWithName:context];
    [mcContext goWithNav:self.mainNav];
}

static MCPlatform* kSingleObject = nil;
// 单例类方法
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kSingleObject = [[super allocWithZone:NULL] init];
    });
    
    return kSingleObject;
}

// 重写创建对象空间的方法
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    // 直接调用单例的创建方法
    return [self sharedInstance];
}

// 重写copy方法
- (id)copy {
    return kSingleObject;
}

// 重写 mutableCopy 方法
- (id)mutableCopy {
    return kSingleObject;
}

#pragma mark - 感觉没有上面的经典
//// 重写copy方法
//- (id)copy {
//    return [self.class sharedInstance];
//}
//
//// 重写 mutableCopy 方法
//- (id)mutableCopy {
//    return [self.class sharedInstance];
//}

#pragma mark - 支持MRC
#if !__has_feature(objc_arc)
- (id)retain {
    return self;
}

- (NSUInteger)retainCount {
    return 1;
}

- (id)autorelease {
    return self;
}

- (oneway void)release {
}
#endif


@end
