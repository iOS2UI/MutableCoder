//
//  MainCell.h
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MainModel;

NS_ASSUME_NONNULL_BEGIN

@interface MainCell : UITableViewCell

+ (instancetype)cellForTableView:(UITableView*)tableView;

/** MainModel */
@property (nonatomic, strong) MainModel *mainModel;

@end

NS_ASSUME_NONNULL_END
