//
//  UIButton+Setbutton.m
//  ShSlApp
//
//  Created by 易 彬锋 on 15/12/7.
//  Copyright © 2015年 bfy. All rights reserved.
//

#import "UIButton+Setbutton.h"

@implementation UIButton (Setbutton)

-(void)setbutton{
    
    
    self.frame = CGRectMake(0, 0, 60, 30);
    
    [self setTitle:@"左边" forState:UIControlStateNormal];
    
    [self setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];

}
@end
