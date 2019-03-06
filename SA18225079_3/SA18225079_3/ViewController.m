//
//  ViewController.m
//  SA18225079_3
//
//  Created by apple on 2018/12/7.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "advancedCalculator.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtdisplay;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;
@property (weak, nonatomic) IBOutlet UIButton *btn7;
@property (weak, nonatomic) IBOutlet UIButton *btn8;
@property (weak, nonatomic) IBOutlet UIButton *btn9;
@property (weak, nonatomic) IBOutlet UIButton *btn0;
@property (weak, nonatomic) IBOutlet UIButton *btndot;
@property (weak, nonatomic) IBOutlet UIButton *btnAdd;
@property (weak, nonatomic) IBOutlet UIButton *btnSub;
@property (weak, nonatomic) IBOutlet UIButton *btnDiv;
@property (weak, nonatomic) IBOutlet UIButton *btnmult;

@property (strong,nonatomic) advancedCalculator *cal;

@end

@implementation ViewController
- (IBAction)inputNumber:(UIButton *)sender {
    NSMutableString *str=[NSMutableString stringWithString:self.txtdisplay.text];
    //获得按钮title进行判断
    if ([[[sender titleLabel] text] isEqualToString:@"×"]) {
        [self.cal.disp appendString:@"*"];
    }
    else if ([[[sender titleLabel] text] isEqualToString:@"÷"])
    {
        [self.cal.disp appendString:@"*1.0/"];
    }
    else
        [self.cal.disp appendString:[[sender titleLabel] text]];
    
    [str appendString:[[sender titleLabel] text]];
    self.cal.screen=str;
    self.txtdisplay.text=str;
}


- (IBAction)clear:(UIButton *)sender {
    self.txtdisplay.text=nil;
    [self.cal cleardisp];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SecondScene"]) {
        if ([segue.destinationViewController isKindOfClass:[SecondViewController class]]) {
            SecondViewController *svc=(SecondViewController*)segue.destinationViewController;
            svc.cal=self.cal;
        }
    }
}

- (IBAction)delNumber:(UIButton *)sender {
    [self.cal delNumber];
    self.txtdisplay.text=self.cal.screen;
}
- (IBAction)compute:(UIButton *)sender {
    self.txtdisplay.text=self.cal.computeRestult;
    self.cal.screen=[NSMutableString stringWithString:self.txtdisplay.text];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.txtdisplay.text=self.cal.screen;
}




-(advancedCalculator*)cal
{
    if (!_cal) {
        _cal=[[advancedCalculator alloc] init];
    }
    return _cal;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.cal=[[advancedCalculator alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
