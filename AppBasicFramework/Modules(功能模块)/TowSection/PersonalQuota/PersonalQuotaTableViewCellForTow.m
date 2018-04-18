//
//  PersonalQuotaTableViewCellForTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalQuotaTableViewCellForTow.h"

@implementation PersonalQuotaTableViewCellForTow

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
    UILabel *label = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"总额度(元)"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_centerY).offset(GSDistance(-5));
        make.height.mas_equalTo(GSDistance(15));
        make.centerX.mas_equalTo(self);
    }];
    _labelForAll = [UILabel initForLabelWithFatherView:self Size:20 Color:[UIColor blackColor] Tital:@"5000.00"];
    [_labelForAll mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self.mas_centerY).offset(GSDistance(5));
        make.height.mas_equalTo(GSDistance(20));
    }];
    UIImageView *imgView1 = [UIImageView initImageViewWithFatherView:self];
    [imgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-30));
        make.centerY.mas_equalTo(self).offset(GSDistance(-0));
        make.width.height.mas_equalTo(GSDistance(30));
    }];
    [imgView1 setImage:[UIImage imageNamed:@"my_arrow_right_hui"]];
}

@end
