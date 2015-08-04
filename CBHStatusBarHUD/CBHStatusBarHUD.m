//
//  CBHStatusBarHUD.m
//  CBHStatusBarHUD
//
//  Created by chenbinghua on 02/08/15.
//  Copyright (c) 2015年 chenbinghua. All rights reserved.
//

#import "CBHStatusBarHUD.h"


/** 消息的停留时间 */
static CGFloat const XMGMessageDuration = 2.0;
/** 消息显示\隐藏的动画时间 */
static CGFloat const XMGAnimationDuration = 0.25;

@implementation CBHStatusBarHUD


/** 全局的窗口 */
static UIWindow *window_;
/** 定时器 */
static NSTimer *timer_;

#pragma mark - private
/**
 * 显示窗口
 */
+ (void)showWindow
{
    // frame数据
    CGFloat windowH = 20;
    CGRect frame = CGRectMake(0, - windowH, [UIScreen mainScreen].bounds.size.width, windowH);
    
    // 显示窗口,显示窗口前隐藏上次出现的窗口
    window_.hidden = YES;
    window_ = [[UIWindow alloc] init];
    window_.backgroundColor = [UIColor blackColor];
    window_.windowLevel = UIWindowLevelAlert;
    window_.frame = frame;
    window_.hidden = NO;
    
    // 动画
    frame.origin.y = 0;
    [UIView animateWithDuration:XMGAnimationDuration animations:^{
        window_.frame = frame;
    }];
}

#pragma mark - public
+ (void)showMessage:(NSString *)msg withImage:(UIImage *)image{
    // 停止显示器
    [timer_ invalidate];
    
    // 显示窗口
    [self showWindow];
    
    // 添加按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:msg forState:UIControlStateNormal];
//    button.titleLabel.font =
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
    }
    
    button.frame = window_.bounds;
    [window_ addSubview:button];
    
    // 定时器
    timer_ = [NSTimer scheduledTimerWithTimeInterval:XMGMessageDuration target:self selector:@selector(hide) userInfo:nil repeats:NO];
}

+ (void)showSuccess:(NSString *)msg{
    [self showMessage:msg withImage:nil];
}

/**
 * 隐藏
 */
+ (void)hide
{
    [UIView animateWithDuration:XMGAnimationDuration animations:^{
        CGRect frame = window_.frame;
        frame.origin.y =  - frame.size.height;
        window_.frame = frame;
    } completion:^(BOOL finished) {
        window_ = nil;
        timer_ = nil;
    }];
}

@end



















