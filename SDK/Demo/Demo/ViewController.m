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
    
    //UIImage* image = [[UIApplication sharedApplication] screenshot];
}

- (void)logDeviceInformation
{
    NSLog(@"--- Hardware Information Dump ---");
    
    NSLog (@"CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuCount);
    NSLog (@"Active CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuActiveCount);
    NSLog (@"Physical CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuPhysicalCount);
    NSLog (@"Physical Max CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuPhysicalMaximumCount);
    NSLog (@"Logical CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuLogicalCount);
    NSLog (@"Logical Max CPU Count: %lu", (unsigned long)[UIDevice currentDevice].hs_cpuLogicalMaximumCount);
    NSLog (@"CPU Frequency: %@", [HSUnitFormatter stringFromNumber:@([UIDevice currentDevice].hs_cpuFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Maximum Frequency: %@", [HSUnitFormatter stringFromNumber:@([UIDevice currentDevice].hs_cpuMaximumFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Minimum Frequency: %@", [HSUnitFormatter stringFromNumber:@([UIDevice currentDevice].hs_cpuMinimumFrequency) forUnit:HSUnitFormatterUnitTypeHertz]);
    NSLog (@"CPU Type: %@", [UIDevice currentDevice].hs_cpuType);
    NSLog (@"CPU Subtype: %@", [UIDevice currentDevice].hs_cpuSubType);
    NSLog (@"CPU Architectures: %@", [UIDevice currentDevice].hs_cpuArchitectures);
    
    NSLog (@"Memory Marketing Size: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hs_memoryMarketingSize countStyle:NSByteCountFormatterCountStyleBinary]);
    NSLog (@"Memory Physical Size: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hs_memoryPhysicalSize countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Disk Marketing Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hs_diskMarketingSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Disk Total Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hs_diskTotalSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    NSLog (@"Disk Free Space: %@", [NSByteCountFormatter stringFromByteCount:[UIDevice currentDevice].hs_diskFreeSpace countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"--- Software Information Dump ---");
    
    NSLog (@"System uptime: %@", [UIDevice currentDevice].hs_systemBootDate);
    
    NSLog (@"Process Count: %lu", (unsigned long)[UIDevice currentDevice].hs_processCount);
    NSLog (@"CPU Usage: %d%%", (int)([UIDevice currentDevice].hs_cpuUsage * 100.0));
    
    NSLog (@"--- Application Information Dump ---");
    
    NSLog (@"Application Memory Footprint: %@", [NSByteCountFormatter stringFromByteCount:[UIApplication sharedApplication].memorySize countStyle:NSByteCountFormatterCountStyleBinary]);
    
    NSLog (@"Thread Count: %lu", (unsigned long)[UIApplication sharedApplication].threadCount);
    
    NSLog (@"--- Network Information Dump ---");
    
    NSLog (@"SSID: %@", [[UIDevice currentDevice] hs_SSID]);
    NSLog (@"BSSID: %@", [[UIDevice currentDevice] hs_BSSID]);
    NSLog (@"MAC Address: %@", [[UIDevice currentDevice] hs_macAddress]);
    NSLog (@"Local IP Addresses: %@", [[UIDevice currentDevice] hs_localIPAddresses]);
}

@end
