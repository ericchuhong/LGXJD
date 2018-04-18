//
//  RootImageView+LG_Rotate.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/21.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "RootImageView+LG_Rotate.h"
@implementation RootImageView (LG_Rotate)
- (void)rotate:(CGFloat)fromValue toValue:(CGFloat)toValue
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //动画起始位置
    animation.fromValue = [NSNumber numberWithFloat:fromValue];
    //动画结束位置
    animation.toValue = [NSNumber numberWithFloat:toValue];
    //动画时间
    animation.duration = 0.2;
    //动画结束后是否执行逆动画
    animation.autoreverses = NO;
    //防止动画结束后回到初始状态
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    //设置动画重复次数
    animation.repeatCount = 1;
    
    GWeakSelf(self)
    animation.delegate = weakself;
    
    [self.layer addAnimation:animation forKey:nil];
}
- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    if (self.callback) {
        self.callback();
    }
}
@end
