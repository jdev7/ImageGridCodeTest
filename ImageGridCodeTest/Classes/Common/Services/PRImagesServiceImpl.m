//
//  PRImagesServiceImpl.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRImagesServiceImpl.h"
#import <AFNetworking/AFNetworking.h>
#import "PRImageMeta.h"

static NSString *const kBaseURL = @"https://unsplash.it";
static NSString *const kImageListURL = @"/list";

@implementation PRImagesServiceImpl

- (id)init {
    self = [super init];
    if (self) {
        self.baseUri = kBaseURL;
    }
    return self;
}

- (void) getImagesWithSuccess:(PRImagesServiceSuccessBlock)success
                         fail:(PRImagesServiceFailBlock) error {
    
    NSString *url = [self.baseUri stringByAppendingString:kImageListURL];
    [self getUrl:url parametersInURL:nil success:^(id response) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSError *parsingError;
            NSArray *images = [PRImageMeta arrayOfModelsFromDictionaries:response error:&parsingError];
            dispatch_async(dispatch_get_main_queue(), ^{
                if (error && parsingError) {
                    error(parsingError);
                }
                else if (success) {
                    success(images);
                }
            });
        });
        
    } fail:error];
    
}

#pragma mark - GET

- (void)getUrl:(NSString *)urlString parametersInURL:(NSDictionary *)parametersInURL success:(PRImagesServiceSuccessBlock)success fail:(PRImagesServiceFailBlock)fail {
    [self doRequestWithURLString:urlString actionVerb:@"GET" body:nil parametersInURL:parametersInURL success: ^(id response) {
        success(response);
    } failure: ^(NSError *error) {
        fail(error);
    }];
}



- (void)doRequestWithURLString:(NSString *)urlString actionVerb:(NSString *)verb body:(NSData *)body parametersInURL:(NSDictionary *)parametersInURL
                       success:(PRImagesServiceSuccessBlock)success failure:(PRImagesServiceFailBlock)failure {

    
    AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
    
    serializer.HTTPMethodsEncodingParametersInURI = [NSSet setWithObjects:@"GET", @"POST", @"PUT", @"DELETE", nil];
    NSMutableURLRequest *request = [serializer requestWithMethod:verb URLString:urlString parameters:parametersInURL error:nil];
    
    NSLog(@"%@ to: %@", verb, request.URL.absoluteString);
    
    [request setValue:@"utf-8" forHTTPHeaderField:@"Accept-Encoding"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSLog(@"REQUEST HEADERS:: %@", [request allHTTPHeaderFields]);
    
    if (body) {
        //AFJSONrequestserializer will not specify content-type beacuse of custom body and parametters added in url
        NSString *charset = (__bridge NSString *)CFStringConvertEncodingToIANACharSetName(CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
        [request setValue:[NSString stringWithFormat:@"application/json; charset=%@", charset] forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:body];
    }
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = serializer;
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if(error) {
            failure(error);
        } else {
            success(responseObject);
        }
    }];
    [dataTask resume];
}

@end
