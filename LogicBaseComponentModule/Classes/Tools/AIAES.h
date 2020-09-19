//
//  AIAES.h
//  AiParkToC
//
//  Created by lanbiao on 2018/8/1.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AIAES : NSObject
+ (NSString *)encryptAES:(NSString *)content key:(NSString *)key;
+ (NSDictionary *)decryptAES:(NSString *)content key:(NSString *)key;
@end
