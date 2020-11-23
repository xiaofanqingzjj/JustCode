//
//  main.m
//  JustCode
//
//  Created by apple on 14-9-17.
//  Copyright (c) 2014年 Reasonable. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "AppDelegate.h"
#import "AppDelegate.h"

// 应用程序入口
int main(int argc, char * argv[])
{
    @autoreleasepool {
        //UIApplicationMain：UIKit框架结果的启动函数
        //参数一：agrc,启动时带有参数的个数
        //参数二：argv,参数列表
        //参数三：要求传入主框架类类名，如果参数为nil，系统自动用默认框架类做为主框架类
        //参数四：NSStringFromClass,主框架的代理类
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
