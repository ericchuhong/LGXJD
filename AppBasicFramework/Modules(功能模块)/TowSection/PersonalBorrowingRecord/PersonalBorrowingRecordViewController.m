//
//  PersonalBorrowingRecordViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingRecordViewController.h"
#import "PersonalBorrowingRecordView.h"
//去借钱
#import "BorrowMoneyViewController.h"
///借款详情
#import "PersonalBorrowingDetailViewController.h"
@interface PersonalBorrowingRecordViewController ()
@property (nonatomic,strong) PersonalBorrowingRecordView *PBBottomView;
@end

@implementation PersonalBorrowingRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self setUpTital];
    
    GWeakSelf(self);
    [self.PBBottomView setCallbackForPBR:^(NSString *str) {
        [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
        PersonalBorrowingDetailViewController *se = [[PersonalBorrowingDetailViewController alloc]init];
        [weakself.navigationController pushViewController:se animated:YES];
    }];
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
                                 Title:@"借款记录"
                             TitleSize:19];
    [self setForNavWithRightTextColor:[UIColor whiteColor] BackText:@"我要借款"];
    GWeakSelf(self);
    [self setCallbackForRightItem:^{
        [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
        BorrowMoneyViewController *se = [[BorrowMoneyViewController alloc]init];
        [weakself.navigationController pushViewController:se animated:YES];
    }];
}
- (PersonalBorrowingRecordView *)PBBottomView
{
    if (_PBBottomView) {
        return _PBBottomView;
    }
    
    PersonalBorrowingRecordView *view = [[PersonalBorrowingRecordView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _PBBottomView = view;
    return _PBBottomView;
}

@end
