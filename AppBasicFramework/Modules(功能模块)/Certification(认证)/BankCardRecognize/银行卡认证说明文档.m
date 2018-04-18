//
//  银行卡认证说明文档.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/11.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 1，视图结构
    BankCardRecognizeViewController
        ----> BankCardRecognizeView(主视图)
                ---->BCTableView
                        ---->BankCardRecognizeTableViewCellForOne（持卡人，身份证号）
                             BankCardRecognizeTableViewCellForTow（预留手机）
                             BankCardRecognizeTableViewCellForThree（银行卡号）
                             BankCardRecognizeTableViewCellForFour（验证码）
 */
