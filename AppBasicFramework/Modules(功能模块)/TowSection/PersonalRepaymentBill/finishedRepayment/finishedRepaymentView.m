//
//  finishedRepaymentView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/25.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "finishedRepaymentView.h"
#import "finishedRepaymentTableViewCell.h"
@interface finishedRepaymentView ()
@property (nonatomic,strong) UITableView *FRTableView;
@end
@implementation finishedRepaymentView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self FRTableView];
    }
    return self;
}
- (UITableView *)FRTableView
{
    if (_FRTableView) {
        return _FRTableView;
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
    
    [TableView registerClass:[finishedRepaymentTableViewCell class] forCellReuseIdentifier:@"one"];
    
    _FRTableView = TableView;
    
    return _FRTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(407);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    finishedRepaymentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                 forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(11);
}
@end
