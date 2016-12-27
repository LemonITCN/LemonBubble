//
//  ViewController.m
//  LemonBubble-samples
//
//  Created by 刘日 on 2016/12/17.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import "ViewController.h"
#import "LemonBubble.h"

#define COLUMN_COUNT 3
#define PADDING 8

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RoundFunctionButton *btn1 = [self createWithIndex: 0];
    [btn1 setTitle: @"成功的提示" image: [UIImage imageNamed: @"icon_right"]];
    [btn1 addTarget: self action: @selector(right) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn1];
    
    RoundFunctionButton *btn2 = [self createWithIndex: 1];
    [btn2 setTitle: @"失败的提示" image: [UIImage imageNamed: @"icon_error"]];
    [btn2 addTarget: self action: @selector(error) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn2];
    
    RoundFunctionButton *btn3 = [self createWithIndex: 2];
    [btn3 setTitle: @"等待的提示" image: [UIImage imageNamed: @"icon_wait"]];
    [btn3 addTarget: self action: @selector(wait) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn3];
    
    RoundFunctionButton *btn4 = [self createWithIndex: 3];
    [btn4 setTitle: @"在底部的提示" image: [UIImage imageNamed: @"icon_bottom"]];
    [btn4 addTarget: self action: @selector(bottom) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn4];
    
    RoundFunctionButton *btn5 = [self createWithIndex: 4];
    [btn5 setTitle: @"逐帧播放的提示" image: [UIImage imageNamed: @"icon_ppt"]];
    [btn5 addTarget: self action: @selector(ppt) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn5];
    
    RoundFunctionButton *btn6 = [self createWithIndex: 5];
    [btn6 setTitle: @"自定义图标的提示" image: [UIImage imageNamed: @"icon_icon"]];
    [btn6 addTarget: self action: @selector(icon) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn6];
}

- (RoundFunctionButton *)createWithIndex: (NSInteger)index{
    CGFloat width = ([UIScreen mainScreen].bounds.size.width - (COLUMN_COUNT + 1) * PADDING) / COLUMN_COUNT;
    CGFloat x = PADDING + (index % COLUMN_COUNT * (PADDING + width));
    CGFloat y = PADDING + (index / COLUMN_COUNT * (PADDING + width));
    return [[RoundFunctionButton alloc] initWithWidth: width x: x y: y];
}

- (void)right{
    LKRightBubble(@"这是一个成功的提示", 2);
}

- (void)error{
    LKErrorBubble(@"这是一个失败的提示", 2);
}

- (void)wait{
    LKWaitBubble(@"请求中...");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        LKRightBubble(@"请求成功", 1);
    });
}

- (void)bottom{
    LemonBubbleInfo *myInfo = [self getDefaultRoundProgressBubbleInfo];
    myInfo.locationStyle = BUBBLE_LOCATION_STYLE_BOTTOM;
    myInfo.layoutStyle = BUBBLE_LAYOUT_STYLE_ICON_LEFT_TITLE_RIGHT;
    myInfo.title = @"正在删除";
    myInfo.bubbleSize = CGSizeMake(200, 50);
    myInfo.proportionOfDeviation = 0.1;
    LKShowBubbleInfo(myInfo);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        LKRightBubble(@"删除成功", 2);
    });
}

- (void)ppt{
    LemonBubbleInfo *frameInfo = [[LemonBubbleInfo alloc] init];
    NSMutableArray<UIImage *> *icons = [[NSMutableArray alloc] init];
    for (int i = 1 ; i <= 8; i ++) {
        [icons addObject: [UIImage imageNamed: [NSString stringWithFormat: @"lkbubble%d.jpg" , i]]];
    }
    frameInfo.iconArray = icons;
    // 在数组中依次放入多张图片即可实现多图循环播放
    frameInfo.backgroundColor = [UIColor colorWithRed: 238 / 255.0 green:238 / 255.0 blue:238 / 255.0 alpha:1];
    // 动画的帧动画播放间隔
    frameInfo.frameAnimationTime = 0.15;
    frameInfo.title = @"正在加载中...";
    frameInfo.titleColor = [UIColor darkGrayColor];
    [[LemonBubbleView defaultBubbleView] showWithInfo: frameInfo];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        LKErrorBubble(@"加载失败", 2);
    });
}

- (void)icon{
    LemonBubbleInfo *iconInfo = [[LemonBubbleInfo alloc] init];
    // 把图标数组里面设置只有一张图片即可单图固定图标
    iconInfo.iconArray = @[[UIImage imageNamed: @"icon_icon"]];
    iconInfo.backgroundColor = [UIColor colorWithRed: 0.95 green:0.95 blue:0.95 alpha:1];
    iconInfo.titleColor = [UIColor darkGrayColor];
    iconInfo.locationStyle = BUBBLE_LOCATION_STYLE_TOP;
    iconInfo.layoutStyle = BUBBLE_LAYOUT_STYLE_ICON_LEFT_TITLE_RIGHT;
    iconInfo.title = @"飞行模式已开启";
    iconInfo.proportionOfDeviation = 0.05;
    iconInfo.bubbleSize = CGSizeMake(300, 60);
    LKShowBubbleInfoWithTime(iconInfo, 2);
}

@end
