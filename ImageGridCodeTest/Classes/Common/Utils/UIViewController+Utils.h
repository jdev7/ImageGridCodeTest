//
//  UIViewController+Utils.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 11/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Utils)

- (void)showErrorAlertWithMessage:(NSString *)message;
- (void)showLoading;
- (void)stopLoading;

@end
