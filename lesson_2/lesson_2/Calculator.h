//
//  Calculator.h
//  lesson_2
//
//  Created by apple on 2018/12/7.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property(strong,nonatomic)NSMutableString *disp;
-(void)delNumber;//删除单个数字
-(NSString *)computeRestult;//显示计算结果
-(void)cleardisp;//清零
@end
