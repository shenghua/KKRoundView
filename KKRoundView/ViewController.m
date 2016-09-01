//
//  ViewController.m
//  KKRoundView
//
//  Created by 王胜华 on 8/24/16.
//  Copyright © 2016 王胜华. All rights reserved.
//

#import "ViewController.h"
#import "KKRoundAnimateView.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 31, 149)];
    imageView.center = self.view.center;
    
    [self.view addSubview:imageView];
    
    imageView.animationDuration = 4;
    imageView.animationRepeatCount = 5;
    imageView.animationImages = @[[UIImage imageNamed:@"1_00001"],
                                  [UIImage imageNamed:@"1_00002"],
                                  [UIImage imageNamed:@"1_00003"],
                                  [UIImage imageNamed:@"1_00004"],
                                  [UIImage imageNamed:@"1_00005"],
                                  [UIImage imageNamed:@"1_00006"],
                                  [UIImage imageNamed:@"1_00007"],
                                  [UIImage imageNamed:@"1_00008"],
                                  [UIImage imageNamed:@"1_00009"],
                                  [UIImage imageNamed:@"1_00010"],
                                  [UIImage imageNamed:@"1_00011"],
                                  [UIImage imageNamed:@"1_00012"],
                                  [UIImage imageNamed:@"1_00013"],
                                  [UIImage imageNamed:@"1_00014"],
                                  [UIImage imageNamed:@"1_00015"],
                                  [UIImage imageNamed:@"1_00016"],
                                  [UIImage imageNamed:@"1_00017"],
                                  [UIImage imageNamed:@"1_00018"],
                                  [UIImage imageNamed:@"1_00019"],
                                  [UIImage imageNamed:@"1_00020"],
                                  [UIImage imageNamed:@"1_00021"],
                                  [UIImage imageNamed:@"1_00022"],
                                  [UIImage imageNamed:@"1_00023"],
                                  [UIImage imageNamed:@"1_00024"],
                                  [UIImage imageNamed:@"1_00025"],
                                  [UIImage imageNamed:@"1_00026"],
                                  [UIImage imageNamed:@"1_00027"],
                                  [UIImage imageNamed:@"1_00028"],
                                  [UIImage imageNamed:@"1_00029"],
                                  [UIImage imageNamed:@"1_00030"],
                                  [UIImage imageNamed:@"1_00031"],
                                  [UIImage imageNamed:@"1_00032"],
                                  [UIImage imageNamed:@"1_00033"],
                                  [UIImage imageNamed:@"1_00034"],
                                  [UIImage imageNamed:@"1_00035"],
                                  [UIImage imageNamed:@"1_00036"],
                                  [UIImage imageNamed:@"1_00037"],
                                  [UIImage imageNamed:@"1_00038"],
                                  [UIImage imageNamed:@"1_00039"],
                                  [UIImage imageNamed:@"1_00040"],
                                  [UIImage imageNamed:@"1_00041"],
                                  [UIImage imageNamed:@"1_00042"],
                                  [UIImage imageNamed:@"1_00043"],
                                  [UIImage imageNamed:@"1_00044"],
                                  [UIImage imageNamed:@"1_00045"],
                                  [UIImage imageNamed:@"1_00046"],
                                  [UIImage imageNamed:@"1_00047"],
                                  [UIImage imageNamed:@"1_00048"],
                                  [UIImage imageNamed:@"1_00049"],
                                  [UIImage imageNamed:@"1_00050"],
                                  [UIImage imageNamed:@"1_00051"],
                                  [UIImage imageNamed:@"1_00052"],
                                  [UIImage imageNamed:@"1_00053"],
                                  [UIImage imageNamed:@"1_00054"],
                                  [UIImage imageNamed:@"1_00055"]];
    
    [imageView startAnimating];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
