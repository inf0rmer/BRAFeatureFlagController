//
//  BRAFeatureFlagControllerTests.m
//  BRAFeatureFlagController
//
//  Created by Bruno Abrantes on 30/05/14.
//  Copyright (c) 2014 Bruno Abrantes. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "BRAFeatureFlagController.h"
#import "BRAFeatureFlag.h"

@interface BRAFeatureFlagController ()

@property (nonatomic, strong) NSArray *features;

@end

SPEC_BEGIN(BRAFEATUREFLAGCONTROLLERSPEC)

describe(@"BRAFeatureFlagController", ^{
  describe(@"#initWithFeatures:", ^{
    __block BRAFeatureFlagController *controller;
    beforeEach(^{
      controller = [[BRAFeatureFlagController alloc] initWithFeatures:@[@(1), @(2)]];
    });
    
    it(@"sets the features property", ^{
      [[controller.features should] equal:@[@(1), @(2)]];
    });
  });
  
  describe(@"#activeFeatures", ^{
    __block BRAFeatureFlagController *controller;
    __block BRAFeatureFlag *feature1;
    __block BRAFeatureFlag *feature2;
    __block BRAFeatureFlag *feature3;
    beforeEach(^{
      feature1 = [[BRAFeatureFlag alloc] initWithName:@"spiders" andStatus:YES];
      feature2 = [[BRAFeatureFlag alloc] initWithName:@"cats" andStatus:NO];
      feature3 = [[BRAFeatureFlag alloc] initWithName:@"narwhals" andStatus:YES];
      controller = [[BRAFeatureFlagController alloc] initWithFeatures:@[feature1, feature2, feature3]];
    });
    
    it(@"returns an array of features that have isOn = YES", ^{
      [[[controller activeFeatures] should] equal:@[feature1, feature3]];
    });
  });
  
  describe(@"#inactiveFeatures", ^{
    __block BRAFeatureFlagController *controller;
    __block BRAFeatureFlag *feature1;
    __block BRAFeatureFlag *feature2;
    __block BRAFeatureFlag *feature3;
    beforeEach(^{
      feature1 = [[BRAFeatureFlag alloc] initWithName:@"spiders" andStatus:YES];
      feature2 = [[BRAFeatureFlag alloc] initWithName:@"cats" andStatus:NO];
      feature3 = [[BRAFeatureFlag alloc] initWithName:@"narwhals" andStatus:YES];
      controller = [[BRAFeatureFlagController alloc] initWithFeatures:@[feature1, feature2, feature3]];
    });
    
    it(@"returns an array of features that have isOn = NO", ^{
      [[[controller inactiveFeatures] should] equal:@[feature2]];
    });
  });
});

SPEC_END
