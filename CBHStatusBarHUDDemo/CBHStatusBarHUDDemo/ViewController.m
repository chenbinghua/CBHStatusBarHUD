//
//  ViewController.m
//  CBHStatusBarHUDDemo
//
//  Created by chenbinghua on 04/08/15.
//  Copyright (c) 2015年 chenbinghua. All rights reserved.
//

#import "ViewController.h"
#import "CBHStatusBarHUD.h"

@interface ViewController ()

@end


@implementation ViewController
- (IBAction)success:(id)sender {
    [CBHStatusBarHUD showSuccess:@"成功了"];
}
- (IBAction)fail:(id)sender {
}
- (IBAction)load:(id)sender {
}
- (IBAction)hide:(id)sender {
}
- (IBAction)normal:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
