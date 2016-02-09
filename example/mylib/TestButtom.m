//
//  Button.m
//  Testttttttt
//
//  Created by Sedat Ciftci on 09/02/16.
//  Copyright © 2016 Sedat G. Ciftci. All rights reserved.
//

#import "TestButton.h"
int force(){
  return 1;
}

@implementation TestButton

- (id) initWithFrame:(NSRect)frameRect andTitle:(NSString *) title {
    if (self = [super initWithFrame:frameRect]) {
        NSLog(@"Test Button generated !");
        [self setTitle:@"Hello !!1"];
    }
    return self;
}

@end
