//
//  BNRItem.m
//  randomItems
//
//  Created by Alex Rodriguez on 3/2/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

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
