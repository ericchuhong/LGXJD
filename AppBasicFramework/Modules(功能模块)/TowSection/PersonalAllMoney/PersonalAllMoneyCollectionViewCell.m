//
//  PersonalAllMoneyCollectionViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "PersonalAllMoneyCollectionViewCell.h"

@implementation PersonalAllMoneyCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self createUI];
    }
    return self;
}
- (void)createUI
{
    _imgViewForCate = [UIImageView initImageViewWithFatherView:self];
    [_imgViewForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(self).offset(GSDistance(15));
        make.width.height.mas_equalTo(GSDistance(30));
    }];
    [_imgViewForCate setImage:[UIImage imageNamed:@"my_AllMon_shebrz"]];
    
    _labelForCate = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"学历认证"];
    [_labelForCate mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self).offset(GSDistance(-12));
        make.height.mas_equalTo(15);
    }];
    
    UIView *view1 = [UIView initViewWithFatherView:self backgroundColor:Color224_224_224];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self);
        make.height.mas_equalTo(GSDistance(1));
    }];
}
@end
