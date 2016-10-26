//
//  HoopLib.m
//  HoopLib
//
//  Created by Sedat Gökbek ÇİFTÇİ on 26/10/2016.
//  Copyright © 2016 Sedat Gökbek ÇİFTÇİ. All rights reserved.
//

#import "HoopLib.h"

int setup(){
    return 1;
}

@implementation HoopLib
- (void)blockTest:(void(id))p {
	p(self);
}
- (void) test {
    NSLog(@"it works");
}
@end
