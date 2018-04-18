//
//  BankCardRecognizeTableViewCellForFour.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeTableViewCellForFour.h"

@implementation BankCardRecognizeTableViewCellForFour

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
                                                  Color:[UIColor blackColor] Tital:@"验证码"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(10));
        make.bottom.mas_equalTo(self).offset(GSDistance(-10));
        make.width.mas_equalTo(GSDistance(95));
    }];
    //内容
    _textForContent = [UITextField initTextFieldWithFatherView:self Size:13
                                                    TitalColor:[UIColor blackColor] Placeholder:@"请输入验证码"];
    [_textForContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate.mas_right);
        make.top.bottom.mas_equalTo(_labelForCate);
    }];
    _textForContent.text = @"136345";
    
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-88));
        make.top.bottom.mas_equalTo(_labelForCate);
        make.width.mas_equalTo(GSDistance(1));
    }];
    
    //验证码
    _labelForCode = [UILabel initForLabelWithFatherView:self Size:15
                                                  Color:Color35_128_215
                                                  Tital:@"获取" FontName:@"PingFang-SC-Medium"];
    [_labelForCode mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(viewForLine.mas_right);
        make.top.bottom.mas_equalTo(_labelForCate);
        make.right.mas_equalTo(self);
    }];
    _labelForCode.textAlignment = NSTextAlignmentCenter;
}


@end
