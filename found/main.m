//
//  main.m
//  found
//
//  Created by claudiu on 2/1/14.
//  Copyright (c) 2014 claudiu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSDate *now = [NSDate date];
        NSLog(@"this obj at %@", now);
        NSHost *hostType = [NSHost currentHost];
        NSLog(@"hostname is %@", [hostType localizedName]);
        NSDate *time = [NSDate date];
        NSLog(@"time in future: %@", [time dateByAddingTimeInterval:10000]);
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"calendar; %@", [cal calendarIdentifier]);
        NSLog(@"calendar; %lu", (unsigned long)[cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:time]);

    }
    return 0;
}

