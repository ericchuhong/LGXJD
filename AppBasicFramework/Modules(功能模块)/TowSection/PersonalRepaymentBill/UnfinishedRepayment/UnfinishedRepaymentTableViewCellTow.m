//
//  UnfinishedRepaymentTableViewCellTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "UnfinishedRepaymentTableViewCellTow.h"

@implementation UnfinishedRepaymentTableViewCellTow

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
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color232_232_232];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.height.mas_equalTo(GSDistance(1));
    }];
    //期数
    _labelForNum = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"1/3"];
    [_labelForNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(15));
    }];
    //应还本息
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color170_170_170 Tital:@"应还本息"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(GSDistance(10));
        make.left.mas_equalTo(self).offset(GSDistance(70));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //应还本息金额
    _labelForMon = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor]
                                                 Tital:@"1100.00" FontName:nil];
    [_labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(70));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //含利息100.00
    _labelForLiXiNum = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"(含利息100.00)"];
    [_labelForLiXiNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForMon.mas_right);
        make.bottom.mas_equalTo(_labelForMon);
        make.height.mas_equalTo(GSDistance(10));
    }];
    //+
    _labelForAdd = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153 Tital:@"+"];
    [_labelForAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForLiXiNum.mas_right).offset(GSDistance(3));
        make.bottom.mas_equalTo(_labelForLiXiNum);
        make.height.mas_equalTo(_labelForLiXiNum);
    }];
    //逾期金额
    _labelForYuQiMon = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor]
                                                     Tital:@"500.00" FontName:nil];
    [_labelForYuQiMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForAdd.mas_right).offset(GSDistance(3));
        make.bottom.mas_equalTo(_labelForAdd);
        make.top.mas_equalTo(_labelForMon);
    }];
    ///(
    _labelForHu1 = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153
                                                    Tital:@"("];
    [_labelForHu1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForYuQiMon.mas_right);
        make.bottom.mas_equalTo(_labelForYuQiMon);
        make.height.mas_equalTo(GSDistance(10));
    }];
    ///逾期
    _labelForYuQi = [UILabel initForLabelWithFatherView:self Size:9 Color:Color235_29_30
                                                  Tital:@"逾期"];
    [_labelForYuQi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForHu1.mas_right);
        make.bottom.mas_equalTo(_labelForHu1);
        make.height.mas_equalTo(_labelForHu1);
    }];
    //逾期图片
    _imgForYuQi = [UIImageView initImageViewWithFatherView:self];
    [_imgForYuQi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForYuQi.mas_right);
        make.bottom.mas_equalTo(_labelForYuQi);
        make.height.mas_equalTo(_labelForYuQi);
    }];
    [_imgForYuQi setImage:[UIImage imageNamed:@"home_gantanhao_red"]];
    
    ///)
    _labelForHu2 = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153
                                                 Tital:@")"];
    [_labelForHu2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imgForYuQi.mas_right);
        make.bottom.mas_equalTo(_labelForYuQi);
        make.height.mas_equalTo(GSDistance(10));
    }];
    
    //应还时间
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:9 Color:Color153_153_153
                                                  Tital:@"还款时间：2017年12月19号"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(70));
        make.bottom.mas_equalTo(self).offset(GSDistance(-10));
        make.height.mas_equalTo(GSDistance(10));
    }];
    
    //已还完
    _labelForStatue = [UILabel initForLabelWithFatherView:self Size:12 Color:Color16_181_117 Tital:@"已还完"];
    [_labelForStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-22));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(14));
    }];
    _labelForStatue.hidden = YES;
    
    //图片
    _imgForStatue = [UIImageView initImageViewWithFatherView:self];
    [_imgForStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-22));
        make.centerY.mas_equalTo(self);
        make.height.width.mas_equalTo(GSDistance(15));
    }];
    [_imgForStatue setImage:[UIImage imageNamed:@"CI_blueBGgou"]];
    
}

@end
