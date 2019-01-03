//
//  PlaceholderTextView.m
//  UIDemo
//
//  Created by LX on 2018/12/17.
//  Copyright © 2018 LX. All rights reserved.
//

#import "PlaceholderTextView.h"

@implementation PlaceholderTextView {
    BOOL shouldDrawPlaceholder;
}

- (void)setText:(NSString *)text {
    super.text = text;
    [self updateShouldDrawPlaceholder];
}

- (void)setPlaceholder:(NSString *)placeholder {
    if ([placeholder isEqualToString:_placeholder]) {
        return;
    }
    _placeholder = placeholder;
    [self updateShouldDrawPlaceholder];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:self];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    if (shouldDrawPlaceholder) {
        //[_placeholderColor set];
        NSMutableDictionary *attributeDictionary = @{}.mutableCopy;
        if (_placeholderColor) {
            attributeDictionary[NSForegroundColorAttributeName] = _placeholderColor;
        }
        if (self.font) {
            attributeDictionary[NSFontAttributeName] = self.font;
        }
        [_placeholder drawInRect:CGRectMake(8.0f, 8.0f, self.frame.size.width - 16.0f, self.frame.size.height - 16.0f) withAttributes:attributeDictionary];
    }
}
#pragma mark -
#pragma mark private Method

- (void)initialize {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChange:) name:UITextViewTextDidChangeNotification object:self];
    self.placeholderColor = [UIColor colorWithWhite:0.702f alpha:1.0f];
    shouldDrawPlaceholder = NO;
}

- (void)updateShouldDrawPlaceholder {
    BOOL before = shouldDrawPlaceholder;
    shouldDrawPlaceholder = self.placeholder && self.placeholderColor && self.text.length ==0;
    if (before !=shouldDrawPlaceholder) {
        [self setNeedsDisplay];
    }
}
- (void)textChange:(NSNotification *)notification {
    [self updateShouldDrawPlaceholder];
}

@end
