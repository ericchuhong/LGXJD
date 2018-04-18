//
//  PersonalAllMoneyView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface PersonalAllMoneyView : RootView

///点击提额
@property (nonatomic,copy) backForUpperLevelWithString callbackForTiE;
- (void)setCallbackForTiE:(backForUpperLevelWithString)callbackForTiE;

@end
