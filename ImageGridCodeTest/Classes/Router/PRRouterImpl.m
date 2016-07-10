//
//  PRRouterImpl.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRRouterImpl.h"
#import "PRStoryBoard.h"

@interface PRRouterImpl ()

@property (nonatomic, strong) UIStoryboard *storyboard;
@property (nonatomic, strong) UIViewController *rootViewController;

@end

@implementation PRRouterImpl

- (instancetype)init {
    self = [super init];
    if (self) {
        _storyboard = [PRStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    return self;
}

- (void)navigateToMainWithWindow:(UIWindow *)window {
    self.rootViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainNavigationControllerID"];
    window.rootViewController = self.rootViewController;
}
@end
