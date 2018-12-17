//
//  LineLabel.m
//  UIDemo
//
//  Created by LX on 2018/11/15.
//  Copyright © 2018 LX. All rights reserved.
//

#import "LineLabel.h"

@interface LineLabel ()
{
    LineLabelPosition _position;
}
@end

@implementation LineLabel


- (instancetype)initWithFrame:(CGRect)frame position:(LineLabelPosition)position {
    if (self = [super initWithFrame:frame]) {
        _position = position;
    }
    return self;
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    if (!self.lineColor) {
        self.lineColor = self.textColor;
    }
    if (self.lineWidth == 0) {
        self.lineWidth = 1.0;
    }
    CGFloat offSetY ,offsetX;
    offsetX = 0;
    if (_position == LineLabelPositionWithTop) {
        offSetY = 2;
    }else if (_position == LineLabelPositionWithCenter){
        offSetY = self.frame.size.height / 2;
        offsetX = 4;
    }else{
        offSetY = self.frame.size.height - 2;
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);
    CGContextSetLineWidth(context, self.lineWidth);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, offsetX, offSetY);
    CGContextAddLineToPoint(context, self.frame.size.width, offSetY);
    CGContextStrokePath(context);
    [super drawRect:rect];
}


@end
