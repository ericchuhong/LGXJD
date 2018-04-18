//
//  SelectCertificationItemsModel.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectCertificationItemsModel : RootModel

///logo
@property (nonatomic,strong) NSString *LOGO;
///标题
@property (nonatomic,strong) NSString *tital;
///详情
@property (nonatomic,strong) NSString *detail;
///状态
@property (nonatomic,strong) NSString *status;
///状态logo
@property (nonatomic,strong) NSString *statusLOGO;

@end
