//
//  BRAFeatureFlag.m
//  Pods
//
//  Created by Bruno Abrantes on 30/05/14.
//
//

#import "BRAFeatureFlag.h"

@interface BRAFeatureFlag ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL isOn;

@end

@implementation BRAFeatureFlag

#pragma mark - Initialization
- (instancetype)initWithName:(NSString *)name
                   andStatus:(BOOL)status
{
  if (self = [super init]) {
    self.name = name;
    self.isOn = status;
  }
  
  return self;
}

#pragma mark - Control
- (void)turnOn
{
  self.isOn = YES;
}

- (void)turnOff
{
  self.isOn = NO;
}

@end
