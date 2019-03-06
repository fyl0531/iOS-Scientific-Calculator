//
//  advancedCalculator.m
//  SA18225079_3
//
//  Created by apple on 2018/12/14.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "advancedCalculator.h"

@implementation advancedCalculator

-(NSString *)sqrt:(NSString *)content
{
    double d=[content doubleValue];
    double result=sqrt(d);
    NSNumber *n=[[NSNumber alloc] initWithDouble:result];//数值到对象的转化
    return [n stringValue];
}
-(NSString *)square:(NSString *)content
{
    double d=[content doubleValue];
    double result=pow(d, 2);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)cubic:(NSString *)content
{
    double d=[content doubleValue];
    double result=pow(d,3);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)backwards:(NSString *)content
{
    double d=[content doubleValue];
    double result=1.0/d;
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)Abs:(NSString *)content
{
    double d=[content doubleValue];
    double result=fabs(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)sin:(NSString *)content
{
    double d=[content doubleValue];
    double result=sin(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)cos:(NSString *)content
{
    double d=[content doubleValue];
    double result=cos(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)tan:(NSString *)content
{
    double d=[content doubleValue];
    double result=tan(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)asin:(NSString *)content
{
    double d=[content doubleValue];
    double result=asin(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)acos:(NSString *)content
{
    double d=[content doubleValue];
    double result=acos(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)atan:(NSString *)content
{
    double d=[content doubleValue];
    double result=atan(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)tanh:(NSString *)content
{
    double d=[content doubleValue];
    double result=tanh(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)sinh:(NSString *)content
{
    double d=[content doubleValue];
    double result=sinh(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)cosh:(NSString *)content
{
    double d=[content doubleValue];
    double result=cosh(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)ln:(NSString *)content
{
    double d=[content doubleValue];
    double result=log(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(NSString *)log:(NSString *)content
{
    double d=[content doubleValue];
    double result=log10(d);
    NSNumber *n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}
-(void)delNumber
{
    long len=self.disp.length-1;
    if (len>=0) {
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
        [self.screen deleteCharactersInRange:NSMakeRange(len, 1)];//保存屏幕上的内容
    }
    
}
-(void)cleardisp
{
    self.disp=nil;
    self.screen=nil;
}







@end
