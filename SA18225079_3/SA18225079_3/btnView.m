//
//  btnView.m
//  SA18225079_3
//
//  Created by apple on 2018/12/7.
//  Copyright © 2018年 SA18225079. All rights reserved.
//

#import "btnView.h"

@implementation btnView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) awakeFromNib
{//每次视图控制器从文件中导出的时候调用
    [super awakeFromNib];
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:12];
    [self.layer setBorderWidth:1];
}

@end
