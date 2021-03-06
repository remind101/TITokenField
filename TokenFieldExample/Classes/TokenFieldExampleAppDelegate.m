//
//  TokenFieldExampleAppDelegate.m
//  TokenFieldExample
//
//  Created by Tom Irving on 29/01/2011.
//  Copyright 2011 Tom Irving. All rights reserved.
//

#import "TokenFieldExampleAppDelegate.h"
#import "TokenFieldExampleViewController.h"

@implementation TokenFieldExampleAppDelegate {
	UIWindow * _window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	TokenFieldExampleViewController * viewController = [[TokenFieldExampleViewController alloc] init];
	UINavigationController * navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[navigationController]];
	[viewController release];
	
    [_window setRootViewController:tabBarController];
	[navigationController release];
	
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)dealloc {
    [_window release];
    [super dealloc];
}

@end