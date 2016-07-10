//
//  PRImagesService.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^PRImagesServiceSuccessBlock)(id response);
typedef void (^PRImagesServiceFailBlock)(NSError *fail);

@protocol PRImagesService <NSObject>

- (void) getImagesWithSuccess:(PRImagesServiceSuccessBlock)success
                         fail:(PRImagesServiceFailBlock) fail;

@end
