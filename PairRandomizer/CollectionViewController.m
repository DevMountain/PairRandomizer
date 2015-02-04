//
//  CollectionViewController.m
//  PairRandomizer
//
//  Created by Caleb Hicks on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CollectionViewController.h"
#import "StudentCollectionViewDatasource.h"

@interface CollectionViewController ()

@property (strong, nonatomic) IBOutlet StudentCollectionViewDatasource *datasource;

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"studentCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Programming Pairs!";
    
    self.datasource = [StudentCollectionViewDatasource new];
    
    [self.datasource registerCollectionView:self.collectionView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reload:(id)sender {
    [self.datasource randomizeAndReload];
}

@end
