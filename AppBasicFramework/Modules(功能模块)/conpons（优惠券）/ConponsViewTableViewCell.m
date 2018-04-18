//
//  ConponsViewTableViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ConponsViewTableViewCell.h"

@implementation ConponsViewTableViewCell

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
    self.backgroundColor = Color243_243_243;
    
    UIImageView *imgViewForBG = [UIImageView initImageViewWithFatherView:self];
    [imgViewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(GSDistance(10));
        make.left.mas_equalTo(self).offset(GSDistance(10));
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.bottom.mas_equalTo(self);
    }];
    [imgViewForBG setImage:[UIImage imageNamed:@"conpons_bg"]];
    imgViewForBG.contentMode = UIViewAutoresizingNone;
    
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:12 Color:Color255_185_3 Tital:@"借款免息券"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imgViewForBG).offset(GSDistance(25));
        make.bottom.mas_equalTo(imgViewForBG).offset(GSDistance(-47));
        make.height.mas_equalTo(GSDistance(14));
    }];
    _labelForCateDetail = [UILabel initForLabelWithFatherView:self Size:21 Color:Color255_185_3 Tital:@"￥2%"];
    [_labelForCateDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_labelForCate);
        make.bottom.mas_equalTo(_labelForCate.mas_top).offset(GSDistance(-10));
        make.height.mas_equalTo(GSDistance(18));
    }];
  
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor whiteColor] Tital:@"有效期：2017.12.14-2018.01.14"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imgViewForBG).offset(GSDistance(20));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(25));
    }];
    _imgViewForUser = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForUser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(imgViewForBG).offset(GSDistance(-15));
        make.top.mas_equalTo(imgViewForBG).offset(GSDistance(20));
        make.width.height.mas_equalTo(GSDistance(36));
    }];
    [_imgViewForUser setImage:[UIImage imageNamed:@"conpons_User"]];
    UILabel *labelForUser = [UILabel initForLabelWithFatherView:self Size:10 Color:[UIColor whiteColor] Tital:@"使用"];
    [labelForUser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(_imgViewForUser).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    _labelForLowTime = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款期限≥30天"];
    [_labelForLowTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_imgViewForUser);
        make.left.mas_equalTo(imgViewForBG).offset(GSDistance(130));
        make.height.mas_equalTo(GSDistance(20));
    }];
    _labelForLowMon = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款金额≥N万元"];
    [_labelForLowMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForLowTime);
        make.bottom.mas_equalTo(_labelForLowTime.mas_top);
        make.height.mas_equalTo(GSDistance(20));
    }];
    _labelForExplantion = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"免除部分借款金额"];
    [_labelForExplantion mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForLowTime);
        make.top.mas_equalTo(_labelForLowTime.mas_bottom);
        make.height.mas_equalTo(GSDistance(20));
    }];
}

@end
