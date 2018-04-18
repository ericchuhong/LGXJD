//
//  OneSectionViewController.m
//  AppBasicFramework
//
//  Created by apple on 2017/6/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "HomeSectionViewController.h"
//主视图
#import "HomeSectionView.h"
//勾选认证项控制器
#import "SelectCertificationItemsViewController.h"
//借钱
#import "BorrowMoneyViewController.h"

#import "RootWKWebViewViewController.h"

@interface HomeSectionViewController ()

@property (nonatomic,strong) HomeSectionView *mainView;

@end

@implementation HomeSectionViewController

#pragma mark --控制器生命周期--
- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化设置
    [self GSInitViewController];
    //处理交互逻辑
    [self processingLogic];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    //隐藏当前控制器的导航控制器界面
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
#pragma mark --处理交互逻辑--
- (void)processingLogic
{
    self.mainView.muArrForBannar = nil;
    //点击bannar
    [self.mainView setCallbackForBannar:^(NSString *str) {
        GLogDebug(@"%@",str);
        
        
    }];
    //我要借钱按钮
    [self.mainView.buttonForBorrowMoney addTarget:self
                                           action:@selector(clickForBorrowMoney)
                                 forControlEvents:UIControlEventTouchUpInside];
    
    
}
//勾选认证项跳转
- (void)clickForBorrowMoney
{
//    //设置下一个控制器的返回
//    [self setForNavWithBackTextColor:nil BackText:nil];
//    //勾选认证项控制器
//    SelectCertificationItemsViewController *se = [[SelectCertificationItemsViewController alloc]init];
//    //隐藏底部tabbar
//    [se setHidesBottomBarWhenPushed:YES];
//    [self.navigationController pushViewController:se animated:YES];
    
    
    [self setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
    //借钱
    BorrowMoneyViewController *se = [[BorrowMoneyViewController alloc]init];
    //隐藏底部tabbar
    [se setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:se animated:YES];
}
#pragma mark --主视图--
- (HomeSectionView *)mainView
{
    if (!_mainView)
    {
        HomeSectionView *view = [[HomeSectionView alloc]init];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(-22, 0, GSDistance(40), 0));
        }];
        _mainView = view;
    }
    return _mainView;
}


@end
