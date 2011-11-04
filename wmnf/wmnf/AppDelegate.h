//
//  AppDelegate.h
//  wmnf
//
//  Created by Matthew Cowley on 11/2/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate> {
    BOOL uiIsVisible;
    UIViewController *nowPlayingViewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) UIViewController *nowPlayingViewController;

@property (nonatomic) BOOL uiIsVisible;

@end
