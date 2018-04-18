//
//  PersonalInformationTableViewCellForThree.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationTableViewCellForThree.h"

@implementation PersonalInformationTableViewCellForThree

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
    ///底部线
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"姓名"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_viewForLine);
        make.top.bottom.mas_equalTo(self);
    }];
    
    _imgForDetail = [UIImageView initImageViewWithFatherView:self];
    [_imgForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.mas_equalTo(self);
        make.width.mas_equalTo(GSDistance(30));
    }];
    [_imgForDetail setImage:[UIImage imageNamed:@"CI_blueBGgou"]];
    _labelForDetail = [UILabel initForLabelWithFatherView:self Size:12 Color:Color35_128_215 Tital:@"已认证"];
    [_labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(_imgForDetail.mas_left);
    }];
}

@end
