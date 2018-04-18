//
//  PersonalBorrowingDetailViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingDetailViewController.h"
#import "PersonalBorrowingDetailView.h"
@interface PersonalBorrowingDetailViewController ()
@property (nonatomic,strong) PersonalBorrowingDetailView *PBBottomView;
@end

@implementation PersonalBorrowingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self PBBottomView];
    
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
                                 Title:@"借款详情"
                             TitleSize:19];
}
- (PersonalBorrowingDetailView *)PBBottomView
{
    if (_PBBottomView) {
        return _PBBottomView;
    }
    
    PersonalBorrowingDetailView *view = [[PersonalBorrowingDetailView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _PBBottomView = view;
    return _PBBottomView;
}


@end
