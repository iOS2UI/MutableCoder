//
//  MCPlatform.h
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/**
 这是一个单例 (单例的实现, 可以使用通用的宏来做)
 
 @note 可以参考: [iOS单例的精心设计历程](https://www.jianshu.com/p/e18d1518db65)
 */
// 防止有子类 (感谢评论区网友提醒)
__attribute__((objc_subclassing_restricted))
@interface MCPlatform : NSObject

/** 单例类方法 */
+ (instancetype)sharedInstance;

/** mainNav */
@property (nonatomic, strong) UINavigationController *mainNav;

/**
 进入对应 context 的业务
 */
- (void)goWithContext:(NSString*)context;

@end

NS_ASSUME_NONNULL_END
