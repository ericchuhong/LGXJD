//
//  TowSectionViewController.m
//  AppBasicFramework
//
//  Created by apple on 2017/6/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionViewController.h"

#import "MySectionView.h"
//个人资料
#import "PersonalInformationViewController.h"
//可用额度
#import "PersonalQuotaViewController.h"
//借款记录
#import "PersonalBorrowingRecordViewController.h"
//还款账单
#import "PersonalRepaymentBillViewController.h"
//总额度
#import "PersonalAllMoneyViewController.h"

@interface MySectionViewController ()
@property (nonatomic,strong)  MySectionView *mainView;

@end

@implementation MySectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    GWeakSelf(self);
    [self.mainView setCallBack:^(NSString *str) {
        GLogDebug(@"%@",str);
        if ([str isEqualToString:@"个人资料"]) {
            PersonalInformationViewController *per = [[PersonalInformationViewController alloc]init];
            [per setHidesBottomBarWhenPushed:YES];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
        if ([str isEqualToString:@"我的借款"]) {
            PersonalBorrowingRecordViewController *per = [[PersonalBorrowingRecordViewController alloc]init];
            [per setHidesBottomBarWhenPushed:YES];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
        if ([str isEqualToString:@"还款账单"]) {
            PersonalRepaymentBillViewController *per = [[PersonalRepaymentBillViewController alloc]init];
            [per setHidesBottomBarWhenPushed:YES];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
        if ([str isEqualToString:@"剩余应还"]) {
            
        }
        if ([str isEqualToString:@"总额度"]) {
            PersonalAllMoneyViewController *per = [[PersonalAllMoneyViewController alloc]init];
            [per setHidesBottomBarWhenPushed:YES];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
        if ([str isEqualToString:@"可用额度"]) {
            PersonalQuotaViewController *per = [[PersonalQuotaViewController alloc]init];
            [per setHidesBottomBarWhenPushed:YES];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
        if ([str isEqualToString:@"我的优惠券"]) {
        }
        if ([str isEqualToString:@"银行卡管理"]) {
        }
        if ([str isEqualToString:@"邀请好友"]) {
        }
        if ([str isEqualToString:@"活动中心"]) {
        }
        if ([str isEqualToString:@"帮助中心"]) {
        }
        if ([str isEqualToString:@"安全退出"]) {
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    //隐藏当前控制器的导航控制器界面
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (MySectionView *)mainView
{
    if (!_mainView)
    {
        MySectionView *view = [[MySectionView alloc]init];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(-22, 0, 0, 0));
        }];
        
        _mainView = view;
    }
    return _mainView;
}
@end
