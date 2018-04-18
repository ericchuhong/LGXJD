//
//  InformationCertificationTableViewCell.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InformationCertificationTableViewCell : UITableViewCell
///背景图片
@property (nonatomic,strong) UIImageView *imageViewForBG;
///类型logo
@property (nonatomic,strong) UIImageView *imageViewForLogo;
///类型
@property (nonatomic,strong) UILabel *labelForCate;
///类型说明
@property (nonatomic,strong) UILabel *labelForCateDscription;
///去认证/已认证
@property (nonatomic,strong) UIButton *buttonForCer;

@end
