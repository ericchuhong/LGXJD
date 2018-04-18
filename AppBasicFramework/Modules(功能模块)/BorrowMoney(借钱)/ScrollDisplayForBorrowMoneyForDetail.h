//
//  ScrollDisplayForBorrowMoneyForDetail.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface ScrollDisplayForBorrowMoneyForDetail : RootView
///处理感叹号点击弹出界面
@property (nonatomic,copy) backForUpperLevelWithString callbackForGanTanHao;
- (void)setCallbackForGanTanHao:(backForUpperLevelWithString)callbackForGanTanHao;
@end
