//
//  SCTableViewCellForRequiredDetail.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCTableViewCellForRequiredAndOptionalDetail : UITableViewCell

///logo
@property (nonatomic,strong) UIImageView *imageViewForLogo;
///tital
@property (nonatomic,strong) UILabel *labelForTital;
///text
@property (nonatomic,strong) UILabel *labelForDetail;
///认证说明
@property (nonatomic,strong) UILabel *labelForDescription;
///认证状态logo
@property (nonatomic,strong) UIImageView *imageViewForStatusLogo;

@end
