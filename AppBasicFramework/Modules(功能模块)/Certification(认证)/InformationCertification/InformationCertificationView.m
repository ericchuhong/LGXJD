//
//  InformationCertificationView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "InformationCertificationView.h"

#import "InformationCertificationTableViewCell.h"
#import "InformationCertificationModel.h"

@interface InformationCertificationView ()

@property (nonatomic,strong) UITableView *ICTableView;
@property (nonatomic,strong) UILabel *labelForDescription;
@property (nonatomic,strong) UIButton *buttonForSubmit;

@end

@implementation InformationCertificationView
- (void)setMutArr:(NSMutableArray *)mutArr
{
    _mutArr = mutArr;
    
    [_ICTableView reloadData];
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self ICTableView];
    }
    return self;
}
- (UITableView *)ICTableView
{
    if (_ICTableView) {
        return _ICTableView;
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
    
    [TableView registerClass:[InformationCertificationTableViewCell class] forCellReuseIdentifier:@"cell"];
    
    _ICTableView = TableView;
    
    return _ICTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _mutArr.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 || indexPath.row == _mutArr.count-1) {
        return GSDistance(100);
    }else{
        return GSDistance(80);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    InformationCertificationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                                                  forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row == 0) {
        [cell.imageViewForBG mas_updateConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(cell).offset(GSDistance(25));
        }];
    }
    if (indexPath.row == _mutArr.count-1) {
        [cell.imageViewForBG mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(cell).offset(GSDistance(-25));
        }];
    }
    
    InformationCertificationModel *model = _mutArr[indexPath.row];
    [cell.imageViewForLogo setImage:[UIImage imageNamed:model.imageViewForLogo]];
    cell.labelForCate.text = model.labelForCate;
    cell.labelForCateDscription.text = model.labelForCateDscription;
    [cell.buttonForCer setTitle:model.buttonForCer forState:UIControlStateNormal];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    InformationCertificationModel *model = _mutArr[indexPath.row];
    if (_callback) {
        _callback(model.labelForCate);
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(65);
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return GSDistance(80);
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    //认证说明
    _labelForDescription = [UILabel initForLabelWithFatherView:view Size:13
                                                         Color:Color153_153_153
                                                         Tital:@"请逐一完成您选择的认证项，方可提交进行审核"];
    [_labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(14));
        make.top.mas_equalTo(view).offset(GSDistance(25));
        make.bottom.mas_equalTo(view).offset(GSDistance(-25));
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
        make.top.mas_equalTo(view).offset(GSDistance(15));
        make.bottom.mas_equalTo(view).offset(GSDistance(-15));
    }];
    _buttonForSubmit.layer.cornerRadius = 5.0;
    _buttonForSubmit.layer.masksToBounds = YES;
    _buttonForSubmit.backgroundColor = Color204_204_204;
    
    return view;
}
@end
