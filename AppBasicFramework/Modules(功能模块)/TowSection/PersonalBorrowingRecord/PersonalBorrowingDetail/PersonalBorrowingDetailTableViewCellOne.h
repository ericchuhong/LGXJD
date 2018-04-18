//
//  PersonalBorrowingDetailTableViewCellOne.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalBorrowingDetailTableViewCellOne : UITableViewCell

///借款金额
@property (nonatomic,strong) UILabel *labelForMon;
///借款是否成功状态
@property (nonatomic,strong) UILabel *labelForMonStatue;
///已还款图片
@property (nonatomic,strong) UIImageView *imgView;
///优惠券
@property (nonatomic,strong) UILabel *labelForCon;
///优惠券内容
@property (nonatomic,strong) UILabel *labelForConDetail;
///借款说明内容
@property (nonatomic,strong) UILabel *labelForShuoMing;
///借款到内容
@property (nonatomic,strong) UILabel *labelForBank;
@property (nonatomic,strong) UIImageView *imgForBankLogo;
///创建时间
@property (nonatomic,strong) UILabel *labelForTime;

///借款失败说明
@property (nonatomic,strong) UILabel *labelForSB;

@end
