//
//  InformationCertificationViewModel.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "InformationCertificationViewModel.h"
#import "InformationCertificationModel.h"
@implementation InformationCertificationViewModel
+ (void)getInformationCertificationData:(InformationCertificationViewController *)controller Parameters:(NSDictionary *)dic;
{
    NSMutableArray *mutArrAll = [[NSMutableArray alloc]init];
    for (int i=0; i<3; i++) {
        InformationCertificationModel *model = [[InformationCertificationModel alloc]init];
        if (i==0) {
            model.imageViewForLogo = @"IC_Face";
            model.labelForCate = @"实人认证";
            model.labelForCateDscription = @"按照屏幕完成相应动作";
            model.buttonForCer = @"去认证";
            [mutArrAll addObject:model];
        }
        if (i==1) {
            model.imageViewForLogo = @"IC_CerCard";
            model.labelForCate = @"身份证认证";
            model.labelForCateDscription = @"识别身份证正反面";
            model.buttonForCer = @"去认证";
            [mutArrAll addObject:model];
        }
        if (i==2) {
            model.imageViewForLogo = @"IC_BankCard";
            model.labelForCate = @"银行卡认证";
            model.labelForCateDscription = @"使用您常用的银行卡";
            model.buttonForCer = @"去认证";
            [mutArrAll addObject:model];
        }
    }
     
    controller.mutArrForInformationCertification = mutArrAll;
}
@end
