//
//  PersonalQuotaTableViewCellForOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalQuotaTableViewCellForOne.h"

@implementation PersonalQuotaTableViewCellForOne

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
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"可用额度(元)"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(35));
        make.height.mas_equalTo(GSDistance(15));
    }];
    _labelForUseMon = [UILabel initForLabelWithFatherView:self Size:35 Color:[UIColor blackColor] Tital:@"3000.00" FontName:nil];
    [_labelForUseMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(label0.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(32));
    }];
    //提额背景图
    UIImageView *imgViewOne = [UIImageView initImageViewWithFatherView:self];
    [imgViewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForUseMon.mas_right).offset(GSDistance(5));
        make.bottom.mas_equalTo(_labelForUseMon.mas_top).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(25));
        make.width.mas_equalTo(GSDistance(50));
    }];
    [imgViewOne setImage:[UIImage imageNamed:@"home_Raise"]];
    imgViewOne.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickTiE)];
    [imgViewOne addGestureRecognizer:tap];
    //提额文字
    UILabel *labelForRaise = [UILabel initForLabelWithFatherView:self Size:12
                                                           Color:Color35_128_215 Tital:@"提额"];
    [labelForRaise mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(imgViewOne).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    labelForRaise.textAlignment = NSTextAlignmentCenter;
    
    //已使用
    UIView *view0 = [UIView initViewWithFatherView:self];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.mas_equalTo(self);
        make.width.mas_equalTo(GScreenWidth/2);
        make.height.mas_equalTo(GSDistance(70));
    }];
    view0.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap0 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickYiShiYong)];
    [view0 addGestureRecognizer:tap0];
    //已冻结
    UIView *view1 = [UIView initViewWithFatherView:self];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.mas_equalTo(self);
        make.width.mas_equalTo(GScreenWidth/2);
        make.height.mas_equalTo(GSDistance(70));
    }];
    view1.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickYiDongJie)];
    [view1 addGestureRecognizer:tap1];
    UILabel *label1 = [UILabel initForLabelWithFatherView:view0 Size:12 Color:[UIColor blackColor] Tital:@"已使用(元)"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(view0).offset(GSDistance(-20));
        make.top.mas_equalTo(view0);
        make.height.mas_equalTo(GSDistance(15));
    }];
    _labelForUsed = [UILabel initForLabelWithFatherView:view0 Size:20 Color:[UIColor blackColor] Tital:@"2000.00"];
    [_labelForUsed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(view0).offset(GSDistance(-20));
        make.top.mas_equalTo(label1.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(20));
    }];
    UIImageView *imgView0 = [UIImageView initImageViewWithFatherView:view0];
    [imgView0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(view0).offset(GSDistance(-30));
        make.centerY.mas_equalTo(view0).offset(GSDistance(-15));
        make.width.height.mas_equalTo(GSDistance(30));
    }];
    [imgView0 setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
    
    UILabel *label2 = [UILabel initForLabelWithFatherView:view0 Size:12 Color:[UIColor blackColor] Tital:@"已冻结(元)"];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(view1).offset(GSDistance(-20));
        make.top.mas_equalTo(view1);
        make.height.mas_equalTo(GSDistance(15));
    }];
    _labelForDong = [UILabel initForLabelWithFatherView:view0 Size:20 Color:[UIColor blackColor] Tital:@"0.00"];
    [_labelForDong mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(view1).offset(GSDistance(-20));
        make.top.mas_equalTo(label2.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(20));
    }];
    UIImageView *imgView1 = [UIImageView initImageViewWithFatherView:view0];
    [imgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(view1).offset(GSDistance(-30));
        make.centerY.mas_equalTo(view1).offset(GSDistance(-15));
        make.width.height.mas_equalTo(GSDistance(30));
    }];
    [imgView1 setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
}
- (void)clickTiE
{
    if (_callbackForTiE) {
        _callbackForTiE(@"提额");
    }
}
- (void)clickYiShiYong
{
    if (_callbackForTiE) {
        _callbackForTiE(@"已使用");
    }
}
- (void)clickYiDongJie
{
    if (_callbackForTiE) {
        _callbackForTiE(@"已冻结");
    }
}
@end
