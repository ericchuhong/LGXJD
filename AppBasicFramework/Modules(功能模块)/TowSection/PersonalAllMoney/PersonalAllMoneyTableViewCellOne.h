//
//  PersonalAllMoneyTableViewCellOne.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalAllMoneyTableViewCellOne : UITableViewCell

///总额度金额
@property (nonatomic,strong) UILabel *labelForAllMonNum;
///点击提额
@property (nonatomic,copy) backForUpperLevelWithString callbackForTiE;
- (void)setCallbackForTiE:(backForUpperLevelWithString)callbackForTiE;

@end
