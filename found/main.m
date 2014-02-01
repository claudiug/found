//
//  main.m
//  found
//
//  Created by claudiu on 2/1/14.
//  Copyright (c) 2014 claudiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

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
        NSDate *stuff = [[NSDate alloc] init];
        NSLog(@"here %f", [stuff timeIntervalSinceNow]);
        NSArray *arr = nil;
        NSLog(@"array: %@", [arr lastObject]);
        NSDate *expiration;
        NSLog(@"exp: %@", expiration);
        NSDateComponents *components = [[NSDateComponents alloc] init ];
        [components setWeekOfYear:1984];
        [components setWeek:20];
        [components setDay:2];
        //NSCalendar *c = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSCalendar *c = [NSCalendar currentCalendar];
        NSDate *bdate = [c dateFromComponents:components];
        NSLog(@"date %@", bdate);
        NSString *nameIs = @"this is james may";
        NSLog(@"dump %@", nameIs);
        NSLog(@"len: %i", (int)[nameIs length]);
        //array
        NSDate *here = [NSDate date];
        NSDate *tomorrow = [here dateByAddingTimeInterval:24.0*60.0*60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:24.0*60.0*60.0];
        NSArray *dump = @[here, tomorrow, yesterday];
        NSLog(@"dump %@", dump[1]);
        for (NSDate *d in dump) {
            NSLog(@"dump: %@", d);
        }
        
        Person *person1 = [[Person alloc] init];
        [person1 setKilos:34];
        [person1  setHeightInMeters:34.2];
        person1.kilos = 300; //the same as line 58
        NSLog(@"person: %f", person1.bodyMassIndex);
    }
    return 0;
}

