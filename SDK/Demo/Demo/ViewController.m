//
//  ViewController.m
//  Demo
//
//  Created by Dal Rupnik on 10/11/14.
//  Copyright (c) 2014 arvystate.net. All rights reserved.
//

#import "Haystack.h"

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self logDeviceInformation];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //UIImage* image = [[UIApplication sharedApplication] hay_screenshot];
}

- (void)logDeviceInformation
{
    NSLog(@"--- Hardware Information Dump ---");
    
    NSLog (@"CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuCount);
    NSLog (@"Active CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuActiveCount);
    NSLog (@"Physical CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuPhysicalCount);
    NSLog (@"Physical Max CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuPhysicalMaximumCount);
    NSLog (@"Logical CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuLogicalCount);
    NSLog (@"Logical Max CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hay_cpuLogicalMaximumCount);
    NSLog (@"CPU Frequency: %@", [HAYUnitFormatter stringFromNumber:@([UIDevice currentDevice].hay_cpuFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Maximum Frequency: %@", [HAYUnitFormatter stringFromNumber:@([UIDevice currentDevice].hay_cpuMaximumFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Minimum Frequency: %@", [HAYUnitFormatter stringFromNumber:@([UIDevice currentDevice].hay_cpuMinimumFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Type: %@", [UIDevice currentDevice].hay_cpuType);
    NSLog (@"CPU Subtype: %@", [UIDevice currentDevice].hay_cpuSubType);
    NSLog (@"CPU Architectures: %@", [UIDevice currentDevice].hay_cpuArchitectures);
    
    NSLog (@"Memory Marketing Size: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hay_memoryMarketingSize countStyle:NSByteCountFormatterCountStyleBinary]);
    NSLog (@"Memory Physical Size: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hay_memoryPhysicalSize countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Disk Marketing Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hay_diskMarketingSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Disk Total Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hay_diskTotalSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    NSLog (@"Disk Free Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hay_diskFreeSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"--- Software Information Dump ---");
    
    NSLog (@"System uptime: %@", [UIDevice currentDevice].hay_systemBootDate);
    
    NSLog (@"Process Count: %lu", (unsigned long)[UIDevice currentDevice].hay_processCount);
    NSLog (@"CPU Usage: %d%%", (int)([UIDevice currentDevice].hay_cpuUsage * 100.0));
    
    NSLog (@"--- Application Information Dump ---");
    
    NSLog (@"Application Memory Footprint: %@", [NSByteCountFormatter stringFromByteCount:[UIApplication sharedApplication].hay_memorySize countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Thread Count: %lu", (unsigned long)[UIApplication sharedApplication].hay_threadCount);
    
    NSLog (@"--- Network Information Dump ---");
    
    NSLog (@"SSID: %@", [[UIDevice currentDevice] hay_SSID]);
    NSLog (@"BSSID: %@", [[UIDevice currentDevice] hay_BSSID]);
    NSLog (@"MAC Address: %@", [[UIDevice currentDevice] hay_macAddress]);
    NSLog (@"Local IP Addresses: %@", [[UIDevice currentDevice] hay_localIPAddresses]);

    
    NSLog (@"--- Properties ---");
    NSLog (@"%@", [[UIViewController class] hay_properties]);
    
    NSLog (@"--- URL Parameters ---");
    NSLog (@"%@", [NSURL URLWithString:@"http://www.google.com/google?test=test&something=1"].hay_queryParameters);
    
    NSLog (@"--- Random strings ---");
    NSLog (@"Alpha string: %@", [NSString hay_randomAlphaStringOfLength:10]);
    NSLog (@"Alpha-numeric string: %@", [NSString hay_randomAlphaNumericStringOfLength:10]);
    NSLog (@"Random string: %@", [NSString hay_randomStringOfLength:10]);
}

@end
