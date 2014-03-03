//
//  main.m
//  randomItems
//
//  Created by Alex Rodriguez on 3/2/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a muteable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to by the variable items, passing one string at a time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObjectAtIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // Do a traditional for loop though each item of the array
        for (int i = 0 ; i < [items count]; i++) {
            NSString *item = items[i]; // You could also use NSString *item = [items objectAtIndex:i];
            NSLog(@"%@", item);
        }
        
        // Use fast enumeration to loop through the array
        // For every item in the items array...
        for (NSString *item in items)
            NSLog(@"%@",item);
        
        // Log out the values of the items object
        NSLog(@"%@", items);
        
        // Create an instance of BNRItem and log out its values
        BNRItem *item = [[BNRItem alloc] init];
        NSLog(@"%@ %@ %@ %d", [item itemName], [item serialNumber], [item dateCreated], [item valueInDollars]); 
        
        // Destroy the mutable array object since we no longer need it
        items = nil;
        
    }
    return 0;
}

