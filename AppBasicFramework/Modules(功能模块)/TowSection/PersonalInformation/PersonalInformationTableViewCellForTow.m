//
//  PersonalInformationTableViewCellForTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationTableViewCellForTow.h"

@implementation PersonalInformationTableViewCellForTow

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
    UILabel *labelForCate = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"邮箱"];
    [labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(13);
        make.top.bottom.mas_equalTo(self);
    }];
    
    _imgViewForArrow = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForArrow mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(self);
        make.width.mas_equalTo(GSDistance(30));
    }];
    [_imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
    
    _labelForDetail = [UILabel initForLabelWithFatherView:self Size:15 Color:Color35_128_215 Tital:@"去绑定"];
    [_labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(_imgViewForArrow.mas_left);
    }];
}

@end
