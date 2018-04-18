//
//  UnfinishedRepaymentTableViewCellOne.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnfinishedRepaymentTableViewCellOne : UITableViewCell

///时间金额
@property (nonatomic,strong) UILabel *labelForTimeAneMon;
///使用券的金额和类型
@property (nonatomic,strong) UILabel *labelForQuan;
///使用券的解释
@property (nonatomic,strong) UILabel *labelForQianJieShi;
///应还总额
@property (nonatomic,strong) UILabel *labelForShouldBackAll;
///剩余应还
@property (nonatomic,strong) UILabel *labelForShouldBackRest;

@end
