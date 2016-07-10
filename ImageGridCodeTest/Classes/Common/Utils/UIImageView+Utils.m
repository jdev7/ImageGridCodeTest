//
//  UIImageView+Utils.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "UIImageView+Utils.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation UIImageView (Utils)

- (void)loadImageInBackground:(NSString *)imageUrl
                   completion:(void(^)())completion {
    NSURL *url = [NSURL URLWithString:imageUrl];
    [self sd_setImageWithURL:url completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (error) {
            NSLog(@"Error: %@", imageUrl);
        }
        self.image = image;
        if (completion) {
            completion();
        }
    }];
}

@end
