//
//  Game.m
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/02.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import "Game.h"

@implementation Game
@synthesize questions;
@synthesize answers;

- (void) prepareQuestions{
    int i, j, x, y, z;
    int from = 11;
    int to   = 19;
    NSMutableArray *operands, *operand;
    
    questions = [[NSMutableArray alloc] init];  // Using hashing algorithm
    answers   = [[NSMutableArray alloc] init];

    for(i = 0; i <= to * to; i++) {  // TODO: This block needs refactoring.
        [questions addObject:[[NSMutableArray alloc] init]];
    }
    
    for (i = from; i <= to; i++) {
        for (j = 1; j <= to; j++) {
            x = i;
            y = j;
            
            // Don't make easy question
            if (
                (x == 1  || y == 1)  ||
                (x == 10 || y == 10) ||
                ((x == 11 && y < 10) || (x < 10 && y == 11))
                )
            {
                continue;
            }
            
            z = x * y;
            
            // Don't make duplicate question
            if ([[questions objectAtIndex:z] count] == 0) {
                [answers addObject: [NSNumber numberWithInt:z]];
            }
            
            operands = [questions objectAtIndex:z];
            operand  = [[NSMutableArray alloc] init];
            [operand addObject:[NSNumber numberWithInt:x]];
            [operand addObject:[NSNumber numberWithInt:y]];
            [operands addObject:operand];
        }
    }
}

- (NSMutableArray*) question{
    NSMutableArray *expressions = [questions objectAtIndex:[[answers lastObject] integerValue]];
    int indexOfExpressions = arc4random() % (int) [expressions count];
    NSMutableArray *operands = [expressions objectAtIndex:indexOfExpressions];
    
    return operands;
}

@end
