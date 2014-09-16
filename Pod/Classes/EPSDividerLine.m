//
//  EPSDividerLine.m
//  EPSDividerLine
//
//  Created by Peter Stuart on 9/16/14.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "EPSDividerLine.h"

@implementation EPSDividerLine

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self == nil) return nil;
    
    [self setup];
    
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setup];
}

- (void)setup {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.backgroundColor = [UIColor colorWithRed:0.784 green:0.78 blue:0.8 alpha:1];
    
    [self setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
}

- (CGSize)intrinsicContentSize {
    CGFloat height = 1.0 / [[UIScreen mainScreen] scale];
    return CGSizeMake(UIViewNoIntrinsicMetric, height);
}

@end
