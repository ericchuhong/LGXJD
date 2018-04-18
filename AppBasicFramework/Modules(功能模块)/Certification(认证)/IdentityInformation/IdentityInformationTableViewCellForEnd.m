//
//  IdentityInformationTableViewCellForEnd.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "IdentityInformationTableViewCellForEnd.h"

@implementation IdentityInformationTableViewCellForEnd

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
    ///身份证图片
    _imageViewForPosAndRev = [UIImageView initImageViewWithFatherView:self];
    [_imageViewForPosAndRev mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(25));
        make.width.height.mas_equalTo(GSDistance(60));
    }];
    _imageViewForPosAndRev.layer.cornerRadius = 5.0;
    _imageViewForPosAndRev.layer.masksToBounds = YES;
    _imageViewForPosAndRev.backgroundColor = [UIColor lightGrayColor];
    ///相机图片
    UIImageView *imageViewForCra = [UIImageView initImageViewWithFatherView:_imageViewForPosAndRev];
    [imageViewForCra mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_imageViewForPosAndRev);
        make.top.mas_equalTo(_imageViewForPosAndRev).offset(GSDistance(12));
        make.width.mas_equalTo(GSDistance(25));
        make.height.mas_equalTo(GSDistance(21));
    }];
    [imageViewForCra setImage:[UIImage imageNamed:@"II_Crame"]];
    //重拍
    UILabel *label = [UILabel initForLabelWithFatherView:_imageViewForPosAndRev Size:12
                                                   Color:[UIColor whiteColor] Tital:@"重拍"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_imageViewForPosAndRev);
        make.top.mas_equalTo(imageViewForCra.mas_bottom).offset(GSDistance(7));
        make.height.mas_equalTo(GSDistance(12));
    }];
    
    UIView *viewForMi = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForMi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imageViewForPosAndRev.mas_right).offset(GSDistance(15));
        make.centerY.mas_equalTo(_imageViewForPosAndRev);
        make.right.mas_equalTo(self).offset(GSDistance(-5));
        make.height.mas_equalTo(GSDistance(1));
    }];
    ///上面类别
    _labelForUp =  [UILabel initForLabelWithFatherView:self Size:15
                                                 Color:Color153_153_153 Tital:@"姓名"];
    [_labelForUp mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(_imageViewForPosAndRev).offset(GSDistance(3));
        make.left.mas_equalTo(viewForMi);
        make.bottom.mas_equalTo(viewForMi.mas_top).offset(GSDistance(-16));
        make.width.mas_equalTo(GSDistance(80));
    }];
    ///下面类别
    _labelForDown = [UILabel initForLabelWithFatherView:self Size:15
                                                  Color:Color153_153_153 Tital:@"身份证号"];
    [_labelForDown mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(_imageViewForPosAndRev).offset(GSDistance(-3));
        make.left.mas_equalTo(viewForMi);
        make.top.mas_equalTo(viewForMi.mas_bottom).offset(GSDistance(13));
        make.width.mas_equalTo(GSDistance(80));
    }];
    ///上面内容
    _TextForUp = [UITextField initTextFieldWithFatherView:self Size:13
                                               TitalColor:[UIColor blackColor] Placeholder:@"请输入姓名"];
    [_TextForUp mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForUp.mas_right);
        make.top.bottom.mas_equalTo(_labelForUp);
        make.right.mas_equalTo(viewForMi);
    }];
    _TextForUp.text = @"赵三";
    ///下面内容
    _TextForDown =  [UITextField initTextFieldWithFatherView:self Size:13
                                                  TitalColor:[UIColor blackColor] Placeholder:@"请输入身份证号码"];
    [_TextForDown mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForDown.mas_right);
        make.top.bottom.mas_equalTo(_labelForDown);
        make.right.mas_equalTo(viewForMi);
    }];
    _TextForDown.text = @"362421 20170606 1208";
    ///照相机图片
    UIImageView *imageViewForRightCra = [UIImageView initImageViewWithFatherView:self];
    [imageViewForRightCra mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(_TextForDown);
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.width.mas_equalTo(GSDistance(15));
    }];
    [imageViewForRightCra setImage:[UIImage imageNamed:@"II_Crame_Blue"]];
    
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
}

@end
