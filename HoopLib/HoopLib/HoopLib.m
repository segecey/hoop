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

@implementation HoopView

@end

@implementation HoopLib
- (void)blockTest:(void(id, NSString*))p {
    p(self, @"hello, from block");
}

- (NSString*) newBlockTest:(void(id, id)) p andOtherBlock:(void(NSString*, NSString*))pp {
    HoopView *tmpView = [[HoopView alloc] init];
    [tmpView setHoopClassName:@"Hoop::View"];
    p(self, tmpView);
    pp(@"test1", @"test2");
    [NSColor blueColor];
    return @"Hello !!1";
}

- (void) test {
    NSLog(@"it works");
}
@end
