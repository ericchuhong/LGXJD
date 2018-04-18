//
//  PersonalBorrowingRecordView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface PersonalBorrowingRecordView : RootView

///处理逻辑
@property (nonatomic,copy) backForUpperLevelWithString callbackForPBR;
- (void)setCallbackForPBR:(backForUpperLevelWithString)callbackForPBR;

@end
