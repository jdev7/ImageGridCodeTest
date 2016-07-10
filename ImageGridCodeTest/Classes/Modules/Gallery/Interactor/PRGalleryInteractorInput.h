//
//  PRGalleryInteractorInput.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PRGalleryInteractorOutput;

@protocol PRGalleryInteractorInput <NSObject>

@property (nonatomic, weak) id<PRGalleryInteractorOutput> output;
- (void)loadImages;

@end
