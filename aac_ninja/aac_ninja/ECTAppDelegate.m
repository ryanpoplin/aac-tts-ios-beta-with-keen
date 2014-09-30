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
    
    [KeenClient sharedClientWithProjectId:@"542ab1913831443346b5a518"
                              andWriteKey:@"698ae07fcb46b7cfb4925c1410452ce402a4423ec00b5001d3103d2923cf3426c7d6329f930c74a2f8edcf69ad75cf3fa011def2d5f3129b165bff8b83c5a75e80cb7206007d243b9e251fdb50a0dd2f25c181633250ac60745e58d9a500188830992a64950f642b83687e3bf3df6931" andReadKey:@"8e2caa8e2ef74affbd668d861dd10bad0636fd498adbf40d32583f11b1d8cf4bd1548ca44b9168da342573872d75d2dee7466c567546e68fff41e5718ba6b1d80fc514b2618374fe3a63c1c7234c8f35abd4c4ea647197c659d366335513bba321cff5c3004aec4c3070ea346b2a98fc"];
    
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
