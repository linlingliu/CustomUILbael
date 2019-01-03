//
//  PlaceholderTextField.m
//  UIDemo
//
//  Created by LX on 2018/12/17.
//  Copyright © 2018 LX. All rights reserved.
//

#import "PlaceholderTextField.h"

@implementation PlaceholderTextField

- (CGRect)placeholderRectForBounds:(CGRect)bounds {
    if (_placeholderColor) {
        CGFloat height = [self.placeholder boundingRectWithSize:CGSizeMake(bounds.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.font} context:nil].size.height;
        return CGRectMake(0, (bounds.size.height - height) / 2, bounds.size.width, bounds.size.height);
    }else{
        return [super placeholderRectForBounds:bounds];
    }
}

- (void)drawPlaceholderInRect:(CGRect)rect {
    if (_placeholderColor) {
        NSMutableDictionary *attributedDictionary = @{}.mutableCopy;
        attributedDictionary[NSForegroundColorAttributeName] = _placeholderColor;
        if (self.font) {
            attributedDictionary[NSFontAttributeName] = self.font;
        }
        [self.placeholder drawInRect:rect withAttributes:attributedDictionary];
    }else {
        [super drawPlaceholderInRect:rect];
    }
}

@end
