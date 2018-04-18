//
//  BankCardRecognizeTableViewCellForThree.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeTableViewCellForThree.h"

@implementation BankCardRecognizeTableViewCellForThree

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
                                                  Color:[UIColor blackColor] Tital:@"银行卡号"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(13));
        make.bottom.mas_equalTo(self).offset(GSDistance(-14));
        make.width.mas_equalTo(GSDistance(95));
    }];
    //内容
    _textForContent = [UITextField initTextFieldWithFatherView:self Size:13 TitalColor:[UIColor blackColor] Placeholder:@"请输入银行卡号，仅支持储蓄卡"];
    [_textForContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate.mas_right);
        make.top.bottom.mas_equalTo(_labelForCate);
        make.width.mas_equalTo(GSDistance(200));
    }];
    _textForContent.text = @"6223 5678 1234 5512 123";
    //相机
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:self];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-18));
        make.top.bottom.mas_equalTo(_textForContent);
        make.width.mas_equalTo(GSDistance(15));
    }];
    [imageView setImage:[UIImage imageNamed:@"II_Crame_Blue"]];
    
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
}

@end
