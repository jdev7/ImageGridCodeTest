//
//  UIImageView+Utils.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "UIImageView+Utils.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "UIView+Utils.h"

@implementation UIImageView (Utils)

- (void)loadImageInBackground:(NSString *)imageUrl {
    NSURL *url = [NSURL URLWithString:imageUrl];
    
    UIActivityIndicatorView *activityIndicator;
    if (!self.image) {
        activityIndicator = [self addActivityIndicator];
    }
    
    [activityIndicator startAnimating];
    [self sd_setImageWithURL:url completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        self.image = image;
        [activityIndicator stopAnimating];
    }];
}

- (UIActivityIndicatorView *)addActivityIndicator {
    UIActivityIndicatorView  *activityIndicator;
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    dispatch_async(dispatch_get_main_queue(), ^{
        [self addCenteredSubview:activityIndicator];
        [activityIndicator startAnimating];
    });
    return activityIndicator;
}

@end
