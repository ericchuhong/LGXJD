//
//  PersonalInformationTableViewCellForOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationTableViewCellForOne.h"

@implementation PersonalInformationTableViewCellForOne

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
    UIView *viewForLine = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(13));
        make.right.mas_equalTo(self).offset(GSDistance(-13));
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor] Tital:@"姓名"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(viewForLine);
        make.top.bottom.mas_equalTo(self);
    }];
    
    _labelForDetail = [UILabel initForLabelWithFatherView:self Size:13 Color:Color153_153_153 Tital:@"**敏"];
    [_labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(viewForLine);
        make.top.bottom.mas_equalTo(self);
    }];
}

@end
