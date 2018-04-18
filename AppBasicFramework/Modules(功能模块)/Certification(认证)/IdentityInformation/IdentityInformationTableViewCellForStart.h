//
//  IdentityInformationTableViewCellForStart.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IdentityInformationTableViewCellForStart : UITableViewCell

///背景图
@property (nonatomic,strong) UIImageView *imageViewForBG;

///点击开始识别正面和反面
@property (nonatomic,strong) UILabel *labelForPositiveAndReverse;
@property (nonatomic,strong) UILabel *labelForPhoAndNationalEmblem;

///底部的灰色线
@property (nonatomic,strong) UIView *viewForLine;

@end
