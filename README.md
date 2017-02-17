# NSTimeZone-JKLocalTimeZone
NSTimeZone-JKLocalTimeZone,夏令时TimeZone问题解决,LocalTimeZone增强LocalTimeZone

## 使用非常简单

```
 NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
dateFormatter.dateFormat = @"yyyy-MM-dd";
[dateFormatter setTimeZone:[NSTimeZone jk_localTimeZone]];
NSLog(@"%@",dateFormatter.timeZone.name);
NSDate *date0 = [dateFormatter dateFromString:@"1988-04-10"];
NSLog(@"jk_localTimeZone:%@", date0);
```

[NSTimeZone localTimeZone] localTimeZone 替换为jk_localTimeZone即可

###  现象
测试发现iOS格式化某些特殊时间字符串到NSDate的时候会后会返回空值,比如 1988-04-10,1989-04-16,1989-04-16 12:12等等时间
### 夏令时问题
1986年4月，我国采取夏令时，具体作法是：每年从四月中旬第一个星期日的凌晨2时整(北京时间)，将时钟拨快一小时，即将表针由2时拨至3时，夏令时开始；到九月中旬第一个星期日的凌晨2时整(北京夏令时)，再将时钟拨回一小时，即将表针由2时拨至1时，夏令时结束。从1986年到1991年的六个年度，除1986年因是实行夏时制的第一年，从5月4日开始到9月14日结束外，其它年份均按规定的时段施行。在夏令时开始和结束前几天，新闻媒体均刊登有关部门的通告。1992年起，夏令时暂停实行。

### 博文
[iOS开发之夏令时,NSDateFormatter格式化失败](http://www.skyfox.org/ios-formatter-daylight-saving-time.html) 
