//
//  CBHStatusBarHUD.h
//  CBHStatusBarHUD
//
//  Created by chenbinghua on 02/08/15.
//  Copyright (c) 2015年 chenbinghua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBHStatusBarHUD : NSObject

/** 显示文字和图片  */
+ (void)showMessage:(NSString *)msg withImage:(UIImage *)image;

/** 显示普通文字  */
+ (void)showMessage:(NSString *)msg;

/**
 * 显示成功信息
 */
+ (void)showSuccess:(NSString *)msg;
/**
 * 显示失败信息
 */
+ (void)showError:(NSString *)msg;
/**
 * 显示正在处理的信息
 */
+ (void)showLoading:(NSString *)msg;
/**
 * 隐藏
 */
+ (void)hide;

@end
