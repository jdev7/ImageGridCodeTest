//
//  PRDependencyInjectionModule.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRDependencyInjectionModule.h"
#import "PRRouterImpl.h"

@implementation PRDependencyInjectionModule

- (void)configure {
    //Products module
//    [self bindClass:[ProductsVC class] toProtocol:@protocol(ProductsView)];
//    [self bindClass:[ProductsPresenter class] toProtocol:@protocol(ProductsEventHandler)];
//    [self bindClass:[ProductsInteractor class] toProtocol:@protocol(ProductsInteractorInput)];
    
    
    //Router
    [self bindClass:[PRRouterImpl class] toProtocol:@protocol(PRRouter)];
    [self bindClass:[PRRouterImpl class] inScope:JSObjectionScopeSingleton];
    
}

@end
