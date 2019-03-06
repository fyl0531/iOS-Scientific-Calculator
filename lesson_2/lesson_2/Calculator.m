//
//  Calculator.m
//  lesson_2
//
//  Created by apple on 2018/12/7.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(NSString *)computeRestult
{
    @try {
        NSExpression *exp1=[NSExpression expressionWithFormat:self.disp];//通过格式化字符串创建表达式
        id value=[exp1 expressionValueWithObject:nil context:nil];
        NSLog(@"redult=%f",[value floatValue]);
        self.disp=[NSMutableString stringWithString:[value stringValue]];
        return [value stringValue];
    }//捕获异常
    @catch (NSException *exception) {
        self.disp=nil;
        return @"error";
    }
}

-(NSMutableString*)disp
{//覆盖set方法
    if(!_disp)
    {
        _disp=[[NSMutableString alloc] init];
    }
    return _disp;
}

-(void)cleardisp
{//清空
    self.disp=nil;
}

-(void)delNumber
{//删除单个数字
    long len=self.disp.length-1;
    if(len>=1)
    {
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}
@end
