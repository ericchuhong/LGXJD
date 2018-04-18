//
//  BorrowMoneyView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/19.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "BorrowMoneyView.h"
#import "BorrowMoneyTableViewCellForBank.h"
#import "BorrowMoneyTableViewCellForMoney.h"
#import "BorrowMoneyTableViewCellForCoupon.h"
#import "BorrowMoneyTableViewCellForRepaymentDetail.h"
@interface BorrowMoneyView ()
///确认按钮
@property (nonatomic,strong) UIButton *buttonForDetermine;
///底部表格
@property (nonatomic,strong) UITableView *BMTableView;
///cell4的高度。用于动态实现详情页的展开效果
@property (nonatomic,assign) CGFloat cellFourHeight;
@end
@implementation BorrowMoneyView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = Color243_243_243;
        //cell4默认高度99
        _cellFourHeight = 99;
        
        [self createSafe];
        
        [self createButtonForDetermine];
        
        [self BMTableView];
    }
    return self;
}
#pragma mark --安全提示--
- (void)createSafe
{
    UIView *viewForSafe = [UIView initViewWithFatherView:self backgroundColor:[UIColor grayColor]];
    [viewForSafe mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(30));
    }];
}
#pragma mark --确定按钮--
- (void)createButtonForDetermine{
    _buttonForDetermine = [UIButton initButtonWithFatherView:self Size:15 TitleColor:[UIColor whiteColor] backgroundColor:Color35_128_215 Title:@"确定" FontName:nil CornerRadius:3.0];
    [_buttonForDetermine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(18));
        make.bottom.mas_equalTo(self).offset(GSDistance(-15));
        make.right.mas_equalTo(self).offset(GSDistance(-18));
        make.height.mas_equalTo(GSDistance(48));
    }];
    [_buttonForDetermine addTarget:self action:@selector(clickbutton) forControlEvents:UIControlEventTouchUpInside];
}
- (void)clickbutton
{
    //传递参数，进行借款请求
    if (_callback) {
        _callback(nil);
    }
}
#pragma mark --借款详情页面--
- (UITableView *)BMTableView
{
    if (_BMTableView) {
        return _BMTableView;
    }
    
    CGFloat dis = 0;
    if (GScreenWidth == 414){
        dis = 290;
    }
    if (GScreenWidth == 375){
        dis = 284;
    }
    if (GScreenWidth == 320){
        dis = 272;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(GSDistance(40), GSDistance(15), GSDistance(dis), GSDistance(15)));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = [UIColor whiteColor];
    
    TableView.bounces = NO;
    
    TableView.layer.borderWidth = 1.0;
    TableView.layer.borderColor = Color204_204_204.CGColor;
    
    [TableView registerClass:[BorrowMoneyTableViewCellForBank class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[BorrowMoneyTableViewCellForMoney class] forCellReuseIdentifier:@"tow"];
    [TableView registerClass:[BorrowMoneyTableViewCellForCoupon class] forCellReuseIdentifier:@"three"];
    [TableView registerClass:[BorrowMoneyTableViewCellForRepaymentDetail class] forCellReuseIdentifier:@"four"];
    
    _BMTableView = TableView;
    
    return _BMTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    }else{
        return 1;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return GSDistance(40);
        }else if (indexPath.row == 1){
            return GSDistance(100);
        }else{
            return GSDistance(40);
        }
    }else{
        return GSDistance(_cellFourHeight);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            BorrowMoneyTableViewCellForBank *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                    forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }else if (indexPath.row == 1){
            BorrowMoneyTableViewCellForMoney *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                    forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            BorrowMoneyTableViewCellForCoupon *cell = [tableView dequeueReusableCellWithIdentifier:@"three"
                                                                                     forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }
    }else{
        BorrowMoneyTableViewCellForRepaymentDetail *cell = [tableView dequeueReusableCellWithIdentifier:@"four"
                                                                                           forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setCallback:^(NSString *str) {
            if ([str isEqualToString:@"展开详情图"]) {
                [_BMTableView mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.bottom.mas_equalTo(self).offset(GSDistance(-80));
                }];
            }
            _cellFourHeight = 311;
            //刷新表格cell的高度
            [_BMTableView reloadData];
        }];
        ///点击感叹号，弹出对应界面
        [cell setCallbackForGanTanHao:^(NSString *str) {
            GLogDebug(@"%@",str);
        }];
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        GLogDebug(@"收款银行卡");
        if (_callbackForStr) {
            _callbackForStr(@"收款银行卡");
        }
    }
    if (indexPath.row == 2) {
        GLogDebug(@"使用优惠券");
        if (_callbackForStr) {
            _callbackForStr(@"使用优惠券");
        }
    }
}
@end
