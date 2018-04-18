//
//  PersonalAllMoneyView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalAllMoneyView.h"
#import "PersonalAllMoneyTableViewCellOne.h"
#import "PersonalAllMoneyTableViewCellTow.h"
@interface PersonalAllMoneyView ()
@property (nonatomic,strong) UITableView *PATableView;
///记录箭头的状态
@property (nonatomic,assign) BOOL isYseForArrowForOne;
@property (nonatomic,assign) BOOL isYseForArrowForTow;
///记录cell的高度
@property (nonatomic,assign) CGFloat heightForOneCell;
@property (nonatomic,assign) CGFloat heightForTowCell;

@end
@implementation PersonalAllMoneyView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _isYseForArrowForOne = YES;
        _isYseForArrowForTow = YES;
        
        [self PATableView];
    }
    return self;
}
- (UITableView *)PATableView
{
    if (_PATableView) {
        return _PATableView;
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
    
    [TableView registerClass:[PersonalAllMoneyTableViewCellOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[PersonalAllMoneyTableViewCellTow class] forCellReuseIdentifier:@"tow"];
    
    _PATableView = TableView;
    
    return _PATableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return GSDistance(157);
    }else if(indexPath.section == 1){
        return GSDistance(_heightForOneCell);
    }else{
        return GSDistance(_heightForTowCell);
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        PersonalAllMoneyTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                     forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setCallbackForTiE:^(NSString *str) {
            if (_callbackForTiE) {
                _callbackForTiE(str);
            }
        }];
        return cell;
    }else if(indexPath.section ==1){
        PersonalAllMoneyTableViewCellTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                 forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        PersonalAllMoneyTableViewCellTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                 forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return GSDistance(10);
    }else{
        return GSDistance(64);
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return GSDistance(53);
    }else if(section == 1){
        return GSDistance(10);
    }else{
        return GSDistance(0);
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    if (section != 0) {
        view.backgroundColor = [UIColor whiteColor];
        UIView *view0 = [UIView initViewWithFatherView:view backgroundColor:Color224_224_224];
        [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(1));
        }];
        UIView *view1 = [UIView initViewWithFatherView:view backgroundColor:Color224_224_224];
        [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.left.right.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(1));
        }];
        //认证
        UILabel *labelForDescription = [UILabel initForLabelWithFatherView:view Size:15
                                                                     Color:Color35_128_215 Tital:@"学历认证"];
        [labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(view).offset(GSDistance(17));
            make.top.mas_equalTo(view).offset(GSDistance(15));
            make.height.mas_equalTo(GSDistance(15));
        }];
        //等
        UILabel *label0 = [UILabel initForLabelWithFatherView:view Size:15
                                                        Color:Color153_153_153 Tital:@"等"];
        [label0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(labelForDescription);
            make.left.mas_equalTo(labelForDescription.mas_right);
        }];
        ////认证项个数
        UILabel *labelForDescriptionNum = [UILabel initForLabelWithFatherView:view Size:15
                                                                        Color:Color35_128_215 Tital:@"4"];
        [labelForDescriptionNum mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(label0.mas_right);
            make.top.bottom.mas_equalTo(label0);
        }];
        //项认证
        UILabel *label1 = [UILabel initForLabelWithFatherView:view Size:15
                                                        Color:Color153_153_153 Tital:@"项认证"];
        [label1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(labelForDescriptionNum.mas_right);
            make.top.bottom.mas_equalTo(labelForDescriptionNum);
        }];
        //时间
        UILabel *labelForTime = [UILabel initForLabelWithFatherView:view Size:12
                                                              Color:Color153_153_153
                                                              Tital:@"2017-01-10"];
        [labelForTime mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(labelForDescription);
            make.top.mas_equalTo(labelForDescription.mas_bottom);
            make.bottom.mas_equalTo(view);
        }];
        //箭头
        RootImageView *imgViewForArrow = [[RootImageView alloc]init];
        imgViewForArrow.translatesAutoresizingMaskIntoConstraints = NO;
        [view addSubview:imgViewForArrow];
        [imgViewForArrow mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(view).offset(GSDistance(-10));
            make.centerY.mas_equalTo(view);
            make.width.height.mas_equalTo(GSDistance(30));
        }];
        [imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_down"]];
        imgViewForArrow.contentMode = UIViewContentModeCenter;
        if (section == 1) {
            imgViewForArrow.tag = 1;
//            if (_isYseForArrowForOne) {
//                [imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_down"]];
//            }else{
//                [imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_up"]];
//            }
        }else{
            imgViewForArrow.tag = 2;
//            if (_isYseForArrowForTow) {
//                [imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_down"]];
//            }else{
//                [imgViewForArrow setImage:[UIImage imageNamed:@"my_arrow_up"]];
//            }
        }
        imgViewForArrow.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickArrow:)];
        [imgViewForArrow addGestureRecognizer:tap];
        
        //金额
        UILabel *labelForMon = [UILabel initForLabelWithFatherView:view Size:16 Color:[UIColor blackColor] Tital:@"+2000" FontName:nil];
        [labelForMon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(imgViewForArrow.mas_left).offset(GSDistance(-5));
            make.centerY.mas_equalTo(view);
            make.height.mas_equalTo(GSDistance(18));
        }];
        return view;
    }else{
        view.backgroundColor = Color243_243_243;
        return view;
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    if (section == 0) {
        UIImageView *imageView = [UIImageView initImageViewWithFatherView:view];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(view).offset(GSDistance(15));
            make.width.mas_equalTo(GSDistance(2));
            make.bottom.mas_equalTo(view).offset(GSDistance(-13));
            make.height.mas_equalTo(GSDistance(16));
        }];
        [imageView setImage:[UIImage imageNamed:@"CI_blueLine"]];
        
        UILabel *label = [UILabel initForLabelWithFatherView:view Size:12 Color:[UIColor blackColor] Tital:@"提额认证项"];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(imageView.mas_right).offset(GSDistance(6));
            make.top.bottom.mas_equalTo(imageView);
        }];
    }
    
    return view;
}
#pragma mark --点击箭头--
/**
 动画思路解释：
    点击箭头->修改对应cell的高度记录值，旋转箭头，更改箭头状态标记，当箭头旋转结束时，刷新表格
                ->更改对应cell的高度(此处用了表格的局部刷新功能，只刷新对应section的cell)；
 */
- (void)clickArrow:(UITapGestureRecognizer *)tap
{
    RootImageView *imgView = (RootImageView *)tap.view;
    __block NSIndexPath *indexpath = nil;
    __block NSMutableArray *mutArr = [[NSMutableArray alloc]init];
    if (tap.view.tag == 1) {
        //Yes==>展开
        if (_isYseForArrowForOne) {
            _heightForOneCell = 79;
            
            [imgView rotate:0 toValue:M_PI];
        }else{
            _heightForOneCell = 0;
            
            [imgView rotate:M_PI toValue:M_PI * 2];
        }
        _isYseForArrowForOne = !_isYseForArrowForOne;
        
        indexpath = [NSIndexPath indexPathForRow:0 inSection:1];
        [mutArr addObject:indexpath];
    }else{
        //Yes==>展开
        if (_isYseForArrowForTow) {
            _heightForTowCell = 79;
            [imgView rotate:0 toValue:M_PI];
        }else{
            _heightForTowCell = 0;
            
            [imgView rotate:M_PI toValue:M_PI * 2];
        }
        _isYseForArrowForTow = !_isYseForArrowForTow;
        
        indexpath = [NSIndexPath indexPathForRow:0 inSection:2];
        [mutArr addObject:indexpath];
    }
    
    GWeakSelf(self)
    [imgView setCallback:^{
        [weakself.PATableView reloadRowsAtIndexPaths:mutArr withRowAnimation:UITableViewRowAnimationFade];
    }];
   
    GLogDebug(@"%ld",tap.view.tag);
}
@end
