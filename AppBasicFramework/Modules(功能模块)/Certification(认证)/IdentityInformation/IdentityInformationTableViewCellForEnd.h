//
//  IdentityInformationTableViewCellForEnd.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IdentityInformationTableViewCellForEnd : UITableViewCell
///身份证正面,背面照片
@property (nonatomic,strong) UIImageView *imageViewForPosAndRev;

///上面类别
@property (nonatomic,strong) UILabel *labelForUp;
///上面内容
@property (nonatomic,strong) UITextField *TextForUp;
///下面类别
@property (nonatomic,strong) UILabel *labelForDown;
///下面内容
@property (nonatomic,strong) UITextField *TextForDown;

///底部的灰色线
@property (nonatomic,strong) UIView *viewForLine;
@end
