//
//  BankCardRecognizeTableViewCellForFour.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BankCardRecognizeTableViewCellForFour : UITableViewCell
///类型
@property (nonatomic,strong) UILabel *labelForCate;
///内容
@property (nonatomic,strong) UITextField *textForContent;
///验证码
@property (nonatomic,strong) UILabel *labelForCode;
@end
