//
//  BNRItem.h
//  randomItems
//
//  Created by Alex Rodriguez on 3/2/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    // Add instance variables to class
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

// Declare class method to generate random items
+ (instancetype)randomItem;

// Declare custom object initializers
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithName:(NSString *)str;

// Declare the getter and setter methods for each instance variable
- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end
