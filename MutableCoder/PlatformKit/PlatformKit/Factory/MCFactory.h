//
//  MCFactory.h
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/**
 注册各个业务线, 很简陋的实现
 */
@interface MCFactory : NSObject

+ (instancetype)sharedFactor;

- (void)registerClass:(Class)cls name:(NSString*)name;

- (id)createWithName:(NSString*)name;

@end

NS_ASSUME_NONNULL_END
