//
//  PersonalAllMoneyViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalAllMoneyViewController.h"
#import "PersonalAllMoneyView.h"
//去提额，勾选认证项
#import "SelectCertificationItemsViewController.h"
@interface PersonalAllMoneyViewController ()
@property (nonatomic,strong) PersonalAllMoneyView *PABottomView;
@end

@implementation PersonalAllMoneyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    GWeakSelf(self);
    [self.PABottomView setCallbackForTiE:^(NSString *str) {
        if ([str isEqualToString:@"提额"]) {
            [weakself setForNavWithBackTextColor:nil BackText:nil];
            SelectCertificationItemsViewController *se = [[SelectCertificationItemsViewController alloc]init];
            [weakself.navigationController pushViewController:se animated:YES];
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    //显示导航控制器
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    [self setUpTital];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"总额度管理"
                             TitleSize:19];
}
- (PersonalAllMoneyView *)PABottomView
{
    if (_PABottomView) {
        return _PABottomView;
    }
    
    PersonalAllMoneyView *view = [[PersonalAllMoneyView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _PABottomView = view;
    return _PABottomView;
}



@end
