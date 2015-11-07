//
//  Number.m
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Number.h"

@implementation Number
{
    
}

-(id) init
{
    self = [super init];
    name = @"";
    value = [NSNumber numberWithFloat:0.0f];
    return self;
    
}

-(id) init: (NSString *) str withValue: (NSNumber *) num
{
    self = [super init];
    name = str;
    value = num;
    return self;
}


@end