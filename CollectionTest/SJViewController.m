//
//  Created by Russell Ivanovic on 30 Oct 2013.
//  Copyright 2013 Shifty Jelly. All rights reserved.
//

#import "SJViewController.h"
#import "SJTestCell.h"

@interface SJViewController () <UICollectionViewDataSource, UICollectionViewDelegate>{
    int cellsRequested;
}

@property (weak, nonatomic) IBOutlet UICollectionView *testCollectionView;
@end

@implementation SJViewController

static NSString *CellId = @"SJTestCell";
- (void)viewDidLoad{
    [super viewDidLoad];
	
    cellsRequested = 0;
    [_testCollectionView registerNib:[UINib nibWithNibName:@"SJTestCell" bundle:nil] forCellWithReuseIdentifier:CellId];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 200;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SJTestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellId forIndexPath:indexPath];
    
    if (cellsRequested > 100){
        while (true){
//            NSLog(@"imma burn your CPU. Happy now?");
        }
    }
    else {
        cellsRequested++;
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

@end
