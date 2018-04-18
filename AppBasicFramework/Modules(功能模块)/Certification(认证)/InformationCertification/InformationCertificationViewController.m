//
//  InformationCertificationViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "InformationCertificationViewController.h"
#import "InformationCertificationView.h"
#import "InformationCertificationViewModel.h"
//身份证认证
#import "IdentityInformationViewController.h"
//人脸识别
#import "FaceRecognizeViewController.h"
//银行卡信息
#import "BankCardRecognizeViewController.h"
@interface InformationCertificationViewController ()
@property (nonatomic,strong) InformationCertificationView *ICBottomView;
@end

@implementation InformationCertificationViewController
- (void)setMutArrForInformationCertification:(NSMutableArray *)mutArrForInformationCertification
{
    _mutArrForInformationCertification = mutArrForInformationCertification;
    
    self.ICBottomView.mutArr = _mutArrForInformationCertification;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self setUpTital];
    
    GWeakSelf(self);
    [self.ICBottomView setCallback:^(NSString *str) {
        if ([str isEqualToString:@"实人认证"]) {
            //修改信息认证界面的返回文字
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            FaceRecognizeViewController *con = [[FaceRecognizeViewController alloc]init];
            [weakself.navigationController pushViewController:con animated:YES];
        }
        if ([str isEqualToString:@"身份证认证"]) {
            //修改信息认证界面的返回文字
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            IdentityInformationViewController *con = [[IdentityInformationViewController alloc]init];
            [weakself.navigationController pushViewController:con animated:YES];
        }
        if ([str isEqualToString:@"银行卡认证"]) {
            //修改信息认证界面的返回文字
            [weakself setForNavWithBackTextColor:[UIColor whiteColor] BackText:nil];
            BankCardRecognizeViewController *con = [[BankCardRecognizeViewController alloc]init];
            [weakself.navigationController pushViewController:con animated:YES];
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    //请求数据
    [InformationCertificationViewModel getInformationCertificationData:self
                                                            Parameters:nil];
}
#pragma mark --信息认证--
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"信息认证"
                             TitleSize:19];
}
- (InformationCertificationView *)ICBottomView
{
    if (_ICBottomView) {
        return _ICBottomView;
    }
    
    _ICBottomView = [[InformationCertificationView alloc]init];
    [self.view addSubview:_ICBottomView];
    _ICBottomView.translatesAutoresizingMaskIntoConstraints = NO;
    [_ICBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    return _ICBottomView;
}
@end
