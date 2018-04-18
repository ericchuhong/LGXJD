//
//  PersonalInformationViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationViewController.h"
#import "PersonalInformationView.h"
//去提额，勾选认证项
#import "SelectCertificationItemsViewController.h"
@interface PersonalInformationViewController ()
@property (nonatomic,strong) PersonalInformationView *PIBottomView;
@end

@implementation PersonalInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self  GSInitViewController];
    
    GWeakSelf(self);
    [self.PIBottomView setCallbackForPI:^(NSString *str) {
        GLogDebug(@"%@",str);
        if ([str isEqualToString:@"去绑定邮箱"]) {
        }
        if ([str isEqualToString:@"去提额"]) {
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
                                 Title:@"个人资料"
                             TitleSize:19];
}
- (PersonalInformationView *)PIBottomView
{
    if (_PIBottomView) {
        return _PIBottomView;
    }
    
    PersonalInformationView *view = [[PersonalInformationView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _PIBottomView = view;
    return _PIBottomView;
}

@end
