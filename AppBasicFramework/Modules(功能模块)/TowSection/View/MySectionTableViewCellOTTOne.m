//
//  MySectionTableViewCellOTTOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionTableViewCellOTTOne.h"

@implementation MySectionTableViewCellOTTOne

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
    _imgViewForCate = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(23));
        make.centerY.mas_equalTo(self);
        make.width.height.mas_equalTo(GSDistance(15));
    }];
    
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"我的优惠券"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_imgViewForCate.mas_right).offset(GSDistance(13));
        make.centerY.mas_equalTo(self);
        make.top.bottom.mas_equalTo(self);
    }];
    
    _viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color232_232_232];
    [_viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForCate);
        make.right.mas_equalTo(self).offset(GSDistance(-10));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    UIImageView *imgForNext = [UIImageView initImageViewWithFatherView:self];
    [imgForNext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_viewForLine);
        make.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(GSDistance(20));
    }];
    [imgForNext setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
}

@end
