//
//  BankCardRecognizeViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeViewController.h"
#import "BankCardRecognizeView.h"
@interface BankCardRecognizeViewController ()
@property (nonatomic,strong) BankCardRecognizeView *BCBottonView;
@end

@implementation BankCardRecognizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self BCBottonView];
    
    [self setUpTital];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"银行卡认证"
                             TitleSize:19];
}
- (BankCardRecognizeView *)BCBottonView
{
    if (_BCBottonView) {
        return _BCBottonView;
    }
    
    _BCBottonView = [[BankCardRecognizeView alloc]init];
    _BCBottonView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_BCBottonView];
    [_BCBottonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    return _BCBottonView;
}
@end
