//
//  ViewController.m
//  Calculator
//
//  Created by Dev on 5/22/17.
//  Copyright © 2017 Dev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    bool isEmptyA1;
    bool isEmptyA2;
    bool isEmptyA3;
    bool isEmptyTotal;
    float a1, a2, a3, total;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    isEmptyA1 = isEmptyA2 = isEmptyA3 = isEmptyTotal = true;
    
    self.txt1A.text = @"";
    self.txt2A.text = @"";
    self.txt3A.text = @"";
    self.txtTotal.text = @"";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)calculate {
    
    int totalCount = 0;
    float result1 = 0;
    float result2 = 0;
    float result3 = 0;
    float totalSum = 0;
    
    if ([self.txt1A.text isEqual:@""]){
        isEmptyA1 = true;
        a1 = 0;
    } else {
        isEmptyA1 = false;
        totalCount += 1;
        self.lbl1A.text = self.txt1A.text;
        if ([self isNumeric:self.txt1A.text]) {
            a1 = [self.txt1A.text floatValue];
            result1 = a1;
        }
    }
    
    if ([self.txt2A.text isEqual:@""]) {
        isEmptyA2 = true;
        a2 = 0;
    } else {
        isEmptyA2 = false;
        totalCount += 1;
        self.lbl2A.text = self.txt2A.text;
        if ([self isNumeric:self.txt2A.text]) {
            a2 = [self.txt2A.text floatValue];
            result2 = a2;
        }
    }
    
    if ([self.txt3A.text isEqual:@""]) {
        isEmptyA3 = true;
        a3 = 0;
    } else {
        isEmptyA3 = false;
        totalCount += 1;
        self.lbl3A.text = self.txt3A.text;
        if ([self isNumeric:self.txt3A.text]) {
            a3 = [self.txt3A.text floatValue];
            result3 = a3;
        }
    }
    
    if ([self.txtTotal.text isEqual:@""])
    {
        isEmptyTotal = true;
        total = 0;
    } else {
        isEmptyTotal = false;
        self.lblTotal.text = self.txtTotal.text;
        if ([self isNumeric:self.txtTotal.text]) {
            total = [self.txtTotal.text floatValue];
        }
    }
    
    if (isEmptyA1) {
        if (totalCount == 1) {
            result1 = (total - a1 - a2 - a3) / 2;
            self.lbl1A.text = [[NSNumber numberWithFloat:result1] stringValue];
        } else {
            result1 = (total - a1 - a2 - a3);
            self.lbl1A.text = [[NSNumber numberWithFloat:result1] stringValue];
        }
    }
    
    if (isEmptyA2) {
        if (totalCount == 1) {
            result2 = (total - a1 - a2 - a3) / 2;
            self.lbl2A.text = [[NSNumber numberWithFloat:result2] stringValue];
        } else {
            result2 = (total - a1 - a2 - a3);
            self.lbl2A.text = [[NSNumber numberWithFloat:result2] stringValue];
        }
    }
    
    if (isEmptyA3) {
        if (totalCount == 1) {
            result3 = (total - a1 - a2 - a3) / 2;
            self.lbl3A.text = [[NSNumber numberWithFloat:result3] stringValue];
        } else {
            result3 = (total - a1 - a2 - a3);
            self.lbl3A.text = [[NSNumber numberWithFloat:result3] stringValue];
        }
    }
    
    totalSum = result1 + result2 + result3;
    self.lblTotal.text = [[NSNumber numberWithFloat:totalSum] stringValue];
    
    
}

-(BOOL) isNumeric:(NSString*) checkText {
    NSScanner *sc = [NSScanner scannerWithString:checkText];
    if ([sc scanFloat:NULL]) {
        return [sc isAtEnd];
    }
    return NO;
}

#pragma mark - textFieldDelegate

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self calculate];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [self calculate];
    return YES;
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if (touch.phase == UITouchPhaseBegan) {
        [self.txt1A resignFirstResponder];
        [self.txt2A resignFirstResponder];
        [self.txt3A resignFirstResponder];
        [self.txtTotal resignFirstResponder];
        
        [self calculate];
    }
}
@end
