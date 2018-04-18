//
//  BorrowMoneyTableViewCellForCoupon.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyTableViewCellForCoupon.h"

@implementation BorrowMoneyTableViewCellForCoupon

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
    
    UIView *view1 = [UIView initViewWithFatherView:self backgroundColor:Color232_232_232];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(10));
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.height.mas_equalTo(GSDistance(0.5));
    }];
    
    //使用优惠券
    UILabel *label = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"使用优惠券"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(18));
    }];
    //箭头
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:self];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(GSDistance(-10));
        make.width.mas_equalTo(GSDistance(15));
    }];
    [imageView setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
    //选择优惠券
    _labelForCoupon = [UILabel initForLabelWithFatherView:self Size:15 Color:Color255_185_3 Tital:@"1000元优惠券"];
    [_labelForCoupon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(imageView.mas_left).offset(GSDistance(-5));
    }];
    
}

@end
