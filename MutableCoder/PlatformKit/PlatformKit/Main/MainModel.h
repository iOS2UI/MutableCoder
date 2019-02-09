//
//  MainModel.h
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainModel : NSObject

+ (instancetype)modelWithName:(NSString*)name context:(NSString*)context;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *context;

@end

NS_ASSUME_NONNULL_END
