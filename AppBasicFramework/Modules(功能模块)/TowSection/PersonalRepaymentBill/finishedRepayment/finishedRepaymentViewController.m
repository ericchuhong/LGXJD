//
//  finishedRepaymentViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/25.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "finishedRepaymentViewController.h"
#import "finishedRepaymentView.h"
@interface finishedRepaymentViewController ()
@property (nonatomic,strong) finishedRepaymentView *FRBottomView;
@end

@implementation finishedRepaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self FRBottomView];
    
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
- (finishedRepaymentView *)FRBottomView
{
    if (_FRBottomView) {
        return _FRBottomView;
    }
    
    finishedRepaymentView *view = [[finishedRepaymentView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _FRBottomView = view;
    return _FRBottomView;
}



@end
