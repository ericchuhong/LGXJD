//
//  SCTableViewCellForRequiredDetail.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "SCTableViewCellForRequiredAndOptionalDetail.h"

@implementation SCTableViewCellForRequiredAndOptionalDetail

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
    //背景
    UIImageView *imageViewForBG = [UIImageView initImageViewWithFatherView:self];
    [imageViewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(8));
        make.top.mas_equalTo(self).offset(GSDistance(5));
        make.right.mas_equalTo(self).offset(GSDistance(-8));
        make.bottom.mas_equalTo(self).offset(GSDistance(-5));
    }];
    imageViewForBG.backgroundColor = [UIColor whiteColor];
    imageViewForBG.layer.borderWidth = 1.0;
    imageViewForBG.layer.borderColor = Color244_244_244.CGColor;
    imageViewForBG.layer.cornerRadius = 5.0;
    imageViewForBG.layer.masksToBounds = YES;
    
    //logo
    _imageViewForLogo = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imageViewForBG).mas_equalTo(GSDistance(13));
        make.centerY.mas_equalTo(imageViewForBG);
        make.width.height.mas_equalTo(GSDistance(40));
    }];
    [_imageViewForLogo setImage:[UIImage imageNamed:@"CI_Face"]];
    //tital
    _labelForTital = [UILabel initForLabelWithFatherView:self Size:15
                                                   Color:[UIColor blackColor] Tital:@"人脸识别"];
    [_labelForTital mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imageViewForLogo.mas_right).offset(GSDistance(10));
        make.top.mas_equalTo(_imageViewForLogo).offset(GSDistance(5));
        make.height.mas_equalTo(GSDistance(15));
    }];
    //text
    _labelForDetail = [UILabel initForLabelWithFatherView:self Size:10
                                                    Color:Color170_170_170 Tital:@"按照屏幕完成相应动作"];
    [_labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTital);
        make.top.mas_equalTo(_labelForTital.mas_bottom).offset(GSDistance(7));
        make.height.mas_equalTo(GSDistance(10));
    }];
    //认证说明
    _labelForDescription = [UILabel initForLabelWithFatherView:self Size:12
                                                         Color:Color153_153_153 Tital:@"未认证"];
    [_labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(imageViewForBG).offset(GSDistance(30));
        make.bottom.mas_equalTo(imageViewForBG).offset(GSDistance(-30));
        make.right.mas_equalTo(imageViewForBG).offset(GSDistance(-32));
    }];
    //认证状态logo
    _imageViewForStatusLogo = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForStatusLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_labelForDescription);
        make.left.mas_equalTo(_labelForDescription.mas_right).offset(GSDistance(5));
        make.width.height.mas_equalTo(GSDistance(15));
    }];
}

@end
