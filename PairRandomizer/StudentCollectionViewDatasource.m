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
@property (strong, nonatomic) NSArray *students;

@end

@implementation StudentCollectionViewDatasource

- (StudentCollectionViewDatasource *)init {
    self = [super init];
    if (self) {
        [self randomStudentList];
    }
    return self;
}

- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    self.collectionView = collectionView;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 18;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    StudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"studentCell" forIndexPath:indexPath];
    
    [cell configureCellWithName:self.students[indexPath.item]];
        
    return cell;
}

- (void)randomStudentList
{
    NSMutableArray *array = [NSMutableArray arrayWithArray: @[@"Cole", @"Daniel D", @"Daniel P", @"Doug", @"Gamaliel", @"Jon", @"Justin H", @"Justin O", @"Kim", @"Parker", @"Thomas", @"Savira", @"Warren", @"Andrew", @"Austin", @"Bradley", @"Egan", @"Mark", @"Michael", @"Peter", @"Sarah", @"Mentor"]];
    
    self.students = [self shuffleArray:array];
}

- (NSArray *)shuffleArray:(NSMutableArray *)array
{
    NSUInteger count = [array count];
    for (NSUInteger i = 0; i < count; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [array exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    return array;
}

- (void)randomizeAndReload {
    [self randomStudentList];
    [self.collectionView reloadData];
}


@end
