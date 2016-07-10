//
//  PRGalleryInteractor.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRGalleryInteractorInput.h"
#import "PRImagesService.h"

@interface PRGalleryInteractor : NSObject<PRGalleryInteractorInput>

@property (nonatomic, weak) id<PRGalleryInteractorOutput> output;
@property (nonatomic, strong) id<PRImagesService> imageService;

@end
