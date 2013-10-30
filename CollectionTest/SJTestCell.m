//
//  Created by Russell Ivanovic on 30 Oct 2013.
//  Copyright 2013 Shifty Jelly. All rights reserved.
//

#import "SJTestCell.h"

static NSInteger SJTextCellInstancesCreated = 0;


@interface SJTestCell ()

@property (assign, atomic) NSInteger instanceNumber;

@property (strong, nonatomic) IBOutlet UILabel *instanceNumberLabel;

@end


@implementation SJTestCell

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        @synchronized([SJTestCell class])
        {
            _instanceNumber = SJTextCellInstancesCreated++;
            NSLog(@"Created new cell (instance number = %ld, instances created = %ld)", (long)_instanceNumber, (long)SJTextCellInstancesCreated);
        }
    }
    return self;
}

- (void)dealloc{
    NSLog(@"Destroyed cell (instance number = %ld)", (long)_instanceNumber);
}

- (void)configure{
    self.instanceNumberLabel.text = [NSString stringWithFormat:@"%ld", (long)self.instanceNumber];
}

@end
