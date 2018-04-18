//
//  SelectCertificationItemsView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootView.h"

@interface SelectCertificationItemsView : RootView
@property (nonatomic,strong) UITableView *SCTableView;
///勾选进度
@property (nonatomic,strong) UIProgressView *progressView;
///勾选数字
@property (nonatomic,strong) UILabel *labelForSelectNum;

///必选项和可选项内容和数目
@property (nonatomic,strong) NSMutableArray *mutArrForRequAndOpri;

///全选按钮
@property (nonatomic,strong) UIButton *buttonForAllselect;
///确认申请
@property (nonatomic,strong) UIButton *buttonForApplication;
///现有额度
@property (nonatomic,strong) UILabel *labelForNowQuota;
///增加额度
@property (nonatomic,strong) UILabel *labelForAddQuota;

@end
