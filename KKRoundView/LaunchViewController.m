//
//  LaunchViewController.m
//  KKRoundView
//
//  Created by 王胜华 on 8/24/16.
//  Copyright © 2016 王胜华. All rights reserved.
//

#import "LaunchViewController.h"

#define KKScreenWidth  [UIScreen mainScreen].bounds.size.width
#define KKScreenHeight [UIScreen mainScreen].bounds.size.height

@interface LaunchViewController ()
{
    bool displayingPrimary;
}
@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIView *roundView = [[UIView alloc] initWithFrame:CGRectMake(KKScreenWidth / 2 - 20 / 2, 200, 20, 20)];
    roundView.layer.cornerRadius = 10;
    roundView.layer.masksToBounds = YES;
    [self.view addSubview:roundView];
    
    UIView *roundFrontView = [[UIView alloc] initWithFrame:roundView.bounds];
    roundFrontView.backgroundColor = [UIColor yellowColor];
    [roundView addSubview:roundFrontView];
    
    UIView *roundBackView = [[UIView alloc] initWithFrame:roundView.bounds];
    roundBackView.backgroundColor = [UIColor redColor];
    [roundView addSubview:roundBackView];
    [roundView sendSubviewToBack:roundBackView];
    
    [UIView transitionFromView:(displayingPrimary ? roundFrontView : roundBackView)
                        toView:(displayingPrimary ? roundBackView : roundFrontView)
                      duration: 2.0
                       options: UIViewAnimationOptionTransitionFlipFromTop+UIViewAnimationOptionCurveEaseInOut
                    completion:^(BOOL finished) {
                        if (finished) {
                            displayingPrimary = !displayingPrimary;
                        }
                    }
     ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
