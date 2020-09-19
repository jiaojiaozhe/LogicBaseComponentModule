//
//  AIDeviceInfo.m
//  AiParkToC
//
//  Created by lanbiao on 2019/6/20.
//  Copyright © 2019年 lanbiao. All rights reserved.
//

#import "AIDeviceInfo.h"

@implementation AIDeviceInfo
+ (NSString *) osVersion{
    return [[UIDevice currentDevice] systemVersion];
}

+ (BOOL) osVersionIsLater:(NSInteger)osVersion{
    return [self osVersion].floatValue >= osVersion;
}

+ (BOOL) isIPhone{
    return IS_IPHONE;
}

+ (BOOL) isIPad{
    return IS_IPAD;
}

+ (BOOL) isTouch{
    if(![self isIPhone])
        return NO;
    BOOL bITouch = NO;
    NSString *deviceName = [self machineModelName];
    if(![[deviceName lowercaseString] isEqualToString:[@"iPod touch" lowercaseString]]){
        bITouch = NO;
    }
    
    return bITouch;
}

+ (BOOL) isIPhoneXAfter {
    if(![self isIPhone])
        return NO;
    BOOL isPhoneXAfter =  SCREEN_HEIGHT / SCREEN_WIDTH > 2;
    return isPhoneXAfter;
}

+ (BOOL) isIPhoneXSMAX{
    if(![self isIPhone])
        return NO;
    BOOL isIPhoneXSMAX = (CGSizeEqualToSize(CGSizeMake(414.f, 896.f), [UIScreen mainScreen].bounds.size) ||
                          CGSizeEqualToSize(CGSizeMake(896.f, 414.f), [UIScreen mainScreen].bounds.size));
    
    return isIPhoneXSMAX;
}

+ (BOOL) isIPhoneXS{
    if(![self isIPhone])
        return NO;
    BOOL isPhoneXS = (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size));
    
    return isPhoneXS;
}

+ (BOOL) isIPhoneXR{
    if(![self isIPhone])
        return NO;
    BOOL isPhoneXR = (CGSizeEqualToSize(CGSizeMake(414.f, 896.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(896.f, 414.f), [UIScreen mainScreen].bounds.size));
    
    return isPhoneXR;
}

+ (BOOL) isIPhoneX{
    if(![self isIPhone])
        return NO;
    BOOL isPhoneX = (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size));
    
    return isPhoneX;
}

+ (BOOL) isIPhone8Plus{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone8Plus = (CGSizeEqualToSize(CGSizeMake(413.f, 736.f), [UIScreen mainScreen].bounds.size) ||
                         CGSizeEqualToSize(CGSizeMake(736.f, 413.f), [UIScreen mainScreen].bounds.size));
    if(isPhone8Plus){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 8 plus" lowercaseString]]){
            isPhone8Plus = NO;
        }
    }
    
    return isPhone8Plus;
}

+ (BOOL) isIPhone8{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone8 = (CGSizeEqualToSize(CGSizeMake(375.f, 667.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(667.f, 375.f), [UIScreen mainScreen].bounds.size));
    if(isPhone8){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 8" lowercaseString]]){
            isPhone8 = NO;
        }
    }
    
    return isPhone8;
}

+ (BOOL) isIPhone7Plus{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone7Plus = (CGSizeEqualToSize(CGSizeMake(413.f, 736.f), [UIScreen mainScreen].bounds.size) ||
                         CGSizeEqualToSize(CGSizeMake(736.f, 413.f), [UIScreen mainScreen].bounds.size));
    if(isPhone7Plus){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 7 plus" lowercaseString]]){
            isPhone7Plus = NO;
        }
    }
    
    return isPhone7Plus;
}

+ (BOOL) isIPhone7{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone7 = (CGSizeEqualToSize(CGSizeMake(375.f, 667.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(667.f, 375.f), [UIScreen mainScreen].bounds.size));
    if(isPhone7){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 7" lowercaseString]]){
            isPhone7 = NO;
        }
    }
    return isPhone7;
}

+ (BOOL) isIPhoneSE{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhoneSe = (CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size));
    if(isPhoneSe){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone SE" lowercaseString]]){
            isPhoneSe = NO;
        }
    }
    
    return isPhoneSe;
}

+ (BOOL) isIPhone6sPlus{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone6sPlus = (CGSizeEqualToSize(CGSizeMake(413.f, 736.f), [UIScreen mainScreen].bounds.size) ||
                          CGSizeEqualToSize(CGSizeMake(736.f, 413.f), [UIScreen mainScreen].bounds.size));
    if(isPhone6sPlus){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 6s plus" lowercaseString]]){
            isPhone6sPlus = NO;
        }
    }
    
    return isPhone6sPlus;
}

+ (BOOL) isIPhone6s{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone6s = (CGSizeEqualToSize(CGSizeMake(375.f, 667.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(667.f, 375.f), [UIScreen mainScreen].bounds.size));
    if(isPhone6s){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 6s" lowercaseString]]){
            isPhone6s = NO;
        }
    }
    return isPhone6s;
}

+ (BOOL) isIPhone6{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone6 = (CGSizeEqualToSize(CGSizeMake(375.f, 667.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(667.f, 375.f), [UIScreen mainScreen].bounds.size));
    if(isPhone6){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 6" lowercaseString]]){
            isPhone6 = NO;
        }
    }
    return isPhone6;
}

+ (BOOL) isIPhone6Plus{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone6Plus = (CGSizeEqualToSize(CGSizeMake(413.f, 736.f), [UIScreen mainScreen].bounds.size) ||
                         CGSizeEqualToSize(CGSizeMake(736.f, 413.f), [UIScreen mainScreen].bounds.size));
    if(isPhone6Plus){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 6 plus" lowercaseString]]){
            isPhone6Plus = NO;
        }
    }
    
    return isPhone6Plus;
}

+ (BOOL) isIPhone5S{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone5s = (CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size));
    if(isPhone5s){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 5S" lowercaseString]]){
            isPhone5s = NO;
        }
    }
    
    return isPhone5s;
}

+ (BOOL) isIPhone5C{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone5c = (CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size));
    if(isPhone5c){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 5C" lowercaseString]]){
            isPhone5c = NO;
        }
    }
    
    return isPhone5c;
}

+ (BOOL) isIPhone5{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone5 = (CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(320.f, 568.f), [UIScreen mainScreen].bounds.size));
    if(isPhone5){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 5" lowercaseString]]){
            isPhone5 = NO;
        }
    }
    
    return isPhone5;
}

+ (BOOL) isIPhone4S{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone4s = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    if(isPhone4s){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 4S" lowercaseString]]){
            isPhone4s = NO;
        }
    }
    
    return isPhone4s;
}

+ (BOOL) isIPhone4{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone4 = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    if(isPhone4){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 4" lowercaseString]]){
            isPhone4 = NO;
        }
    }
    
    return isPhone4;
}

+ (BOOL) isIPhone4Later{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone4 = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                     CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    return isPhone4;
}

+ (BOOL) isIPhone3GS{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone3GS = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                       CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    if(isPhone3GS){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 3GS" lowercaseString]]){
            isPhone3GS = NO;
        }
    }
    
    return isPhone3GS;
}

+ (BOOL) isIPhone3G{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone3G = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                      CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    if(isPhone3G){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 3G" lowercaseString]]){
            isPhone3G = NO;
        }
    }
    
    return isPhone3G;
}

+ (BOOL) isIPhone1G{
    if(![self isIPhone])
        return NO;
    
    BOOL isPhone = (CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size) ||
                    CGSizeEqualToSize(CGSizeMake(320.f, 480.f), [UIScreen mainScreen].bounds.size));
    if(isPhone){
        NSString *deviceName = [self machineModelName];
        if(![[deviceName lowercaseString] isEqualToString:[@"iPhone 1G" lowercaseString]]){
            isPhone = NO;
        }
    }
    
    return isPhone;
}

+ (BOOL) isSimulator{
#if TARGET_IPHONE_SIMULATOR  //模拟器
    return YES;
#elif TARGET_OS_IPHONE      //真机
    return NO;
#endif
}
@end
