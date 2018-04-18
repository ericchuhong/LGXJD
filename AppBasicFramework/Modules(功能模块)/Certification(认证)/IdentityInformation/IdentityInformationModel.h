//
//  IdentityInformationModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootModel.h"

@interface IdentityInformationModel : RootModel

///背景图
@property (nonatomic,strong) NSString *imageViewBG;
///正背面
@property (nonatomic,strong) NSString *strForPosAndRev;
///照片国徽
@property (nonatomic,strong) NSString *strForPhoAndNat;

@end
