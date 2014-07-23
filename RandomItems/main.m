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
        
//        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject:@"Zero"];
//        [items addObject:@"One"];
//        [items addObject:@"Two"];
        
//        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:9001 serialNumber:@"A8483"];
//        NSLog(@"%@", item);
//        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
//        NSLog(@"%@", itemWithName);
//        BNRItem *itemWithNoName = [[BNRItem alloc] init];
//        NSLog(@"%@", itemWithNoName);
        
//        for (int i = 0; i < 10; ++i) {
//            BNRItem *randomItem = [BNRItem randomItem];
//            // NSLog(@"%@", randomItem);
//            [items addObject:randomItem];
//        }
//        
//        [items addObject:[[BNRItem alloc] initWithItemName:@"TestName"
//                                              serialNumber:@"0A0A0A"]];
//        
//        for (id item in items) {
//            NSLog(@"%@", item);
//        }
        
        BNRContainer *newContainer = [[BNRContainer alloc] initWithItemName:@"TestContainer"
                                                             valueInDollars:1
                                                               serialNumber:@"012345"];
        BNRContainer *newSubContainer = [[BNRContainer alloc] initWithItemName:@"SubContainer"
                                                             valueInDollars:1000
                                                               serialNumber:@"012346"];
        for (int i = 0; i < 10; ++i) {
            BNRItem *item = [BNRItem randomItem];
            [newContainer addObject:item];
//            NSLog(@"Adding object: %@", item);
        }
        
        for (int i = 0; i < 5; ++i) {
            BNRItem *item = [BNRItem randomItem];
            [newSubContainer addObject:item];
        }
        
        [newContainer addObject:newSubContainer];
        
        NSLog(@"%@", newContainer);
        
//        items = nil;
        
    }
    return 0;
}

