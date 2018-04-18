//
//  ScrollDisplayForBorrowMoney.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface ScrollDisplayForBorrowMoney : RootView<UIScrollViewDelegate>

@property (nonatomic,copy,readonly) NSArray *arrayForText;
@property (nonatomic,strong,readonly) NSArray *arrayForclassName;
@property (nonatomic,copy,readonly) UIColor *colorForSelect;
@property (nonatomic,copy,readonly) UIColor *colorForNoSelect;
@property (nonatomic,strong) UIImageView *markView;
@property (nonatomic,strong) UIScrollView *bigScrollView;

- (instancetype)initWithTitleText:(NSArray *)arrayForText colorForSelect:(UIColor *)colorForSelect colorForNoSelect:(UIColor *)colorForNoSelect detailClass:(NSArray *)arrayForclassName;

///处理逻辑，记录借款详情界面是否已经弹出，默认值为no，弹出时标记为Yes
@property (nonatomic,assign) BOOL isUp;
@property (nonatomic,copy) backForUpperLevelWithString callback;
- (void)setCallback:(backForUpperLevelWithString)callback;
///处理感叹号点击弹出界面
@property (nonatomic,copy) backForUpperLevelWithString callbackForGanTanHao;
- (void)setCallbackForGanTanHao:(backForUpperLevelWithString)callbackForGanTanHao;

@end
