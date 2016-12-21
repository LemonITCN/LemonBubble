//
//  RoundFunctionButton.m
//  LemonBubble
//
//  Created by 刘日 on 2016/12/18.
//  Copyright © 2016年 1em0nsOft. All rights reserved.
//

#import "RoundFunctionButton.h"

#define PADDING 14

@implementation RoundFunctionButton

- (instancetype)initWithWidth: (CGFloat)width
                            x: (CGFloat)x
                            y: (CGFloat)y{
    if (self = [super initWithFrame: CGRectMake(x, y, width, width)]) {
        CGFloat iconWidth = width / 5 * 3;
        CGFloat iconX = (width - iconWidth) / 2;
        self.iconView = [[UIImageView alloc] initWithFrame: CGRectMake(iconX, PADDING, iconWidth, iconWidth)];
        self.iconView.contentMode = UIViewContentModeScaleAspectFit;
        CGFloat titleY = PADDING + 4 + iconWidth;
        CGFloat titleHeight = width - PADDING * 2 - iconWidth;
        CGFloat titleWidth = width - PADDING * 2;
        self.titleLabel = [[UILabel alloc] initWithFrame: CGRectMake(PADDING, titleY, titleWidth, titleHeight)];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize: 11];
        self.layer.borderWidth = 1;
        self.layer.borderColor = [UIColor colorWithRed: 0.7 green: 0.7 blue:0.7 alpha: 0.7].CGColor;
        self.layer.cornerRadius = PADDING;
        [self addSubview: self.iconView];
        [self addSubview: self.titleLabel];
    }
    return self;
}

- (void)setTitle: (NSString *)title
           image: (UIImage *)image{
    self.titleLabel.text = title;
    self.iconView.image = image;
}

@end
