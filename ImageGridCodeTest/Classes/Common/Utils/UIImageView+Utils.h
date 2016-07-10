//
//  UIImageView+Utils.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Utils)

- (void)loadImageInBackground:(NSString *)imageUrl
                   completion:(void(^)())completion;

@end
