//
//  BRAFeatureFlagController.h
//  Pods
//
//  Created by Bruno Abrantes on 30/05/14.
//
//

#import <Foundation/Foundation.h>

@interface BRAFeatureFlagController : NSObject

#pragma mark - Initialization
- (instancetype)initWithFeatures:(NSArray *)features;

#pragma mark - Filtering
- (NSArray *)activeFeatures;
- (NSArray *)inactiveFeatures;

@end
