//
//  PRMainView.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PRMainEventHandler.h"

@protocol PRMainView <NSObject>

@property (nonatomic, strong) id<PRMainEventHandler> presenter;

@end
