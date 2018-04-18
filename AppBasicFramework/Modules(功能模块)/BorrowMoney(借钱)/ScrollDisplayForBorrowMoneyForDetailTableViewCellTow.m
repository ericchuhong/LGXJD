//
//  ScrollDisplayForBorrowMoneyForDetailTableViewCellTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellTow.h"

@implementation ScrollDisplayForBorrowMoneyForDetailTableViewCellTow

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
    //应还金额
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"应还金额"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(10));
        make.bottom.mas_equalTo(self.mas_centerY);
    }];
    //利息
    _labelForLiXi = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"(期)"];
    [_labelForLiXi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.mas_right).offset(GSDistance(-10));
        make.centerY.mas_equalTo(label0);
        make.height.mas_equalTo(GSDistance(12));
    }];
    //利息内容
    _labelForLiXiDetail = [UILabel initForLabelWithFatherView:self Size:13 Color:[UIColor blackColor] Tital:@"3"];
    [_labelForLiXiDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_labelForLiXi);
        make.right.mas_equalTo(_labelForLiXi.mas_left);
        make.height.mas_equalTo(GSDistance(15));
    }];
    //运算
    _labelForYunSuan = [UILabel initForLabelWithFatherView:self Size:9 Color:[UIColor blackColor] Tital:@"*"];
    [_labelForYunSuan mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_labelForLiXiDetail.mas_left);
        make.bottom.mas_equalTo(_labelForLiXi);
        make.height.mas_equalTo(GSDistance(12));
    }];
    //本金
    _labelForBenJin = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"(每期)"];
    [_labelForBenJin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_labelForYunSuan.mas_left);
        make.bottom.mas_equalTo(_labelForLiXi);
        make.height.mas_equalTo(GSDistance(12));
    }];
    //本金内容
    _labelForBenJinDetail = [UILabel initForLabelWithFatherView:self Size:13 Color:[UIColor blackColor] Tital:@"￥366.80"];
    [_labelForBenJinDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_labelForBenJin.mas_left);
        make.bottom.mas_equalTo(_labelForLiXi);
        make.height.mas_equalTo(GSDistance(15));
    }];
    
    //减免图片
    UIImageView *imgView = [UIImageView initImageViewWithFatherView:self];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label0);
        make.top.mas_equalTo(self.mas_centerY);
        make.bottom.mas_equalTo(self);
        make.width.mas_equalTo(GSDistance(20));
    }];
    [imgView setImage:[UIImage imageNamed:@"home_jianmian"]];
    //减免
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:14 Color:Color153_153_153 Tital:@"减免"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(imgView);
        make.left.mas_equalTo(imgView.mas_right);
    }];
    //减免利息
    _labelForJianMianLiXi = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"(利息)"];
    [_labelForJianMianLiXi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.centerY.mas_equalTo(label1);
        make.height.mas_equalTo(GSDistance(12));
    }];
    //减免利息内容
    _labelForJianMianLiXiDetail = [UILabel initForLabelWithFatherView:self Size:13 Color:Color235_29_30 Tital:@"-￥100.00"];
    [_labelForJianMianLiXiDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_labelForJianMianLiXi);
        make.right.mas_equalTo(_labelForJianMianLiXi.mas_left);
        make.height.mas_equalTo(GSDistance(15));
    }];
    
    UIView *viewForLine = [UIView initViewWithFatherView:self];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(10));
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.height.mas_equalTo(GSDistance(1));
    }];
    viewForLine.backgroundColor = Color243_243_243;
}

@end
