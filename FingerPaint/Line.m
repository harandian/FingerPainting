//
//  Line.m
//  FingerPaint
//
//  Created by Hirad on 2017-08-05.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initWithColor :(UIColor*) color andLocation: (CGPoint)location
{
    self = [super init];
    if (self) {
        _lineColor = color;
        _lineLocation = [[NSMutableArray alloc] initWithObjects: [NSValue valueWithCGPoint:location], nil];
        _lineWidth = 5.0;
    }
    return self;
}

@end
