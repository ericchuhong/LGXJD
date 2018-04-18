//
//  PersonalBorrowingDetailTableViewCellTow.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalBorrowingDetailTableViewCellTow : UITableViewCell

///应还总额内容
@property (nonatomic,strong) UILabel *labelForAllMon;
///剩余应还
@property (nonatomic,strong) UILabel *labelForShenMon;
///下期应还
@property (nonatomic,strong) UILabel *labelForNextMon;
///下期应还款时间
@property (nonatomic,strong) UILabel *labelForTime;
///已逾期
@property (nonatomic,strong) UILabel *labelForYYQ;
///已逾期logo
@property (nonatomic,strong) UIImageView *imgForYYQLogo;
///去还款
@property (nonatomic,strong) UILabel *labelForBackMon;
///去还款logo
@property (nonatomic,strong) UIImageView *imgForBackMonLogo;

@end
