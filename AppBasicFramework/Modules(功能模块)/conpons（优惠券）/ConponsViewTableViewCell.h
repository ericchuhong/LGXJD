//
//  ConponsViewTableViewCell.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConponsViewTableViewCell : UITableViewCell

///分类
@property (nonatomic,strong) UILabel *labelForCate;
///分类内容
@property (nonatomic,strong) UILabel *labelForCateDetail;
///有效期
@property (nonatomic,strong) UILabel *labelForTime;
///最低使用金额
@property (nonatomic,strong) UILabel *labelForLowMon;
///最低期限
@property (nonatomic,strong) UILabel *labelForLowTime;
///优惠券解释说明
@property (nonatomic,strong) UILabel *labelForExplantion;

///使用
@property (nonatomic,strong) UIImageView *imgViewForUser;

@end
