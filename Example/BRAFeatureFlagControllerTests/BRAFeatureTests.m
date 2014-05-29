//
//  BRAFeatureTests.c
//  BRAFeatureFlagController
//
//  Created by Bruno Abrantes on 30/05/14.
//  Copyright (c) 2014 Bruno Abrantes. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "BRAFeatureFlag.h"

SPEC_BEGIN(BRAFEATUREFLAGSPEC)

describe(@"BRAFeatureFlag", ^{
  describe(@"#initWithName:andStatus:", ^{
    __block BRAFeatureFlag *flag;
    beforeEach(^{
      flag = [[BRAFeatureFlag alloc] initWithName:@"spiders"
                                        andStatus:YES];
    });
    
    it(@"sets the name property", ^{
      [[flag.name should] equal:@"spiders"];
    });
    
    it(@"sets the isOn property", ^{
      [[theValue(flag.isOn) should] beTrue];
    });
  });
  
  describe(@"#turnOn", ^{
    __block BRAFeatureFlag *flag;
    beforeEach(^{
      flag = [[BRAFeatureFlag alloc] initWithName:@"spiders"
                                        andStatus:NO];
    });
    
    it(@"sets isOn to YES", ^{
      [flag turnOn];
      [[theValue(flag.isOn) should] beTrue];
    });
  });
  
  describe(@"#turnOff", ^{
    __block BRAFeatureFlag *flag;
    beforeEach(^{
      flag = [[BRAFeatureFlag alloc] initWithName:@"spiders"
                                        andStatus:YES];
    });
    
    it(@"sets isOn to NO", ^{
      [flag turnOff];
      [[theValue(flag.isOn) shouldNot] beTrue];
    });
  });
});

SPEC_END
