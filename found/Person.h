//
//  Person.h
//  found
//
//  Created by claudiu on 2/1/14.
//  Copyright (c) 2014 claudiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic) float _height;
@property (nonatomic) int _kilos;


- (float) heightInMeters;
- (void) setHeightInMeters:(float) h;
- (void) setKilos:(int)k;
- (float) bodyMassIndex;

@end
