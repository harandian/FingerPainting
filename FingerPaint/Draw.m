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
        //_path = [UIBezierPath bezierPath];
       // _path.lineWidth = 10;
        _color = [UIColor redColor];
        _lines = [[NSMutableArray alloc] init];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    //    NSLog(@" number of lines %i" ,[self.lines count]);
    
    
    // Drawing code
    
    for (int i = 0; i < self.lines.count; i++)
        
    {
        
        UIBezierPath *bezierPath = [[UIBezierPath alloc] init];
        
        Line *line = [self.lines objectAtIndex:i];
        
        [line.lineColor setStroke];
        
        
        NSLog(@"this is what is in IIIII %i", i);
        
        for (int j = 0; j < line.lineLocation.count; j++)
        {
            CGPoint currentPoint = [[line.lineLocation objectAtIndex:j] CGPointValue];
            
            if (j == 0)
            {
                [bezierPath moveToPoint:currentPoint];
            }
            else
            {
                [bezierPath addLineToPoint:currentPoint];
            }
        }
        
        [bezierPath stroke];
    }
    
    
    
    NSLog(@"draw rect method");
    
}


-(void)drawingStart:(CGPoint) location{
    
    
    
    Line *drawingStartLine = [[Line alloc] initWithColor:self.color andLocation:location];
    
    NSLog(@" number of lines %li" ,(long)[self.lines count]);
    
    NSLog(@"$$$$$$$$$ %@", drawingStartLine.lineLocation);
    
    [self.lines addObject:drawingStartLine];
    
    
    // [self.path  moveToPoint: location];
    
    
    NSLog(@"draw rect move to point");
    
    
    
}
-(void)drawingcontinue:(CGPoint)location{
    
    // [self.path addLineToPoint:location];
    
    //    Line *lastLine = [[Line alloc] initWithColor:self.color andLocation:location];
    //
    //    lastLine = self.lines.lastObject;
    
    NSLog(@"This is the last object in the array %@" , self.lines.lastObject);
    
    Line *lastLine = self.lines.lastObject;
    
    [lastLine.lineLocation addObject:[NSValue valueWithCGPoint:location]]; //why do I need this line?
    
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
