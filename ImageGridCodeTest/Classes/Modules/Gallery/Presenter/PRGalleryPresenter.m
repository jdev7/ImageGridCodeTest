//
//  PRGalleryPresenter.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRGalleryPresenter.h"
#import <Objection/Objection.h>
#import "PRGalleryView.h"

@implementation PRGalleryPresenter

objection_requires(@"interactor")

- (void)awakeFromObjection {
    self.interactor.output = self;
}

- (void)updateView {
    [self.view showLoading];
    [self.interactor loadImages];
}

- (void)setImagesURLs:(NSArray *)imagesURLs {
    [self.view showImages:imagesURLs];
    [self.view stopLoading];
}


@end
