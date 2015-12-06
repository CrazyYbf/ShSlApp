//
//  NSDate+DatetoString.m
//  ShSlApp
//
//  Created by 易 彬锋 on 15/12/6.
//  Copyright © 2015年 bfy. All rights reserved.
//

#import "NSDate+DatetoString.h"

@implementation NSDate (DatetoString)

-(NSString*)datetostring{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    
    [formatter setDateFormat:@"YYYY-MM-dd"];
    
    NSString *datestring = [formatter stringFromDate:self];
    
    
    return datestring;

}
@end
