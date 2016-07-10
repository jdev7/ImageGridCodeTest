//
//  PRGalleryInteractor.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRGalleryInteractor.h"
#import "PRGalleryInteractorOutput.h"
#import <Objection/Objection.h>
#import "PRImageMeta.h"

@implementation PRGalleryInteractor
objection_requires(@"imageService");

- (void)loadImages {
    [self.imageService getImagesWithSuccess:^(id response) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSMutableArray *imageUrls = [NSMutableArray new];
            
            for (PRImageMeta *imageMeta in response) {
                [imageUrls addObject:imageMeta.imageUrl];
            }
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.output setImagesURLs:imageUrls];
            });
        });
        
    } fail:^(NSError *error) {
        NSLog(@"error: %@", error);
    }];
}

@end
