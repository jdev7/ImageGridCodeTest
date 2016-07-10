//
//  PRMainPresenter.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRMainEventHandler.h"
#import "PRRouter.h"

@interface PRMainPresenter : NSObject<PRMainEventHandler>

@property (weak, nonatomic) id<PRMainView> view;
@property (nonatomic, strong) id<PRRouter> router;

@end
