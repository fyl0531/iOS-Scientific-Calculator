//
//  HealthViewController.m
//  SA18225079_3
//
//  Created by apple on 2018/12/16.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "HealthViewController.h"
#import "Calculator+Health.h"
@interface HealthViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TxtHeight;
@property (weak, nonatomic) IBOutlet UITextField *TxtWeight;
@property (weak, nonatomic) IBOutlet UILabel *LabAdvice;
@property (weak, nonatomic) IBOutlet UILabel *LabScore;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (strong,nonatomic) Calculator *cal;
@end


@implementation HealthViewController
- (IBAction)computeScore:(UIButton *)sender {
    NSString *score=[self.cal computeHealthWithHeight:self.TxtHeight.text andWeight:self.TxtWeight.text];
    NSLog(@"redult=%f",[self.TxtHeight.text floatValue]);
    NSLog(@"redult=%f",[self.TxtWeight.text floatValue]);
    NSLog(@"redult=%f",[score floatValue]);
    if([score floatValue]<19)
        self.LabAdvice.text=@"太瘦了，吃吃吃吃！";
    else if([score floatValue]<25)
        self.LabAdvice.text=@"身材很棒！！";
    else if([score floatValue]<30)
        self.LabAdvice.text=@"有点小胖，该锻炼了";
    else if([score floatValue]<39)
        self.LabAdvice.text=@"好胖啊，赶紧减肥！！";
    else
        self.LabAdvice.text=@"你是个球嘛！！完啦！！";
    self.LabScore.text=score;
    
    
}


-(Calculator *)cal
{
    if(!_cal)
    {
        _cal=[[Calculator alloc]init];
    }
    return _cal;
}

-(void) viewWillAppear:(BOOL)animated//按钮直角变成圆角
{
    [self.btn1.layer setMasksToBounds:YES];
    [self.btn1.layer setCornerRadius:12];
    [self.btn1.layer setBorderWidth:1];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==self.TxtHeight ||textField==self.TxtWeight)
    {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cal=[[Calculator alloc]init];
    // Do any additional setup after loading the view.
}


@end
