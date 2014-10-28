//
//  PrimeValidator.h
//  PrimeCalculator
//
//  Created by Alex Rodriguez on 10/22/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeValidator : NSObject

@property (nonatomic) NSString *errorMessage;

- (BOOL)isValid:(int)start to:(int)end;

@end
