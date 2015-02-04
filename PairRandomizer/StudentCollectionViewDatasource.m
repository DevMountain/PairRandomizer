//
//  StudentCollectionViewDatasource.m
//  PairRandomizer
//
//  Created by Caleb Hicks on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "StudentCollectionViewDatasource.h"
#import "StudentCollectionViewCell.h"

@interface StudentCollectionViewDatasource ()

@property (strong, nonatomic) UICollectionView *collectionView;

@end

@implementation StudentCollectionViewDatasource

- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    self.collectionView = collectionView;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 18;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    StudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"studentCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.item];
    
    return cell;
}

@end
