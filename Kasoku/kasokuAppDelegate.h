//
//  kasokuAppDelegate.h
//  Kasoku
//
//  Created by KENJIRO HIRAMATSU on 12/04/30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface kasokuAppDelegate : UIResponder <UIApplicationDelegate ,CLLocationManagerDelegate> {
    UIWindow *window;
}

@property (strong, nonatomic) UIWindow *window;

@end
