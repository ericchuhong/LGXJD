//
//  ScrollDisplayForBorrowMoney.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

//276  55  38

#import "ScrollDisplayForBorrowMoney.h"
#import "ScrollDisplayForBorrowMoneyForDetail.h"
static int widthForLabel;
static int count;

@implementation ScrollDisplayForBorrowMoney

- (instancetype)initWithTitleText:(NSArray *)arrayForText colorForSelect:(UIColor *)colorForSelect colorForNoSelect:(UIColor *)colorForNoSelect detailClass:(NSArray *)arrayForclassName;
{
    self = [super init];
    if (self) {
        
        _arrayForText = arrayForText;
        _colorForSelect = colorForSelect;
        _colorForNoSelect = colorForNoSelect;
        _arrayForclassName = arrayForclassName;
        
        _isUp = NO;
        
        count = (int)_arrayForText.count;
        
        widthForLabel = 150;
        
        [self createLabelForTitle];
        
        [self markView];
        
        [self bigScrollView];
        
    }
    return self;
}
#pragma mark - ---创建分类文字---
- (void)createLabelForTitle
{
    for (int i = 0; i < count; i++) {
        UIView *view = nil;
        if (i==0) {
            view = [UIView initViewWithFatherView:self];
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(self.mas_centerX).offset(GSDistance(-5));
                make.width.mas_equalTo(GSDistance(widthForLabel));
                make.top.mas_equalTo(self).offset(GSDistance(10));
                make.height.mas_equalTo(GSDistance(45));
            }];
        }
        if (i==1) {
            view = [UIView initViewWithFatherView:self];
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(self.mas_centerX).offset(GSDistance(5));
                make.width.mas_equalTo(GSDistance(widthForLabel));
                make.top.mas_equalTo(self).offset(GSDistance(10));
                make.height.mas_equalTo(GSDistance(45));
            }];
        }
        
        view.layer.borderWidth = 1.5;
        view.layer.borderColor = Color232_232_232.CGColor;
        view.layer.cornerRadius = 7.0;
        view.layer.masksToBounds = YES;
        
        view.tag = 800 + i;
        
        UILabel *label = [UILabel initForLabelWithFatherView:self Size:15
                                                       Color:RGB(53.0, 53.0, 53.0, 1.0) Tital:nil];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(view);
            make.centerX.mas_equalTo(view).offset(GSDistance(-5));
            make.height.mas_equalTo(view);
        }];
        label.tag = 700 + i;
        label.text = _arrayForText[i];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = _colorForNoSelect;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(cliclForLabel:)];
        label.userInteractionEnabled = YES;
        [label addGestureRecognizer:tap];
        
        UIImageView *imgView = [UIImageView initImageViewWithFatherView:self];
        [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(view).offset(GSDistance(5));
            make.right.mas_equalTo(view).offset(GSDistance(-5));
            make.width.height.mas_equalTo(GSDistance(15));
        }];
        [imgView setImage:[UIImage imageNamed:@"home_gantanhao"]];
        imgView.contentMode = UIViewAutoresizingNone;
        imgView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap0 = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                              action:@selector(clickGanTanHao:)];
        [imgView addGestureRecognizer:tap0];
        imgView.tag = i;
    }
}
#pragma mark - ---创建标记条模块---
- (UIView *)markView
{
    if (_markView != nil) {
        return _markView;
    }
    
    _markView = [[UIImageView alloc]init];
    _markView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:_markView];
    [_markView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(GSDistance(55) + GSDistance(10));
        make.left.mas_equalTo(self).offset(GSDistance(-GScreenWidth * 0.715));
        make.height.mas_equalTo(GSDistance(18));
        make.width.mas_equalTo(GScreenWidth * 1.8);
    }];
    [_markView setImage:[UIImage imageNamed:@"home_DownImg"]];
    
    return _markView;
}
#pragma mark - ---创建显示模块---
- (UIScrollView *)bigScrollView
{
    if (_bigScrollView != nil) {
        return _bigScrollView;
    }
    
    _bigScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, GSDistance(83), GScreenWidth-GSDistance(30),GSDistance(193))];
    _bigScrollView.contentOffset = CGPointMake(0, GSDistance(83));
    _bigScrollView.contentSize = CGSizeMake((GScreenWidth-GSDistance(30)) * count,GSDistance(193));
    [self addSubview:_bigScrollView];
    
    _bigScrollView.pagingEnabled = YES;
    _bigScrollView.delegate = self;
    _bigScrollView.backgroundColor = [UIColor whiteColor];
    
    for (int i=0; i<count; i++) {
        ScrollDisplayForBorrowMoneyForDetail *view = _arrayForclassName[i];
        view.frame = CGRectMake((GScreenWidth-GSDistance(30)) * i,0 , GScreenWidth-GSDistance(30), GSDistance(193));
        [_bigScrollView addSubview:view];
    }
    
    return _bigScrollView;
}
#pragma mark - ---动画---
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [_markView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(scrollView.contentOffset.x/2.5) + GSDistance(-GScreenWidth * 0.715));
    }];
    
    CGFloat tag = 0;
    if (scrollView.contentOffset.x>GScreenWidth/2) {
        tag = 701;
    }else{
        tag = 700;
    }
    [self selectLabel:tag];
}
- (void)cliclForLabel:(UITapGestureRecognizer *)tap
{
    [self selectLabel:tap.view.tag];
    
    [UIView animateWithDuration:0.3 animations:^{
        _bigScrollView.contentOffset = CGPointMake((GScreenWidth-GSDistance(30)) * (tap.view.tag - 700), 0);
    }];
    
    ///首次进入借款界面，点击任意分类，展开对应详情。
    if (!_isUp) {
        if (_callback) {
            _callback(@"展开详情图");
        }
        _isUp = !_isUp;
    }
}
- (void)selectLabel:(CGFloat)tag
{
    for (int i = 0;i < count ; i++) {
        UILabel *label = [self viewWithTag:700+i];
        label.textColor = _colorForNoSelect;
    };
    
    UILabel *label = [self viewWithTag:tag];
    label.textColor = _colorForSelect;
    
    for (int i = 0;i < count ; i++) {
        UIView *view = [self viewWithTag:800+i];
        view.layer.borderColor = Color232_232_232.CGColor;
    };
    
    UIView *view = [self viewWithTag:tag + 100];
    view.layer.borderColor = _colorForSelect.CGColor;
}
#pragma mark --点击感叹号--
- (void)clickGanTanHao:(UITapGestureRecognizer *)tap
{
    CGFloat tag = tap.view.tag;
    NSString *str = nil;
    if (tag == 0) {
        str = @"不分期";
    }
    if (tag == 1) {
        str = @"分期付款";
    }
    if (_callbackForGanTanHao) {
        if (str != nil) {
            _callbackForGanTanHao(str);
        }
    }
}
@end
