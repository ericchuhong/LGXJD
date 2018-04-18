//
//  IdentityInformationTableViewCellForStart.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "IdentityInformationTableViewCellForStart.h"

@implementation IdentityInformationTableViewCellForStart

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
    //背景图片
    _imageViewForBG = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(GSDistance(25));
        make.width.mas_equalTo(GSDistance(125));
        make.height.mas_equalTo(GSDistance(83));
    }];
    _imageViewForBG.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:self];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(_imageViewForBG);
        make.width.height.mas_equalTo(GSDistance(40));
    }];
    [imageView setImage:[UIImage imageNamed:@"II_scanning"]];
    imageView.contentMode = UIViewAutoresizingNone;
    //点击开始识别
    _labelForPositiveAndReverse = [UILabel initForLabelWithFatherView:self Size:15
                                                                Color:[UIColor blackColor]
                                                                Tital:@"点击开始识别正面"];
    [_labelForPositiveAndReverse mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(103));
        make.top.mas_equalTo(_imageViewForBG.mas_bottom).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(15));
    }];
    //照片面
    _labelForPhoAndNationalEmblem = [UILabel initForLabelWithFatherView:self Size:15
                                                                  Color:Color35_128_215 Tital:@"照片面"];
    [_labelForPhoAndNationalEmblem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForPositiveAndReverse.mas_right).offset(GSDistance(5));
        make.top.bottom.mas_equalTo(_labelForPositiveAndReverse);
    }];
    
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
}

@end
