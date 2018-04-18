//
//  RootImageView+LG_Rotate.h
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/21.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootImageView.h"

@interface RootImageView (LG_Rotate)<CAAnimationDelegate>
- (void)rotate:(CGFloat)fromValue toValue:(CGFloat)toValue;
@end
