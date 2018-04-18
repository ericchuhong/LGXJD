//
//  MySectionTableViewCellFour.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionTableViewCellFour.h"

@implementation MySectionTableViewCellFour

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
    ///退出登录
    UILabel *labelForOut = [UILabel initForLabelWithFatherView:self Size:15
                                                         Color:Color153_153_153 Tital:@"安全退出"];
    [labelForOut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    labelForOut.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickOut)];
    [labelForOut addGestureRecognizer:tap];
}
- (void)clickOut
{
    if (_callBack) {
        _callBack(@"安全退出");
    }
}

@end
