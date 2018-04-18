//
//  借钱模块开发文档.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/21.
//  Copyright © 2017年 IGS. All rights reserved.
//


/**
 
 1，视图结构
 BorrowMoneyViewController
    ->BorrowMoneyView
        ->BMTableView(底部表格视图)
            ->BorrowMoneyTableViewCellForBank（收款银行卡）
            ->BorrowMoneyTableViewCellForMoney（借款金额）
            ->BorrowMoneyTableViewCellForCoupon（优惠券）
            ->BorrowMoneyTableViewCellForRepaymentDetail（借款详情）
                ->ScrollDisplayForBorrowMoney（左右滚动效果）
                ->ScrollDisplayForBorrowMoneyForDetail（借款详情视图）
                    ->ScrollDisplayForBorrowMoneyForDetailTableViewCellOne（借款天数）
                        ->ScrollDisplayForBorrowMoneyForDetailTableViewCellOneCollectionViewCell（类型明细）
                    ->ScrollDisplayForBorrowMoneyForDetailTableViewCellTow（应还金额）
                    ->ScrollDisplayForBorrowMoneyForDetailTableViewCellThree（合计）
 
 
 
 
 */
