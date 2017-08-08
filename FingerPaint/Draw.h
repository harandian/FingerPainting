//
//  Draw.h
//  FingerPaint
//
//  Created by Hirad on 2017-08-04.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface Draw : UIView


@property UIColor *color;
@property NSMutableArray *lines;
@property float width;


-(void)drawingStart:(CGPoint) location;
-(void)drawingcontinue:(CGPoint)location;
- (void)setColorBlue;
-(void)SetColortoRed;
- (void)setColorYellow;
//- (void) setLineWidth: (float) lineWidth;





@end
