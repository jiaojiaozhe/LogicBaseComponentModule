//
//  AIBaseViewController.m
//  AiParkToC
//
//  Created by lanbiao on 2018/8/11.
//  Copyright © 2018年 lanbiao. All rights reserved.
//

#import "AIBaseViewController.h"

@interface AIBaseViewController ()
@property (nonatomic,strong) UIButton *leftBtn;
@property (nonatomic,strong) UILabel *titleLabel;
@end

@implementation AIBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat version = [[[UIDevice currentDevice] systemVersion] floatValue];
    if(version >= 7.0){
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
        if(@available(iOS 11.0, *)){
            //self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }else{
            //11.0以后的OS需要设置ScrollView的contentInsetAdjustmentBehavior
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)getHeadLeftView {
    UIImage *image = [UIImage imageNamed:@"back"];
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 88, 44)];
    leftView.backgroundColor = [UIColor whiteColor];
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setImage:image forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(onGoBack) forControlEvents:UIControlEventTouchUpInside];
    [leftView addSubview:leftBtn];
    self.leftBtn = leftBtn;
    
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(leftView.mas_left).offset(16);
        make.centerY.mas_equalTo(leftView.mas_centerY);
        make.width.mas_equalTo(@(image.size.width));
        make.height.mas_equalTo(@(image.size.height));
    }];
    return leftView;
}

- (UIView *)getHeadCenterView{
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 44)];
    centerView.backgroundColor = [UIColor whiteColor];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    titleLabel.font = [UIFont systemFontOfSize:18];
    [centerView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(centerView.mas_centerX);
        make.centerY.mas_equalTo(centerView.mas_centerY);
    }];
    
    return centerView;
}

- (UIView *)getHeadRightView{
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 88, 44)];
    rightView.backgroundColor = [UIColor whiteColor];
    return rightView;
}

- (UIView *) defaultHeadAreaView{
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 88, 44)];
    return leftView;
}

- (void) onGoBack{
    //[[AIPageControlManager sharePageControlManager] popViewControllerOnTab:YES];
}

- (void)setTitle:(NSString *)title{
    self.titleLabel.text = title;
}
@end
