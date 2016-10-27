//
//  HoopLib.h
//  HoopLib
//
//  Created by Sedat Gökbek ÇİFTÇİ on 26/10/2016.
//  Copyright © 2016 Sedat Gökbek ÇİFTÇİ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
int setup();

@interface HoopView : NSView
@property(nonatomic, strong) NSString *hoopClassName;
@end

@interface HoopLib : NSObject
@property (nonatomic, strong) NSString *testText;
- (void)blockTest:(void(id, NSString*))p;
- (NSString *) newBlockTest:(void(id, id)) p andOtherBlock:(void(NSString*, NSString*))pp;
- (void) test;
@end
