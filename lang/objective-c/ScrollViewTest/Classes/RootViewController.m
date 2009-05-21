//
//  RootViewController.m
//  ScrollViewTest
//
//  Created by akio0911 on 09/05/21.
//  Copyright 2009 akio0911. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController

@synthesize scrollView;
@synthesize contentView;
@synthesize views;
@synthesize button1;
@synthesize button2;
@synthesize button3;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
	}
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIView * aContentView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 1000.0f, 1000.0f)];
	self.contentView = aContentView;
	self.contentView.backgroundColor = [UIColor blueColor];
	[aContentView release];
	
	self.scrollView.contentSize = self.contentView.bounds.size;
	[self.scrollView addSubview:self.contentView];
	self.scrollView.backgroundColor = [UIColor redColor];
	self.scrollView.minimumZoomScale = 1.0/2.0;
	self.scrollView.maximumZoomScale = 2.0;
	self.scrollView.delegate = self;
	[self.scrollView setContentSize:self.contentView.bounds.size];
	
	self.views = [NSMutableArray array];
	for (int y = 0; y < 2; y++) {
		for (int x = 0; x < 2; x++) {
			UIView * aView = [[UIView alloc] initWithFrame:CGRectMake(400.0f * x, 400.0f * y, 100.0f, 100.0f)];
			aView.backgroundColor = [UIColor redColor];
			[self.contentView addSubview:aView];
			[self.views addObject:aView];
			[aView release];
		}
	}
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction)pressButton1:(id)sender
{
	NSLog(@"%@ %s", [self class], __func__);
	UIView * aView = [self.views objectAtIndex:0];
	CGRect r = aView.bounds;
	r.origin.x = aView.center.x - aView.bounds.size.width / 2.0f;
	r.origin.y = aView.center.y - aView.bounds.size.height / 2.0f;
	NSLog(@"%f %f %f %f", r.origin.x, r.origin.y, aView.bounds.size.width, aView.bounds.size.height);
	[scrollView scrollRectToVisible:r animated:YES];
}

- (IBAction)pressButton2:(id)sender
{
	NSLog(@"%@ %s", [self class], __func__);
	UIView * aView = [self.views objectAtIndex:1];
	CGRect r = aView.bounds;
	r.origin.x = aView.center.x - aView.bounds.size.width / 2.0f;
	r.origin.y = aView.center.y - aView.bounds.size.height / 2.0f;
	NSLog(@"%f %f %f %f", r.origin.x, r.origin.y, aView.bounds.size.width, aView.bounds.size.height);
	[scrollView scrollRectToVisible:r animated:YES];
}

- (IBAction)pressButton3:(id)sender
{
	NSLog(@"%@ %s", [self class], __func__);
	UIView * aView = [self.views objectAtIndex:2];
	CGRect r = aView.bounds;
	r.origin.x = aView.center.x - aView.bounds.size.width / 2.0f;
	r.origin.y = aView.center.y - aView.bounds.size.height / 2.0f;
	NSLog(@"%f %f %f %f", r.origin.x, r.origin.y, aView.bounds.size.width, aView.bounds.size.height);
	[scrollView scrollRectToVisible:r animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {  
	id gestureInfo = [self.contentView valueForKey:@"gestureInfo"];  
	NSLog(  
		  @"will: %f %@ %@ %@",  
		  self.contentView.transform.a,  
		  [gestureInfo valueForKey:@"zoomScale"],  
		  [gestureInfo valueForKey:@"minScale"],  
		  [gestureInfo valueForKey:@"maxScale"]  
		  );  
	return self.contentView;
}  

- (void)dealloc {
	[self.views release];
	[self.contentView release];
	[self.scrollView release];
    [super dealloc];
}


@end
