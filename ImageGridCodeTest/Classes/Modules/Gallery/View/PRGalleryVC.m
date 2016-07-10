//
//  PRGalleryVC.m
//  ImageGridCodeTest
//
//  Created by Juan Navas Martin on 10/07/16.
//  Copyright © 2016 Perhapps. All rights reserved.
//

#import "PRGalleryVC.h"
#import <Objection/Objection.h>
#import "PRImageCVCell.h"
#import "UIImageView+Utils.h"

@interface PRGalleryVC () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) IBOutlet UICollectionView *cvImages;
@property (nonatomic, strong) NSArray *imageURLs;

@end

@implementation PRGalleryVC
objection_requires(@"presenter");

- (void)awakeFromObjection {
    self.presenter.view = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cvImages.delegate = self;
    self.cvImages.dataSource = self;
    
    [self.presenter updateView];
}

- (void)showImages:(NSArray *)urls {
    self.imageURLs = urls;
}

#pragma mark - UICollectionView Datasource and Delegate Methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.imageURLs.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PRImageCVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID_IMAGE_CV_CELL forIndexPath:indexPath];
    
    NSString *url = self.imageURLs[indexPath.item];
    [cell.imageView loadImageInBackground:url];
    
    return cell;
}

@end
