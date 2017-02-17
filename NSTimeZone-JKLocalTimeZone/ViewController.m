//
//  ViewController.m
//  NSTimeZone-JKLocalTimeZone
//
//  Created by Jakey on 2017/2/17.
//  Copyright © 2017年 Jakey. All rights reserved.
//

#import "ViewController.h"
#import "NSTimeZone+JKLocalTimeZone.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    [dateFormatter setTimeZone:[NSTimeZone jk_localTimeZone]];
    NSLog(@"%@",dateFormatter.timeZone.name);
    NSDate *date0 = [dateFormatter dateFromString:@"1988-04-10"];
    NSLog(@"jk_localTimeZone:%@", date0);
    
    
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:3600*8]];
    NSLog(@"%@",dateFormatter.timeZone.name);
    NSDate *date = [dateFormatter dateFromString:@"1988-04-10"];
    NSLog(@"date3600*8:%@", date);


    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    NSLog(@"%@",dateFormatter.timeZone.name);
    NSDate *date2 = [dateFormatter dateFromString:@"1988-04-10"];
    NSLog(@"localTimeZone:%@", date2);


    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Shanghai"]];
    NSLog(@"%@",dateFormatter.timeZone.name);
    NSDate *date3 = [dateFormatter dateFromString:@"1988-04-10"];
    NSLog(@"dateShanghai:%@", date3);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
