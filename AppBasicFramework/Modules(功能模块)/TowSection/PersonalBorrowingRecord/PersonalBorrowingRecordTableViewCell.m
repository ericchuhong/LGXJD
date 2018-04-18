//
//  PersonalBorrowingRecordTableViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingRecordTableViewCell.h"

@implementation PersonalBorrowingRecordTableViewCell

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
    UIView *view0 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    UIView *view1 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    //金额
    _labelForMon = [UILabel initForLabelWithFatherView:self Size:16 Color:[UIColor blackColor] Tital:@"1000.00" FontName:nil];
    [_labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(16));
        make.top.mas_equalTo(self).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //金额小图标
    _imgForMonLogo = [UIImageView initImageViewWithFatherView:self];
    [_imgForMonLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(_labelForMon);
        make.left.mas_equalTo(_labelForMon.mas_right).offset(GSDistance(GSDistance(5)));
    }];
    [_imgForMonLogo setImage:[UIImage imageNamed:@"my_BR"]];
    //时间
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"2017年04月10日"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForMon);
        make.bottom.mas_equalTo(self).offset(GSDistance(-15));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //箭头
    UIImageView *imgView = [UIImageView initImageViewWithFatherView:self];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(GSDistance(20));
    }];
    [imgView setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
    //借款状态
    _labelForStatue = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"借款失败"];
    [_labelForStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(imgView.mas_left).offset(GSDistance(-5));
    }];
    //还款状态
    _imgViewForStatue = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(-5));
        make.width.height.mas_equalTo(GSDistance(40));
    }];
    [_imgViewForStatue setImage:[UIImage imageNamed:@"my_OKgo"]];
}

@end
