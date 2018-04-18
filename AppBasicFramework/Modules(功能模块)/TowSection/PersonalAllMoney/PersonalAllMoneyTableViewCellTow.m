//
//  PersonalAllMoneyTableViewCellTow.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalAllMoneyTableViewCellTow.h"
#import "PersonalAllMoneyCollectionViewCell.h"
@interface PersonalAllMoneyTableViewCellTow ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (nonatomic,strong) UICollectionView *PACollectionView;
@end

@implementation PersonalAllMoneyTableViewCellTow

//自定义tabelView的cell的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //初始化cell上的控件
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        //CAlayer子图层是否剪切图层边界（默认为零），这里因为当cell高度被刷新为0时，cell上的所有自视图都要隐藏，所以设置为yes，这样就不允许自视图显示的范围超过父视图
        self.layer.masksToBounds = YES;
        
        [self PACollectionView];
    }
    return self;
}
- (UICollectionView *)PACollectionView
{
    if (_PACollectionView) {
        return _PACollectionView;
    }
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    layout.itemSize = CGSizeMake(GScreenWidth/4, GSDistance(79));
    layout.minimumLineSpacing = 0.0;
    
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, GScreenWidth, GSDistance(79)) collectionViewLayout:layout];
    [self addSubview:collectionView];
    
    collectionView.delegate = self;
    collectionView.dataSource = self;

    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.bounces = YES;
    collectionView.showsHorizontalScrollIndicator = NO;
    
    [collectionView registerClass:[PersonalAllMoneyCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    _PACollectionView = collectionView;
    return _PACollectionView;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *str = @"cell";
    PersonalAllMoneyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:str
                                                                                         forIndexPath:indexPath];
    return cell;
}
@end
