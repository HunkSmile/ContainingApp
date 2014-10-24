//
//  AppDelegate.m
//  ContainingApp
//
//  Created by Hunk on 14/10/22.
//  Copyright (c) 2014年 Hunk. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *err = nil;
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.com.hunk.assistant"];
    NSString *sorPath = [NSString stringWithFormat:@"%@/Sum.framework",[[NSBundle mainBundle] bundlePath]];
    NSString *desPath = [NSString stringWithFormat:@"%@/Library/Caches/Sum.framework",containerURL.path];
    
    BOOL removeResult = [manager removeItemAtPath:desPath error:&err];
    if (!removeResult) {
        NSLog(@"%@",err);
    } else {
        NSLog(@"remove success.");
    }
    
    BOOL copyResult = [[NSFileManager defaultManager] copyItemAtPath:sorPath toPath:desPath error:&err];
    if (!copyResult) {
        NSLog(@"%@",err);
    } else {
        NSLog(@"copy success.");
    }
    */
    
    /*
    NSError *err = nil;
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.com.hunk.assistant"];
    NSString *desPath = [NSString stringWithFormat:@"%@/Library/Caches/TBLotteryUIKit.framework",containerURL.path];
    NSBundle *bundle = [NSBundle bundleWithPath:desPath];
    BOOL result = [bundle loadAndReturnError:&err];
    if (result) {
        Class root = NSClassFromString(@"Sum");
        if (root) {
            id sum = [[root alloc] init];
            if (sum) {
            }
        }
    } else {
        NSLog(@"%@",err);
    }
    */
    
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
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
