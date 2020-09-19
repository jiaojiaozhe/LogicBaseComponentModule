//
//  AIBaseRequest.m
//  AiParkToC
//
//  Created by lanbiao on 2018/8/1.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import "AIBaseRequest.h"
#import "AINetInterFace.h"

@interface AIBaseRequest()

/**
 接口请求token，未登录为空
 */
@property (nonatomic,strong) NSString *token;

/**
 接口请求当前用户id，未登录为nil
 */
@property (nonatomic,strong) NSString *userId;

@end

@implementation AIBaseRequest

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    NSMutableDictionary *propertys = [NSMutableDictionary dictionaryWithDictionary:[super JSONKeyPathsByPropertyKey]];
    [propertys removeObjectForKey:@"header"];
    [propertys removeObjectForKey:kCommand];
    return propertys;
}

- (instancetype) init{
    if(self = [super init]){
        [self initData];
    }
    return self;
}

- (instancetype) initWithCommand:(NSString *) command
                            data:(AIBaseModel *) data{
    if(self = [super init]){
        [self initData];
        self.command = command;
        self.data = data;
    }
    return self;
}

- (void) initData{
//    self.token = [[AIDataManager shareDataManager] getToken];
//    self.userId = [[AIDataManager shareDataManager] getCurrUser].ID;
}
@end
