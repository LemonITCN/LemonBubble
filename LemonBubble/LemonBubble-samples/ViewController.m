//
//  ViewController.m
//  LemonBubble-samples
//
//  Created by 刘日 on 2016/12/17.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import "ViewController.h"
#import "LemonBubble.h"

#define COLUMN_COUNT 2
#define PADDING 8

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (RoundFunctionButton *)createWithIndex: (NSInteger)index{
    CGFloat width = ([UIScreen mainScreen].bounds.size.width - (COLUMN_COUNT + 1) * PADDING) / 2;
    CGFloat x = PADDING + (index % COLUMN_COUNT * (PADDING + width));
    CGFloat y = PADDING + (index / COLUMN_COUNT * (PADDING + width));
    return [[RoundFunctionButton alloc] initWithWidth: width x: x y: y];
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
