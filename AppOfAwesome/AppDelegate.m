//
//  AppDelegate.m
//  AppOfAwesome
//
//  Created by Meghan Knoll Backup on 6/30/14.
//  Copyright (c) 2014 Meghan Knoll. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //Get bounds of device screen
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    
    //Allocate memory and init window with the bounds of the screen
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    //Allocate memory and init view controller and create pointer
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    //point our canvas-window contoller to the pointer
    self.window.rootViewController = colorTouchVC;
    //give access to all key and touch events
    [self.window makeKeyAndVisible];
    
    UIView *colorView = [[UIView alloc] initWithFrame:viewRect];
    colorView.backgroundColor = [UIColor yellowColor];
    colorTouchVC.view = colorView;
    
    NSLog(@"The screen is %f wide and %f tall",viewRect.size.width,viewRect.size.height);
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
