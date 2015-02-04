//
//  StudentCollectionViewDatasource.m
//  PairRandomizer
//
//  Created by Caleb Hicks on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "StudentCollectionViewDatasource.h"

@implementation StudentCollectionViewDatasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSMutableArray *) pairOfStudentsFromStudentOne
{
    NSMutableArray *listOfStudents = [NSMutableArray arrayWithArray:@[@"Parker", @"Ethan", @"Jason", @"Paul", @"David", @"Christian", @"Gamma", @"Wagner", @"Ryan", @"Cal", @"Shawn", @"Ross", @"Gabe", @"Julien", @"Jake", @"Jordan", @"Trace"]];
    
    return listOfStudents;
}

- (NSMutableArray *) shuffleArray
{
    
    for (int i=0; i < [[self pairOfStudentsFromStudentOne] count]; i++) {
        
        int rndValue = 1 + arc4random() % ([[self pairOfStudentsFromStudentOne] count] - 1);
        [[self pairOfStudentsFromStudentOne] replaceObjectAtIndex:rndValue withObject: [[self pairOfStudentsFromStudentOne] objectAtIndex:rndValue]];
    }
    
    return [self pairOfStudentsFromStudentOne];
}

@end
