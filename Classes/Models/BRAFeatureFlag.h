//
//  BRAFeatureFlag.h
//  Pods
//
//  Created by Bruno Abrantes on 30/05/14.
//
//

#import <Foundation/Foundation.h>

@interface BRAFeatureFlag : NSObject

@property (readonly) NSString *name;
@property (readonly) BOOL isOn;

#pragma mark - Initialization
- (instancetype)initWithName:(NSString *)name
                   andStatus:(BOOL)status;

#pragma mark - Control
- (void)turnOn;
- (void)turnOff;

@end
