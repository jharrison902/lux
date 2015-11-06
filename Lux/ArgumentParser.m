//
//  ArgumentParser.m
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArgumentParser.h"

@implementation ArgumentParser

NSString *versionFlag = @"-v";
NSString *debugFlag = @"-d";
NSString *interactiveFlag = @"-i";
NSString *compileFlag = @"-c";
-(id)init
{
    self = [super init];
    arg_list = [NSMutableArray array];
    debug = false;
    interactive=false;
    compile=false;
    return self;
}

-(void)parseArgs:(const char**)argv withSizeOf: (int)argc
{
    @autoreleasepool {
        NSLog(@"Lux...");
        for(int i=0;i<argc;i++){
            NSString *s = [[NSString alloc] initWithUTF8String:argv[i]];
            [arg_list addObject:s];
            if([s isEqualToString:versionFlag]){
                NSLog(@"Lux version 0.0.1. Copyright 2015 Jesse Harrison");
            }
            else if ([s isEqualToString:debugFlag]){
                NSLog(@"Debug mode enabled!");
                debug=true;
            }
            else if([s isEqualToString:interactiveFlag]){
                NSLog(@"->");
                interactive=true;
            }
            else if([s isEqualToString:compileFlag]){
                NSLog(@"Beginning compilation...");
                compile=true;
            }
        }
    }
}

-(Boolean) isDebug
{
    return debug;
}

@end