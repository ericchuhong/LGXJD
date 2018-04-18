//
//  InformationCertificationView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface InformationCertificationView : RootView

@property (nonatomic,strong) NSMutableArray *mutArr;

///点击认证，识别按钮
@property (nonatomic,copy) backForUpperLevelWithString callback;
- (void)setCallback:(backForUpperLevelWithString)callback;

@end
