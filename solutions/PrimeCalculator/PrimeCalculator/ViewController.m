//
//  ViewController.m
//  PrimeCalculator
//
//  Created by Alex Rodriguez on 10/22/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "ViewController.h"
#import "PrimeValidator.h"

@interface ViewController ()

// Step 1 - Setup Outlets & Instance Variables
@property (weak, nonatomic) IBOutlet UITextView *primeNumbers;
@property (weak, nonatomic) IBOutlet UITextField *fromValue;
@property (weak, nonatomic) IBOutlet UITextField *toValue;
@property (weak, nonatomic) IBOutlet UILabel *caption;


@property (weak, nonatomic) IBOutlet UISlider *toSlider;
@property (weak, nonatomic) IBOutlet UIStepper *fromStepper;

@property (nonatomic) NSInteger start;
@property (nonatomic) NSInteger end;
@property (nonatomic) NSString *primeNumberList;

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.primeNumbers.text = @"";
    self.caption.text = @"";
}

// Step 2 - Setup Actions
- (IBAction)calculatePrimeNumbers:(id)sender
{
    
    // Hide the keyboard so users can see all of the prime numbers and error messages
    [self.toValue resignFirstResponder];
    [self.fromValue resignFirstResponder];
    
    // Decouple text fields from data
    self.start = self.fromValue.text.integerValue;
    self.end = self.toValue.text.integerValue;
    
    // Send to and from values to findPrimes helper method
    //[self findPrimesFrom:self.start to:self.end];
    
    // STEP 5 - VALIDATE INPUTS!
    PrimeValidator *validator = [[PrimeValidator alloc] init];
    
    if ([validator isValid:self.start to:self.end]) {
        [self findPrimesFrom:self.start to:self.end];
        self.caption.text = [NSString stringWithFormat:@"All prime numbers from %i to %i", self.start, self.end];
    } else {
        [[[UIAlertView alloc] initWithTitle:@"ERROR!" message:validator.errorMessage delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
    
}

// Step 3 - Setup FindPrimes helper method
- (void)findPrimesFrom:(int)fromValue to:(int)toValue
{
    // Clear the previous list of prime numbers calculated
    self.primeNumberList = [[NSString alloc] init];
    
    // Loop thorough all the integers withing start -> end range and assign prime numbers into a list
    for (int index = self.start; index <= self.end; index++)
    {
        // If a number is prime, add it to the primeNumberList string
        if ([self isPrimeNumber:index]) {
            self.primeNumberList = [self.primeNumberList stringByAppendingFormat:@" %d,", index];
        }
    }
    
    // Remove the last comma from the list of prime numbers
    self.primeNumberList = [self.primeNumberList substringToIndex:[self.primeNumberList length] - 1];
    
    // Show prime numbers in the view
    self.primeNumbers.text = self.primeNumberList;
    
}

// Step 4 - Implement algorithm to determine if a number is prime or not
- (BOOL)isPrimeNumber:(int)number
{
    // If number is divisable by 2 (and not the number 2 itself) then it is not prime
    if (number % 2 == 0){
        //NSLog(@"NOT PRIME - %d is divisable by 2", number);
        return number == 2;
    }
    
    // Evaluate factorials
    for (int divisor = 3; divisor <= (int) ceil(sqrt(number)); divisor++) {
        // If number divides evenly by the devisor then it is not prime
        if (number % divisor == 0){
            //NSLog(@"NOT PRIME - %d divides evenly by %d", number, divisor);
            return NO;
        }
    }
    
    //NSLog(@"PRIME - %d", number);

    return YES;
}

- (IBAction)fromSliderSlid:(id)sender
{
    self.toValue.text = [NSString stringWithFormat:@"%d", (int) self.toSlider.value];
}

- (IBAction)fromStepperStepped:(id)sender
{
    self.fromValue.text = [NSString stringWithFormat:@"%d", (int) self.fromStepper.value];
}

@end
