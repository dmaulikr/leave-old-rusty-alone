//
//  Created by Russell Ivanovic on 30 Oct 2013.
//  Copyright 2013 Shifty Jelly. All rights reserved.
//

#import "SJViewController.h"
#import "SJTestCell.h"

@interface SJViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *testCollectionView;

@end

@implementation SJViewController

static NSString *CellId = @"SJTestCell";
- (void)viewDidLoad{
    [super viewDidLoad];
	
    [_testCollectionView registerNib:[UINib nibWithNibName:@"SJTestCell" bundle:nil] forCellWithReuseIdentifier:CellId];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 200;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SJTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellId forIndexPath:indexPath];
    [cell configure];

    return cell;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
