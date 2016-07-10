//
//  PRMainVC.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRMainVC.h"
#import <Objection/Objection.h>

@implementation PRMainVC

objection_requires(@"presenter");

-(void)awakeFromObjection {
    self.presenter.view = self;
}

- (IBAction)openGalleryWasTouched:(id)sender {
    [self.presenter openGalleryTouched];
}


@end
