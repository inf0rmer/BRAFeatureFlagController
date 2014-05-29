//
//  BRAFeatureFlagController.m
//  Pods
//
//  Created by Bruno Abrantes on 30/05/14.
//
//

#import "BRAFeatureFlagController.h"
#import "BRAFeatureFlag.h"
#import <ObjectiveSugar/ObjectiveSugar.h>

@interface BRAFeatureFlagController ()

@property (nonatomic, strong) NSArray *features;

@end

@implementation BRAFeatureFlagController

#pragma mark - Initialization
- (instancetype)initWithFeatures:(NSArray *)features
{
  if (self = [super init]) {
    _features = features;
  }
  
  return self;
}

#pragma mark - Filtering
- (NSArray *)activeFeatures
{
  return [_features select:^BOOL(BRAFeatureFlag *feature) {
    return feature.isOn;
  }];
}

- (NSArray *)inactiveFeatures
{
  return [_features select:^BOOL(BRAFeatureFlag *feature) {
    return !feature.isOn;
  }];
}

@end
