//
//  RootImageView.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/21.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootImageView : UIImageView

@property (nonatomic,copy) backForUpperLevelWithVoid callback;
- (void)setCallback:(backForUpperLevelWithVoid)callback;

@end
