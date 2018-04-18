//
//  BorrowMoneyTableViewCellForMoney.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyTableViewCellForMoney.h"

@implementation BorrowMoneyTableViewCellForMoney

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
    
    //借款金额
    UILabel *label = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"借款金额"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(self).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(18));
    }];
    //￥
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:22 Color:[UIColor blackColor] Tital:@"￥"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(20));
        make.bottom.mas_equalTo(self).offset(GSDistance(-20));
        make.height.mas_equalTo(GSDistance(25));
    }];
    //具体金额
    _BMTextField = [UITextField initTextFieldWithFatherView:self Size:40 TitalColor:[UIColor blackColor] Tital:@"1000.00" Placeholder:@"500" FontName:nil];
    [_BMTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label1.mas_right);
        make.bottom.mas_equalTo(label1);
        make.height.mas_equalTo(GSDistance(35));
        make.right.mas_equalTo(self);
    }];
    
}

@end
