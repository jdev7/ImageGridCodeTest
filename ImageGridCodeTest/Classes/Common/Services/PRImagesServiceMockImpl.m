//
//  PRImagesServiceMockImpl.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRImagesServiceMockImpl.h"
#import "PRImageMeta.h"

@implementation PRImagesServiceMockImpl

- (void) getImagesWithSuccess:(PRImagesServiceSuccessBlock)success
                         fail:(PRImagesServiceFailBlock) fail {
    
    NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:@"images" ofType:@"json"];
    NSData *jsonData = [NSData dataWithContentsOfFile:filePath];
    NSError *parsingError;
    NSArray *images = [PRImageMeta arrayOfModelsFromData:jsonData error:&parsingError];
    if (fail && parsingError) {
        fail(parsingError);
    }
    else if (success) {
        success(images);
    }
}


@end
