//
//  IdentityInformationViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "IdentityInformationViewController.h"
#import "IdentityInformationView.h"
#import "IdentityInformationViewModel.h"
@interface IdentityInformationViewController ()
@property (nonatomic,strong) IdentityInformationView *IIBottomView;
@end

@implementation IdentityInformationViewController
- (void)setMutArrForBase:(NSMutableArray *)mutArrForBase
{
    _mutArrForBase = mutArrForBase;
    
    self.IIBottomView.mutArrForBase = _mutArrForBase;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    [self GSInitViewController];
    
    [self IIBottomView];
    
    [self setUpTital];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    [IdentityInformationViewModel getBaseIdentityInformationData:self Parameters:nil];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"身份信息"
                             TitleSize:19];
}
- (IdentityInformationView *)IIBottomView
{
    if (_IIBottomView) {
        return _IIBottomView;
    }
    
    _IIBottomView = [[IdentityInformationView alloc]init];
    _IIBottomView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_IIBottomView];
    [_IIBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    return _IIBottomView;
}

@end
