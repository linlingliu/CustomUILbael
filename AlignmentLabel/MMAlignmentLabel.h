//
//  MMAlignmentLabel.h
//  UIDemo
//
//  Created by LX on 2018/12/17.
//  Copyright © 2018 LX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, MMAlignmentStyle) {
    MMAlignmentStyleTop,
    MMAlignmentStyleMiddle,
    MMAlignmentStyleBottom,
} ;

@interface MMAlignmentLabel : UILabel

@property (nonatomic, assign) MMAlignmentStyle alignmentStyle;

@end

NS_ASSUME_NONNULL_END
