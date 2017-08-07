//
//  Line.h
//  FingerPaint
//
//  Created by Hirad on 2017-08-05.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface Line : UIView

@property NSMutableArray *lineLocation;
@property UIColor *lineColor;
@property float *lineWidth;

- (instancetype)initWithColor :(UIColor*) color andLocation: (CGPoint)location;

@end
