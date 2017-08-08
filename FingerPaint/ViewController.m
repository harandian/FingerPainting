//
//  ViewController.m
//  FingerPaint
//
//  Created by Hirad on 2017-08-04.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import "ViewController.h"
#import "Draw.h"
#import "Line.h"

@interface ViewController ()

//@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGesture;

@property (weak, nonatomic) IBOutlet Draw *draw;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panLocation:)];
    
    [self.draw addGestureRecognizer: panGesture];
    
}

- (IBAction)panLocation:(UIPanGestureRecognizer*)sender {
    
    CGPoint location = [sender locationInView:self.draw];
    
    NSLog(@"%f x, %f y", location.x, location.y);
    
    
    switch (sender.state) {
        case UIGestureRecognizerStateBegan:
            [self.draw drawingStart:location];
            NSLog(@"Starts");
            break;
        case UIGestureRecognizerStateChanged:
            [self.draw drawingcontinue:location];
            break;
        case UIGestureRecognizerStateEnded:
            [self.draw drawingStart:location];
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RedColorPicker:(id)sender {
    
    
    [self.draw SetColortoRed];
}


- (IBAction)BlueColorPicker:(id)sender {
    
    [self.draw setColorBlue];

}


- (IBAction)YellowColorPikcer:(id)sender {
    
    [self.draw setColorYellow];
}

//- (void)fingerLocation: (id)sender {
//
//    CGPoint location = [self.panGesture locationOfTouch:0 inView:self.fingerDraw];
//    
//    
//    NSLog(@"%f x %f y", location.x, location.y);
//    
//}
- (IBAction)setLineWidth:(id)sender {
    
    UISlider *slider = (UISlider *)sender;
    
    self.draw.width = slider.value;
    
 //   [self.draw setLineWidth:lineWidth];
    
}

@end
