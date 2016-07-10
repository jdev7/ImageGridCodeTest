//
//  PRGalleryInteractorOutput.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PRGalleryInteractorOutput <NSObject>

@property (nonatomic, strong) id<PRGalleryInteractorInput> interactor;

- (void)setImagesURLs:(NSArray *)imagesURLs;

@end
