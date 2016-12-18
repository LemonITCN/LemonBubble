//
//  ViewController.m
//  LemonBubble-samples
//
//  Created by 刘日 on 2016/12/17.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import "ViewController.h"
#import "LemonBubble.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)hello:(UIButton *)sender {
    [self showRoundProgressWithTitle: @"oh!"];
	[self hideBubbleAfter:3];
}
- (IBAction)success:(UIButton *)sender {
	[self showRightWithTitle:@"我是一个成功提示框！" autoCloseTime:2];
}
- (IBAction)fail:(UIButton *)sender {
	[self showErrorWithTitle:@"我是一个错误提示框!" autoCloseTime:2];
}
@end
