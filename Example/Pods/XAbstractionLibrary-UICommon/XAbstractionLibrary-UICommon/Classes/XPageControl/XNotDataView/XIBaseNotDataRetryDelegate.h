//
//  XIBaseNotDataRetryDelegate.h
//  XAbstractionLibrary-UICommon
//
//  Created by lanbiao on 2018/7/23.
//

#import <Foundation/Foundation.h>

/**
 *  无数据代理
 */
@protocol XIBaseNotDataRetryDelegate <NSObject>

/**
 *  重试代理
 */
- (void) retryNotData;
@end
