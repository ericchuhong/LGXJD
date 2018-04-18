//
//  RootModel.h
//  AppBasicFramework
//
//  Created by IOS on 2017/7/17.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RootModel : NSObject
//利用类方法赋值
+(NSMutableArray *)dataStoredClass:(NSString *)className Data:(NSArray *)array;

+(NSMutableArray *)dataStoredClass:(NSString *)className DataDic:(NSDictionary *)dic;

@end
