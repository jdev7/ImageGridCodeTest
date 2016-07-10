//
//  PRGalleryPresenter.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRGalleryEventHandler.h"
#import "PRGalleryInteractorOutput.h"

@interface PRGalleryPresenter : NSObject <PRGalleryEventHandler, PRGalleryInteractorOutput>

@property (nonatomic, weak) id<PRGalleryView> view;
@property (nonatomic, strong) id<PRGalleryInteractorInput> interactor;

@end
