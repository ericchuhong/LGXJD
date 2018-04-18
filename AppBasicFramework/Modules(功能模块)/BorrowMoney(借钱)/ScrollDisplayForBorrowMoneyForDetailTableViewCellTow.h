//
//  ScrollDisplayForBorrowMoneyForDetailTableViewCellTow.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollDisplayForBorrowMoneyForDetailTableViewCellTow : UITableViewCell

///本金内容
@property (nonatomic,strong) UILabel *labelForBenJinDetail;
///本金
@property (nonatomic,strong) UILabel *labelForBenJin;
///运算
@property (nonatomic,strong) UILabel *labelForYunSuan;
///利息内容
@property (nonatomic,strong) UILabel *labelForLiXiDetail;
///利息
@property (nonatomic,strong) UILabel *labelForLiXi;

///减免利息
@property (nonatomic,strong) UILabel *labelForJianMianLiXi;
///减免利息内容
@property (nonatomic,strong) UILabel *labelForJianMianLiXiDetail;
@end
