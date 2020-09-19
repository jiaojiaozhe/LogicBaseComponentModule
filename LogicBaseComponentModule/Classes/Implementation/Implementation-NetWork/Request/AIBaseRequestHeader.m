//
//  AIBaseRequestHeader.m
//  AiParkToC
//
//  Created by lanbiao on 2018/8/1.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

//device
#import "AIAppInfo.h"
#import "AIDeviceInfo.h"
#import "AIBaseRequestHeader.h"

@interface AIBaseRequestHeader()

/**
 接口请求token，未登录为空
 */
@property (nonatomic,strong) NSString *token;

/**
 接口请求当前用户id，未登录为nil
 */
@property (nonatomic,strong) NSString *userId;

/**
 接口请求的app版本号
 */
@property (nonatomic,strong) NSString *appVersion;

/**
 接口请求的手机操作系统版本号
 */
@property (nonatomic,strong) NSString *osVersion;

/**
 接口请求的机器型号
 */
@property (nonatomic,strong) NSString *device;


/**
 接口请求来源：ios|android
 */
@property (nonatomic,strong) NSString *source;

/**
 接口请求的app渠道号
 */
@property (nonatomic,strong) NSString *channel;

/**
 接口请求的app所在设备的唯一设备标识
 */
@property (nonatomic,strong) NSString *clientID;
@end

@implementation AIBaseRequestHeader

- (instancetype) init{
    if(self = [super init]){
        [self initData];
    }
    return self;
}

- (void) initData{
    //    self.token = [[AIDataManager shareDataManager] getToken];
    //    self.userId = [[AIDataManager shareDataManager] getCurrUser].ID;
    
    self.appVersion = [AIAppInfo getAppVersion];
    self.osVersion = [AIDeviceInfo getOSVersion];
    self.device = [AIDeviceInfo machineModel];
    self.source = @"ios";
    self.channel = [AIAppInfo getFromSource];
    self.clientID = [AIDeviceInfo getDeviceIDFA];
}
@end
