//
//  Variable.m
//  Lux
//
//  Created by Jesse Harrison on 11/6/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Variable.h"
#import "Symbol.h"
@implementation Variable : Symbol
{
    
}

-(Number *) getValue
{
    return value;
}
-(NSString *) getName
{
    return name;
}
-(id) init
{
    self = [super init];
    name = @"";
    value = [[Number alloc] init];
    return self;
}
-(id) init: (NSString *) str
{
    self = [super init];
    name = str;
    value = [[Number alloc] init];
    return self;
}
-(id) init: (NSString *) str withValue: (Number *) val
{
    
    return self;
}

@end