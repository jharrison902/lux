//
//  ArgumentParser.h
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef ArgumentParser_h
#define ArgumentParser_h
@interface ArgumentParser : NSObject
{
    NSMutableArray *arg_list; //
    Boolean debug;
    Boolean interactive;
    Boolean compile;
    
}
/* Flags for operation*/
extern NSString *versionFlag;
extern NSString *debugFlag;
extern NSString *interactiveFlag;
extern NSString *compileFlag;



-(void) parseArgs:(const char**)argv withSizeOf: (int)argc;
-(Boolean) isDebug;
@end



#endif /* ArgumentParser_h */
