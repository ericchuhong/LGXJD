//
//  IdentityInformationViewModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootViewModel.h"
#import "IdentityInformationViewController.h"
@interface IdentityInformationViewModel : RootViewModel
///界面基本数据
+ (void)getBaseIdentityInformationData:(IdentityInformationViewController *)controller Parameters:(NSDictionary *)dic;

@end
