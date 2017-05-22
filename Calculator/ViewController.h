//
//  ViewController.h
//  Calculator
//
//  Created by Dev on 5/22/17.
//  Copyright © 2017 Dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txt1A;
@property (weak, nonatomic) IBOutlet UITextField *txt2A;
@property (weak, nonatomic) IBOutlet UITextField *txt3A;
@property (weak, nonatomic) IBOutlet UITextField *txtTotal;

@property (weak, nonatomic) IBOutlet UILabel *lbl1A;
@property (weak, nonatomic) IBOutlet UILabel *lbl2A;
@property (weak, nonatomic) IBOutlet UILabel *lbl3A;
@property (weak, nonatomic) IBOutlet UILabel *lblTotal;



@end

