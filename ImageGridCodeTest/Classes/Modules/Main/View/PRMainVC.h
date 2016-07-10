//
//  PRMainVC.h
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRMainView.h"

@interface PRMainVC : UIViewController <PRMainView>

@property (nonatomic, strong) id<PRMainEventHandler> presenter;

@end
