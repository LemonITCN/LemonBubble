//
//  RoundFunctionButton.h
//  LemonBubble
//
//  Created by 刘日 on 2016/12/18.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoundFunctionButton : UIControl

/**
 图标视图
 */
@property (nonatomic , strong) UIImageView *iconView;
/**
 标题标签视图
 */
@property (nonatomic , strong) UILabel *titleLabel;

- (instancetype)initWithWidth: (CGFloat)width
                            x: (CGFloat)x
                            y: (CGFloat)y;

- (void)setTitle: (NSString *)title
           image: (UIImage *)image;

@end
