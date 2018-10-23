//
//  ComputerVisionAzureTests.m
//  ComputerVisionAzureTests
//
//  Created by vladimir-shcherbakov on 10/18/2018.
//  Copyright (c) 2018 vladimir-shcherbakov. All rights reserved.
//

@import XCTest;
#import "ComputerVisionAzure-umbrella.h"

@interface Tests : XCTestCase
@property id<ComputerVisionClientProtocol> service;
@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSString* key =  [[NSProcessInfo processInfo] environment][@"SUBSCRIPTION_KEY"];
    if (!key) {
        key = @"UNDEFINED";
    }
    self.service = [ComputerVisionClient createWithEndpoint:@"westus2.api.cognitive.microsoft.com"
                                        withSubscriptionKey:key];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSDictionary* d = @{@"one":@1};
    NSMutableDictionary* md = [[NSMutableDictionary alloc] initWithDictionary:d];
    [md addEntriesFromDictionary:@{@"two":@2}];
    NSDictionary* dd = md;
}

- (void) test__listModels {
    XCTestExpectation *waitingLoading = [self expectationWithDescription:@"Wait for HTTP request to complete"];
    [self.service listModelsWithCallback:^(ListModelsResult* result, OperationError* error) {
        XCTAssertNil(error, @"%@", error.reason);
        
        for (ModelDescription* md in result.modelsProperty) {
            
            NSLog(@"Name: %@", md.name);
            for (NSString* c in md.categories) {
                NSLog(@"....%@", c);
            }
        }
        
        [waitingLoading fulfill];
    }];
    [self waitForExpectationsWithTimeout:100 handler:^(NSError *error) {
        if (error) {XCTFail(@"After block was not called.");}
    }];
}


@end

