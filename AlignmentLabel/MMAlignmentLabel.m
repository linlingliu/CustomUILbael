//
//  MMAlignmentLabel.m
//  UIDemo
//
//  Created by LX on 2018/12/17.
//  Copyright © 2018 LX. All rights reserved.
//

#import "MMAlignmentLabel.h"

@implementation MMAlignmentLabel

- (instancetype)initWithFrame:(CGRect)frame {
    if (self  = [super initWithFrame:frame]) {
        self.alignmentStyle = MMAlignmentStyleTop;
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.alignmentStyle = MMAlignmentStyleTop;
}

- (void)setAlignmentStyle:(MMAlignmentStyle)alignmentStyle {
    _alignmentStyle = alignmentStyle;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    if (self.alignmentStyle == MMAlignmentStyleTop) {
        textRect.origin.y = bounds.origin.y;
    }else if (self.alignmentStyle == MMAlignmentStyleMiddle) {
        textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height)/2.0;
    }else {
        textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
    }
    return textRect;
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect result = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:result];
}
@end
