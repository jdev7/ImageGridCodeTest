//
//  PRMainEventHandler.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PRMainView;

@protocol PRMainEventHandler <NSObject>

@property (weak, nonatomic) id<PRMainView> view;
- (void)openGalleryTouched;

@end
