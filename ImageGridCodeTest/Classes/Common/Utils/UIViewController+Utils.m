//
//  UIViewController+Utils.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 11/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "UIViewController+Utils.h"
#import "UIView+Utils.m"

static NSInteger const kContainerViewTag = 10001;

@implementation UIViewController (Utils)

- (void)showErrorAlertWithMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)showLoading {
    UIView *containerView = [UIView new];
    containerView.tag = kContainerViewTag;
    containerView.backgroundColor = [UIColor blackColor];
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [self addSubviewConstrainedToSuperview:containerView];
    [containerView addCenteredSubview:spinner];
    
    spinner.color = [UIColor whiteColor];
    [spinner startAnimating];
}

- (void)stopLoading {
    UIView *containerView = [self.view viewWithTag:kContainerViewTag];
    [containerView removeFromSuperview];
}

-(void)addSubviewConstrainedToSuperview:(UIView *)view
{
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.0];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.topLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0];
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.bottomLayoutGuide attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    [self.view addConstraints:@[left, top, right, bottom]];
}

@end
