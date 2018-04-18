//
//  finishedRepaymentTableViewCell.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/25.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface finishedRepaymentTableViewCell : UITableViewCell

///还款金额
@property (nonatomic,strong) UILabel *labelForMon;
///还款成功状态
@property (nonatomic,strong) UILabel *labelForMonStatue;
///优惠券
@property (nonatomic,strong) UILabel *labelForCon;
///优惠券内容
@property (nonatomic,strong) UILabel *labelForConDetail;
///还款方式
@property (nonatomic,strong) UILabel *labelForShuoMing;
///创建时间
@property (nonatomic,strong) UILabel *labelForTime;

@end
