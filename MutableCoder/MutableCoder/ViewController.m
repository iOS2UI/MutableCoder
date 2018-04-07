//
//  ViewController.m
//  MutableCoder
//
//  Created by ZhuHong on 2018/4/7.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "ViewController.h"
#import "LoginObject.h"
#import "HomeObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 能访问到不同 项目 中的 Class
    [HomeObject test];
    
    [LoginObject test];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
