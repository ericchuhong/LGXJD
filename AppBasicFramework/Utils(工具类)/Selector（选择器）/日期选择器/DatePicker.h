//
//  DatePicker.h
//  HuaRJProject
//
//  Created by apple on 17/3/3.
//  Copyright © 2017年 华融佳电子有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BackToCompleteLoginView)();

@interface DatePicker : UIView

-(void)setBackToCompleteLoginView:(BackToCompleteLoginView )callBack;

@end
