//
//  Header.h
//  多张图片显示
//
//  Created by 苗建浩 on 2017/5/8.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#ifndef Header_h
#define Header_h

//屏幕的宽度
#define screenWidth  [UIScreen mainScreen].bounds.size.width
#define screenHight  [UIScreen mainScreen].bounds.size.height

#define DISTENCEW (([UIScreen mainScreen].bounds.size.width) / 320)
#define DISTENCEH (([UIScreen mainScreen].bounds.size.height) / 568)

//  小图的大小
#define ImageWidth ((screenWidth - 12 - 6) / 3)

//  全图的大小
#define AllImageWidth (screenWidth - 6)

/*状态栏高度*/
#define STATUS_HEIGHT 20

/*导航栏高度*/
#define NAVGATION_HEIGHT 44

/*状态栏加导航栏高度*/
#define NAVGATION_ADD_STATUS_HEIGHT (STATUS_HEIGHT + NAVGATION_HEIGHT)

/* tabbar 高度*/
#define TABBAR_HEIGHT 49

#define RGB_COLOR(R, G, B) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:1.0f]


#endif /* Header_h */
