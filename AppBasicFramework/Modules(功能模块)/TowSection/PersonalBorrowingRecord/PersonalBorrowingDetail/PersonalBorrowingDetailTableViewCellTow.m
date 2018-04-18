//
//  PersonalBorrowingDetailTableViewCellTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingDetailTableViewCellTow.h"

@implementation PersonalBorrowingDetailTableViewCellTow

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
    //应还总额内容
    _labelForAllMon = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor]
                                                    Tital:@"3300.00" FontName:nil];
    [_labelForAllMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(18));
    }];
    //剩余应还内容
    _labelForShenMon = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor]
                                                     Tital:@"3300.00" FontName:nil];
    [_labelForShenMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(18));
    }];
    //下期应还内容
    _labelForNextMon = [UILabel initForLabelWithFatherView:self Size:18 Color:[UIColor blackColor]
                                                     Tital:@"3300.00" FontName:nil];
    [_labelForNextMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(270));
        make.top.mas_equalTo(self).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(18));
    }];
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"应还总额"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(_labelForAllMon.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(13));
    }];
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"剩余应还"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForShenMon);
        make.top.mas_equalTo(_labelForAllMon.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(13));
    }];
    UILabel *label2 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"下期应还"];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForNextMon);
        make.top.mas_equalTo(_labelForAllMon.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //灰线
    UIView *view0 = [UIView initViewWithFatherView:self];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(label2.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(1));
    }];
    view0.backgroundColor = Color232_232_232;
    //下期应还款时间
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153
                                                  Tital:@"下期应还款:2017年11月20日"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view0);
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //已逾期
    _labelForYYQ = [UILabel initForLabelWithFatherView:self Size:12 Color:Color235_29_30 Tital:@"已逾期"];
    [_labelForYYQ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTime.mas_right).offset(GSDistance(10));
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //已逾期logo
    _imgForYYQLogo = [UIImageView initImageViewWithFatherView:self];
    [_imgForYYQLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForYYQ.mas_right).offset(GSDistance(5));
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(13));
    }];
    [_imgForYYQLogo setImage:[UIImage imageNamed:@"home_gantanhao_red"]];
    //去还款
    _labelForBackMon = [UILabel initForLabelWithFatherView:self Size:12 Color:Color35_128_215 Tital:@"去还款"];
    [_labelForBackMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label2);
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //去还款logo
    _imgForBackMonLogo = [UIImageView initImageViewWithFatherView:self];
    [_imgForBackMonLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForBackMon.mas_right).offset(GSDistance(5));
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(13));
    }];
    [_imgForBackMonLogo setImage:[UIImage imageNamed:@"my_go"]];
}

@end
