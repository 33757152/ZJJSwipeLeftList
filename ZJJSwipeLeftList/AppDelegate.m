//
//  AppDelegate.m
//  ZJJSwipeLeftList
//
//  Created by admin on 2020/10/25.
//

#import "AppDelegate.h"
#import "ToolView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [[ToolView sharedSingleInstance] wentToMainPage];
    return YES;
}


@end
