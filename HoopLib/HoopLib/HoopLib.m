//
//  HoopLib.m
//  HoopLib
//
//  Created by Sedat Gökbek ÇİFTÇİ on 26/10/2016.
//  Copyright © 2016 Sedat Gökbek ÇİFTÇİ. All rights reserved.
//

#import "HoopLib.h"
#import <QuartzCore/QuartzCore.h>

int setup(){
    return 1;
}

@implementation HoopLib
- (void)blockTest:(void(id, NSString*))p {
	p(self, @"hello, from block");
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    [animation setKeyPath:@"position.x"];
    [animation setValues:@[]];
    [animation setAdditive:<#(BOOL)#>]
    [animation setDuration:<#(CFTimeInterval)#>]
    [animation setKeyTimes:<#(NSArray<NSNumber *> * _Nullable)#>]
    animation.keyPath = @"position.x";
    animation.values = @[ @0, @10, @-10, @10, @0 ];
    animation.keyTimes = @[ @0, @(1 / 6.0), @(3 / 6.0), @(5 / 6.0), @1 ];
    animation.duration = 0.4;
    
    animation.additive = YES;
    
}

- (void) test {
    NSLog(@"it works");
}
@end
