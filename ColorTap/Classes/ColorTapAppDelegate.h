//
//  ColorTapAppDelegate.h
//  ColorTap
//
//  Created by akio0911 on 10/04/06.
//  Copyright akio0911 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface ColorTapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	MainViewController* mainViewController_;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain)  MainViewController *mainViewController;

@end

