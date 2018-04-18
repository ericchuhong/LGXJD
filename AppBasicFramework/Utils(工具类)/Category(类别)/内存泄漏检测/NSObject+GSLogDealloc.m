//
//  NSObject+GSLogDealloc.m
//  AppBasicFramework
//
//  Created by IOS on 2017/8/4.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "NSObject+GSLogDealloc.h"
#import <objc/runtime.h>

static char __logDeallocAssociatdeKey__;

@interface logDealloc : NSObject

@property (nonatomic,copy) NSString *message;

@end

@implementation NSObject (GSLogDealloc)

- (void)logOnDealloc
{
    if (objc_getAssociatedObject(self, &__logDeallocAssociatdeKey__) == nil) {
        logDealloc *log = [[logDealloc alloc]init];
        log.message = NSStringFromClass(self.class);
        objc_setAssociatedObject(self, &__logDeallocAssociatdeKey__, log, OBJC_ASSOCIATION_RETAIN);
    }
}

@end

@implementation logDealloc

- (void)dealloc
{
    GLogInfo(@"dealloc:%@",self.message);
}

@end
