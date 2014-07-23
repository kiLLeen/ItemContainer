//
//  BNRContainer.h
//  RandomItems
//
//  Created by Neil Killeen on 7/22/14.
//  Copyright (c) 2014 Neil Killeen. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem {
    NSMutableArray *_items;
}

- (void)addObject:(BNRItem *)obj;
- (void)removeObject:(int)atIndex;

- (NSMutableArray *)items;

- (int)valueInDollars;

- (NSUInteger)count;

@end
