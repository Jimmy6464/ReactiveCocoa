//
//  JMCaculator.h
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import <Foundation/Foundation.h>

@interface JMCaculator : NSObject
@property (nonatomic, assign) BOOL isEqule;
@property (nonatomic, assign) int result;
- (JMCaculator *)caculator:(int (^)(int result))caculator;
- (JMCaculator *)equle:(BOOL(^)(int result))operation;
@end
