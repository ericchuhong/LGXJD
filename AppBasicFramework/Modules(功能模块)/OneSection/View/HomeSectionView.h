//
//  OneSectionView.h
//  AppBasicFramework
//
//  Created by apple on 2017/6/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeSectionView : RootView

///轮播视图数据
@property (nonatomic,strong) NSMutableArray *muArrForBannar;
//点击轮播视图的回调
@property (nonatomic,copy) backForUpperLevelWithString callbackForBannar;
- (void)setCallbackForBannar:(backForUpperLevelWithString)callbackForBannar;

///最高额度文字
@property (nonatomic,strong) UILabel *labelForMaximumAmountNumber;
///有银行卡就能用!
@property (nonatomic,strong) UILabel *labelForHaveBankCard;
///1千万借12个月，日费用最低2毛7
@property (nonatomic,strong) UILabel *labelForAdvertising;
///我要借钱
@property (nonatomic,strong) UIButton *buttonForBorrowMoney;


@end
