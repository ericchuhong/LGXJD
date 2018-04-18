//
//  TowSectionView.m
//  AppBasicFramework
//
//  Created by apple on 2017/6/22.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionView.h"
#import "MySectionTableViewCellZero.h"
#import "MySectionTableViewCellOne.h"
#import "MySectionTableViewCellOTT.h"
#import "MySectionTableViewCellFour.h"
@interface MySectionView ()

@property (nonatomic,strong) NSArray *arrayForSource;
@property (nonatomic,strong) UITableView *MSTableView;

@end

@implementation MySectionView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = Color243_243_243;
        
        NSArray *arrarForTow = @[@[@"my_youhuiquan",@"我的优惠券"],
                                 @[@"my_bankCard",@"银行卡管理"],
                                 @[@"my_inventerfirend",@"邀请好友"]];
        NSArray *arrarForThree = @[@[@"my_activi",@"活动中心"],
                                   @[@"my_help",@"帮助中心"]];
        _arrayForSource = @[arrarForTow,arrarForThree];
        
        [self MSTableView];
    }
    return self;
}
- (UITableView *)MSTableView
{
    if (_MSTableView) {
        return _MSTableView;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    TableView.sectionHeaderHeight = 10;
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[MySectionTableViewCellZero class] forCellReuseIdentifier:@"ZCell"];
    [TableView registerClass:[MySectionTableViewCellOne class] forCellReuseIdentifier:@"OneCell"];
    [TableView registerClass:[MySectionTableViewCellOTT class] forCellReuseIdentifier:@"OCell"];
    [TableView registerClass:[MySectionTableViewCellFour class] forCellReuseIdentifier:@"FCell"];
    
    _MSTableView = TableView;
    
    return _MSTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            return GSDistance(243);
            break;
        case 1:
            return GSDistance(70);
            break;
        case 2:
            return GSDistance(121);
            break;
        case 3:
            return GSDistance(81);
            break;
        case 4:
            return GSDistance(40);
            break;
        default:
            return 0;
            break;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        MySectionTableViewCellZero *cell = [tableView dequeueReusableCellWithIdentifier:@"ZCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setCallBack:^(NSString *str) {
            if (_callBack) {
                _callBack(str);
            }
        }];
        return cell;
    }else if (indexPath.section == 1){
        MySectionTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"OneCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setCallBack:^(NSString *str) {
            if (_callBack) {
                _callBack(str);
            }
        }];
        return cell;
    }else if(indexPath.section == 2 || indexPath.section == 3){
        MySectionTableViewCellOTT *cell = [tableView dequeueReusableCellWithIdentifier:@"OCell"
                                                                          forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        if (indexPath.section == 2) {
            cell.arrayForSource = _arrayForSource.firstObject;
        }else{
            cell.arrayForSource = _arrayForSource.lastObject;
        }
        [cell setCallBack:^(NSString *str) {
            if (_callBack) {
                _callBack(str);
            }
        }];
        return cell;
    }else{
        MySectionTableViewCellFour *cell = [tableView dequeueReusableCellWithIdentifier:@"FCell"
                                                                           forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setCallBack:^(NSString *str) {
            if (_callBack) {
                _callBack(str);
            }
        }];
        return cell;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }else{
        return GSDistance(10);
    }
}
@end
