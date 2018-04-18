//
//  finishedRepaymentTableViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/25.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "finishedRepaymentTableViewCell.h"

@implementation finishedRepaymentTableViewCell

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
    //还款金额
    _labelForMon = [UILabel initForLabelWithFatherView:self Size:35 Color:[UIColor blackColor] Tital:@"1000.00" FontName:nil];
    [_labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(40));
        make.height.mas_equalTo(GSDistance(26));
    }];
    //还款状态
    _labelForMonStatue = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"还款成功"];
    [_labelForMonStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_labelForMon.mas_bottom).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(13));
    }];
    UIImageView *imgView = [UIImageView initImageViewWithFatherView:self];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(-5));
        make.width.height.mas_equalTo(GSDistance(55));
    }];
    [imgView setImage:[UIImage imageNamed:@"my_OKgo_Qian"]];
    imgView.contentMode = UIViewAutoresizingNone;
    //优惠券
    _labelForCon = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@""];
    [_labelForCon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(_labelForMonStatue.mas_bottom).offset(GSDistance(37));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //优惠券内容
    _labelForConDetail = [UILabel initForLabelWithFatherView:self Size:12 Color:Color255_185_3 Tital:@""];
    [_labelForConDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(_labelForMonStatue.mas_bottom).offset(GSDistance(37));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //灰线
    UIView *view = [UIView initViewWithFatherView:self];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(_labelForCon.mas_bottom).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(1));
    }];
    view.backgroundColor = Color232_232_232;
    //付款方式
    UILabel *label0 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"付款方式"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(view.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //付款方式内容
    _labelForShuoMing = [UILabel initForLabelWithFatherView:self Size:12
                                                      Color:[UIColor blackColor] Tital:@"招商银行（1315）"];
    [_labelForShuoMing mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(view.mas_bottom).offset(GSDistance(20));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //还款进度
    UILabel *label1 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"还款进度"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(label0.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //灰线
    UIView *view0 = [UIView initViewWithFatherView:self];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(label1.mas_bottom).offset(GSDistance(136));
        make.height.mas_equalTo(GSDistance(1));
    }];
    view0.backgroundColor = Color232_232_232;
    //创建时间
    UILabel *label3 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"创建时间"];
    [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(view0.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //创建时间详情
    _labelForTime = [UILabel initForLabelWithFatherView:self Size:12
                                                  Color:[UIColor blackColor] Tital:@"2017-10-20 14:35"];
    [_labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(label3);
        make.height.mas_equalTo(GSDistance(13));
    }];
    
    //借款进度详情
    for (int i=0; i<3; i++) {
        UIImageView *imgViewForQuan = [UIImageView initImageViewWithFatherView:self];
        UIImageView *imgViewForLine = [UIImageView initImageViewWithFatherView:self];
        UILabel *labelForDetail = [UILabel initForLabelWithFatherView:self Size:12
                                                                Color:Color35_128_215 Tital:@"申请受理中"];
        UILabel *labelForTime = [UILabel initForLabelWithFatherView:self Size:9
                                                              Color:Color169_169_169 Tital:@"2017-10-20 18:35"];
        [imgViewForQuan mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(label1.mas_bottom).offset(GSDistance(16)+GSDistance(38*i));
            make.right.mas_equalTo(label1);
            make.width.height.mas_equalTo(GSDistance(17));
        }];
        [imgViewForQuan setImage:[UIImage imageNamed:@"my_Yes_PBD"]];
        [labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(imgViewForQuan.mas_right).offset(GSDistance(5));
            make.top.bottom.mas_equalTo(imgViewForQuan);
        }];
        [labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self).offset(GSDistance(-15));
            make.centerY.mas_equalTo(labelForDetail);
            make.height.mas_equalTo(GSDistance(10));
        }];
        if (i != 2) {
            [imgViewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(imgViewForQuan.mas_bottom).offset(GSDistance(-2));
                make.centerX.mas_equalTo(imgViewForQuan);
                make.width.mas_equalTo(GSDistance(1));
                make.height.mas_equalTo(GSDistance(25));
            }];
            imgViewForLine.backgroundColor = Color35_128_215;
        }
        if (i==0) {
            labelForDetail.text = @"提交还款申请";
        }
        if (i==1) {
            labelForDetail.text = @"银行处理中";
        }
        if (i==2) {
            labelForDetail.text = @"还款成功";
        }
    }
}

@end
