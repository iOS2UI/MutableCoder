//
//  ViewController.m
//  MutableCoder
//
//  Created by ZhuHong on 2018/4/7.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "ViewController.h"
#import "MCPlatform.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UINavigationController *mainNav = [MCPlatform sharedInstance].mainNav;
    mainNav.view.frame = self.view.bounds;
    mainNav.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self addChildViewController:mainNav];
    [self.view addSubview:mainNav.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
