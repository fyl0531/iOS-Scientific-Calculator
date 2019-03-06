//
//  Calculator+Health.m
//  SA18225079_3
//
//  Created by apple on 2018/12/14.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "Calculator+Health.h"

@implementation Calculator (Health)
-(NSString *)computeHealthWithHeight:(NSString *)height andWeight:(NSString *)weight
{
    NSMutableString *expression;
    expression=[NSMutableString stringWithString:weight];
    [expression appendString:@"/(("];
    [expression appendString:height];
    [expression appendString:@"/100.0"];
    [expression appendString:@"*("];
    [expression appendString:height];
    [expression appendString:@"/100.0))"];
    self.disp=expression;
    return [NSString stringWithFormat:@"%.2f",[[self computeRestult]floatValue]];
}

@end
