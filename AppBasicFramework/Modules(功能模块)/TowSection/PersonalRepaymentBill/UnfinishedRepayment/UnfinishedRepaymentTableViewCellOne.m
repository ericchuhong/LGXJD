//
//  UnfinishedRepaymentTableViewCellOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "UnfinishedRepaymentTableViewCellOne.h"

@implementation UnfinishedRepaymentTableViewCellOne

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
    _labelForTimeAneMon = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153
                                                        Tital:@"2017年9月8号 借款3000.00元"];
    [_labelForTimeAneMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(16));
    }];
    //使用
    UILabel *labelForUser = [UILabel initForLabelWithFatherView:self Size:14 Color:Color153_153_153 Tital:@"使用"];
    [labelForUser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(_labelForTimeAneMon.mas_bottom).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(15));
    }];
    ///使用券的金额和类型
    _labelForQuan = [UILabel initForLabelWithFatherView:self Size:14 Color:Color255_185_3 Tital:@"2%借款免息券"];
    [_labelForQuan mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(labelForUser.mas_right);
        make.top.bottom.mas_equalTo(labelForUser);
    }];
    ///使用券的解释
    _labelForQianJieShi = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"（免去第一期的还款利息）"];
    [_labelForQianJieShi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForQuan.mas_right);
        make.bottom.mas_equalTo(_labelForQuan);
        make.height.mas_equalTo(GSDistance(10));
    }];
    
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"应还总额"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTimeAneMon);
        make.top.mas_equalTo(labelForUser.mas_bottom).offset(GSDistance(15));
        make.height.mas_equalTo(13);
    }];
    
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"剩余应还"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTimeAneMon);
        make.bottom.mas_equalTo(self.mas_bottom).offset(GSDistance(-15));
        make.height.mas_equalTo(13);
    }];
    
    _labelForShouldBackAll = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"3300.00"];
    [_labelForShouldBackAll mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(label0);
        make.right.mas_equalTo(self).offset(GSDistance(-12));
        make.height.mas_equalTo(GSDistance(14));
    }];
    
    _labelForShouldBackRest = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"2200.00" FontName:nil];
    [_labelForShouldBackRest mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(label1);
        make.right.mas_equalTo(_labelForShouldBackAll);
        make.height.mas_equalTo(GSDistance(14));
    }];
    
}

@end
