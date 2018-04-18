//
//  PersonalQuotaView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalQuotaView.h"
#import "PersonalQuotaTableViewCellForOne.h"
#import "PersonalQuotaTableViewCellForTow.h"
@interface PersonalQuotaView ()
@property (nonatomic,strong) UITableView *PQTableView;
@end

@implementation PersonalQuotaView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self PQTableView];
    }
    return self;
}
- (UITableView *)PQTableView
{
    if (_PQTableView) {
        return _PQTableView;
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
    
    [TableView registerClass:[PersonalQuotaTableViewCellForOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[PersonalQuotaTableViewCellForTow class] forCellReuseIdentifier:@"tow"];
    
    _PQTableView = TableView;
    
    return _PQTableView;
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
        return GSDistance(237);
    }else{
        return GSDistance(108);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        PersonalQuotaTableViewCellForOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        //点击提额
        [cell setCallbackForTiE:^(NSString *str) {
            if (_callbackForTiE) {
                _callbackForTiE(str);
            }
        }];
        return cell;
    }else{
        PersonalQuotaTableViewCellForTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        if (_callbackForTiE) {
            _callbackForTiE(@"总额度");
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(11);
}

@end
