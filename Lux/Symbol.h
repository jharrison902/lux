//
//  Symbol.h
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

//Symbol is to be inherited from for types of classes.


#import <Foundation/Foundation.h>
#ifndef Symbol_h
#define Symbol_h
@interface Symbol : NSObject
{
    NSString *name; /* Symbol name for string translation */
    
    
}

-(id) init: (NSString *) str;
@end
#endif /* Symbol_h */
