//
//  BNRItem.m
//  randomItems
//
//  Created by Alex Rodriguez on 3/2/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)init
{
    return [self initWithName:@"Item"];
}

- (instancetype)initWithName:(NSString *)name
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    // Call the superclasse's designated initalizer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        itemName = name;
        valueInDollars = value;
        serialNumber = sNumber;
        // Set dateCreated to the current date and time
        dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initilized object
    return self;
}

- (void)setItemName:(NSString *)str
{
    itemName = str;
}

- (NSString *)itemName
{
    return itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)v
{
    valueInDollars = v;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                                                    self.itemName,
                                                    self.serialNumber,
                                                    self.valueInDollars,
                                                    self.dateCreated];
    return descriptionString;
}

@end
