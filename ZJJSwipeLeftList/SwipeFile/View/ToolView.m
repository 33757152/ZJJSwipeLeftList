//
//  ToolView.m
//  ZJJSwipeLeftList
//
//  Created by admin on 2020/10/25.
//

#import "ToolView.h"
#import "Header.h"
#import "RootViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "LeftViewController.h"

@interface ToolView ()

/// scroll
@property (nonatomic, strong) UIScrollView *bgScrollView;

@end

@implementation ToolView

+ (instancetype)sharedSingleInstance {
    static dispatch_once_t onceToken;
    static ToolView *alertView = nil;
    dispatch_once(&onceToken, ^{
        alertView = [[ToolView alloc] init];
    });
    return alertView;
}

- (void)wentToMainPage {
    self.bgScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, XTAY_SCREEN_W, XTAY_SCREEN_H)];
    _bgScrollView.backgroundColor = [UIColor whiteColor];
    _bgScrollView.showsHorizontalScrollIndicator = false;
    _bgScrollView.pagingEnabled = true;
    _bgScrollView.bounces = NO;
    _bgScrollView.contentSize = CGSizeMake(XTAY_SCREEN_W*2, 0);
    _bgScrollView.contentOffset = CGPointMake(XTAY_SCREEN_W, 0);
    
    RootViewController *rootVC = [[RootViewController alloc] init];
    [rootVC.view addSubview:_bgScrollView];
    XTAY_MAIN_WINDOW.rootViewController = rootVC;
    
    // 1
    LeftViewController *leftvc = [[LeftViewController alloc] init];
    leftvc.view.frame = CGRectMake(0, 0, XTAY_SCREEN_W, XTAY_SCREEN_H);
    [_bgScrollView addSubview:leftvc.view];
    [rootVC addChildViewController:leftvc];
    
    // 2
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:[FirstViewController new]];
    nav1.tabBarItem.title = @"111";
    
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:[SecondViewController new]];
    nav2.tabBarItem.title = @"222";
    
    tabbar.viewControllers = @[nav1, nav2];
    tabbar.view.frame = CGRectMake(XTAY_SCREEN_W, 0, XTAY_SCREEN_W, XTAY_SCREEN_H);
    [_bgScrollView addSubview:tabbar.view];
    [rootVC addChildViewController:tabbar];
}

- (void)showLeft {
    [self.bgScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
