//
//  kasokuViewController.m
//  Kasoku
//
//  Created by KENJIRO HIRAMATSU on 12/04/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "kasokuViewController.h"

@interface kasokuViewController ()

@end

@implementation kasokuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
