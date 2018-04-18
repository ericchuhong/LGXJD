//
//  SCTableViewCellForRequired.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCTableViewCellForRequiredAndOptional : UITableViewCell

///必选项增加额度
@property (nonatomic,strong) UILabel *labelForTitalText;
///区分必选项和可选项
@property (nonatomic,assign) BOOL isMust;
@property (nonatomic,strong) NSArray *arrForRequ;
@property (nonatomic,strong) NSArray *arrForOpri;

@end
