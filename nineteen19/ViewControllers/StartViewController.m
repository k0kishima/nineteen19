//
//  StartViewController.m
//  nineteen19
//
//  Created by Kohta Okishima on 2013/12/07.
//  Copyright (c) 2013年 VERTEX-JAPAN. All rights reserved.
//

#import "StartViewController.h"
#import "PlayViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    PlayViewController* playViewController = [[PlayViewController alloc] init];
    [self.navigationController pushViewController:playViewController animated:YES];
}
@end