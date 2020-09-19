//
//  AIBaseViewController.h
//  AiParkToC
//
//  Created by lanbiao on 2018/8/11.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import <Masonry/Masonry.h>
#import <XAbstractionLibrary_UICommon/XAbstractionLibrary-UICommon-umbrella.h>

/**
 ToC基础不带滑动的视图控制器
 */
@interface AIBaseViewController : XBaseViewController

/**
 *  页面后退
 */
- (void) onGoBack;

/**
 *  设置标题
 */
- (void)setTitle:(NSString *)title;

/**
 *  返回页面头部的空白区域
 */
- (UIView *) defaultHeadAreaView;

@end
