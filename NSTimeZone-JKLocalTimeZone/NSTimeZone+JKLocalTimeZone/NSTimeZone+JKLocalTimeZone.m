//
//  NSTimeZone+JKLocalTimeZone.m
//  PSS
//
//  Created by Jakey on 2017/2/17.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "NSTimeZone+JKLocalTimeZone.h"

@implementation NSTimeZone (JKLocalTimeZone)
+(NSTimeZone *)jk_localTimeZone{
    //设置转换后的目标日期时区
    NSTimeZone *toTimeZone = [NSTimeZone localTimeZone];
    //转换后源日期与世界标准时间的偏移量
    NSInteger toGMTOffset = [toTimeZone secondsFromGMTForDate:[NSDate date]];
    return [NSTimeZone timeZoneForSecondsFromGMT:toGMTOffset];
}
@end
