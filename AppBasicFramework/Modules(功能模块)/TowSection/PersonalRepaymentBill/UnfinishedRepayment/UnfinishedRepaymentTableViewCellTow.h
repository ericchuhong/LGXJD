//
//  UnfinishedRepaymentTableViewCellTow.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnfinishedRepaymentTableViewCellTow : UITableViewCell
///下划线
@property (nonatomic,strong) UIView *viewForLine;
///期数
@property (nonatomic,strong) UILabel *labelForNum;
///应还本息金额
@property (nonatomic,strong) UILabel *labelForMon;
///含利息多少元
@property (nonatomic,strong) UILabel *labelForLiXiNum;
///+
@property (nonatomic,strong) UILabel *labelForAdd;
///逾期费用（
@property (nonatomic,strong) UILabel *labelForYuQiMon;
///(
@property (nonatomic,strong) UILabel *labelForHu1;
///逾期
@property (nonatomic,strong) UILabel *labelForYuQi;
///逾期图片
@property (nonatomic,strong) UIImageView *imgForYuQi;
///）
@property (nonatomic,strong) UILabel *labelForHu2;
///应还时间
@property (nonatomic,strong) UILabel *labelForTime;

///文字状态
@property (nonatomic,strong) UILabel *labelForStatue;
///图片
@property (nonatomic,strong) UIImageView *imgForStatue;

@end
