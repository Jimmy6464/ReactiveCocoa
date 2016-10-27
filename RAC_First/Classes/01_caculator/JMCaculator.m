//
//  JMCaculator.m
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import "JMCaculator.h"

@implementation JMCaculator
- (JMCaculator *)caculator:(int (^)(int))caculator{
    self.result = caculator(self.result);
    return self;
}
- (JMCaculator *)equle:(BOOL (^)(int))operation{
    self.isEqule = operation(self.result);
    return self;
}
@end
