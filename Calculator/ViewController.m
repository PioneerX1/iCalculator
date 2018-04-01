//
//  ViewController.m
//  Calculator
//
//  Created by Mick Sexton on 3/31/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)NumberButton:(id)sender {
    currentNumber = currentNumber * 10 + (float)[sender tag];       // allows multiple digits per number
    self.Label.text = [NSString stringWithFormat:@"%2.0f", currentNumber];
}

- (IBAction)OperationButton:(id)sender {
    if (currentOperation == 0) result = currentNumber;      // stay on that number, only one operand
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
                
            default:
                break;
        }
    }
    
    // only display decimal places if it is not a whole number
    if (result == (int) result) {
        self.Label.text = [NSString stringWithFormat:@"%2.0f", result];
    } else {
        self.Label.text = [NSString stringWithFormat:@"%2.3f", result];
    }
    
    // clears out previous operations, ready for brand new one
    currentNumber = 0;
    if ([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
}

- (IBAction)CancelButton:(id)sender {
    currentNumber = 0;
    self.Label.text = @"0";
}
@end
