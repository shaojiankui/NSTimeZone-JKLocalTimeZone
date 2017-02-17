//
//  NSTimeZone+JKLocalTimeZone.h
//  PSS
//
//  Created by Jakey on 2017/2/17.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimeZone (JKLocalTimeZone)
@property (class, copy,readonly) NSTimeZone *jk_localTimeZone;
@end
