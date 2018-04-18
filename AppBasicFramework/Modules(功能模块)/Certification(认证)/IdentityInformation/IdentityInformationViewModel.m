//
//  IdentityInformationViewModel.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "IdentityInformationViewModel.h"
#import "IdentityInformationModel.h"
@implementation IdentityInformationViewModel
//界面基本数据
+ (void)getBaseIdentityInformationData:(IdentityInformationViewController *)controller Parameters:(NSDictionary *)dic
{
    NSMutableArray *mutArr = [[NSMutableArray alloc]init];
    for (int i=0; i<2; i++) {
        IdentityInformationModel *model = [[IdentityInformationModel alloc]init];
        if (i==0) {
            model.imageViewBG = @"II_position";
            model.strForPosAndRev = @"点击开始识别正面";
            model.strForPhoAndNat = @"照片面";
        }else{
            model.imageViewBG = @"II_Reverse";
            model.strForPosAndRev = @"点击开始识别背面";
            model.strForPhoAndNat = @"国徽面";
        }
        [mutArr addObject:model];
    }
    
    controller.mutArrForBase = mutArr;
}
@end
