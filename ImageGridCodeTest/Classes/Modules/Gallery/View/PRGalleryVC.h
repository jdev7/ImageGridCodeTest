//
//  PRGalleryVC.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRGalleryView.h"

@interface PRGalleryVC : UIViewController<PRGalleryView>

@property (nonatomic, strong) id<PRGalleryEventHandler> presenter;

@end
