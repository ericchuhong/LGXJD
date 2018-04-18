//
//  MySectionTableViewCellOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionTableViewCellOne.h"

@implementation MySectionTableViewCellOne

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
    UIImageView *imgViewForLine0 = [UIImageView initImageViewWithFatherView:self];
    [imgViewForLine0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.centerX.mas_equalTo(self.mas_left).offset(GScreenWidth/3);
        make.width.mas_equalTo(GSDistance(2));
    }];
    [imgViewForLine0 setImage:[UIImage imageNamed:@"my_shu_diandian"]];
    UIImageView *imgViewForLine1 = [UIImageView initImageViewWithFatherView:self];
    [imgViewForLine1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.centerX.mas_equalTo(self.mas_right).offset(-GScreenWidth/3);
        make.width.mas_equalTo(GSDistance(2));
    }];
    [imgViewForLine1 setImage:[UIImage imageNamed:@"my_shu_diandian"]];
    _view0 = [UIView initViewWithFatherView:self];
    [_view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.mas_equalTo(self);
        make.right.mas_equalTo(imgViewForLine0.mas_left);
    }];
    _view0.backgroundColor = [UIColor clearColor];
    _view1 = [UIView initViewWithFatherView:self];
    [_view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.right.mas_equalTo(imgViewForLine1.mas_left);
        make.left.mas_equalTo(imgViewForLine0.mas_right);
    }];
    _view1.backgroundColor = [UIColor clearColor];
    _view2 = [UIView initViewWithFatherView:self];
    [_view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.right.bottom.mas_equalTo(self);
        make.left.mas_equalTo(imgViewForLine1.mas_right);
    }];
    _view2.backgroundColor = [UIColor clearColor];
    //个人资料
    UIImageView *imgView0 = [UIImageView initImageViewWithFatherView:self];
    [imgView0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view0);
        make.top.mas_equalTo(_view0).offset(GSDistance(13));
        make.width.mas_equalTo(GSDistance(25));
        make.height.mas_equalTo(GSDistance(22));
    }];
    [imgView0 setImage:[UIImage imageNamed:@"my_userInformation"]];
    UILabel *label0 = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"个人资料"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view0);
        make.bottom.mas_equalTo(_view0).offset(GSDistance(-13));
        make.height.mas_equalTo(GSDistance(16));
    }];
    //我的借款
    UIImageView *imgView1 = [UIImageView initImageViewWithFatherView:self];
    [imgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view1);
        make.top.mas_equalTo(_view1).offset(GSDistance(13));
        make.width.mas_equalTo(GSDistance(25));
        make.height.mas_equalTo(GSDistance(22));
    }];
    [imgView1 setImage:[UIImage imageNamed:@"my_userLoan"]];
    UILabel *label1 = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"我的借款"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view1);
        make.bottom.mas_equalTo(_view1).offset(GSDistance(-13));
        make.height.mas_equalTo(GSDistance(16));
    }];
    //还款账单
    UIImageView *imgView2= [UIImageView initImageViewWithFatherView:self];
    [imgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view2);
        make.top.mas_equalTo(_view2).offset(GSDistance(13));
        make.width.mas_equalTo(GSDistance(25));
        make.height.mas_equalTo(GSDistance(22));
    }];
    [imgView2 setImage:[UIImage imageNamed:@"my_bill"]];
    UILabel *label2 = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"还款账单"];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view2);
        make.bottom.mas_equalTo(_view2).offset(GSDistance(-13));
        make.height.mas_equalTo(GSDistance(16));
    }];
    
    _view0.userInteractionEnabled = YES;
    _view1.userInteractionEnabled = YES;
    _view2.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap0 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForInf)];
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForLoan)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                          action:@selector(clickForbill)];
    [_view0 addGestureRecognizer:tap0];
    [_view1 addGestureRecognizer:tap1];
    [_view2 addGestureRecognizer:tap2];
}
- (void)clickForInf
{
    if (_callBack) {
        _callBack(@"个人资料");
    }
}
- (void)clickForLoan
{
    if (_callBack) {
        _callBack(@"我的借款");
    }
}
- (void)clickForbill
{
    if (_callBack) {
        _callBack(@"还款账单");
    }
}
@end
