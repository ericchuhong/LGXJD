//
//  BorrowMoneyView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface BorrowMoneyView : RootView

///逻辑回调,确定
@property (nonatomic,copy) backForUpperLevelWithArray callback;
- (void)setCallback:(backForUpperLevelWithArray)callback;
///逻辑回调,收款银行卡或者使用优惠券
@property (nonatomic,copy) backForUpperLevelWithString callbackForStr;
- (void)setCallbackForStr:(backForUpperLevelWithString)callbackForStr;

@end
