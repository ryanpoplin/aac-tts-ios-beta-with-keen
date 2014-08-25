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
    
    [KeenClient sharedClientWithProjectId:@"53f4a09a709a390e41000000"
                              andWriteKey:@"b00ebbc01c247b411bb7510ca8eacc2e7408712693752fbd2da88305415e2a0783171b39bc796d18ca9fdedabbabd65978d77e5d4297017dd119d7ef1922fae8ca6d6dca7ff372e107232b26931229d4158d0615ffc352204d674136aba1d2e3127d7cd4987e126b38868ac7d3e94441" andReadKey:@"e1595e820d5c30f2e22d35b0b371b3c2d312cffec5acead9d32006989d6a999e34607f991f2826108dfb17eafc7bead3ad31f7e63cccd8caa1d569ffb75812b6b51a233c7dab73f261ac06885a607d5e3b974052d3230dd78159422bef51eef74bc00f7193d2d645ff25dbb653897815"];
    
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
