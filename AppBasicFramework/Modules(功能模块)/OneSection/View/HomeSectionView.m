//
//  OneSectionView.m
//  AppBasicFramework
//
//  Created by apple on 2017/6/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "HomeSectionView.h"
#import "CarouselAttemptView.h"
@implementation HomeSectionView
- (void)setMuArrForBannar:(NSMutableArray *)muArrForBannar
{
    _muArrForBannar = muArrForBannar;
    
    NSMutableArray *mutarr = [[NSMutableArray alloc]initWithObjects:@"http://192.168.1.251:8080/hyjr/static-uploads/public/2017-11/1-20171124-105332423.jpg",@"http://192.168.1.251:8080/lct/static-uploads/public/2017-10/1-20171030-195338578.png",@"http://192.168.1.251:8080/lct/static-uploads/public/2017-11/1-20171129-135853372.jpg",@"http://192.168.1.251:8080/hyjr/static-uploads/public/2017-11/1-20171124-105338862.jpg",@"http://192.168.1.251:8080/hyjr/static-uploads/public/2017-11/1-20171124-105345475.jpg", nil];
    
    CarouselAttemptView * RollingView = [CarouselAttemptView rollingViewWithFrame:CGRectMake(0, 0, GScreenWidth, GSDistance(200)) RollingStyle:RollingStyleNetwork Data:mutarr IntervalTime:2 action:^(NSInteger index){
        //回调，可以达到当前点击图片的下标进行相应的操作
        if (_callbackForBannar) {
            _callbackForBannar(@"123");
        }
    }];
    [self addSubview:RollingView];
    //根据当前图片的颜色来渲染当前view的背景色
    [UIImage mainColorFromImage:mutarr.firstObject View:self];
    //每次滚动一张，则渲染一次背景颜色
    [RollingView setCallback:^(NSString *str) {
        //根据当前图片的颜色来渲染当前view的背景色
        [UIImage mainColorFromImage:str View:self];
    }];
    
    [self createUI];
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
    }
    return self;
}
- (void)createUI
{
    //背景白色图
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:self];
    [imageView  mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(3));
        make.right.mas_equalTo(self).offset(GSDistance(-3));
        make.bottom.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(190));
    }];
    [imageView setImage:[UIImage imageNamed:@"home_bg"]];
    imageView.contentMode = UIViewAutoresizingNone;
    
    //最高额度（元）
    UILabel *labelForMaximumAmount = [UILabel initForLabelWithFatherView:self Size:15
                                                                   Color:Color153_153_153 Tital:@"最高额度(元)"];
    [labelForMaximumAmount mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(imageView).offset(GSDistance(55));
        make.height.mas_equalTo(GSDistance(15));
    }];
    
    //最高额度金额
    _labelForMaximumAmountNumber = [UILabel initForLabelWithFatherView:self Size:48
                                                                 Color:[UIColor blackColor] Tital:@"20000" FontName:nil];
    [_labelForMaximumAmountNumber mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(labelForMaximumAmount.mas_bottom).offset(GSDistance(40));
        make.height.mas_equalTo(GSDistance(42));
    }];
    
    //提额背景图
    UIImageView *imgViewOne = [UIImageView initImageViewWithFatherView:self];
    [imgViewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForMaximumAmountNumber.mas_right).offset(GSDistance(5));
        make.bottom.mas_equalTo(_labelForMaximumAmountNumber.mas_top).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(25));
        make.width.mas_equalTo(GSDistance(50));
    }];
    [imgViewOne setImage:[UIImage imageNamed:@"home_Raise"]];
    //提额文字
    UILabel *labelForRaise = [UILabel initForLabelWithFatherView:self Size:12
                                                           Color:Color35_128_215 Tital:@"提额"];
    [labelForRaise mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(imgViewOne).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    //提额下划线
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color232_232_232];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_labelForMaximumAmountNumber.mas_bottom).offset(GSDistance(18));
        make.height.mas_equalTo(GSDistance(1));
        make.left.mas_equalTo(_labelForMaximumAmountNumber).offset(GSDistance(-8));
        make.right.mas_equalTo(_labelForMaximumAmountNumber).offset(GSDistance(8));
    }];
    //有银行卡就能用!
    _labelForHaveBankCard = [UILabel initForLabelWithFatherView:self Size:14
                                                          Color:Color153_153_153 Tital:@"有银行卡就能用!"];
    [_labelForHaveBankCard mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(viewForLine.mas_bottom).offset(GSDistance(53));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //1千万借12个月，日费用最低2毛7
    _labelForAdvertising = [UILabel initForLabelWithFatherView:self Size:14
                                                         Color:Color153_153_153 Tital:@"1千万借12个月，日费用最低2毛7"];
    [_labelForAdvertising mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_labelForHaveBankCard.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //我要借钱
    _buttonForBorrowMoney = [UIButton initButtonWithFatherView:self Size:15
                                                    TitleColor:[UIColor whiteColor] Title:@"我要借钱" ];
    [_buttonForBorrowMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_labelForAdvertising.mas_bottom).offset(GSDistance(43));
        make.left.mas_equalTo(self).offset(GSDistance(18));
        make.right.mas_equalTo(self).offset(GSDistance(-18));
    }];
    [_buttonForBorrowMoney setBackgroundImage:[UIImage imageNamed:@"home_btnBG"] forState:UIControlStateNormal];
    [_buttonForBorrowMoney setBackgroundImage:[UIImage imageNamed:@"home_btnBGHui"] forState:UIControlStateSelected];
}
@end
