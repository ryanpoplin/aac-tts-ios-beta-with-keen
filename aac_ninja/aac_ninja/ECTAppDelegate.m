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
    
    [KeenClient sharedClientWithProjectId:@"543aaec780a7bd5b1465bb83"
                              andWriteKey:@"9a6bdeeb494beba9d8484c86f1db10f856bdd99b59e8a9949dd0c07e08e87a881ed7590ed8adcf715eadaf2c320353319daecfe3bcd17d84ea95cdb65afe4dec2ae802bf5098d932e770220088eab6c507721f9d76c4167d02b52d21c0ed78fec0f0932b8b8b2e8cd062b14880bb5890" andReadKey:@"e3fd44035bacb9641500f310ab6f19d08688030e13d0ce377b55248298c156a3abf6ac46e457bba6fea26b211ce7fb25f72c4ccb489ed8b6271a251be04e12e89790016c01ff63087497cc0a3affee38b7d1383a84bc621080df6f6b23e18a6e893e812faca475b5d0ac1aeca65a273a"];
    
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
