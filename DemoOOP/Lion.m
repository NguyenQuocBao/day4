//
//  Lion.m
//  DemoOOP
//
//  Created by techmaster on 10/4/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Lion.h"

@implementation Lion
- (id) initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Hu hu", @"Gu gu", nil];
    return self;
}
@end
