//
//  Symbol.m
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Symbol.h"

@implementation Symbol


-(id) init:(NSString *) str{
    self = [super init];
    name = str;
    return self;
}
-(id) init{
    self = [super init];
    
    return self;
}

@end