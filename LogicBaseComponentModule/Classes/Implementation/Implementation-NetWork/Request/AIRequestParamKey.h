//
//  AIRequestParamKey.h
//  AiParkToC
//
//  Created by lanbiao on 2018/11/2.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#ifndef AIRequestParamKey_h
#define AIRequestParamKey_h

//接口名的key
#define         kCommand            @"command"

//接口请求来源，如iOS/Android/WinPhone
#define         kParamsSource       @"source"

//接口请求渠道号
#define         kParamsChannel      @"channel"

//设备唯一标识(备注：即使设备删除，永远不变)
#define         kParamsClientID     @"clientID"

//app版本号
#define         kParamsAppVersion   @"appVersion"

//系统版本号
#define         kParamsOsVersion    @"osVersion"

//设备型号，如iPhone6plus，华为P10等
#define         kParamsDevice       @"device"

//接口请求token
#define         kParamsToken        @"token"

#endif /* AIRequestParamKey_h */
