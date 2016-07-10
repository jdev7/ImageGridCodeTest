//
//  PRNavigationDI.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRNavigationDI.h"
#import <Objection/Objection.h>

@implementation PRNavigationDI

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    [[JSObjection defaultInjector] injectDependencies:self.topViewController];
    return self;
}

@end
