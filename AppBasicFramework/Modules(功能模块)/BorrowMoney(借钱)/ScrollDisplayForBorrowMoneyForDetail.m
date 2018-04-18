//
//  ScrollDisplayForBorrowMoneyForDetail.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

//183

#import "ScrollDisplayForBorrowMoneyForDetail.h"
#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellOne.h"
#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellTow.h"
#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellThree.h"
@interface ScrollDisplayForBorrowMoneyForDetail ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *BMTableview;
@end

@implementation ScrollDisplayForBorrowMoneyForDetail

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        [self BMTableview];
        
    }
    return self;
}

- (UITableView *)BMTableview
{
    if (_BMTableview) {
        return _BMTableview;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.sectionFooterHeight = 10;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    TableView.bounces = NO;
    
    [TableView registerClass:[ScrollDisplayForBorrowMoneyForDetailTableViewCellOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[ScrollDisplayForBorrowMoneyForDetailTableViewCellTow class] forCellReuseIdentifier:@"tow"];
    [TableView registerClass:[ScrollDisplayForBorrowMoneyForDetailTableViewCellThree class] forCellReuseIdentifier:@"three"];
    
    _BMTableview = TableView;
    
    return _BMTableview;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return GSDistance(35);
    }else{
        return GSDistance(65);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ScrollDisplayForBorrowMoneyForDetailTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
       
        return cell;
    }else if(indexPath.row == 1){
        ScrollDisplayForBorrowMoneyForDetailTableViewCellTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        return cell;
    }else{
        ScrollDisplayForBorrowMoneyForDetailTableViewCellThree *cell = [tableView dequeueReusableCellWithIdentifier:@"three"
                                                                                       forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.imgView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickGanTanHao)];
        [cell.imgView addGestureRecognizer:tap];
        
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return GSDistance(28);
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    //勾选
    UIImageView *imgView = [UIImageView initImageViewWithFatherView:view];
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(10));
        make.top.bottom.mas_equalTo(view);
        make.width.mas_equalTo(20);
    }];
    [imgView setImage:[UIImage imageNamed:@"home_douxuan"]];
    //已阅读并同意
    UILabel *label0 = [UILabel initForLabelWithFatherView:view Size:10 Color:Color153_153_153 Tital:@"已阅读并同意"];
    [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(view);
        make.left.mas_equalTo(imgView.mas_right);
    }];
    //《服务合同及用户贷款合同》
    UILabel *label1 = [UILabel initForLabelWithFatherView:view Size:10 Color:Color16_181_117 Tital:@"《服务合同及用户贷款合同》"];
    [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(view);
        make.left.mas_equalTo(label0.mas_right);
    }];
    
    return view;
}
#pragma mark --点击感叹号--
- (void)clickGanTanHao
{
    if (_callbackForGanTanHao) {
        _callbackForGanTanHao(@"服务费");
    }
}
@end
