//
//  Header.h
//  ZJJSwipeLeftList
//
//  Created by admin on 2020/10/25.
//

#ifndef Header_h
#define Header_h

/// 获取当前屏幕宽度
#define XTAY_SCREEN_W                [UIScreen mainScreen].bounds.size.width
 
/// 获取屏幕高度
#define XTAY_SCREEN_H                [UIScreen mainScreen].bounds.size.height
 
/// 获取当前导航栏高度
#define XTAY_NAV_BAR_H               self.navigationController.navigationBar.frame.size.height
 
/// 获取当前工具栏高度
#define XTAY_TAB_BAR_H               self.tabBarController.tabBar.frame.size.height
 
/// 设置字体大小
#define XTAY_FONT_WEIGHT(a, b)       [UIFont systemFontOfSize:a weight:b]
 
/// 设置颜色
#define XTAY_RGB(r, g, b)            [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:1]
 
/// 状态栏高度
#define XTAY_STATUS_BAR_H  [[UIApplication sharedApplication] statusBarFrame].size.height
 
/// 获取当前主window
#define XTAY_MAIN_WINDOW  [[UIApplication sharedApplication] delegate].window

#endif /* Header_h */
