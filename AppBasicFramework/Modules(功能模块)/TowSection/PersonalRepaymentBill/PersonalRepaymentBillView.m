//
//  PersonalRepaymentBillView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalRepaymentBillView.h"
#import "PersonalRepaymentBillTableViewCell.h"
@interface PersonalRepaymentBillView ()
@property (nonatomic,strong) UITableView *PRTableView;
@end

@implementation PersonalRepaymentBillView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.RVTableView = self.PRTableView;
    }
    return self;
}
- (UITableView *)PRTableView
{
    if (_PRTableView) {
        return _PRTableView;
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
    
    [TableView registerClass:[PersonalRepaymentBillTableViewCell class] forCellReuseIdentifier:@"one"];
    
    _PRTableView = TableView;
    
    return _PRTableView;
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
    return GSDistance(102);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonalRepaymentBillTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                               forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_callback) {
        _callback(@"");
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(11);
}
@end
