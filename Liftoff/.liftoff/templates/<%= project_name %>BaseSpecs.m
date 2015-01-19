//
//  <%= prefix %>BaseSpecs.m
//  <%= project_name %>Tests
//
//  Created by <%= author %> on <%= Time.now.strftime("%-m/%-d/%y") %>
//  Copyright (c) <%= Time.now.strftime('%Y') %> <%= company %>. All rights reserved.
//

#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>

//
// This file serves as a template for writing tests (specs)
//

SpecBegin(Base)

describe(@"Base", ^{
    __block NSArray *array;
    
    beforeEach(^{
        array = [[NSArray alloc] init];
    });
    
    it(@"can be created", ^{
        expect(array).toNot.beNil();
    });
    
    afterEach(^{
        array = nil;
    });
});

SpecEnd
