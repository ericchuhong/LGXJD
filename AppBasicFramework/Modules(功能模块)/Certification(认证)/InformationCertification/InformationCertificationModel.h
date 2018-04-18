//
//  InformationCertificationModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootModel.h"

@interface InformationCertificationModel : RootModel

///背景图片
@property (nonatomic,strong) NSString *imageViewForBG;
///类型logo
@property (nonatomic,strong) NSString *imageViewForLogo;
///类型
@property (nonatomic,strong) NSString *labelForCate;
///类型说明
@property (nonatomic,strong) NSString *labelForCateDscription;
///去认证/已认证
@property (nonatomic,strong) NSString *buttonForCer;

@end
