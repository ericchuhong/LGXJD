//
//  ConponsViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ConponsViewController.h"
#import "ConponsView.h"
@interface ConponsViewController ()
@property (nonatomic,strong) ConponsView *CVBottomView;
@end

@implementation ConponsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化控制器
    [self GSInitViewController];
    
    [self setUpTital];
    
    [self CVBottomView];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"优惠券"
                             TitleSize:19];
    
    [self setForNavWithRightTextColor:nil BackText:@"不使用"];
    [self setCallbackForRightItem:^{
        GLogDebug(@"不使用");
    }];
}
- (ConponsView *)CVBottomView
{
    if (_CVBottomView) {
        return _CVBottomView;
    }
    
    ConponsView *view = [[ConponsView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
    
    _CVBottomView = view;
    return _CVBottomView;
}


@end
