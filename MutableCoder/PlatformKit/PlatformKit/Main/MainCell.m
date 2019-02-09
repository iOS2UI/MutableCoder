//
//  MainCell.m
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "MainCell.h"
#import "MainModel.h"

@implementation MainCell

+ (instancetype)cellForTableView:(UITableView*)tableView {
    static NSString * const ID = @"MainCell";
    MainCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (void)setMainModel:(MainModel *)mainModel {
    _mainModel = mainModel;
    
    self.textLabel.text = _mainModel.name;
}

@end
