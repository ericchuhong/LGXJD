//
//  ScrollDisplayForBorrowMoneyForDetailTableViewCellOne.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellOne.h"
#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell.h"
@interface ScrollDisplayForBorrowMoneyForDetailTableViewCellOne ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,strong) UICollectionView *BMCollectionView;
///当前选中的cell
@property (nonatomic,assign) CGFloat selectCell;
@end

@implementation ScrollDisplayForBorrowMoneyForDetailTableViewCellOne

//自定义tabelView的cell的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //初始化cell上的控件
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _selectCell = 0.5;
        
        [self createUI];
        
        [self BMCollectionView];
    }
    return self;
}
- (void)createUI
{
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:15 Color:Color153_153_153 Tital:@"借款天数"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).offset(GSDistance(15));
    }];
}
- (UICollectionView *)BMCollectionView
{
    if (_BMCollectionView) {
        return _BMCollectionView;
    }
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    layout.itemSize = CGSizeMake(GSDistance(55), GSDistance(35));
    layout.minimumLineSpacing = 5.0;
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(GSDistance(105), 0, GScreenWidth-GSDistance(145), GSDistance(35)) collectionViewLayout:layout];
    [self addSubview:collectionView];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.bounces = YES;
    collectionView.showsHorizontalScrollIndicator = NO;
    
    [collectionView registerClass:[ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell class]
       forCellWithReuseIdentifier:@"cell"];
    
    _BMCollectionView = collectionView;
    return _BMCollectionView;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *str = @"cell";
    ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:str forIndexPath:indexPath];
    if (indexPath.row == _selectCell) {
        cell.BMViewForLine.layer.borderColor = Color35_128_215.CGColor;
    }else{
        cell.BMViewForLine.layer.borderColor = Color232_232_232.CGColor;
    }
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    _selectCell = indexPath.row;
    [_BMCollectionView reloadData];
}
@end
