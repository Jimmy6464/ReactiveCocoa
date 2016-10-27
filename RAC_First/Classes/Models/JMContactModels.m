//
//  JMContactModels.m
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import "JMContactModels.h"

@implementation JMContactModels
+ (instancetype)contactWithDictionary:(NSDictionary *)dict{
    JMContactModels *models = [JMContactModels new];
    [models setValuesForKeysWithDictionary:dict];
    return models;
}
- (NSString *)description{
    return [NSString stringWithFormat:@"My name is %@,aged %@.Gender is %@,and my phone number is %@",self.name,self.age,self.gender,self.phone];
}
@end
