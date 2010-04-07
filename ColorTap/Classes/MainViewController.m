    //
//  MainViewController.m
//  ColorTap
//
//  Created by akio0911 on 10/04/07.
//  Copyright 2010 akio0911. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

@synthesize buttons = buttons_;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame] autorelease];
	
	self.buttons = [NSMutableArray array];
	const int kButtonColumn = 4;
	const int kButtonRow = 4;
	const CGFloat kButtonWidth = self.view.frame.size.width / kButtonColumn;
	const CGFloat kButtonHeight = self.view.frame.size.height / kButtonRow;
	const CGFloat kButtonSize = kButtonWidth < kButtonHeight ? kButtonWidth : kButtonHeight;
	for(int y = 0; y < kButtonRow; y++){
		for(int x = 0; x < kButtonColumn; x++){
			UIView* button = [[[UIView alloc] initWithFrame:CGRectZero] autorelease];
			button.frame = CGRectMake(kButtonSize * x, 
									  kButtonSize * y, 
									  kButtonSize,
									  kButtonSize);
			[self.view addSubview:button];
			[self.buttons addObject:button];
		}
	}
	
	NSMutableArray* colors = [NSMutableArray array];
	for(float red = 0.0f; red <= 1.0f; red += 0.5f){
		for(float green = 0.0f; green <= 1.0f; green += 0.5f){
			for(float blue = 0.0f; blue <= 1.0f; blue += 0.5f){
				[colors addObject:[UIColor colorWithRed:red green:green blue:blue alpha:1.0f]];
			}
		}
	}
				 
	NSUInteger i, count = [self.buttons count];
	for (i = 0; i < count; i++) {
		NSObject * obj = [self.buttons objectAtIndex:i];
		UIButton* button = (UIButton*)obj;
		NSLog(@"[colors objectAtIndex:i] = %@", [colors objectAtIndex:i]);
		button.backgroundColor = [colors objectAtIndex:i];
	}
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[self.buttons release];
    [super dealloc];
}


@end
