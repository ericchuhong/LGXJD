//
//  BorrowMoneyTableViewCellForRepaymentDetail.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyTableViewCellForRepaymentDetail.h"
#import "ScrollDisplayForBorrowMoney.h"
#import "ScrollDisplayForBorrowMoneyForDetail.h"
@implementation BorrowMoneyTableViewCellForRepaymentDetail

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
    
    //还款方式
    UILabel *label = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"还款方式"];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(self).offset(GSDistance(15));
        make.height.mas_equalTo(GSDistance(18));
    }];
    
    ScrollDisplayForBorrowMoneyForDetail *detail0 = [[ScrollDisplayForBorrowMoneyForDetail alloc]init];
    ScrollDisplayForBorrowMoneyForDetail *detail1 = [[ScrollDisplayForBorrowMoneyForDetail alloc]init];
    ScrollDisplayForBorrowMoney *scrollDis = [[ScrollDisplayForBorrowMoney alloc]initWithTitleText:@[@"不分期|更灵活",@"分期付款|更划算"]
                                                                                    colorForSelect:Color35_128_215 colorForNoSelect:Color102_102_102
                                                                                       detailClass: @[detail0,detail1]];
    [self addSubview:scrollDis];
    scrollDis.translatesAutoresizingMaskIntoConstraints = NO;
    [scrollDis mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(label.mas_bottom);
        make.left.right.bottom.mas_equalTo(self);
    }];
    
    ///处理逻辑,展开详情页
    [scrollDis setCallback:^(NSString *str) {
        if (_callback) {
            _callback(str);
        }
    }];
    [scrollDis setCallbackForGanTanHao:^(NSString *str) {
        if (_callbackForGanTanHao) {
            _callbackForGanTanHao(str);
        }
    }];
    [detail0 setCallbackForGanTanHao:^(NSString *str) {
        if (_callbackForGanTanHao) {
            _callbackForGanTanHao(str);
        }
    }];
    [detail1 setCallbackForGanTanHao:^(NSString *str) {
        if (_callbackForGanTanHao) {
            _callbackForGanTanHao(str);
        }
    }];
}

@end
