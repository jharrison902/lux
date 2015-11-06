//
//  LEngine.m
//  Lux
//
//  Created by Jesse Harrison on 11/5/15.
//  Copyright © 2015 Jesse Harrison. All rights reserved.
//
//  Logic Engine for Lux. Handles code execution

#import <Foundation/Foundation.h>
#import <stdio.h>
#import "LEngine.h"

@implementation LEngine
-(id)init: (ArgumentParser*) args
{
    self = [super init];
    argumentParser = args;
    symbolTable = [NSMutableArray array];
    buffer = [[NSString alloc] init];
    exit = false;
    return self;
}
-(void) registerSymbol:(NSString *) name
{
    /* First determine the type of symbol */
    /* Types: number, string (tbi) */
    /* TODO: Implement more types */
    
    /* determine if number */
    NSCharacterSet *numericCharacters = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([name rangeOfCharacterFromSet:numericCharacters].location==NSNotFound){
        /* Valid numeric */
        if([argumentParser isDebug]){
            NSLog(@"Number found! %@",name);
        }
        
    }
    
}
-(void) registerSymbol:(NSString *)name andValue:(NSString *)value
{
    
}

-(void) parseLine:(NSString *)line
{
    /* Break line up into components by seeking for operators */
    NSMutableArray *operatorPositions = [NSMutableArray array];
    
    /* Symbol Buffer */
    NSMutableString *symbolBuffer = [NSMutableString string];
    
    /* Symbol detection */
    Boolean creatingSymbol = false;
    
    
    
    
    
    for(int i=0;i<[line length];i++){
        NSString *character = [line substringWithRange:NSMakeRange(i,1)];
        
        
        
        /* Equals operator */
        if ([character isEqualToString:@"="]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"equals op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Addition operator */
        else if ([character isEqualToString:@"+"]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"add op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Subtraction operator */
        else if ([character isEqualToString:@"-"]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"sub op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Multiplication operator */
        else if ([character isEqualToString:@"*"]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"mul op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Division operator */
        else if ([character isEqualToString:@"/"]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"div op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Percentage operator */
        else if ([character isEqualToString:@"%"]){
            [operatorPositions addObject:[NSNumber numberWithInt:i]];
            if ([argumentParser isDebug]){
                NSLog(@"percent op");
            }
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
        
        /* Now determine symbol location */
        /* Symbols are any non-operator, non-whitespace, character */
        else if (![character isEqualToString:@" "] && ![character isEqualToString:@"\n"] ){
            /* need to start creating a symbol */
            /* symbols continue until the next space or operator */
            /* TODO: Add string support */
            if ([argumentParser isDebug]){
                NSLog(@"beginning symbol detection!");
            }
            creatingSymbol=true;
            [symbolBuffer appendString:character];
            
        }
        else {
            if (creatingSymbol){
                if ([argumentParser isDebug]){
                    NSLog(@"symbol found!");
                    NSLog(symbolBuffer);
                }
                creatingSymbol = false;
                
                [self registerSymbol:symbolBuffer];
                [symbolBuffer setString:@""];
            }
        }
    }
    /* end of line, clear symbol buffer if it exists */
    
    if (creatingSymbol){
        if ([argumentParser isDebug]){
            NSLog(@"symbol found!");
            NSLog(symbolBuffer);
        }
        creatingSymbol = false;
        
        [self registerSymbol:symbolBuffer];
        [symbolBuffer setString:@""];
    }
    
    
    
    /* Exit code */
    if ([line isEqualToString:@"exit"]){
        
        if (creatingSymbol){
            if ([argumentParser isDebug]){
                NSLog(@"symbol found!");
                NSLog(symbolBuffer);
            }
            creatingSymbol = false;
            
            [self registerSymbol:symbolBuffer];
            [symbolBuffer setString:@""];
        }
        exit=true;
        return;
    }
    
    
}

-(void) run
{
    NSLog(@"Lux starting up");
    for(;;){
        char str[512];
        
        scanf("%s",str);
        NSString *input = [NSString stringWithUTF8String:str];
        [self parseLine:input];
        if (exit){
            break;
        }
    }
    
}

@end