//
//  PRGalleryEventHandler.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PRGalleryView;

@protocol PRGalleryEventHandler <NSObject>

@property (weak, nonatomic) id<PRGalleryView> view;
- (void)updateView;

@end
