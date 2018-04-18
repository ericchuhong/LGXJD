//
//  UIViewController+GSLogDeallocVC.m
//  AppBasicFramework
//
//  Created by IOS on 2017/8/4.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "UIViewController+GSLogDeallocVC.h"
#import <objc/runtime.h>

//标记关联对象的关键字
static char __logDeallocAssociatedKey__;

@interface logDeallocVC : UIViewController

@property (nonatomic,copy) NSString *message;

@end

@implementation UIViewController (GSLogDeallocVC)

- (void)logOnDealloc
{
    //得到关联对象
    if (objc_getAssociatedObject(self, &__logDeallocAssociatedKey__) == nil) {
        logDeallocVC *log = [[logDeallocVC alloc]init];
        log.message = NSStringFromClass(self.class);
        //设置关联对象
        objc_setAssociatedObject(self, &__logDeallocAssociatedKey__, log, OBJC_ASSOCIATION_RETAIN);
    }
}

@end

@implementation logDeallocVC

- (void)dealloc
{
    //对象消失时，打印对象的名字
    GLogInfo(@"dealloc:%@",self.message);
}

@end
