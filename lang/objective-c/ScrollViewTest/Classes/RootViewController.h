//
//  RootViewController.h
//  ScrollViewTest
//
//  Created by akio0911 on 09/05/21.
//  Copyright 2009 akio0911. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIScrollViewDelegate> {
	UIScrollView * scrollView;
	UIView * contentView;
	NSMutableArray * views;
	UIButton * button1;
	UIButton * button2;
	UIButton * button3;
	float scrollScale;
}

- (void)pressButton:(int)index;
- (IBAction)pressButton1:(id)sender;
- (IBAction)pressButton2:(id)sender;
- (IBAction)pressButton3:(id)sender;

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) UIView *contentView;
@property (nonatomic, retain) NSMutableArray * views;
@property (nonatomic, retain) IBOutlet UIButton *button1;
@property (nonatomic, retain) IBOutlet UIButton *button2;
@property (nonatomic, retain) IBOutlet UIButton *button3;
@property (nonatomic, assign) float scrollScale;

@end
