//
//  PersonalQuotaViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalQuotaViewController.h"
#import "PersonalQuotaView.h"
//总额度
#import "PersonalAllMoneyViewController.h"
//去借钱
#import "BorrowMoneyViewController.h"
//去提额，勾选认证项
#import "SelectCertificationItemsViewController.h"
@interface PersonalQuotaViewController ()
@property (nonatomic,strong) PersonalQuotaView *PQBottomView;
@end

@implementation PersonalQuotaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    GWeakSelf(self);
    [self.PQBottomView setCallbackForTiE:^(NSString *str) {
        GLogDebug(@"%@",str);
        if ([str isEqualToString:@"提额"]) {
            [weakself setForNavWithBackTextColor:nil BackText:nil];
            SelectCertificationItemsViewController *se = [[SelectCertificationItemsViewController alloc]init];
            [weakself.navigationController pushViewController:se animated:YES];
        }
        if ([str isEqualToString:@"已使用"]) {
            
        }
        if ([str isEqualToString:@"已冻结"]) {
            
        }
        if ([str isEqualToString:@"总额度"]) {
            PersonalAllMoneyViewController *per = [[PersonalAllMoneyViewController alloc]init];
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            [weakself.navigationController pushViewController:per animated:YES];
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //显示导航控制器
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    //设置表头，防止前一个界面的表头与本界面不同时改变样式
    [self setUpTital];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"我的额度"
                             TitleSize:19];
    
    [self setForNavWithRightTextColor:[UIColor whiteColor] BackText:@"去借钱"];
    GWeakSelf(self);
    [self setCallbackForRightItem:^{
        GLogDebug(@"去借钱");
        [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
        BorrowMoneyViewController *se = [[BorrowMoneyViewController alloc]init];
        [weakself.navigationController pushViewController:se animated:YES];
    }];
}
- (PersonalQuotaView *)PQBottomView
{
    if (_PQBottomView) {
        return _PQBottomView;
    }
    
    PersonalQuotaView *view = [[PersonalQuotaView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    _PQBottomView = view;
    return _PQBottomView;
}

@end
