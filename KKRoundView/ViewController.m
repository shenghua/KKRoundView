//
//  ViewController.m
//  KKRoundView
//
//  Created by 王胜华 on 8/24/16.
//  Copyright © 2016 王胜华. All rights reserved.
//

#import "ViewController.h"
#import "KKRoundView.h"

#define KKScreenWidth  [UIScreen mainScreen].bounds.size.width
#define KKScreenHeight [UIScreen mainScreen].bounds.size.height

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1]

@interface ViewController ()

@property (nonatomic, strong) KKRoundView *roundView1;
@property (nonatomic, strong) KKRoundView *roundView2;
@property (nonatomic, strong) KKRoundView *roundView3;
@property (nonatomic, strong) KKRoundView *roundView4;
//@property (nonatomic, strong) KKRoundView *roundView5;
@property (nonatomic, assign) bool isTop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.isTop = YES;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.roundView1 = [[KKRoundView alloc] initWithFrame:CGRectMake(KKScreenWidth / 2 - 5, 200, 15, 15)];
    self.roundView1.color = RGBCOLOR(253, 206, 21);
    [self.view addSubview:_roundView1];
    
    CGRect frame = _roundView1.frame;
    frame.origin.y = frame.origin.y - 100;
    
    self.roundView2 = [[KKRoundView alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y + 10, frame.size.width, frame.size.height)];
    self.roundView2.color = RGBCOLOR(254, 225, 124);
    self.roundView2.hidden = YES;
    [self.view addSubview:self.roundView2];
    
    self.roundView3 = [[KKRoundView alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y + 25, frame.size.width, frame.size.height)];
    self.roundView3.color = RGBCOLOR(254, 242, 199);
    self.roundView3.hidden = YES;
    [self.view addSubview:self.roundView3];
    
    self.roundView4 = [[KKRoundView alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y + 40, frame.size.width, frame.size.height)];
    self.roundView4.color = RGBCOLOR(255, 253, 246);
    self.roundView4.hidden = YES;
    [self.view addSubview:self.roundView4];
    
//    self.roundView5 = [[KKRoundView alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y + 25, frame.size.width, frame.size.height)];
//    self.roundView5.color = [UIColor yellowColor];
//    self.roundView5.hidden = YES;
//    [self.view addSubview:self.roundView5];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self animateWith:_roundView1 offset:-100 alpha:1];
}

- (void)animateWith:(KKRoundView *)view offset:(float)offset alpha:(float)alpha
{
    view.needRound = YES;
    view.displayingPrimary = YES;
    [view roundView];
    
    [UIView animateWithDuration:1.5 animations:^{
        CGRect frame = view.frame;
        frame.origin.y = frame.origin.y + offset;
        view.frame = frame;
        view.alpha = alpha;
    } completion:^(BOOL finished) {
        view.needRound = NO;
        
        if (!_isTop) {
            return;
        }
        
        _isTop = NO;
        
        _roundView2.hidden = NO;
        _roundView3.hidden = NO;
        _roundView4.hidden = NO;
//        _roundView5.hidden = NO;
        [self animateWith:_roundView1 offset:10 alpha:0];
        [self animateWith:_roundView2 offset:25 alpha:0];
        [self animateWith:_roundView3 offset:45 alpha:0];
        [self animateWith:_roundView4 offset:70 alpha:0];
//        [self animateWith:_roundView5 offset:40 alpha:0];
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
