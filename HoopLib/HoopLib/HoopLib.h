//
//  HoopLib.h
//  HoopLib
//
//  Created by Sedat Gökbek ÇİFTÇİ on 26/10/2016.
//  Copyright © 2016 Sedat Gökbek ÇİFTÇİ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import <objc/runtime.h>

int setup();
void dump_objc_methods(Class clz) {
    
    unsigned int methodCount = 0;
    Method *methods = class_copyMethodList(clz, &methodCount);
    
    printf("Found %d methods on '%s'\n", methodCount, class_getName(clz));
    
    for (unsigned int i = 0; i < methodCount; i++) {
        Method method = methods[i];
        printf("\t'%s' has method named '%s' of encoding '%s'\n",
               class_getName(clz),
               sel_getName(method_getName(method)),
               method_getTypeEncoding(method));
    }
    free(methods);
}

@interface HoopView : NSView
@property(nonatomic, strong) NSString *hoopClassName;
@end

@interface HoopLib : NSObject
@property (nonatomic, strong) NSString *testText;
- (void)blockTest:(void(id, NSString*))p;
- (NSString *) newBlockTest:(void(id, id)) p andOtherBlock:(void(NSString*, NSString*))pp;
- (void) test;
@end
void dump_objc_methods(Class clz);
