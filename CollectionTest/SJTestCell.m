//
//  Created by Russell Ivanovic on 30 Oct 2013.
//  Copyright 2013 Shifty Jelly. All rights reserved.
//

#import "SJTestCell.h"

@implementation SJTestCell

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"Created new cell");
    }
    return self;
}

- (void)dealloc{
    NSLog(@"Destroyed cell");
}

@end
