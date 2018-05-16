//
//  ViewController.m
//  UIView_block
//
//  Created by 宋锡铭 on 2018/5/16.
//  Copyright © 2018年 宋锡铭. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Block.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUI];
}

- (void)setUI {
    UIView *testView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:testView];
    testView.backgroundColor = [UIColor orangeColor];
    [testView tapActionWithBlock:^{
        NSLog(@"点击了testView");
    }];
}

@end
