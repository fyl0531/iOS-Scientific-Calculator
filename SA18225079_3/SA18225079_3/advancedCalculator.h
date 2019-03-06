//
//  advancedCalculator.h
//  SA18225079_3
//
//  Created by apple on 2018/12/14.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "Calculator.h"
#import <math.h>
@interface advancedCalculator : Calculator
@property(strong,nonatomic)NSMutableString *screen;
-(NSString *)sqrt:(NSString *) content;
-(NSString *)square:(NSString *)content;
-(NSString *)cubic:(NSString *)content;
-(NSString *)backwards:(NSString *)content;
-(NSString *)Abs:(NSString *)content;
-(NSString *)sin:(NSString *)content;
-(NSString *)cos:(NSString *)content;
-(NSString *)tan:(NSString *)content;
-(NSString *)asin:(NSString *)content;
-(NSString *)acos:(NSString *)content;
-(NSString *)atan:(NSString *)content;
-(NSString *)tanh:(NSString *)content;
-(NSString *)sinh:(NSString *)content;
-(NSString *)cosh:(NSString *)content;
-(NSString *)ln:(NSString *)content;
-(NSString *)log:(NSString *)content;
@end
