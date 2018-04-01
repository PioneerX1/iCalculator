//
//  ViewController.h
//  Calculator
//
//  Created by Mick Sexton on 3/31/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int currentOperation;
    float result;
    float currentNumber;
}
- (IBAction)NumberButton:(id)sender;
- (IBAction)OperationButton:(id)sender;
- (IBAction)CancelButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Label;

@end

