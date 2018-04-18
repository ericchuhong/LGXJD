//
//  MySectionTableViewCellOTT.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "MySectionTableViewCellOTT.h"
#import "MySectionTableViewCellOTTOne.h"
@interface MySectionTableViewCellOTT ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *MSTableView;
@end

@implementation MySectionTableViewCellOTT

//自定义tabelView的cell的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //初始化cell上的控件
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self createUI];
    }
    return self;
}
- (void)createUI
{
    [self MSTableView];
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
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[MySectionTableViewCellOTTOne class] forCellReuseIdentifier:@"one"];
    
    _MSTableView = TableView;
    
    return _MSTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayForSource.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(40);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MySectionTableViewCellOTTOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                 forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (indexPath.row == _arrayForSource.count-1) {
        cell.viewForLine.hidden = YES;
    }else{
        cell.viewForLine.hidden = NO;
    }
    if (indexPath.row < _arrayForSource.count) {
        NSArray *array = _arrayForSource[indexPath.row];
        [cell.imgViewForCate setImage:[UIImage imageNamed:array.firstObject]];
        cell.labelForCate.text = array.lastObject;
    }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < _arrayForSource.count) {
        NSArray *array = _arrayForSource[indexPath.row];
        if (_callBack) {
            _callBack(array.lastObject);
        }
    }
}
@end
