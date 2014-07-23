//
//  BNRContainer.m
//  RandomItems
//
//  Created by Neil Killeen on 7/22/14.
//  Copyright (c) 2014 Neil Killeen. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
    
    if (self) {
        _items = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addObject:(BNRItem *)obj {
    [_items addObject:obj];
}

- (void)removeObject:(int)atIndex {
    [_items removeObjectAtIndex:atIndex];
}

- (NSMutableArray *)items {
    return _items;
}

- (NSUInteger)count {
    return _items.count;
}

- (int)valueInDollars {
    int total = [super valueInDollars];
    for (id item in _items) {
        total += [item valueInDollars];
    }
    return total;
}

- (NSString *)description {
    NSMutableString *descriptionString = [[NSMutableString alloc]
                                   initWithFormat:@"Container: %@ (%@): Worth %d, recorded on %@\nContains:\n",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueInDollars,
                                   self.dateCreated];
    
    for (id item in _items) {
        [descriptionString appendFormat:@"\t%@\n", [item description]];
    }
    
    return descriptionString;
}

@end
