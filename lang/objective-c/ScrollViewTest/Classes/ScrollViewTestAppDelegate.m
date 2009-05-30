//
//  ScrollViewTestAppDelegate.m
//  ScrollViewTest
//
//  Created by akio0911 on 09/05/21.
//  Copyright akio0911 2009. All rights reserved.
//

#import "ScrollViewTestAppDelegate.h"
#import "RootViewController.h"

@implementation ScrollViewTestAppDelegate

@synthesize window;
@synthesize rootViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	self.rootViewController = [[RootViewController alloc] initWithNibName:@"RootView" bundle:[NSBundle mainBundle]];
	[self.window addSubview:self.rootViewController.view];
	
    [window makeKeyAndVisible];
}

- (void)dealloc {
	[self.rootViewController release];
    [self.window release];
    [super dealloc];
}


@end
