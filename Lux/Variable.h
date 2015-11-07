//
//  Variable.h
//  Lux
//
//  Created by Jesse Harrison on 11/6/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Symbol.h"
#import "Number.h"
#ifndef Variable_h
#define Variable_h
@interface Variable : Symbol
{
    Number * value;
}

-(Number *) getValue;
-(NSString *) getName;
-(id) init: (NSString *) str;
-(id) init: (NSString *) str withValue: (Number *) val;

@end
#endif /* Variable_h */
