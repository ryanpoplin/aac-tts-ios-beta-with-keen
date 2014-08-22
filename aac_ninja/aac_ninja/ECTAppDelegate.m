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
    
    [KeenClient sharedClientWithProjectId:@"02B64D7A2BE536B2955488BFEC88819E"
                              andWriteKey:@"06c877ad9e9b8df63816e4a7c9d81300bc35ac1217d480ad82847afd86cb99544eb5f5c45a9d3444ca5cadc361a94778526c14b2547e95c1cbef50986089b857b20bf6bec3aba0f74899316da422c4a1190a04f9167828198e59cc0c6b16dfe623fe724e055409f76bded0a30f0ff9ed"
                               andReadKey:@"e0e5afb05c5fc7818c12d9bb331ba38f32cdbb768281cd5956022cc54680038fea8e6f74a8f2c567db7dd71a92030a974ce5766941ef159c67ec1f805fcc9a6b56bf212befe422cbb131c31345d14218264138a9422b0d3b37fac98dcc36efd82cc3b0d67b49966fa11d62782b7e743e"];
    
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
