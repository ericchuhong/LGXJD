//
//  PersonalInformationTableViewCellForThree.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/13.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonalInformationTableViewCellForThree : UITableViewCell

///类别
@property (nonatomic,strong) UILabel *labelForCate;
///类别内容
@property (nonatomic,strong) UILabel *labelForDetail;
///类别图片
@property (nonatomic,strong) UIImageView *imgForDetail;
///底部线
@property (nonatomic,strong) UIView *viewForLine;

@end
