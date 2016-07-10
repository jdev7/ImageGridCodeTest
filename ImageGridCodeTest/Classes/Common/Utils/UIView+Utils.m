//
//  UIView+Utils.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "UIView+Utils.h"

@implementation UIView (Utils)

- (void)addCenteredSubview:(UIView *)subview {
    NSLayoutConstraint *centerX = [NSLayoutConstraint constraintWithItem:subview
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1.0
                                                                constant:0.0];
    NSLayoutConstraint *centerY = [NSLayoutConstraint constraintWithItem:subview
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1.0
                                                                constant:0.0];
    subview.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:subview];
    [self addConstraints:@[centerX, centerY]];
}

@end
