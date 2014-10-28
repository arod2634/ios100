//
//  PrimeValidator.m
//  PrimeCalculator
//
//  Created by Alex Rodriguez on 10/22/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "PrimeValidator.h"

@implementation PrimeValidator

- (instancetype)init
{
    // Call the superclasse's designated initalizer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        self.errorMessage = @"NO ERRORS";
    }
    
    // Return the address of the newly initilized object
    return self;

}


- (BOOL)isValid:(int)start to:(int)end
{
    if (start < 1 || end < 1) {
        self.errorMessage = @"From and to values must be greater then or equal to 1!";
        return false;
    } else if ((start == end) && (start != 1) && (end != 1)) {
        self.errorMessage = @"From and to values can not be the same!";
        return false;
    } else if (start > end) {
        self.errorMessage = @"From value can not be greater then to value!";
        return false;
    }
    
    return true;
}

@end
