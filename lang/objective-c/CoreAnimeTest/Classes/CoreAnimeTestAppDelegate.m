//
//  CoreAnimeTestAppDelegate.m
//  CoreAnimeTest
//
//  Created by akio0911 on 09/05/15.
//  Copyright akio0911 2009. All rights reserved.
//

#import "CoreAnimeTestAppDelegate.h"
#import "CoreAnimeTestViewController.h"

@implementation CoreAnimeTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	UIView * aView = [[[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)] autorelease];
	aView.backgroundColor = [UIColor redColor];
	[viewController.view addSubview:aView];
	
	CGContextRef context = UIGraphicsGetCurrentContext(); 
	[UIView beginAnimations:nil context:context]; 
	[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut]; 
	[UIView setAnimationDuration:10.0]; 
	// Animations 
	aView.transform = CGAffineTransformMakeRotation(180.0f * M_PI / 180.0f);
	// Commit Animation Block 
	[UIView commitAnimations]; 
	
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
