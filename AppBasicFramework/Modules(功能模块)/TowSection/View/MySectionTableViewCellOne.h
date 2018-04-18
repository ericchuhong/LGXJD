//
//  MySectionTableViewCellOne.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/14.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MySectionTableViewCellOne : UITableViewCell

@property (nonatomic,copy) backForUpperLevelWithString callBack;
- (void)setCallBack:(backForUpperLevelWithString)callBack;

///个人资料
@property (nonatomic,strong) UIView *view0;
///我的借款
@property (nonatomic,strong) UIView *view1;
///还款账单
@property (nonatomic,strong) UIView *view2;

@end
