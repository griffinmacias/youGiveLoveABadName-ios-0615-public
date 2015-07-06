//
//  FISViewController.m
//  youGiveLoveABadName
//
//  Created by Joe Burgess on 7/9/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *bonJovi;
- (IBAction)expand:(id)sender;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topPicConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomPicConstraint;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)expand:(id)sender {
    
    [UIView animateKeyframesWithDuration:5.0
                                   delay:0
                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear
                              animations:^{
                                  
                                  [UIView addKeyframeWithRelativeStartTime:0.0
                                                          relativeDuration:1/2.0
                                                                animations:^{
                                                                    
                                                                    self.topPicConstraint.constant = 0;
                                                                    self.bottomPicConstraint.constant = 0;
                                                                    [self.view layoutIfNeeded];

                                                                }];
                                  
                                  [UIView addKeyframeWithRelativeStartTime:1/2.0
                                                          relativeDuration:1/2.0
                                                                animations:^{
                                                                    
                                                                    self.view.backgroundColor = [UIColor redColor];
                                                                    self.topPicConstraint.constant = 197;
                                                                    self.bottomPicConstraint.constant = 177;
                                                                    [self.view layoutIfNeeded];

                                                                }];
                                  
                                  
                              } completion:^(BOOL finished) {
        
        
        
        NSLog(@"FINISHED");
        
        
    }];
    
    
}
@end
