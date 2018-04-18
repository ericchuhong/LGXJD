//
//  SelectCertificationItemsView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "SelectCertificationItemsView.h"
#import "SCTableViewCellForRequiredAndOptional.h"
@interface SelectCertificationItemsView ()
@property (nonatomic,strong) NSArray *arrForRequ;
@property (nonatomic,strong) NSArray *arrForOpri;
@end

@implementation SelectCertificationItemsView
- (void)setMutArrForRequAndOpri:(NSMutableArray *)mutArrForRequAndOpri
{
    _mutArrForRequAndOpri = mutArrForRequAndOpri;
    _arrForRequ = _mutArrForRequAndOpri.firstObject;
    _arrForOpri = _mutArrForRequAndOpri.lastObject;
    [_SCTableView reloadData];
}
- (instancetype)init
{
    self = [super init];
    if (self) { 
        
        [self SCTableView];
        
        [self createUpView];
    }
    return self;
}
#pragma mark --勾选选项页面--
- (UITableView *)SCTableView
{
    if (_SCTableView) {
        return _SCTableView;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, GSDistance(45), 0));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.sectionHeaderHeight = 10;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[SCTableViewCellForRequiredAndOptional class] forCellReuseIdentifier:@"RequiredAndOptional"];
    
    _SCTableView = TableView;
    
    return _SCTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        int height = (int)(80*_arrForRequ.count)+61;
        return GSDistance(height);
    }else{
        int height = (int)(80*_arrForOpri.count)+61;
        return GSDistance(height);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCTableViewCellForRequiredAndOptional *cell = [tableView dequeueReusableCellWithIdentifier:@"RequiredAndOptional"
                                                                                  forIndexPath:indexPath];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row == 0) {
        cell.isMust = YES;
        cell.arrForRequ = _arrForRequ;
    }else{
        cell.isMust = NO;
        cell.arrForOpri = _arrForOpri;
    }

    return cell;
}
#pragma mark --勾选进度--
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(110);
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc]init];
    headerView.backgroundColor = [UIColor lightGrayColor];
    
    //背景图
    UIImageView *imageView = [UIImageView initImageViewWithFatherView:headerView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(headerView).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    [imageView setImage:[UIImage imageNamed:@"CI_BGForPro"]];
    imageView.contentMode = UIViewAutoresizingNone;
    
    //请选择适合您的认证项，用于借款额度申请
    UILabel *labelForAd = [UILabel initForLabelWithFatherView:headerView Size:13
                                                        Color:[UIColor whiteColor]
                                                        Tital:@"请选择适合您的认证项，用于借款额度申请"];
    [labelForAd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(headerView).offset(GSDistance(43));
        make.top.mas_equalTo(headerView).offset(GSDistance(30));
        make.height.mas_equalTo(GSDistance(14));
    }];
    //勾选进度
    _progressView = [[UIProgressView alloc]init];
    _progressView.translatesAutoresizingMaskIntoConstraints = NO;
    [headerView addSubview:_progressView];
    [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(GSDistance(43));
        make.right.mas_equalTo(GSDistance(-43));
        make.top.mas_equalTo(labelForAd.mas_bottom).offset(GSDistance(12));
        make.height.mas_equalTo(GSDistance(6));
    }];
    _progressView.layer.cornerRadius = 3.0;
    _progressView.layer.masksToBounds = YES;
    [_progressView setProgressTintColor:Color110_223_240];
    [_progressView setProgress:0.6 animated:YES];
    [_progressView setBackgroundColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.1]];
    ///勾选数字
    _labelForSelectNum = [UILabel initForLabelWithFatherView:headerView Size:12
                                                       Color:[UIColor whiteColor] Tital:@"3/7"];
    [_labelForSelectNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_progressView);
        make.top.mas_equalTo(_progressView.mas_bottom).offset(GSDistance(6));
        make.height.mas_equalTo(GSDistance(12));
    }];
    return headerView;
}
#pragma mark --底部确认申请界面--
- (void)createUpView
{
    UIView *viewForBG = [UIView initViewWithFatherView:self];
    [viewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(45));
    }];
    viewForBG.backgroundColor = [UIColor whiteColor];
    UIView *viewForLine = [UIView initViewWithFatherView:viewForBG];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(viewForBG);
        make.height.mas_equalTo(GSDistance(1));
    }];
    viewForLine.backgroundColor = Color243_243_243;
    //全选按钮
    _buttonForAllselect = [UIButton initButtonWithFatherView:viewForBG Size:10 TitleColor:[UIColor whiteColor] Title:@"" ];
    [_buttonForAllselect mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(viewForBG).offset(GSDistance(15));
        make.bottom.mas_equalTo(viewForBG).offset(GSDistance(-15));
        make.width.mas_equalTo(GSDistance(15));
    }];
    [_buttonForAllselect setBackgroundImage:[UIImage imageNamed:@"CI_huiQuan"] forState:UIControlStateNormal];
    //全选
    UILabel *labelForAllselect = [UILabel initForLabelWithFatherView:viewForBG Size:12
                                                               Color:[UIColor blackColor] Tital:@"全选"];
    [labelForAllselect mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(_buttonForAllselect);
        make.left.mas_equalTo(_buttonForAllselect.mas_right).offset(GSDistance(6));
    }];
    //确认申请
    _buttonForApplication = [UIButton initButtonWithFatherView:viewForBG Size:15 TitleColor:[UIColor whiteColor] Title:@"确认申请" ];
    [_buttonForApplication mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.mas_equalTo(viewForBG);
        make.width.mas_equalTo(GSDistance(90));
    }];
    _buttonForApplication.backgroundColor = Color35_128_215;
    ///现有额度
    _labelForNowQuota = [UILabel initForLabelWithFatherView:viewForBG Size:10
                                                      Color:Color153_153_153 Tital:@"现有额度：1000元"];
    [_labelForNowQuota mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_buttonForApplication.mas_left).offset(GSDistance(-9));
        make.top.mas_equalTo(viewForBG).offset(GSDistance(9));
        make.height.mas_equalTo(GSDistance(10));
    }];
    ///增加额度
    _labelForAddQuota = [UILabel initForLabelWithFatherView:viewForBG Size:15
                                                      Color:Color235_29_30 Tital:@"+1500元"];
    [_labelForAddQuota mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_buttonForApplication.mas_left).offset(GSDistance(-9));
        make.top.mas_equalTo(_labelForNowQuota.mas_bottom).offset(GSDistance(4));
        make.height.mas_equalTo(GSDistance(14));
    }];
    UILabel *labelForQuota = [UILabel initForLabelWithFatherView:viewForBG Size:15
                                                           Color:[UIColor blackColor] Tital: @"额度:"];
    [labelForQuota mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(_labelForAddQuota.mas_left).offset(GSDistance(-5));
        make.top.bottom.mas_equalTo(_labelForAddQuota);
    }];
}
@end
