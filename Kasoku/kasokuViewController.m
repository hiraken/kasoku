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


@implementation kasokuViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIAccelerometer *accel = [UIAccelerometer sharedAccelerometer];
	accel.delegate = self;
	accel.updateInterval = 0.5;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
	
    const float violence = 0.1;
	static BOOL beenhere;
	BOOL shake = FALSE;
	if (beenhere) return;
	beenhere = TRUE;
	if (acceleration.x > violence || acceleration.x < (-1* violence))
		shake = TRUE;
	if (acceleration.y > violence || acceleration.y < (-1* violence))
		shake = TRUE;
	if (acceleration.z > violence || acceleration.z < (-1* violence))
		shake = TRUE;
    
	if (shake) { 
     
        /*　シェイク処理を行う */
        //AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        NSString *str = [NSString stringWithFormat:@"%d", violence];
        [te1 setText:str];
 }
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

