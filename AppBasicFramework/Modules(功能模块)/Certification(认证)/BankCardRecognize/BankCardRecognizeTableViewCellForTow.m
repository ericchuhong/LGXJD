//
//  BankCardRecognizeTableViewCellForTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeTableViewCellForTow.h"

@implementation BankCardRecognizeTableViewCellForTow

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
                                                  Color:[UIColor blackColor] Tital:@"预留手机"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(13));
        make.bottom.mas_equalTo(self).offset(GSDistance(-14));
        make.width.mas_equalTo(GSDistance(95));
    }];
    //内容
    _textForContent = [UITextField initTextFieldWithFatherView:self Size:13 TitalColor:[UIColor blackColor] Placeholder:@"请输入银行预留手机号"];
    [_textForContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate.mas_right);
        make.top.bottom.mas_equalTo(_labelForCate);
    }];
    _textForContent.text = @"136 5019 1575";
    
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
}

@end
