//
//  PersonalInformationView.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalInformationView.h"
#import "PersonalInformationTableViewCellForOne.h"
#import "PersonalInformationTableViewCellForTow.h"
#import "PersonalInformationTableViewCellForThree.h"
#import "PersonalInformationTableViewCellForFour.h"
@interface PersonalInformationView ()
@property (nonatomic,strong) UITableView *PITableview;
@end

@implementation PersonalInformationView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self PITableview];
    }
    return self;
}
- (UITableView *)PITableview
{
    if (_PITableview) {
        return _PITableview;
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
    
    [TableView registerClass:[PersonalInformationTableViewCellForOne class] forCellReuseIdentifier:@"one"];
    [TableView registerClass:[PersonalInformationTableViewCellForTow class] forCellReuseIdentifier:@"tow"];
    [TableView registerClass:[PersonalInformationTableViewCellForThree class] forCellReuseIdentifier:@"three"];
    [TableView registerClass:[PersonalInformationTableViewCellForFour class] forCellReuseIdentifier:@"four"];
    
    _PITableview = TableView;
    
    return _PITableview;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section ==0) {
        return 4;
    }else{
        return 4;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(40);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 3) {
            //邮箱
            PersonalInformationTableViewCellForTow *cell = [tableView dequeueReusableCellWithIdentifier:@"tow"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            //姓名，身份证号，手机号码
            PersonalInformationTableViewCellForOne *cell = [tableView dequeueReusableCellWithIdentifier:@"one"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            switch (indexPath.row) {
                case 0:
                    cell.labelForCate.text = @"姓名";
                    break;
                case 1:
                    cell.labelForCate.text = @"身份证号";
                    break;
                case 2:
                    cell.labelForCate.text = @"手机号码";
                    break;
                default:
                    break;
            }
            return cell;
        }
        
    }else{
        if (indexPath.row == 3) {
            //共认证
            PersonalInformationTableViewCellForFour *cell = [tableView dequeueReusableCellWithIdentifier:@"four"
                                                                                         forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            //实人认证等
            PersonalInformationTableViewCellForThree *cell = [tableView dequeueReusableCellWithIdentifier:@"three"
                                                                                          forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            if (indexPath.row == 2) {
                cell.viewForLine.hidden = YES;
            }else{
                cell.viewForLine.hidden = NO;
            }
            return cell;
        }
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 3) {
            if (_callbackForPI) {
                _callbackForPI(@"去绑定邮箱");
            }
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return GSDistance(62);
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 1) {
        return GSDistance(80);
    } else {
        return GSDistance(0);
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    UIImageView *imgViewForLine = [UIImageView initImageViewWithFatherView:view];
    [imgViewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(15));
        make.centerY.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(16));
        make.width.mas_equalTo(GSDistance(4));
    }];
    [imgViewForLine setImage:[UIImage imageNamed:@"CI_blueLine"]];
    
    //个人基本信息和已认证项
    UILabel *labelForDescription = [UILabel initForLabelWithFatherView:view Size:12
                                                                 Color:[UIColor blackColor] Tital:nil];
    [labelForDescription mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imgViewForLine.mas_right).offset(GSDistance(10));
        make.centerY.mas_equalTo(view);
        make.top.bottom.mas_equalTo(imgViewForLine);
    }];
    if (section==0) {
        labelForDescription.text = @"个人基本信息";
    }else{
        labelForDescription.text = @"已认证项";
    }
    
    UIView *view0 = [UIView initViewWithFatherView:view backgroundColor:Color224_224_224];
    [view0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(1));
    }];
    UIView *view1 = [UIView initViewWithFatherView:view backgroundColor:Color224_224_224];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(view);
        make.height.mas_equalTo(GSDistance(1));
    }];
    
    return view;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = Color243_243_243;
    
    ///去提额
    UIButton *buttonForSubmit = [UIButton initButtonWithFatherView:view Size:15
                                                         TitleColor:[UIColor whiteColor] Title:@"去提额"];
    [buttonForSubmit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(view).offset(GSDistance(13));
        make.right.mas_equalTo(view).offset(GSDistance(-13));
        make.bottom.mas_equalTo(view).offset(GSDistance(-16));
        make.height.mas_equalTo(GSDistance(48));
    }];
    buttonForSubmit.layer.cornerRadius = 5.0;
    buttonForSubmit.layer.masksToBounds = YES;
    buttonForSubmit.backgroundColor = Color35_128_215;
    [buttonForSubmit addTarget:self
                        action:@selector(clickForSubmit)forControlEvents:UIControlEventTouchUpInside];
    return view;
}
- (void)clickForSubmit
{
    if (_callbackForPI) {
        _callbackForPI(@"去提额");
    }
}
@end
