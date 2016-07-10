//
//  PRImageMeta.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRImageMeta.h"

@implementation PRImageMeta

+(JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"post_url": @"imageUrl"
                                                       }];
}

@end
