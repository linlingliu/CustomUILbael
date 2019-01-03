//
//  PlaceholderTextView.h
//  UIDemo
//
//  Created by LX on 2018/12/17.
//  Copyright © 2018 LX. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlaceholderTextView : UITextView

//default nil
@property (nonatomic, copy) NSString *placeholder;

//default lightGrayColor
@property (nonatomic, strong) UIColor *placeholderColor;

@end

NS_ASSUME_NONNULL_END
