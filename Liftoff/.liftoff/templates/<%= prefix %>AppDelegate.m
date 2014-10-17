//
//  <%= prefix %>AppDelegate.m
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import <ARAnalytics/ARAnalytics.h>
#import <ARAnalytics/ARDSL.h>

#import "<%= prefix %>AppDelegate.h"

@implementation <%= prefix %>AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [MagicalRecord setupAutoMigratingCoreDataStack];
    
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    [ARAnalytics setupWithAnalytics:@{ ARGoogleAnalyticsID : kKeyGoogleAnalytics, ARCrashlyticsAPIKey : kKeyCrashlytics } configuration: @{
        ARAnalyticsTrackedScreens: @[ @{
            ARAnalyticsClass: [UIViewController class]
        }]
    }];
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [MagicalRecord cleanUp];
}

@end
