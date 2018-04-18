//
//  PersonalBorrowingRecordView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalBorrowingRecordView.h"
#import "PersonalBorrowingRecordTableViewCell.h"
@interface PersonalBorrowingRecordView ()
@property (nonatomic,strong) UITableView *PBTableView;
@end
@implementation PersonalBorrowingRecordView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.RVTableView = self.PBTableView;
    }
    return self;
}
- (UITableView *)PBTableView
{
    if (_PBTableView) {
        return _PBTableView;
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
    
    [TableView registerClass:[PersonalBorrowingRecordTableViewCell class] forCellReuseIdentifier:@"one"];
    
    _PBTableView = TableView;
    
    return _PBTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(69);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonalBorrowingRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                 forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_callbackForPBR) {
        _callbackForPBR(@"");
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(10);
}
@end
