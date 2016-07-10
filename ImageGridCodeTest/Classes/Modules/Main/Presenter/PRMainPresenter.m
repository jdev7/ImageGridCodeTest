//
//  PRMainPresenter.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRMainPresenter.h"
#import <Objection/Objection.h>
#import "PRMainView.h"

@implementation PRMainPresenter

objection_requires(@"router");

- (void)openGalleryTouched {
    [self.router navigateToGallery];
}

@end
