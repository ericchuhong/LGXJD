//
//  SCTableViewCellForRequired.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "SCTableViewCellForRequiredAndOptional.h"
#import "SCTableViewCellForRequiredAndOptionalDetail.h"
#import "SelectCertificationItemsModel.h"
@interface SCTableViewCellForRequiredAndOptional ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *SCRTableView;
@end

@implementation SCTableViewCellForRequiredAndOptional
///区分必选项和可选项
- (void)setIsMust:(BOOL)isMust
{
    _isMust = isMust;
    if (_isMust) {
        [self createTitalMust];
    }else{
        [self createTitalNotMust];
    }
    
    [_SCRTableView reloadData];
}
- (void)setArrForRequ:(NSArray *)arrForRequ
{
    _arrForRequ = arrForRequ;
    
    [_SCRTableView reloadData];
}
- (void)setArrForOpri:(NSArray *)arrForOpri
{
    _arrForOpri = arrForOpri;
    
    [_SCRTableView reloadData];
}
//自定义tabelView的cell的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //初始化cell上的控件
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.backgroundColor = Color243_243_243;
        
        _isMust = nil;
        
        [self createDetail];
    }
    return self;
}
#pragma mark --必选项--
- (void)createTitalMust
{
    UIImageView *imageVireForLine = [UIImageView initImageViewWithFatherView:self];
    [imageVireForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(13));
        make.height.mas_equalTo(GSDistance(16));
        make.width.mas_equalTo(GSDistance(4));
    }];
    [imageVireForLine setImage:[UIImage imageNamed:@"CI_blueLine"]];
    //必选项(额度
    UILabel *labelForTextOne = [UILabel initForLabelWithFatherView:self Size:12
                                                             Color:[UIColor blackColor] Tital:@"必选项(额度"];
    [labelForTextOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imageVireForLine.mas_right).offset(GSDistance(10));
        make.top.bottom.mas_equalTo(imageVireForLine);
    }];
    //必选项增加额度
    _labelForTitalText = [UILabel initForLabelWithFatherView:self Size:12
                                                       Color:Color235_29_30 Tital:@"+1000"];
    [_labelForTitalText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(labelForTextOne.mas_right);
        make.top.bottom.mas_equalTo(imageVireForLine);
    }];
    //弧
    UILabel *labelForTextHu = [UILabel initForLabelWithFatherView:self Size:12
                                                            Color:[UIColor blackColor] Tital:@")"];
    [labelForTextHu mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_labelForTitalText.mas_right);
        make.top.bottom.mas_equalTo(imageVireForLine);
    }];
}
#pragma mark --可选项--
- (void)createTitalNotMust
{
    UIImageView *imageVireForLine = [UIImageView initImageViewWithFatherView:self];
    [imageVireForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(GSDistance(15));
        make.top.mas_equalTo(self).offset(GSDistance(13));
        make.height.mas_equalTo(GSDistance(16));
        make.width.mas_equalTo(GSDistance(4));
    }];
    [imageVireForLine setImage:[UIImage imageNamed:@"CI_blueLine"]];
    //可选项
    UILabel *labelForTextOne = [UILabel initForLabelWithFatherView:self Size:12
                                                             Color:[UIColor blackColor] Tital:@"可选项"];
    [labelForTextOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imageVireForLine.mas_right).offset(GSDistance(10));
        make.top.bottom.mas_equalTo(imageVireForLine);
    }];
}
#pragma mark --选项详情--
- (void)createDetail
{
    UIView *viewForBG = [UIView initViewWithFatherView:self];
    [viewForBG mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(41));
    }];
    viewForBG.backgroundColor = [UIColor whiteColor];
    
    [self SCRTableView];
}
- (UITableView *)SCRTableView
{
    if (_SCRTableView) {
        return _SCRTableView;
    }
    
    UITableView * TableView = [[UITableView alloc]init];
    TableView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:TableView];
    [TableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(GSDistance(51), 0, GSDistance(10), 0));
    }];
    
    TableView.delegate = self;
    TableView.dataSource = self;
    
    TableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    TableView.backgroundColor = RGB(243.0, 243.0, 243.0, 1.0);
    
    [TableView registerClass:[SCTableViewCellForRequiredAndOptionalDetail class] forCellReuseIdentifier:@"cell"];
    
    _SCRTableView = TableView;
    
    return _SCRTableView;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_isMust) {
        return _arrForRequ.count;
    }else{
        return _arrForOpri.count;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return GSDistance(80);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCTableViewCellForRequiredAndOptionalDetail *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                                                  forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    SelectCertificationItemsModel *model = nil;
    if (_isMust) {
        model = _arrForRequ[indexPath.row];
    }else{
        model = _arrForOpri[indexPath.row];
    }
    [cell.imageViewForLogo setImage:[UIImage imageNamed:model.LOGO]];
    [cell.imageViewForStatusLogo setImage:[UIImage imageNamed:model.statusLOGO]];
    cell.labelForTital.text = model.tital;
    cell.labelForDetail.text = model.detail;
    cell.labelForDescription.text = model.status;
    return cell;
}
@end
