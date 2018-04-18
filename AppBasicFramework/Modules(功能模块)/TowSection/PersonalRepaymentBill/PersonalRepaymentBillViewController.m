//
//  PersonalRepaymentBillViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalRepaymentBillViewController.h"
#import "PersonalRepaymentBillView.h"
//未完成还款
#import "UnfinishedRepaymentViewController.h"
//完成还款
#import "finishedRepaymentViewController.h"
@interface PersonalRepaymentBillViewController ()
@property (nonatomic,strong) PersonalRepaymentBillView *PRBottomView;
@end

@implementation PersonalRepaymentBillViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    GWeakSelf(self);
    [self.PRBottomView setCallback:^(NSString *str) {
        [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
        UnfinishedRepaymentViewController *ic = [[UnfinishedRepaymentViewController alloc]init];
        [weakself.navigationController pushViewController:ic animated:YES];
        
//        [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
//        finishedRepaymentViewController *ic = [[finishedRepaymentViewController alloc]init];
//        [weakself.navigationController pushViewController:ic animated:YES];
    }];
    
    [self setUpTital];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //显示导航控制器
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"还款账单"
                             TitleSize:19];
}
- (PersonalRepaymentBillView *)PRBottomView
{
    if (_PRBottomView) {
        return _PRBottomView;
    }
    
    PersonalRepaymentBillView *view = [[PersonalRepaymentBillView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _PRBottomView = view;
    return _PRBottomView;
}


@end
