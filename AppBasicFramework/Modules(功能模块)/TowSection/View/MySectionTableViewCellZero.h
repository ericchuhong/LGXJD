//
//  MySectionTableViewCellZero.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MySectionTableViewCellZero : UITableViewCell

@property (nonatomic,copy) backForUpperLevelWithString callBack;
- (void)setCallBack:(backForUpperLevelWithString)callBack;

///用户头像
@property (nonatomic,strong) UIImageView *imgViewForUserHeadPortrait;
///用户名
@property (nonatomic,strong) UILabel *labelForUserName;
///设置
@property (nonatomic,strong) UIImageView *imgViewForSetUp;
///本月应还金额
@property (nonatomic,strong) UILabel *labelForShouldBackThisMonthNum;
///去还款
@property (nonatomic,strong) UIImageView *imgViewForMoneyBack;
///还款说明
@property (nonatomic,strong) UILabel *labelForAd;

///剩余应还金额
@property (nonatomic,strong) UILabel *labelForShouldBackNum;
@property (nonatomic,strong) UIView *view0;
///总额度
@property (nonatomic,strong) UILabel *labelForAllMoneyNum;
@property (nonatomic,strong) UIView *view1;
///可用额度金额
@property (nonatomic,strong) UILabel *labelForUseMoney;
@property (nonatomic,strong) UIView *view2;

@end
