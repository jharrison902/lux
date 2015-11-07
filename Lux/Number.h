//
//  Number.h
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Symbol.h"
#ifndef Number_h
#define Number_h
@interface Number : Symbol
{
    NSNumber *value;
}

-(id) init: (NSString *) str withValue: (NSNumber *) num;


@end
#endif /* Number_h */
