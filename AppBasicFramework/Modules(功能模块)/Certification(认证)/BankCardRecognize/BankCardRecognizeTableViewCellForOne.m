//
//  BankCardRecognizeTableViewCellForOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeTableViewCellForOne.h"

@implementation BankCardRecognizeTableViewCellForOne

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
    //类型
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:15
                                                  Color:[UIColor blackColor] Tital:@"持卡人"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(13));
        make.bottom.mas_equalTo(self).offset(GSDistance(-14));
        make.width.mas_equalTo(GSDistance(95));
    }];
    //内容
    _labelForContent = [UILabel initForLabelWithFatherView:self Size:15
                                                     Color:[UIColor blackColor]
                                                     Tital:@"张三" FontName:@"PingFeng-SC-Bold"];
    [_labelForContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate.mas_right);
        make.top.bottom.mas_equalTo(_labelForCate);
    }];
    //*
//    UILabel *labelForXing = [UILabel initForLabelWithFatherView:self Size:15 Color:Color235_29_30];
//    [labelForXing mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(_labelForContent.mas_right);
//        make.top.bottom.mas_equalTo(_labelForContent);
//    }];
//    labelForXing.text = @"*";
    
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
}

@end
