//
//  ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/20.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell.h"

@implementation ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell
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
    _BMViewForLine = [UIView initViewWithFatherView:self];
    [_BMViewForLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self).insets(UIEdgeInsetsMake(5, 5, 5, 5));
    }];
    _BMViewForLine.layer.cornerRadius = 5.0;
    _BMViewForLine.layer.masksToBounds = YES;
    _BMViewForLine.layer.borderWidth = 1.5;
    _BMViewForLine.layer.borderColor = Color35_128_215.CGColor;
    
    _labelForDetail = [UILabel initForLabelWithFatherView:self Size:12 Color:[UIColor blackColor] Tital:@"7期"];
    [_labelForDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(_BMViewForLine).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
}
@end
