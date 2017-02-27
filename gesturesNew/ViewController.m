//
//  ViewController.m
//  gesturesNew
//
//  Created by Suresh on 2/10/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(void)SwipeRecogniseLeft:(UISwipeGestureRecognizer *)gesture;
-(void)SwipeRecogniseRight:(UISwipeGestureRecognizer *)gesture;

@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    
    UISwipeGestureRecognizer *Rightswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SwipeRecogniseRight:)];
     Rightswipe.direction = UISwipeGestureRecognizerDirectionRight;
    UISwipeGestureRecognizer *Leftswipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SwipeRecogniseLeft:)];
    Leftswipe.direction = UISwipeGestureRecognizerDirectionLeft;
//    self.pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panGesture:)];

    [self.view3 addGestureRecognizer:Rightswipe];
    [self.view3 addGestureRecognizer:Leftswipe];
   // [self.view2 addGestureRecognizer:self.pan];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)SwipeRecogniseLeft:(UISwipeGestureRecognizer *)gesture{
    NSLog(@"swipe left");

    [UIView animateWithDuration:0.5 animations:^{
        self.view3.frame = CGRectOffset(self.view3.frame, -110.0, 0.0);
    }];
    
}
-(void)SwipeRecogniseRight:(UISwipeGestureRecognizer *)gesture{
    NSLog(@"swipe right");
    
    [UIView animateWithDuration:0.5 animations:^{
        self.view3.frame = CGRectOffset(self.view3.frame, 110.0, 0.0);
    }];
    



}


- (IBAction)panGesture:(UIPanGestureRecognizer *)sender {

        CGPoint translation = [sender  translationInView:self.view2];
        sender.view.center = CGPointMake(sender.view.center.x + translation.x, sender.view.center.y + translation.y);
        [sender setTranslation:CGPointZero inView:self.view2];
    
}
@end
