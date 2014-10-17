//
//  <%= prefix %>Tests.m
//  <%= project_name %>Tests
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface <%= project_name %>Tests : XCTestCase

@end

@implementation <%= project_name %>Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertTrue(1 == 1, @"Simple test");
}

@end
