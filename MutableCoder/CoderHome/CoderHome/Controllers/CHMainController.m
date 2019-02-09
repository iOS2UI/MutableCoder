//
//  CHMainController.m
//  CoderHome
//
//  Created  by hong.zhu on 2019/2/9.
//  Copyright © 2019年 CoderHG. All rights reserved.
//

#import "CHMainController.h"
#import "CHSubController.h"

@interface CHMainController ()

@end

@implementation CHMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const ID = @"CELL_ID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = @"进入-首页-子界面";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CHSubController *chSubVC = [[CHSubController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:chSubVC animated:YES];
}

@end
