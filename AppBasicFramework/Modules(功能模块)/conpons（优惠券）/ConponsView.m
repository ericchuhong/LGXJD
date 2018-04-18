//
//  ConponsView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ConponsView.h"
#import "ConponsViewTableViewCell.h"
@interface ConponsView ()
@property (nonatomic,strong) UITableView *CVTableView;
@end

@implementation ConponsView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.RVTableView = self.CVTableView;
    }
    return self;
}
- (UITableView *)CVTableView
{
    if (_CVTableView) {
        return _CVTableView;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[ConponsViewTableViewCell class] forCellReuseIdentifier:@"one"];
    
    _CVTableView = TableView;
    
    return _CVTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(117);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ConponsViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                     forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    GLogDebug(@"使用");
}
@end
