//
//  <%= prefix %>OnlineManager.m
//  <%= project_name %>
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import "<%= prefix %>OnlineManager.h"

@implementation <%= prefix %>OnlineManager

+ (instancetype)manager
{
    //
    // TODO: Set server URL
    //
    NSString *url = [NSString stringWithFormat:@"%@%@", kURLServerMain, kURLAPIMain];
    
    return [[[self class] alloc] initWithBaseURL:[NSURL URLWithString:url]];
}

- (id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    
    if (self)
    {
    }
    
    return self;
}

@end
