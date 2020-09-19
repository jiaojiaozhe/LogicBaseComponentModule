//
//  AIEnvironment.h
//  AiParkToC
//
//  Created by lanbiao on 2019/6/20.
//  Copyright © 2019年 lanbiao. All rights reserved.
//

#ifndef AIEnvironment_h
#define AIEnvironment_h

/**
 测试
 */
#define         CONFIG_DEBUG               1

/**
 预发布
 */
#define         CONFIG_PRERELEASE          2

/**
 发布
 */
#define         CONFIG_RELEASE             3

#ifdef DEBUG
#define         environment         CONFIG_DEBUG
#elif PRERELEASE
#define         environment         CONFIG_PRERELEASE
#elif RELEASE
#define         environment         CONFIG_RELEASE
#endif

#if environment == CONFIG_DEBUG
//开发环境
#define         HOST        @""

#elif environment == CONFIG_PRERELEASE
//预发布环境
#define         HOST        @""

#elif environment == CONFIG_RELEASE
//正式环境
#define         HOST        @""

#else
//未知的打包方式
#define         HOST        @""
#endif

#endif /* AIEnvironment_h */
