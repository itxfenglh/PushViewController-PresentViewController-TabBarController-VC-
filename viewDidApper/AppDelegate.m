//
//  AppDelegate.m
//  viewDidApper
//
//  Created by fenglh on 15/9/14.
//  Copyright (c) 2015年 fenglh. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController1.h"
#import "ViewController2.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    
    
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    vc1.title = @"VC1";
    vc1.tabBarItem.image = [UIImage imageNamed:@"u96.png"];
    vc1.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc1];
    
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    vc2.title = @"VC2";
    vc2.tabBarItem.image = [UIImage imageNamed:@"u100.png"];
    vc2.view.backgroundColor = [UIColor whiteColor];
    
    
    tabBarController.viewControllers = @[navVC, vc2];

    self.window.rootViewController =tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end