//
//  AppDelegate.m
//  3D-TouchDemo
//
//  Created by AnXinDai on 15/10/13.
//  Copyright © 2015年 君安信（北京）科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"122");
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
    NSLog(@"111");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(nonnull UIApplicationShortcutItem *)shortcutItem completionHandler:(nonnull void (^)(BOOL))completionHandler {
    //  Codes here
    //NSLog(@"====%@",shortcutItem.type);
    NSLog(@"100");
    DetailViewController *detail=[[DetailViewController alloc]init];
    
    if ([shortcutItem.type isEqualToString:@"one"]) {
        
        detail.idStr=@"第一个";
        
        [self.window.rootViewController presentViewController:detail animated:YES completion:^{
            
        }];
    }
    
    else if ([shortcutItem.type isEqualToString:@"two"]) {
        
        detail.idStr=@"第二个";
        
        [self.window.rootViewController presentViewController:detail animated:YES completion:^{
            
        }];
    }
    
    else if ([shortcutItem.type isEqualToString:@"three"]) {
        
        detail.idStr=@"第三个";
        
        [self.window.rootViewController presentViewController:detail animated:YES completion:^{
            
        }];
    }
    
    
}




@end
