//
//  PersonalInformationTableViewCellForFour.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationTableViewCellForFour.h"

@implementation PersonalInformationTableViewCellForFour

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
    
    ///底部线
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(0));
        make.right.mas_equalTo(self).offset(GSDistance(0));
        make.top.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    //共认证
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"共认证"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.top.bottom.mas_equalTo(self);
    }];
    _labelforNum = [UILabel initForLabelWithFatherView:self Size:12 Color:Color35_128_215 Tital:@"3"];
    [_labelforNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label0.mas_right);
        make.top.bottom.mas_equalTo(self);
    }];
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"项,授信总额度"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelforNum.mas_right);
        make.top.bottom.mas_equalTo(label0);
    }];
    _labelForMon = [UILabel initForLabelWithFatherView:self Size:12 Color:Color35_128_215 Tital:@"5000元"];
    [_labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label1.mas_right);
        make.top.bottom.mas_equalTo(label0);
    }];
    
    
}

@end
