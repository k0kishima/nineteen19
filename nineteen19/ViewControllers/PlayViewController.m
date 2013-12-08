//
//  PlayViewController.m
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/07.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import "PlayViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface PlayViewController ()

@end

@implementation PlayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    currentAnswer = @"";
    game = [Game alloc];
    [game prepareQuestions];
    remainder = (double)[game.answers count];
    
    promptField.layer.borderWidth = 1.0;
    
    NSMutableArray* operands = [game question];
    expressionLabel.text = [NSString stringWithFormat:@"%d × %d = ",
                            [[operands objectAtIndex:0] integerValue], [[operands objectAtIndex:1] integerValue]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tenkeyPressed:(id)sender {
    UIButton *resultButton = (UIButton *)sender;
    currentAnswer = [currentAnswer stringByAppendingString:resultButton.currentTitle];
    promptField.text = currentAnswer;
}

- (IBAction)clearkeyPressed:(id)sender {
    currentAnswer = @"";
    promptField.text = currentAnswer;
}

- (IBAction)enterkeyPressed:(id)sender {
    if ([game verify:[currentAnswer intValue]]) {
        promptField.layer.borderColor = [[UIColor greenColor] CGColor];
        [progressView setProgress:progressView.progress + (double) 1.0 / remainder animated:YES];
        
        if ([game isCleared]) {
        }
        
        NSMutableArray* operands = [game question];
        expressionLabel.text = [NSString stringWithFormat:@"%d × %d = ",
                                [[operands objectAtIndex:0] integerValue], [[operands objectAtIndex:1] integerValue]];
    } else {
        promptField.layer.borderColor = [[UIColor redColor] CGColor];
    }
    
    currentAnswer = @"";
    promptField.text = currentAnswer;
}
@end
