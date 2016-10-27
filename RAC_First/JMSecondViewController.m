//
//  JMSecondViewController.m
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import "JMSecondViewController.h"

@interface JMSecondViewController ()

@end

@implementation JMSecondViewController
- (void)notice:(id)sender {
    // 通知第一个控制器，告诉它，按钮被点了
    
    // 通知代理
    // 判断代理信号是否有值
    if (self.delegateSignal) {
        // 有值，才需要通知
        [self.delegateSignal sendNext:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn  = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"click me" forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:self action:@selector(notice:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 30);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
