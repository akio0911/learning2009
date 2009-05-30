//
//  ScrollViewTestAppDelegate.h
//  ScrollViewTest
//
//  Created by akio0911 on 09/05/21.
//  Copyright akio0911 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface ScrollViewTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	RootViewController * rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) RootViewController *rootViewController;

@end

