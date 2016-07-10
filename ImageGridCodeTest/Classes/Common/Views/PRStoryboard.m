//
//  PRStoryboard.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRStoryboard.h"
#import <Objection/Objection.h>

@implementation PRStoryboard

- (id)instantiateViewControllerWithIdentifier:(NSString *)identifier {
    UIViewController *controller = [super instantiateViewControllerWithIdentifier:identifier];
    
    [[JSObjection defaultInjector] injectDependencies:controller];
    return controller;
}


@end
