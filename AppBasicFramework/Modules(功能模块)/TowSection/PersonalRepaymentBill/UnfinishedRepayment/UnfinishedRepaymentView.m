//
//  UnfinishedRepaymentView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/15.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "UnfinishedRepaymentView.h"
#import "UnfinishedRepaymentTableViewCellOne.h"
#import "UnfinishedRepaymentTableViewCellTow.h"
@interface UnfinishedRepaymentView ()
@property (nonatomic,strong) UITableView *URTableView;
@property (nonatomic,strong) UILabel *laberForAllMon;
@end

@implementation UnfinishedRepaymentView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self URTableView];
        
        [self createUI];
    }
    return self;
}
- (UITableView *)URTableView
{
    if (_URTableView) {
        return _URTableView;
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
    TableView.sectionFooterHeight = 10;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[UnfinishedRepaymentTableViewCellOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[UnfinishedRepaymentTableViewCellTow class] forCellReuseIdentifier:@"tow"];
    
    _URTableView = TableView;
    
    return _URTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }else{
        return 3;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return GSDistance(126);
    }else{
        return GSDistance(80);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        UnfinishedRepaymentTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        UnfinishedRepaymentTableViewCellTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if (indexPath.row == 2) {
            cell.viewForLine.hidden = YES;
        }else{
            cell.viewForLine.hidden = NO;
        }
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return GSDistance(11);
    }else{
        return GSDistance(48);
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 1) {
        return GSDistance(1);
    }else{
        return GSDistance(0);
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    UIView *view1 = [UIView initViewWithFatherView:view backgroundColor:Color232_232_232];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    if (section == 1) {
        
        UILabel *label0 = [UILabel initForLabelWithFatherView:view Size:12
                                                        Color:Color153_153_153 Tital:@"还款账单（共"];
        [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(view).offset(GSDistance(15));
            make.bottom.mas_equalTo(view).offset(GSDistance(-13));
            make.height.mas_equalTo(GSDistance(15));
        }];
        //期数
        UILabel *labelForDescription = [UILabel initForLabelWithFatherView:view Size:16
                                                                     Color:Color35_128_215 Tital:@"3"];
        [labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(label0.mas_right);
            make.top.bottom.mas_equalTo(label0);
        }];
        UILabel *label1 = [UILabel initForLabelWithFatherView:view Size:12
                                                        Color:Color153_153_153 Tital:@"期）"];
        [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(labelForDescription.mas_right);
            make.top.bottom.mas_equalTo(labelForDescription);
        }];
        
        UIView *view0 = [UIView initViewWithFatherView:view backgroundColor:Color232_232_232];
        [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(1));
        }];
        
        return view;
    }
    
    return view;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color232_232_232;
    return view;
}
#pragma mark --确认还款--
- (void)createUI
{
    UIView *view = [UIView initViewWithFatherView:self];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(45));
    }];
    
    UILabel *label = [UILabel initForLabelWithFatherView:view Size:15 Color:[UIColor blackColor] Tital:@"合计："];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(15));
        make.top.mas_equalTo(view).offset(GSDistance(16));
        make.bottom.mas_equalTo(view).offset(GSDistance(-16));
    }];
    _laberForAllMon = [UILabel initForLabelWithFatherView:view Size:15 Color:Color235_29_30 Tital:@"1100.00元"];
    [_laberForAllMon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(label.mas_right);
        make.top.bottom.mas_equalTo(label);
    }];
    
    UILabel *labelForYes = [UILabel initForLabelWithFatherView:view Size:15 Color:[UIColor whiteColor] Tital:@"确认还款"];
    [labelForYes mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.mas_equalTo(view);
        make.width.mas_equalTo(GSDistance(90));
        
    }];
    labelForYes.backgroundColor = Color35_128_215;
    
}
@end
