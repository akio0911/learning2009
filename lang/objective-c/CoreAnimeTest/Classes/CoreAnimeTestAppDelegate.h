//
//  CoreAnimeTestAppDelegate.h
//  CoreAnimeTest
//
//  Created by akio0911 on 09/05/15.
//  Copyright akio0911 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CoreAnimeTestViewController;

@interface CoreAnimeTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CoreAnimeTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CoreAnimeTestViewController *viewController;

@end

