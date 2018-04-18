//
//  PersonalQuotaView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface PersonalQuotaView : RootView

///点击提额,已使用和已提额
@property (nonatomic,copy) backForUpperLevelWithString callbackForTiE;
- (void)setCallbackForTiE:(backForUpperLevelWithString)callbackForTiE;

@end
