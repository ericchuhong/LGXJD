//
//  BorrowMoneyTableViewCellForBank.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyTableViewCellForBank.h"

@implementation BorrowMoneyTableViewCellForBank

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
    
    //收款银行卡
    UILabel *label = [UILabel initForLabelWithFatherView:self Size:15
                                                   Color:Color153_153_153 Tital:@"收款银行卡"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(16));
    }];
    //箭头
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:self];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(GSDistance(-10));
        make.width.mas_equalTo(GSDistance(15));
    }];
    [imageView setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
    //银行名字
    _labelForName = [UILabel initForLabelWithFatherView:self Size:15
                                                  Color:[UIColor blackColor] Tital:@"招商银行（1315）"];
    [_labelForName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(imageView.mas_left);
    }];
    //银行图标
    _imgViewForLogo = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(_labelForName.mas_left);
        make.width.mas_equalTo(GSDistance(20));
    }];
    [_imgViewForLogo setImage:[UIImage imageNamed:@"home_ICBC"]];
    
    UIView *view1 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
}

@end
