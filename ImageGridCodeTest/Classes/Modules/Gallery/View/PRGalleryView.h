//
//  PRGalleryView.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PRGalleryEventHandler.h"

@protocol PRGalleryView <NSObject>

@property (nonatomic, strong) id<PRGalleryEventHandler> presenter;
- (void)showImages:(NSArray *)urls;

@end
