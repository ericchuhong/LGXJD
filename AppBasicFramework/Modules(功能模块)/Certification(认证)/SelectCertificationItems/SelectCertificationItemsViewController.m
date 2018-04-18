//
//  SelectCertificationItemsViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "SelectCertificationItemsViewController.h"
//视图
#import "SelectCertificationItemsView.h"
//viewModel
#import "SelectCertificationItemsViewModel.h"
//信息认证模块
#import "InformationCertificationViewController.h"

@interface SelectCertificationItemsViewController ()

@property (nonatomic,strong) SelectCertificationItemsView *SCBottomView;

@end

@implementation SelectCertificationItemsViewController

- (void)setMutArrForRequAndOpri:(NSMutableArray *)mutArrForRequAndOpri
{
    _mutArrForRequAndOpri = mutArrForRequAndOpri;
    //传递数据
    self.SCBottomView.mutArrForRequAndOpri = _mutArrForRequAndOpri;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化控制器
    [self GSInitViewController];
    //点击申请按钮，跳转至信息认证界面
    [self.SCBottomView.buttonForApplication addTarget:self action:@selector(clickForApplication) forControlEvents:UIControlEventTouchUpInside];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //显示导航控制器
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    //每次出现重新设置表头，防止其他界面影响当前页面显示效果
    [self setUpTital];
    
    //获取数据
    [SelectCertificationItemsViewModel getSelectCertificationItemsData:self Parameters:nil];
}
#pragma mark --勾选认证项--
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:[UIColor whiteColor]
                            TitleColor:[UIColor blackColor]
                                 Title:@"勾选认证项"
                             TitleSize:19];
}
#pragma mark --确认申请，跳转至信息认证界面--
- (void)clickForApplication
{
    //修改信息认证界面的返回文字。
    [self setForNavWithBackTextColor:[UIColor whiteColor] BackText:@"返回修改"];
    
    InformationCertificationViewController *ic = [[InformationCertificationViewController alloc]init];
    [self.navigationController pushViewController:ic animated:YES];
    
    //跳转至信息确认界面时，将选择项恢复到顶端。
    [self.SCBottomView.SCTableView scrollRectToVisible:CGRectMake(0, 0, 1, 1) animated:YES];
}
- (SelectCertificationItemsView *)SCBottomView
{
    if (_SCBottomView) {
        return _SCBottomView;
    }
    _SCBottomView = [[SelectCertificationItemsView alloc]init];
    _SCBottomView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_SCBottomView];
    [_SCBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    return _SCBottomView;
}
@end
