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
    
    KKRoundAnimateView *roundAnimateView = [[KKRoundAnimateView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:roundAnimateView];
    
    [roundAnimateView startAnimationWithcompletionHandler:^{
        NSLog(@"Finished!");
    }];
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
