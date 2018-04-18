//
//  PersonalRepaymentBillTableViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalRepaymentBillTableViewCell.h"

@implementation PersonalRepaymentBillTableViewCell

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
    self.backgroundColor = [UIColor whiteColor];
    
    //期数内容
    _labelForNumPeriods = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor] Tital:@"2/3" FontName:nil];
    [_labelForNumPeriods mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(18));
    }];
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"期数"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForNumPeriods);
        make.top.mas_equalTo(_labelForNumPeriods.mas_bottom).offset(GSDistance(13));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //还款本息内容
    _labelForPrincipalAndInterest = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor] Tital:@"1100.00" FontName:nil];
    [_labelForPrincipalAndInterest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForNumPeriods.mas_right).offset(GSDistance(65));
        make.top.bottom.mas_equalTo(_labelForNumPeriods);
    }];
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"还款本息"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForPrincipalAndInterest);
        make.top.bottom.mas_equalTo(label0);
    }];
    //还款利息内容
    _labelForInterest = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor] Tital:@"100.00" FontName:nil];
    [_labelForInterest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForPrincipalAndInterest.mas_right).offset(GSDistance(70));
        make.top.bottom.mas_equalTo(_labelForPrincipalAndInterest);
    }];
    UILabel *label2 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"还款利息"];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForInterest);
        make.top.bottom.mas_equalTo(label1);
    }];
    //灰色的线
    UIView *viewForLine = [UIView initViewWithFatherView:self];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self).offset(GSDistance(-32));
        make.height.mas_equalTo(GSDistance(1));
    }];
    viewForLine.backgroundColor = Color232_232_232;
    ///应还款时间
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"应还：2017年12月08日"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(viewForLine.mas_bottom);
        make.bottom.mas_equalTo(self);
    }];
    ///逾期状态
    _labelForOverdue = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"已逾期"];
    [_labelForOverdue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTime.mas_right).offset(GSDistance(10));
        make.top.bottom.mas_equalTo(_labelForTime);
    }];
    ///逾期状态图标
    _imgViewForOverdue = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForOverdue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForOverdue.mas_right);
        make.top.bottom.mas_equalTo(_labelForOverdue);
        make.width.mas_equalTo(GSDistance(14));
    }];
    [_imgViewForOverdue setImage:[UIImage imageNamed:@"home_gantanhao_red"]];
    
    
    //去还款
    _labelForGo = [UILabel initForLabelWithFatherView:self Size:12 Color:Color35_128_215
                                                Tital:@"去还款"];
    [_labelForGo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label2);
        make.top.bottom.mas_equalTo(_labelForTime);
    }];
    _labelForGo.hidden = YES;
    //去还款图标
    _imageViewForGoImg = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForGoImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForGo.mas_right);
        make.top.bottom.mas_equalTo(_labelForGo);
        make.width.mas_equalTo(20);
    }];
    [_imageViewForGoImg setImage:[UIImage imageNamed:@"my_go"]];
    _imageViewForGoImg.hidden = YES;
    //已还款时间
    _labelForOKTime = [UILabel initForLabelWithFatherView:self Size:12 Color:Color16_181_117
                                                    Tital:@"已还：2017年10月07"];
    [_labelForOKTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.top.bottom.mas_equalTo(_labelForTime);
    }];
    //还款状态图标
    _imageViewForStatusImg = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForStatusImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(-5));
        make.width.height.mas_equalTo(GSDistance(41));
    }];
    [_imageViewForStatusImg setImage:[UIImage imageNamed:@"my_OKgo"]];
    _imageViewForStatusImg.contentMode = UIViewAutoresizingNone;
    
}

@end
