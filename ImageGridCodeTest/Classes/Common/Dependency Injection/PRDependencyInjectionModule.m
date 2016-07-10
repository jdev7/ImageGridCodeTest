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
#import "PRGalleryVC.h"
#import "PRGalleryPresenter.h"
#import "PRGalleryInteractor.h"
#import "PRImagesServiceImpl.h"
#import "PRImagesServiceMockImpl.h"


@implementation PRDependencyInjectionModule

- (void)configure {
    //Main module
    [self bindClass:[PRMainVC class] toProtocol:@protocol(PRMainView)];
    [self bindClass:[PRMainPresenter class] toProtocol:@protocol(PRMainEventHandler)];
    
    //Gallery module
    [self bindClass:[PRGalleryVC class] toProtocol:@protocol(PRGalleryView)];
    [self bindClass:[PRGalleryPresenter class] toProtocol:@protocol(PRGalleryEventHandler)];
    [self bindClass:[PRGalleryInteractor class] toProtocol:@protocol(PRGalleryInteractorInput)];
    
    //Router
    [self bindClass:[PRRouterImpl class] toProtocol:@protocol(PRRouter)];
    [self bindClass:[PRRouterImpl class] inScope:JSObjectionScopeSingleton];
    
    //Services
    [self bindClass:[PRImagesServiceMockImpl class] toProtocol:@protocol(PRImagesService)];
//    [self bindClass:[PRImagesServiceImpl class] toProtocol:@protocol(PRImagesService)];
    
}

@end
