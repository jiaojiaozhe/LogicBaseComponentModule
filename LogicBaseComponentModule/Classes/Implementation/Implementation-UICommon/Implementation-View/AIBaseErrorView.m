//
//  AIBaseErrorView.m
//  AiParkToC
//
//  Created by lanbiao on 2018/8/5.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import "ModuleBundle.h"
#import "AIBaseErrorView.h"

@interface AIBaseErrorView()
@property (nonatomic,strong) IBOutlet UILabel *errorTipLabel;
@property (nonatomic,strong) IBOutlet UIButton *retryBtn;
@end

@implementation AIBaseErrorView

+ (id<XIBaseErrorViewDelegate>) createErrorView{
    AIBaseErrorView *errorView = (AIBaseErrorView*)[ModuleBundle viewWithXibFileName:NSStringFromClass([self class]) bundleName:@"LogicBaseComponentModule"];
    return errorView;
}

- (IBAction) retryClick:(id) sender{
    if(self.retryDelegate &&
       [self.retryDelegate respondsToSelector:@selector(retryError)]){
        [self.retryDelegate retryError];
    }
}

- (void) initView{
    //ToDo:业务实现
}

- (void) visibleErrorView:(BOOL) bError{
    if(!bError){
        [self setHidden:YES];
        [self.errorTipLabel setHidden:YES];
        [self.retryBtn setHidden:YES];
        [self.errorTipLabel setText:@"请求成功."];
    }else{
        [self setHidden:NO];
        [self.errorTipLabel setHidden:NO];
        [self.retryBtn setHidden:NO];
        [self.errorTipLabel setText:@"请求出错"];
    }
}

@end
