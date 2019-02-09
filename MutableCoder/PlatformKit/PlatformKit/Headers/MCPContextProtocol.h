//
//  MCPContextProtocol.h
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MCPContextProtocol <NSObject>

@required
/**
 进入当前 Context 的业务
 */
- (void)goWithNav:(UINavigationController*)nav;

@end

NS_ASSUME_NONNULL_END
