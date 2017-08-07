//
//  Draw.m
//  FingerPaint
//
//  Created by Hirad on 2017-08-04.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "Draw.h"

@interface Draw ()

@property (strong, nonatomic) UIBezierPath *path;

@end


@implementation Draw


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _path = [UIBezierPath bezierPath];
        _path.lineWidth = 10;
        _color = [UIColor redColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    
    // Drawing code
    
    [self.color setStroke];
    
    [self.path stroke];
    
    NSLog(@"draw rect method");
    
    
}


-(void)drawingStart:(CGPoint) location{
    
    [self.path  moveToPoint: location];
    
    
    
    
    NSLog(@"draw rect move to point");

    
    
}
-(void)drawingcontinue:(CGPoint)location{
    
    [self.path addLineToPoint:location];
    
    NSLog(@"draw rect add line to point ");
    [self setNeedsDisplay];

    
}

-(void)SetColortoRed {
    
    self.color = [UIColor redColor];

}

- (void)setColorBlue {
    
    self.color = [UIColor blueColor];
    
}

- (void)setColorYellow{
    
    self.color = [UIColor yellowColor];
    
}

@end
