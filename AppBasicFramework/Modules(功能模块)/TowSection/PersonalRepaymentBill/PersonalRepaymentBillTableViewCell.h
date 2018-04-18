//
//  PersonalRepaymentBillTableViewCell.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalRepaymentBillTableViewCell : UITableViewCell

///期数
@property (nonatomic,strong) UILabel *labelForNumPeriods;
///还款本息
@property (nonatomic,strong) UILabel *labelForPrincipalAndInterest;
///还款利息
@property (nonatomic,strong) UILabel *labelForInterest;
///应还款时间
@property (nonatomic,strong) UILabel *labelForTime;

///逾期状态
@property (nonatomic,strong) UILabel *labelForOverdue;
///逾期状态图标
@property (nonatomic,strong) UIImageView *imgViewForOverdue;

///去还款
@property (nonatomic,strong) UILabel *labelForGo;
///去还款图标
@property (nonatomic,strong) UIImageView *imageViewForGoImg;
///已还款时间
@property (nonatomic,strong) UILabel *labelForOKTime;
///还款状态图标
@property (nonatomic,strong) UIImageView *imageViewForStatusImg;

@end
