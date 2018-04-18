//
//  UnfinishedRepaymentViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "UnfinishedRepaymentViewController.h"
#import "UnfinishedRepaymentView.h"
@interface UnfinishedRepaymentViewController ()
@property (nonatomic,strong) UnfinishedRepaymentView *URBottomView;
@end

@implementation UnfinishedRepaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self URBottomView];
    
    [self setUpTital];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"还款账单详情"
                             TitleSize:19];
}
- (UnfinishedRepaymentView *)URBottomView
{
    if (_URBottomView) {
        return _URBottomView;
    }
    
    UnfinishedRepaymentView *view = [[UnfinishedRepaymentView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _URBottomView = view;
    return _URBottomView;
}

@end
