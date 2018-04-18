//
//  ScrollDisplayForBorrowMoneyForDetailTableViewCellThree.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellThree.h"

@implementation ScrollDisplayForBorrowMoneyForDetailTableViewCellThree

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
    //合计
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"合计"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(5));
        make.bottom.mas_equalTo(self.mas_centerY);
    }];
    //合计内容
    _labelForHejiDetail = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"￥10100.00" FontName:nil];
    [_labelForHejiDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(label0);
        make.right.mas_equalTo(self).offset(GSDistance(-10));
    }];
    //服务费
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"服务费"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label0);
        make.top.mas_equalTo(self.mas_centerY);
        make.bottom.mas_equalTo(self).offset(GSDistance(-5));
    }];
    //服务费说明
    _imgView = [UIImageView initImageViewWithFatherView:self];
    [_imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(label1);
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.width.mas_equalTo(GSDistance(20));
    }];
    [_imgView setImage:[UIImage imageNamed:@"home_gantanhao"]];
    //服务费内容
    _labelForFWFDetail = [UILabel initForLabelWithFatherView:self Size:13
                                                       Color:[UIColor blackColor] Tital:@"￥100.00"];
    [_labelForFWFDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(label1);
        make.right.mas_equalTo(_imgView.mas_left);
        make.height.mas_equalTo(GSDistance(15));
    }];
}

@end
