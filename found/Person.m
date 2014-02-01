//
//  Person.m
//  found
//
//  Created by claudiu on 2/1/14.
//  Copyright (c) 2014 claudiu. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float)heightInMeters
{
    return __height;
}

- (void) setHeightInMeters:(float)h
{
    __height = h;
}

- (void) setKilos:(int)k
{
    __kilos = k;
}

-(float) bodyMassIndex
{
    return __height * __kilos;
}

@end
