//
//  main.m
//  Lux
//
//  Created by Jesse Harrison on 11/4/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ArgumentParser.h"
#import "LEngine.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* Get arguments and set flags */
        /* ArgumentParser will print out useful info as it goes */
        ArgumentParser *parser = [[ArgumentParser alloc] init];
        [parser parseArgs:argv withSizeOf:argc];
        LEngine *runTime = [[LEngine alloc] init: parser];
        [runTime run];

    }
    return 0;
}
