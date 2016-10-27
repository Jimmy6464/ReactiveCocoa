//
//  JMContactModels.h
//  RAC_First
//
//  Created by jimmy on 16/10/27.
//  Copyright © 2016年 jimmy. All rights reserved.
//
 
#import <Foundation/Foundation.h>

@interface JMContactModels : NSObject
/**
 *  name
 */
@property (nonatomic, copy)NSString* name;
/**
 *  age
 */
@property (nonatomic, strong)NSNumber* age;
/**
 *  phone
 */
@property (nonatomic, copy)NSString* phone;
/**
 *  gender
 */
@property (nonatomic, copy)NSString* gender;
+ (instancetype)contactWithDictionary:(NSDictionary *)dict;
@end
