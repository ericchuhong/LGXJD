//
//  MySectionTableViewCellOTT.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MySectionTableViewCellOTT : UITableViewCell

@property (nonatomic,copy) backForUpperLevelWithString callBack;
- (void)setCallBack:(backForUpperLevelWithString)callBack;

///我的礼券模块和活动中心模块分别有几个字模块
@property (nonatomic,strong) NSArray *arrayForSource;


@end
