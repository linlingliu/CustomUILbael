//
//  LineLabel.h
//  UIDemo
//
//  Created by LX on 2018/11/15.
//  Copyright © 2018 LX. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LineLabelPosition){
    LineLabelPositionWithTop,
    LineLabelPositionWithCenter,
    LineLabelPositionWithBottom,
};

NS_ASSUME_NONNULL_BEGIN

@interface LineLabel : UILabel

@property (nonatomic, strong) UIColor *lineColor;  //default titleColor
@property (nonatomic, assign) CGFloat lineWidth; //default 1.0

- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;
- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

- (instancetype)initWithFrame:(CGRect)frame position:(LineLabelPosition)position NS_DESIGNATED_INITIALIZER ;

@end

NS_ASSUME_NONNULL_END
