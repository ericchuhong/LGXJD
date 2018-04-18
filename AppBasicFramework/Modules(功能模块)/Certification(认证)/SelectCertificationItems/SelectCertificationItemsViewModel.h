//
//  SelectCertificationItemsViewModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootViewModel.h"
#import "SelectCertificationItemsViewController.h"
@interface SelectCertificationItemsViewModel : RootViewModel
///获取勾选认证项界面数据
+ (void)getSelectCertificationItemsData:(SelectCertificationItemsViewController *)controller Parameters:(NSDictionary *)dic;

@end
