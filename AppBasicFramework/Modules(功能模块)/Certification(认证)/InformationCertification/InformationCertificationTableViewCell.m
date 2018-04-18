//
//  InformationCertificationTableViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "InformationCertificationTableViewCell.h"

@implementation InformationCertificationTableViewCell

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
    
    //背景图片
    _imageViewForBG = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(8));
        make.right.mas_equalTo(self).offset(GSDistance(-8));
        make.bottom.mas_equalTo(self).offset(GSDistance(-5));
        make.top.mas_equalTo(self).offset(GSDistance(5));
    }];
    _imageViewForBG.backgroundColor = Color236_253_253;
    _imageViewForBG.layer.cornerRadius = 5.0;
    _imageViewForBG.layer.masksToBounds = YES;
    //类型logo
    _imageViewForLogo = [UIImageView initImageViewWithFatherView:_imageViewForBG];
    [_imageViewForLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imageViewForBG).offset(GSDistance(13));
        make.top.mas_equalTo(_imageViewForBG).offset(GSDistance(15));
        make.width.height.mas_equalTo(GSDistance(40));
    }];
    //类型
    _labelForCate = [UILabel initForLabelWithFatherView:_imageViewForBG Size:15
                                                  Color:[UIColor blackColor] Tital:@"人脸识别"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imageViewForLogo.mas_right).offset(GSDistance(10));
        make.centerY.mas_equalTo(_imageViewForLogo);
        make.height.mas_equalTo(GSDistance(15));
    }];
    //类型说明
    _labelForCateDscription = [UILabel initForLabelWithFatherView:_imageViewForBG Size:11
                                                            Color:Color153_153_153 Tital:@"按照屏幕完成相应动作"];
    [_labelForCateDscription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate.mas_right).offset(GSDistance(5));
        make.bottom.mas_equalTo(_labelForCate);
        make.height.mas_equalTo(GSDistance(14));
    }];
    //去认证/已认证
    _buttonForCer = [UIButton initButtonWithFatherView:_imageViewForBG Size:12
                                            TitleColor:[UIColor whiteColor] Title:@"去识别"];
    [_buttonForCer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(_imageViewForLogo);
        make.right.mas_equalTo(_imageViewForBG).offset(GSDistance(-13));
        make.height.mas_equalTo(GSDistance(25));
        make.width.mas_equalTo(GSDistance(65));
    }];
    [_buttonForCer setBackgroundImage:[UIImage imageNamed:@"IC_btnQRZ"] forState:UIControlStateNormal];
}
@end
