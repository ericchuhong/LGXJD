//
//  BorrowMoneyViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyViewController.h"
#import "BorrowMoneyView.h"
//优惠券
#import "ConponsViewController.h"
@interface BorrowMoneyViewController ()
@property (nonatomic,strong) BorrowMoneyView *BMBottomView;
@end

@implementation BorrowMoneyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化控制器
    [self GSInitViewController];
    
    [self setUpTital];
    
    GWeakSelf(self);
    //点击确认按钮的会调
    [self.BMBottomView setCallback:^(NSArray *array) {
        
    }];
    //点击收款银行卡和使用优惠券的会调
    [self.BMBottomView setCallbackForStr:^(NSString *str) {
        if ([str isEqualToString:@"收款银行卡"]) {
            
        }
        if ([str isEqualToString:@"使用优惠券"]) {
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            ConponsViewController *ic = [[ConponsViewController alloc]init];
            [weakself.navigationController pushViewController:ic animated:YES];
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //显示导航控制器
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}
#pragma mark --设置表头--
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"借钱"
                             TitleSize:19];
}
- (BorrowMoneyView *)BMBottomView
{
    if (_BMBottomView) {
        return _BMBottomView;
    }
    
    BorrowMoneyView *view = [[BorrowMoneyView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _BMBottomView = view;
    return _BMBottomView;
}


@end
