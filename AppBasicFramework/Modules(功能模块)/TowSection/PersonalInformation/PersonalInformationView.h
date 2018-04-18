//
//  PersonalInformationView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface PersonalInformationView : RootView

///处理逻辑会调，绑定邮箱和提额等
@property (nonatomic,copy) backForUpperLevelWithString callbackForPI;
- (void)setCallbackForPI:(backForUpperLevelWithString)callbackForPI;

@end
