//
//  PersonalBorrowingDetailTableViewCellOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingDetailTableViewCellOne.h"

@implementation PersonalBorrowingDetailTableViewCellOne

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
    //借款金额
    _labelForMon = [UILabel initForLabelWithFatherView:self Size:32 Color:[UIColor blackColor] Tital:@"1000.00" FontName:nil];
    [_labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(40));
        make.height.mas_equalTo(GSDistance(30));
    }];
    //借款金额状态
    _labelForMonStatue = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款成功"];
    [_labelForMonStatue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(_labelForMon.mas_bottom).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(13));
    }];
    _imgView = [UIImageView initImageViewWithFatherView:self];
    [_imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(-5));
        make.width.height.mas_equalTo(GSDistance(55));
    }];
    [_imgView setImage:[UIImage imageNamed:@"my_OKgo_Qian"]];
    _imgView.contentMode = UIViewAutoresizingNone;
    //优惠券
    _labelForCon = [UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"优惠券"];
    [_labelForCon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(_labelForMonStatue.mas_bottom).offset(GSDistance(37));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //优惠券内容
    _labelForConDetail = [UILabel initForLabelWithFatherView:self Size:12 Color:Color255_185_3 Tital:@"使用2%借款免息券"];
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
    //借款说明
    UILabel *label0 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款说明"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(view.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //借款说明内容
    _labelForShuoMing = [UILabel initForLabelWithFatherView:self Size:12
                                                      Color:[UIColor blackColor] Tital:@"快速借款"];
    [_labelForShuoMing mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(view.mas_bottom).offset(GSDistance(20));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //借款进度
    UILabel *label1 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款进度"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(label0.mas_bottom).offset(GSDistance(16));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //借款到
    UILabel *label2 =[UILabel initForLabelWithFatherView:self Size:12 Color:Color153_153_153 Tital:@"借款到"];
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(label1.mas_bottom).offset(GSDistance(159));
        make.height.mas_equalTo(GSDistance(13));
    }];
    //银行
    _labelForBank = [UILabel initForLabelWithFatherView:self Size:12
                                                 Color:[UIColor blackColor] Tital:@"招商银行（1315）刘墨江"];
    [_labelForBank mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(label2);
        make.height.mas_equalTo(GSDistance(13));
    }];
    //银行logo
    _imgForBankLogo = [UIImageView initImageViewWithFatherView:self];
    [_imgForBankLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_labelForBank.mas_left).offset(GSDistance(-5));
        make.centerY.mas_equalTo(label2);
        make.height.width.mas_equalTo(GSDistance(15));
    }];
    [_imgForBankLogo setImage:[UIImage imageNamed:@"home_ICBC"]];
    //灰线
    UIView *view0 = [UIView initViewWithFatherView:self];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.right.mas_equalTo(self).offset(GSDistance(-15));
        make.top.mas_equalTo(label2.mas_bottom).offset(GSDistance(15));
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
    for (int i=0; i<4; i++) {
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
        if (i != 3) {
            [imgViewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(imgViewForQuan.mas_bottom).offset(GSDistance(-2));
                make.centerX.mas_equalTo(imgViewForQuan);
                make.width.mas_equalTo(GSDistance(1));
                make.height.mas_equalTo(GSDistance(25));
            }];
            imgViewForLine.backgroundColor = Color35_128_215;
        }
        if (i == 1) {
            _labelForSB = [UILabel initForLabelWithFatherView:self Size:9
                                                       Color:Color235_29_30 Tital:@"(借款失败，您的银行卡已锁定)"];
            [_labelForSB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(labelForDetail.mas_bottom).offset(GSDistance(2));
                make.left.mas_equalTo(labelForDetail);
                make.height.mas_equalTo(GSDistance(10));
            }];
        }
    }
}

@end

