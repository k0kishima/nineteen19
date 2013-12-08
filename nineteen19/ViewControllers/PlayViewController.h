//
//  PlayViewController.h
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/07.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface PlayViewController : UIViewController{
    IBOutlet UITextField *promptField;
    IBOutlet UILabel *expressionLabel;
    IBOutlet UIProgressView *progressView;
    
    NSString *currentAnswer;
    Game *game;
    double remainder;
}

- (IBAction)tenkeyPressed:(id)sender;
- (IBAction)clearkeyPressed:(id)sender;
- (IBAction)enterkeyPressed:(id)sender;
@end
