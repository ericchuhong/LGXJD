//
//  InformationCertificationViewModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootViewModel.h"
#import "InformationCertificationViewController.h"
@interface InformationCertificationViewModel : RootViewModel
///获取信息认证界面数据
+ (void)getInformationCertificationData:(InformationCertificationViewController *)controller Parameters:(NSDictionary *)dic;
@end
