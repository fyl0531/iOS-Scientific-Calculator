//
//  SecondViewController.m
//  SA18225079_3
//
//  Created by apple on 2018/12/14.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtdisplay;

@property (weak, nonatomic) IBOutlet UIButton *btnleft;
@property (weak, nonatomic) IBOutlet UIButton *btnright;
@property (weak, nonatomic) IBOutlet UIButton *btne;
@property (weak, nonatomic) IBOutlet UIButton *btnpi;

@end

@implementation SecondViewController

- (IBAction)inputKey:(UIButton *)sender {
    
    if (sender.tag==0||sender.tag==1||sender.tag==2||sender.tag==3)
    {
    NSMutableString *str=[NSMutableString stringWithString:self.txtdisplay.text];
    if([[[sender titleLabel] text] isEqualToString:@"e"])
    {
        [self.cal.disp appendString:@"2.7182818"];
    }
    else if ([[[sender titleLabel] text]isEqualToString:@"pi"])
    {
        [self.cal.disp appendString:@"3.1415926"];
    }
    else
    {
        [self.cal.disp appendString:[[sender titleLabel]text]];
    }
    [str appendString:[[sender titleLabel] text]];
    self.txtdisplay.text=str;
    self.cal.screen=str;
    }
    if(sender.tag==4)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal Abs:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==5)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal sqrt:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==6)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal backwards:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==7)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal square:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==8)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal sin:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==9)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal cos:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==10)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal tan:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==11)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal cubic:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==12)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal asin:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==13)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal acos:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==14)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal atan:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==15)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal ln:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==16)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal sinh:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==17)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal cosh:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==18)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal tanh:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
    if(sender.tag==19)
    {
        self.cal.disp=[NSMutableString stringWithString:[self.cal log:[self.cal computeRestult]]];
        self.cal.screen=self.cal.disp;
        self.txtdisplay.text=self.cal.screen;
    }
}


-(void)viewWillAppear:(BOOL)animated
{//将第一个界面传递的值在第二个界面上显示
    self.txtdisplay.text=self.cal.screen;
    NSLog(@"%@",self.cal.screen);
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
