//
//  JMRedView.m
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import "JMRedView.h"

@implementation JMRedView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initializedSubviews];
        
    }
    return self;
}
#pragma mark - initializedSubviews
- (void)initializedSubviews
{
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"快按我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    [btn sizeToFit];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.center = CGPointMake(self.frame.size.width*0.5, self.frame.size.height*0.5);
    
    [self addSubview:btn];
    
}
- (void)buttonClick:(UIButton *)btn{
    self.center =CGPointMake(self.center.x, self.center.y+1);
}
@end
