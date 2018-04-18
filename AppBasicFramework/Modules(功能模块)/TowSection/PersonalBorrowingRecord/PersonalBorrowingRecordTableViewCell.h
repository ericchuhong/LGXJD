//
//  PersonalBorrowingRecordTableViewCell.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalBorrowingRecordTableViewCell : UITableViewCell

///金额
@property (nonatomic,strong) UILabel *labelForMon;
///金额小图标
@property (nonatomic,strong) UIImageView *imgForMonLogo;
///时间
@property (nonatomic,strong) UILabel *labelForTime;
///状态
@property (nonatomic,strong) UILabel *labelForStatue;
///状态图标
@property (nonatomic,strong) UIImageView *imgViewForStatue;

@end
