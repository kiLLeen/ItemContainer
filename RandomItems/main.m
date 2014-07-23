//
//  main.m
//  RandomItems
//
//  Created by Neil Killeen on 7/16/14.
//  Copyright (c) 2014 Neil Killeen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
      
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (id item in items)
            NSLog(@"%@", item);
        
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

