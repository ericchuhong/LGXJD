//
//  FaceRecognizeViewController.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import "FaceRecognizeViewController.h"
#import "FaceRecognizeView.h"
@interface FaceRecognizeViewController ()
@property (nonatomic,strong) FaceRecognizeView *FRBottomView;
@end

@implementation FaceRecognizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self GSInitViewController];
    
    [self FRBottomView];
    
    [self setUpTital];
}
- (void)setUpTital
{
    [self setForNavWithbackgroundColor:Color37_50_57
                            TitleColor:[UIColor whiteColor]
                                 Title:@"实人认证"
                             TitleSize:19];
}
- (FaceRecognizeView *)FRBottomView
{
    if (_FRBottomView) {
        return _FRBottomView;
    }
    
    _FRBottomView = [[FaceRecognizeView alloc]init];
    _FRBottomView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_FRBottomView];
    [_FRBottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
    return _FRBottomView;
}

@end
