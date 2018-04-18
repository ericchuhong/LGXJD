//
//  BankCardRecognizeView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BankCardRecognizeView.h"
#import "BankCardRecognizeTableViewCellForOne.h"
#import "BankCardRecognizeTableViewCellForTow.h"
#import "BankCardRecognizeTableViewCellForThree.h"
#import "BankCardRecognizeTableViewCellForFour.h"
@interface BankCardRecognizeView ()
@property (nonatomic,strong) UITableView *BCTableView;
@end
@implementation BankCardRecognizeView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self BCTableView];
    }
    return self;
}
- (UITableView *)BCTableView
{
    if (_BCTableView) {
        return _BCTableView;
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
    TableView.sectionFooterHeight = 10;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[BankCardRecognizeTableViewCellForOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[BankCardRecognizeTableViewCellForTow class] forCellReuseIdentifier:@"tow"];
    [TableView registerClass:[BankCardRecognizeTableViewCellForThree class] forCellReuseIdentifier:@"three"];
    [TableView registerClass:[BankCardRecognizeTableViewCellForFour class] forCellReuseIdentifier:@"four"];
    
    _BCTableView = TableView;
    
    return _BCTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section ==0) {
        return 2;
    }else{
        return 3;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(40);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        BankCardRecognizeTableViewCellForOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                         forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if (indexPath.row == 0) {
            cell.viewForLine.hidden = NO;
            cell.labelForCate.text = @"持卡人";
        } else {
            cell.viewForLine.hidden = YES;
            cell.labelForCate.text = @"身份证号";
        }
        return cell;
    }else{
        if (indexPath.row == 0) {
            BankCardRecognizeTableViewCellForTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            return cell;
        }else if (indexPath.row == 1) {
            BankCardRecognizeTableViewCellForThree *cell = [tableView dequeueReusableCellWithIdentifier:@"three"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            return cell;
        }else{
            BankCardRecognizeTableViewCellForFour *cell = [tableView dequeueReusableCellWithIdentifier:@"four"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            
            return cell;
        }
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return GSDistance(57);
    }else{
        return GSDistance(11);
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 1) {
        return GSDistance(320);
    } else {
        return GSDistance(0);
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    if (section == 1) {
        
        UIView *viewForLineOne = [UIView initViewWithFatherView:view];
        [viewForLineOne mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(view);
            make.top.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(1));
        }];
        viewForLineOne.backgroundColor = Color224_224_224;
        
        UIView *viewForLineTow = [UIView initViewWithFatherView:view];
        [viewForLineTow mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(view);
            make.bottom.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(1));
        }];
        viewForLineTow.backgroundColor = Color224_224_224;
        
        return view;
    }
    //认证说明
    _labelForDescription = [UILabel initForLabelWithFatherView:view Size:12
                                                         Color:Color153_153_153 Tital:@"添加收款银行卡"];
    [_labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(15));
        make.centerY.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(12));
    }];
    
    UIView *viewForLine = [UIView initViewWithFatherView:view];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(view);
        make.bottom.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(1));
    }];
    viewForLine.backgroundColor = Color224_224_224;
    
    return view;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    _buttonForSubmit = [UIButton initButtonWithFatherView:view Size:15 TitleColor:[UIColor whiteColor]
                                                    Title:@"下一步"];
    [_buttonForSubmit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(13));
        make.right.mas_equalTo(view).offset(GSDistance(-13));
        make.top.mas_equalTo(view).offset(GSDistance(45));
        make.height.mas_equalTo(GSDistance(48));
    }];
    _buttonForSubmit.layer.cornerRadius = 5.0;
    _buttonForSubmit.layer.masksToBounds = YES;
    _buttonForSubmit.backgroundColor = Color204_204_204;
    
    UIView *viewForLine = [UIView initViewWithFatherView:view backgroundColor:Color224_224_224];
    [viewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view);
        make.right.mas_equalTo(view);
        make.top.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    return view;
}
@end
