//
//  LEngine.h
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ArgumentParser.h"
#ifndef LEngine_h
#define LEngine_h
@interface LEngine : NSObject
{
    NSMutableArray *symbolTable; /* Variable declaration */
    ArgumentParser *argumentParser; /* Argument Parser Received from runtime */
    NSString *buffer; /* input buffer */
    Boolean exit;
    
}
-(id) init:(ArgumentParser*) args;
-(void) registerSymbol:(NSString *) name;
-(void) registerSymbol:(NSString *) name andValue: (NSString *) value;
-(void) run;
-(void) parseLine:(NSString*) line;
@end

#endif /* LEngine_h */
