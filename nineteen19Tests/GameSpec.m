//
//  GameSpec.m
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/02.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import "Game.h"
#import "Kiwi.h"

SPEC_BEGIN(GameSpec)

describe(@"Game", ^{
    __block Game *game;
    
    beforeAll(^{
        game = [Game alloc];
        [game prepareQuestions];
    });
    
    describe(@"-prepareQuestions", ^{
        describe(@"initializes the questions property and the answers property", ^{
            describe(@".questions", ^{
                describe(@"a element", ^{
                    it(@"'s key is the answer and value is the expression of the answer", ^{
                        int x = 11;
                        int y = 12;
                        int answer = x * y;
                        
                        NSMutableArray *expressions = [game.questions objectAtIndex:answer];
                        NSMutableArray *operands = [expressions objectAtIndex:0];
                        
                        [[theValue(x) should] equal:theValue([[operands objectAtIndex:0] intValue])];
                        [[theValue(y) should] equal:theValue([[operands objectAtIndex:1] intValue])];
                        [[theValue(answer) should] equal:theValue([[operands objectAtIndex:0] intValue] * [[operands objectAtIndex:1] intValue])];
                    });
                });

            });
            
            describe(@".answers", ^{
                it(@"is from 11 * 11 to 19 * 19", ^{
                    int answerOfTheFirstQuestion = 11 * 11;
                    int answerOfTheLastQuestion  = 19 * 19;
                    
                    [[theValue(answerOfTheFirstQuestion) should] equal:theValue([[game.answers firstObject] intValue])];
                    [[theValue(answerOfTheLastQuestion)  should] equal:theValue([[game.answers lastObject] intValue])];
                });
                it(@"has excluded easy questions", ^{
                    int x = 11 + arc4random() % 9;
                    int y = 10;
                    NSNumber *answerOfTheEasyQuestion = [NSNumber numberWithInt:(x * y)];
                    
                    NSInteger anIndex = [game.answers indexOfObject:answerOfTheEasyQuestion];
                    [[theValue(anIndex) should] equal:theValue(NSNotFound)];
                });
            });
        });
        
    });
    
    describe(@"-question", ^{
        it(@"returns operands of the expression for the question", ^{
            NSMutableArray* operands = [game question];
            [[theValue([[operands objectAtIndex:0] integerValue] * [[operands objectAtIndex:1] integerValue]) should] equal:theValue([[game.answers lastObject] intValue])];
        });
    });

});

SPEC_END
