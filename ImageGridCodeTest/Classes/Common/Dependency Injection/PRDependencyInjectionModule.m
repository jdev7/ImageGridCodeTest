//
//  PRDependencyInjectionModule.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRDependencyInjectionModule.h"
#import "PRRouterImpl.h"
#import "PRMainVC.h"
#import "PRMainPresenter.h"

@implementation PRDependencyInjectionModule

- (void)configure {
    //Main module
    [self bindClass:[PRMainVC class] toProtocol:@protocol(PRMainView)];
    [self bindClass:[PRMainPresenter class] toProtocol:@protocol(PRMainEventHandler)];
    
    //Router
    [self bindClass:[PRRouterImpl class] toProtocol:@protocol(PRRouter)];
    [self bindClass:[PRRouterImpl class] inScope:JSObjectionScopeSingleton];
    
}

@end
