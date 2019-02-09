//
//  MainController.m
//  PlatformKit
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "MainController.h"
#import "MainModel.h"
#import "MainCell.h"
#import "MCPlatform.h"

@interface MainController () {
    NSArray *_dataSource;
}

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MainModel *loginModel = [MainModel modelWithName:@"登录" context:@"CLContext"];
    MainModel *homeModel = [MainModel modelWithName:@"首页" context:@"CHContext"];
    _dataSource = @[loginModel, homeModel];
    
    self.title = @"配置一个多工程的项目";
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainCell *cell = [MainCell cellForTableView:tableView];
    MainModel *mainModel = _dataSource[indexPath.row];
    cell.mainModel = mainModel;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MainCell *cell = (MainCell *)[tableView cellForRowAtIndexPath:indexPath];
    // 通过 context 进入不同的子业务中
    [[MCPlatform sharedInstance] goWithContext:cell.mainModel.context];
}

@end
