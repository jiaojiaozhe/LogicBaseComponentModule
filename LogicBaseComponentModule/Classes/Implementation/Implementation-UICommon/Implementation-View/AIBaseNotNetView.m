//
//  AIBaseNotNetView.m
//  AiParkToC
//
//  Created by lanbiao on 2018/8/5.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import "ModuleBundle.h"
#import "AIBaseNotNetView.h"

@interface AIBaseNotNetView()
@property (nonatomic,strong) IBOutlet UILabel *notNetLabel;
@property (nonatomic,strong) IBOutlet UIButton *retryBtn;
@end

@implementation AIBaseNotNetView

+ (id<XIBaseNotNetViewDelegate>) createNotNetView{
    AIBaseNotNetView *notNetView = (AIBaseNotNetView*)[ModuleBundle viewWithXibFileName:NSStringFromClass([self class]) bundleName:@"LogicBaseComponentModule"];
    return notNetView;
}

- (IBAction) retryClick:(id) sender{
    if(self.retryDelegate &&
       [self.retryDelegate respondsToSelector:@selector(retryNotNet:)]){
        [self.retryDelegate retryNotNet:YES];
    }
}

- (void) initView{
    //ToDO:业务实现
}

- (void) visibleNotNet:(BOOL) bNotNet{
    if(bNotNet){
        [self setHidden:NO];
        [self.notNetLabel setHidden:NO];
        [self.retryBtn setHidden:NO];
        [self.notNetLabel setText:@"无网."];
    }else{
        [self setHidden:YES];
        [self.notNetLabel setHidden:YES];
        [self.retryBtn setHidden:YES];
        [self.notNetLabel setText:@"有网络啊."];
    }
}

@end
