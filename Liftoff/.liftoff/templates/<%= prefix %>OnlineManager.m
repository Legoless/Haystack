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
    // If url starts with WND it is a key for environment URL,
    // otherwise just specify the URL
    //
    
    NSString *selectedURL = [url hasPrefix:@"<%= prefix %>"] ? [KZBootstrap envVariableForKey:url] : url;
    
    return [[[self class] alloc] initWithBaseURL:[NSURL URLWithString:selectedURL]];
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
