//
//  PersonalAllMoneyTableViewCellOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalAllMoneyTableViewCellOne.h"

@implementation PersonalAllMoneyTableViewCellOne

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
    UIView *view0 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    UIView *view1 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
    //总额度
    UILabel *labelForAllMon = [UILabel initForLabelWithFatherView:self Size:15 Color:[UIColor blackColor]
                                                            Tital:@"总额度(元)"];
    [labelForAllMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(33));
        make.height.mas_equalTo(GSDistance(20));
    }];
    //总额度金额
    _labelForAllMonNum = [UILabel initForLabelWithFatherView:self Size:35 Color:[UIColor blackColor] Tital:@"0.00" FontName:nil];
    [_labelForAllMonNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self).offset(GSDistance(-54));
        make.height.mas_equalTo(GSDistance(30));
    }];
    //提额背景图
    UIImageView *imgViewOne = [UIImageView initImageViewWithFatherView:self];
    [imgViewOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForAllMonNum.mas_right).offset(GSDistance(5));
        make.bottom.mas_equalTo(_labelForAllMonNum.mas_top).offset(GSDistance(10));
        make.height.mas_equalTo(GSDistance(25));
        make.width.mas_equalTo(GSDistance(50));
    }];
    [imgViewOne setImage:[UIImage imageNamed:@"home_Raise"]];
    imgViewOne.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickTiE)];
    [imgViewOne addGestureRecognizer:tap];
    //提额文字
    UILabel *labelForRaise = [UILabel initForLabelWithFatherView:self Size:12
                                                           Color:Color35_128_215 Tital:@"提额"];
    [labelForRaise mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(imgViewOne).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    labelForRaise.textAlignment = NSTextAlignmentCenter;
}
- (void)clickTiE
{
    if (_callbackForTiE) {
        _callbackForTiE(@"提额");
    }
}
@end
