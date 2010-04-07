//
//  ColorTapAppDelegate.m
//  ColorTap
//
//  Created by akio0911 on 10/04/06.
//  Copyright akio0911 2010. All rights reserved.
//

#import "ColorTapAppDelegate.h"

@implementation ColorTapAppDelegate

@synthesize window;
@synthesize mainViewController = mainViewController_;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

	self.mainViewController = [[[MainViewController alloc] init] autorelease];
	self.mainViewController.view.backgroundColor = [UIColor redColor];
	self.mainViewController.view.frame = [UIScreen mainScreen].applicationFrame;
	[window addSubview:self.mainViewController.view];
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
	[self.mainViewController release];
    [window release];
    [super dealloc];
}


@end
