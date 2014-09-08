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
    
    [KeenClient sharedClientWithProjectId:@"540887470727195d34000003"
                              andWriteKey:@"1047d03d458b2b30a5896f02cd80a7c5dd8221ba293c6eb89e339da03d2bca3c5d3538bbe2396853e07f9b258c5f2a02056f01f91d779318ca08861e60c00af46982830f8bf0357e2f7bfd72735e9803036b8b9c7a6802e272b873401373a85c21dc3405d5d8ae3b21f2fde2574394cc" andReadKey:@"7834d59d5623311155cdc7c61839951928d64ccc763c8453092b0cccc40385efb9e719c69fd6449004f0d767dc641ee8cd9af693e84f3f2cbb807ac1907b0b4f20c7976116a44fe908f5eebd31db0f92f99f3803d1fb6a03ea079fc4f09cf50bf4c63a159d5dcab8920c3974531fe1c7"];
    
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
