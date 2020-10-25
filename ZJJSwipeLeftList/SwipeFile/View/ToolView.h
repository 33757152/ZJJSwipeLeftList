//
//  ToolView.h
//  ZJJSwipeLeftList
//
//  Created by admin on 2020/10/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToolView : UIView

+ (instancetype)sharedSingleInstance;

- (void)wentToMainPage;

- (void)showLeft;

@end

NS_ASSUME_NONNULL_END
