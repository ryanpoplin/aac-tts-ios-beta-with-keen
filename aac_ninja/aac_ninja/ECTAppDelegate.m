//
//  ECTAppDelegate.m
//  aac_ninja
//
//  Created by Byrdann Fox on 8/18/14.
//  Copyright (c) 2014 ExcepApps, Inc. All rights reserved.
//

#import "ECTAppDelegate.h"
#import "KeenClient.h"
#import "KeenProperties.h"
#import "KIOEventStore.h"

@implementation ECTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // is this for all data from let's say 100,000 users' account...
    
    // config seperation between KEEN>JS and KEEN>IO iOS SDK...
    
    [KeenClient sharedClientWithProjectId:@"542d9ea40727193a192dec9e"
                              andWriteKey:@"dc80f3a1f7d68c9396c1a6be2f5daa082a41ac6b0c67ef5850e02e93bf3626cf2731c7369bcf224fb0ddc2d552b053dce5d5e3dba755aefa0da14f90ac95df57c66c5568277676c549681612dd13d2ccf2bbbafb5bd52709ced7f45afe9bfc94d611c638df3401f5555d56c071fc0f66" andReadKey:@"4ca8b097d15e0d9461b8eb21966ab18b771bb98c372881e87caa2613a4c3d70c3dc360940a96c535714881ae4abd671b809a18ff0f776d82e9f71b832759e377565d3b4d39c5d83535ec9a8212c33a049542e9924502887144d3d6ac4dd72ed9edbe2b7cf7b6f98e8576446a55cd9ef4"];
    
    // Override point for customization after application launch.
    
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
