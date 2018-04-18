//
//  IdentityInformationView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "IdentityInformationView.h"
#import "IdentityInformationTableViewCellForStart.h"
#import "IdentityInformationTableViewCellForEnd.h"
#import "IdentityInformationModel.h"
@interface IdentityInformationView ()
@property (nonatomic,strong) UITableView *IITableView;
@end

@implementation IdentityInformationView
- (void)setMutArrForBase:(NSMutableArray *)mutArrForBase
{
    _mutArrForBase = mutArrForBase;
    
    [_IITableView reloadData];
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self IITableView];
    }
    return self;
}
- (UITableView *)IITableView
{
    if (_IITableView) {
        return _IITableView;
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
    
    [TableView registerClass:[IdentityInformationTableViewCellForStart class] forCellReuseIdentifier:@"start"];
    [TableView registerClass:[IdentityInformationTableViewCellForEnd class] forCellReuseIdentifier:@"end"];
    
    _IITableView = TableView;
    
    return _IITableView;
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
        return GSDistance(110);
    }else{
       return GSDistance(160);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row ==1) {
        IdentityInformationTableViewCellForStart *cell = [tableView dequeueReusableCellWithIdentifier:@"start"
                                                                                         forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        IdentityInformationModel *model = _mutArrForBase[indexPath.row];
        [cell.imageViewForBG setImage:[UIImage imageNamed:model.imageViewBG]];
        cell.labelForPositiveAndReverse.text = model.strForPosAndRev;
        cell.labelForPhoAndNationalEmblem.text = model.strForPhoAndNat;
        
        if (indexPath.row == 1) {
            cell.viewForLine.hidden = YES;
        }else{
            cell.viewForLine.hidden = NO;
        }
        return cell;
    }else{
        IdentityInformationTableViewCellForEnd *cell = [tableView dequeueReusableCellWithIdentifier:@"end"
                                                                                         forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        if (indexPath.row == 1) {
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
    return GSDistance(82);
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return GSDistance(207);
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    //认证说明
    UILabel *labelForDes = [UILabel initForLabelWithFatherView:view Size:12
                                                         Color:Color153_153_153
                                                         Tital:@"仅用于全国公民身份查询中心核对身份"];
    [labelForDes mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(15));
        make.top.mas_equalTo(view).offset(GSDistance(23));
        make.height.mas_equalTo(GSDistance(12));
    }];
    UILabel *labelForDescription = [UILabel initForLabelWithFatherView:view Size:12
                                                                 Color:Color153_153_153
                                                                 Tital:@"请核对自动识别结果，"];
    [labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(15));
        make.top.mas_equalTo(labelForDes.mas_bottom).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(12));
    }];
    UILabel *labelForDescription1 = [UILabel initForLabelWithFatherView:view Size:12
                                                                  Color:[UIColor blackColor]
                                                                  Tital:@"如有误请更正"];
    [labelForDescription1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(labelForDescription.mas_right);
        make.top.mas_equalTo(labelForDes.mas_bottom).offset(GSDistance(14));
        make.height.mas_equalTo(GSDistance(12));
    }];
    
    return view;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    _buttonForSubmit = [UIButton initButtonWithFatherView:view Size:15
                                               TitleColor:[UIColor whiteColor] Title:@"提交"];
    [_buttonForSubmit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(13));
        make.right.mas_equalTo(view).offset(GSDistance(-13));
        make.top.mas_equalTo(view).offset(GSDistance(45));
        make.height.mas_equalTo(GSDistance(48));
    }];
    _buttonForSubmit.layer.cornerRadius = 5.0;
    _buttonForSubmit.layer.masksToBounds = YES;
    _buttonForSubmit.backgroundColor = Color204_204_204;
    
    return view;
}

@end
