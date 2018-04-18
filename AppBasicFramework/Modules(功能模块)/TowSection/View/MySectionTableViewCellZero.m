//
//  MySectionTableViewCellZero.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionTableViewCellZero.h"

@implementation MySectionTableViewCellZero

//自定义tabelView的cell的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //初始化cell上的控件
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self createUI];
    }
    return self;
}
- (void)createUI
{
    //实现cell的背景颜色渐变
    NSArray *arrayForColors =@[(__bridge id)RGB(57, 212, 236, 1.0).CGColor,(__bridge id)RGB(36, 129, 215, 1.0).CGColor];
    [UIView BackgroundGradientsWithFatherView:self Frame:CGRectMake(0, 0, GScreenWidth, GSDistance(243)) ArrayForColors:arrayForColors];
    
    //用户头像
    _imgViewForUserHeadPortrait = [UIImageView initImageViewWithFatherView:self backgroundColor:[UIColor clearColor]];
    [_imgViewForUserHeadPortrait mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(34));
        make.width.height.mas_equalTo(GSDistance(26));
    }];
    [_imgViewForUserHeadPortrait setImage:[UIImage imageNamed:@"my_headportrait"]];
    //用户名
    _labelForUserName = [UILabel initForLabelWithFatherView:self Size:12
                                                      Color:[UIColor whiteColor] Tital:@"153****1101"];
    [_labelForUserName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_imgViewForUserHeadPortrait);
        make.left.mas_equalTo(_imgViewForUserHeadPortrait.mas_right).offset(GSDistance(5));
        make.height.mas_equalTo(GSDistance(15));
    }];
    //设置
    _imgViewForSetUp = [UIImageView initImageViewWithFatherView:self backgroundColor:[UIColor clearColor]];
    [_imgViewForSetUp mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_imgViewForUserHeadPortrait);
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.width.height.mas_equalTo(GSDistance(17));
    }];
    [_imgViewForSetUp setImage:[UIImage imageNamed:@"my_setup"]];
    //本月应还（元）
    UILabel *labelForUseMon = [UILabel initForLabelWithFatherView:self Size:12
                                                            Color:[UIColor whiteColor] Tital:@"本月应还(元)"];
    [labelForUseMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(88));
        make.height.mas_equalTo(GSDistance(12));
    }];
    //本月应还金额
    _labelForShouldBackThisMonthNum = [UILabel initForLabelWithFatherView:self
                                                                     Size:35.0
                                                                    Color:[UIColor whiteColor]
                                                                    Tital:@"1000.00"];
    [_labelForShouldBackThisMonthNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(labelForUseMon.mas_bottom).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(32));
    }];
    //去还款
    _imgViewForMoneyBack = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForMoneyBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(labelForUseMon.mas_right).offset(GSDistance(26));
        make.top.mas_equalTo(labelForUseMon);
        make.width.mas_equalTo(GSDistance(40));
        make.height.mas_equalTo(GSDistance(24));
    }];
    [_imgViewForMoneyBack setImage:[UIImage imageNamed:@"my_moneyBack"]];
    UILabel *labelForMoneyBack = [UILabel initForLabelWithFatherView:self Size:9 Color:Color35_128_215 Tital:@"去还款"];
    [labelForMoneyBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(_imgViewForMoneyBack).insets(UIEdgeInsetsMake(0, 0, GSDistance(4), 0));
    }];
    //还款说明
    _labelForAd = [UILabel initForLabelWithFatherView:self Size:9 Color:[UIColor whiteColor] Tital:@"12月9日前还款，否则会产生逾期费用"];
    [_labelForAd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_labelForShouldBackThisMonthNum.mas_bottom).offset(GSDistance(7));
        make.height.mas_equalTo(GSDistance(10));
    }];
    _labelForAd.alpha = 0.5;
    //下划线
    UIImageView *imgViewForLine0 = [UIImageView initImageViewWithFatherView:self];
    [imgViewForLine0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_labelForAd.mas_bottom).offset(GSDistance(19));
        make.height.mas_equalTo(GSDistance(1));
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(self);
    }];
    [imgViewForLine0 setImage:[UIImage imageNamed:@"my_Line0"]];
    //下划线
    UIImageView *imgViewForLine1 = [UIImageView initImageViewWithFatherView:self];
    [imgViewForLine1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(imgViewForLine0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(40));
        make.left.mas_equalTo(self).offset(GScreenWidth/3);
        make.width.mas_equalTo(GSDistance(1));
    }];
    [imgViewForLine1 setImage:[UIImage imageNamed:@"my_Line1"]];
    //下划线
    UIImageView *imgViewForLine2 = [UIImageView initImageViewWithFatherView:self];
    [imgViewForLine2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(imgViewForLine0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(40));
        make.right.mas_equalTo(self).offset(-GScreenWidth/3);
        make.width.mas_equalTo(GSDistance(1));
    }];
    [imgViewForLine2 setImage:[UIImage imageNamed:@"my_Line1"]];
    _view0 = [UIView initViewWithFatherView:self backgroundColor:[UIColor clearColor]];
    [_view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.mas_equalTo(self);
        make.top.mas_equalTo(imgViewForLine0.mas_bottom);
        make.right.mas_equalTo(imgViewForLine1.mas_left);
    }];
    //剩余应还(元)
    UILabel *labelForShouldBack = [UILabel initForLabelWithFatherView:self Size:9
                                                                Color:Color205_217_239 Tital:@"剩余应还(元)"];
    [labelForShouldBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_left).offset(GScreenWidth/6-GSDistance(10));
        make.bottom.mas_equalTo(imgViewForLine1).offset(GSDistance(-5));
        make.height.mas_equalTo(GSDistance(10));
    }];
    UIImageView *imgView0 = [UIImageView initImageViewWithFatherView:self];
    [imgView0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(imgViewForLine1.mas_left).offset(GSDistance(-15));
        make.centerY.mas_equalTo(labelForShouldBack.mas_top).offset(GSDistance(-5));
        make.height.width.mas_equalTo(GSDistance(20));
    }];
    [imgView0 setImage:[UIImage imageNamed:@"my_arrow_right_bai"]];
    _view1 = [UIView initViewWithFatherView:self backgroundColor:[UIColor clearColor]];
    [_view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self);
        make.top.mas_equalTo(imgViewForLine0.mas_bottom);
        make.right.mas_equalTo(imgViewForLine2.mas_left);
        make.left.mas_equalTo(imgViewForLine1.mas_right);
    }];
    //总额度（元）
    UILabel *labelForAllMoney = [UILabel initForLabelWithFatherView:self Size:9
                                                              Color:Color205_217_239 Tital:@"总额度(元)"];
    [labelForAllMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(labelForShouldBack);
        make.centerX.mas_equalTo(self).offset(-GSDistance(10));
        make.height.mas_equalTo(labelForShouldBack);
    }];
    UIImageView *imgView1 = [UIImageView initImageViewWithFatherView:self];
    [imgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(imgViewForLine2.mas_left).offset(GSDistance(-15));
        make.centerY.mas_equalTo(labelForAllMoney.mas_top).offset(GSDistance(-5));
        make.height.width.mas_equalTo(GSDistance(20));
    }];
    [imgView1 setImage:[UIImage imageNamed:@"my_arrow_right_bai"]];
    _view2 = [UIView initViewWithFatherView:self backgroundColor:[UIColor clearColor]];
    [_view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.right.mas_equalTo(self);
        make.top.mas_equalTo(imgViewForLine0.mas_bottom);
        make.left.mas_equalTo(imgViewForLine2.mas_right);
    }];
    //可用额度
    UILabel *labelForShouldBackThisMonth = [UILabel initForLabelWithFatherView:self Size:9
                                                                        Color:Color205_217_239 Tital:@"可用额度(元)"];
    [labelForShouldBackThisMonth mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_right).offset(-GScreenWidth/6-GSDistance(10));
        make.bottom.top.mas_equalTo(labelForAllMoney);
    }];
    UIImageView *imgView2 = [UIImageView initImageViewWithFatherView:self];
    [imgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.centerY.mas_equalTo(labelForShouldBackThisMonth.mas_top).offset(GSDistance(-5));
        make.height.width.mas_equalTo(GSDistance(20));
    }];
    [imgView2 setImage:[UIImage imageNamed:@"my_arrow_right_bai"]];
    
    //剩余应还
    _labelForShouldBackNum = [UILabel initForLabelWithFatherView:self Size:14
                                                                Color:[UIColor whiteColor] Tital:@"1000.00"];
    [_labelForShouldBackNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_left).offset(GScreenWidth/6-GSDistance(10));
        make.top.mas_equalTo(imgViewForLine1).offset(GSDistance(5));
        make.height.mas_equalTo(GSDistance(12));
    }];
    //总额度
    _labelForAllMoneyNum = [UILabel initForLabelWithFatherView:self Size:14
                                                         Color:[UIColor whiteColor] Tital:@"5000.00"];
    [_labelForAllMoneyNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_labelForShouldBackNum);
        make.centerX.mas_equalTo(self).offset(-GSDistance(10));
        make.height.mas_equalTo(_labelForShouldBackNum);
    }];
    //可用额度
    _labelForUseMoney = [UILabel initForLabelWithFatherView:self Size:14 Color:[UIColor whiteColor]
                                                      Tital:@"4000.00"];
    [_labelForUseMoney mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_right).offset(-GScreenWidth/6-GSDistance(10));
        make.bottom.top.mas_equalTo(_labelForAllMoneyNum);
    }];
    
    _view0.userInteractionEnabled = YES;
    _view1.userInteractionEnabled = YES;
    _view2.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap0 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForShouldBackNum)];
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForAllMoneyNum)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForUseMoney)];
    [_view0 addGestureRecognizer:tap0];
    [_view1 addGestureRecognizer:tap1];
    [_view2 addGestureRecognizer:tap2];
}
- (void)clickForShouldBackNum
{
    if (_callBack) {
        _callBack(@"剩余应还");
    }
}
- (void)clickForAllMoneyNum
{
    if (_callBack) {
        _callBack(@"总额度");
    }
}
- (void)clickForUseMoney
{
    if (_callBack) {
        _callBack(@"可用额度");
    }
}
@end
