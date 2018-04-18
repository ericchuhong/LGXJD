//
//  我的模块开发文档.m
//  AppBasicFramework
//
//  Created by 李广帅 on 2017/12/7.
//  Copyright © 2017年 IGS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 1,视图层级结构
    UIController ---> UIView ---> UITableView(1)
                                      cell(0/123/4)
                                        123    --------->UITableView(2)
                                                         cell
 
 2,第一个tabel上面放5个cell，分别对应5个不同的模块，第二个table上面根据不同cell的需求放不同的模块。
 3,各个模块的跳转由控制器控制，通过回调传递跳转信息。
 4,ViewModel负责数据的获取解析以及配合model存储数据，Controller负责数据的刷新和界面的跳转。
 
 */
