//
//  SelectCertificationItemsViewModel.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "SelectCertificationItemsViewModel.h"
#import "SelectCertificationItemsModel.h"
@implementation SelectCertificationItemsViewModel
+ (void)getSelectCertificationItemsData:(SelectCertificationItemsViewController *)controller Parameters:(NSDictionary *)dic
{
    NSMutableArray *mutArr0 = [[NSMutableArray alloc]init];
    NSMutableArray *mutArr1 = [[NSMutableArray alloc]init];
    NSMutableArray *mutArrAll = [[NSMutableArray alloc]init];
    for (int i=0; i<7; i++) {
        SelectCertificationItemsModel *model = [[SelectCertificationItemsModel alloc]init];
        if (i==0) {
            model.LOGO = @"CI_Face";
            model.tital = @"实人认证";
            model.detail = @"按照屏幕完成相应动作";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr0 addObject:model];
        }
        if (i==1) {
            model.LOGO = @"CI_CerCard";
            model.tital = @"身份证认证";
            model.detail = @"识别您身份证正反面";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr0 addObject:model];
        }
        if (i==2) {
            model.LOGO = @"CI_BankCard";
            model.tital = @"银行卡认证";
            model.detail = @"使用您常用的银行卡";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr0 addObject:model];
        }
        if (i==3) {
            model.LOGO = @"CI_Education";
            model.tital = @"学历认证";
            model.detail = @"认证您的学历信息";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr1 addObject:model];
        }
        if (i==4) {
            model.LOGO = @"CI_Social";
            model.tital = @"社保认证";
            model.detail =@"认证您的学历信息，最高额度+500元";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr1 addObject:model];
        }
        if (i==5) {
            model.LOGO = @"CI_CentralBank";
            model.tital = @"央行征信认证";
            model.detail = @"认证您的学历信息，最高额度+500元";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr1 addObject:model];
        }
        if (i==6) {
            model.LOGO = @"CI_SesameCredit";
            model.tital = @"芝麻信用评分";
            model.detail = @"查询您的芝麻信用分，最高额度+500元";
            model.status = @"未认证";
            model.statusLOGO = @"CI_blueBGgou";
            [mutArr1 addObject:model];
        }
    }
    [mutArrAll addObject:mutArr0];
    [mutArrAll addObject:mutArr1];
    
    controller.mutArrForRequAndOpri = mutArrAll;
}
@end
