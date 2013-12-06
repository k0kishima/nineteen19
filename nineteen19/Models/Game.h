//
//  Game.h
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/02.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject
@property (nonatomic, retain) NSMutableArray *questions;
@property (nonatomic, retain) NSMutableArray *answers;

- (void) prepareQuestions;
- (NSMutableArray*) question;
- (BOOL) verify:(int) answer;
@end
