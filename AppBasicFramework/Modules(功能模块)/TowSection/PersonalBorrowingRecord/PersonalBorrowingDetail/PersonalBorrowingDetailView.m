//
//  PersonalBorrowingDetailView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingDetailView.h"
#import "PersonalBorrowingDetailTableViewCellOne.h"
#import "PersonalBorrowingDetailTableViewCellTow.h"
@interface PersonalBorrowingDetailView ()
@property (nonatomic,strong) UITableView *PBRTableView;
@end

@implementation PersonalBorrowingDetailView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = Color243_243_243;
        
        [self PBRTableView];
        
    }
    return self;
}
- (UITableView *)PBRTableView
{
    if (_PBRTableView) {
        return _PBRTableView;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.sectionHeaderHeight = 10;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[PersonalBorrowingDetailTableViewCellOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[PersonalBorrowingDetailTableViewCellTow class] forCellReuseIdentifier:@"tow"];
    
    _PBRTableView = TableView;
    
    return _PBRTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return GSDistance(450);
    }else{
        return GSDistance(102);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        PersonalBorrowingDetailTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        PersonalBorrowingDetailTableViewCellTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return GSDistance(10);
    }else{
        return GSDistance(45);
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    if (section == 1) {
        UILabel *label0 = [UILabel initForLabelWithFatherView:view Size:12
                                                        Color:Color153_153_153 Tital:@"还款账单（还剩"];
        [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(view).offset(GSDistance(15));
            make.bottom.mas_equalTo(view).offset(GSDistance(-10));
            make.height.mas_equalTo(GSDistance(16));
        }];
        UILabel *label1 = [UILabel initForLabelWithFatherView:view Size:16
                                                        Color:Color0_127_230 Tital:@"3"];
        [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(label0.mas_right).offset(GSDistance(0));
            make.bottom.mas_equalTo(view).offset(GSDistance(-10));
            make.height.mas_equalTo(GSDistance(17));
        }];
        UILabel *label2 = [UILabel initForLabelWithFatherView:view Size:12
                                                        Color:Color153_153_153 Tital:@"期未还款)"];
        [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(label1.mas_right).offset(GSDistance(0));
            make.bottom.mas_equalTo(view).offset(GSDistance(-10));
            make.height.mas_equalTo(GSDistance(17));
        }];
        return view;
    }
    
    return view;
}

@end
