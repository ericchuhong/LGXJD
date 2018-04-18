//
//  勾选认证项开发文档.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/8.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 1,视图结构：
    SelectCertificationItemsViewController
        -->SelectCertificationItemsView
            viewForUpView(视图底部确认申请模块)
            SCTableView(整体详情图)
            --> SCTableViewCellForRequiredAndOptional
                SCRTableView(可选项和必选项)
                --->SCTableViewCellForRequiredAndOptionalDetail(单个模块的详情）

 */
