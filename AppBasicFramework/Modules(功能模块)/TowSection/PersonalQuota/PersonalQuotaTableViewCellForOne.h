//
//  PersonalQuotaTableViewCellForOne.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalQuotaTableViewCellForOne : UITableViewCell

///可用额度
@property (nonatomic,strong) UILabel *labelForUseMon;
///已使用
@property (nonatomic,strong) UILabel *labelForUsed;
///已冻结
@property (nonatomic,strong) UILabel *labelForDong;

///点击提额,已使用和已冻结
@property (nonatomic,copy) backForUpperLevelWithString callbackForTiE;
- (void)setCallbackForTiE:(backForUpperLevelWithString)callbackForTiE;

@end
