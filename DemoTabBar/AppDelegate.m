//
//  AppDelegate.m
//  DemoTabBar
//
//  Created by Rajesh's MacBook Pro  on 1/6/18.
//  Copyright © 2018 MacBook Pro Retina. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewControllerA.h"
#import "ViewControllerB.h"
#import "ViewControllerC.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initUI];
    return YES;
}
-(void) initUI{
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    
    self.rootTabBarController = [[UITabBarController alloc] init];
    
    ViewControllerA *vcA = [[ViewControllerA alloc] initWithNibName:@"ViewControllerA" bundle:nil];
    UINavigationController *navA = [[UINavigationController alloc] initWithRootViewController:vcA];
    UITabBarItem *itemA = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:0];
    navA.tabBarItem = itemA;
    
    ViewControllerB *vcB = [[ViewControllerB alloc] initWithNibName:@"ViewControllerB" bundle:nil];
    UINavigationController *navB = [[UINavigationController alloc] initWithRootViewController:vcB];
    UITabBarItem *itemB = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    navB.tabBarItem = itemB;
    
    ViewControllerC *vcC = [[ViewControllerC alloc] initWithNibName:@"ViewControllerC" bundle:nil];
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:vcC];
    UITabBarItem *itemC = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];
    navC.tabBarItem = itemC;
    
    self.rootTabBarController.viewControllers = @[navA,navB,navC];
    [self.window setRootViewController:self.rootTabBarController];
    [self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
