//
//  KKRoundView.m
//  KKRoundView
//
//  Created by 王胜华 on 8/24/16.
//  Copyright © 2016 王胜华. All rights reserved.
//

#import "KKRoundView.h"

@interface KKRoundView ()
{
    UIView *roundFrontView;
    UIView *roundBackView;
    UIView *roundView;
}

@end

@implementation KKRoundView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    self.displayingPrimary = YES;
    
    self.backgroundColor = [UIColor clearColor];
    roundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    roundView.backgroundColor = [UIColor clearColor];
    [self addSubview:roundView];
    
    roundFrontView = [[UIView alloc] init];
    [roundView addSubview:roundFrontView];
    
    roundBackView = [[UIView alloc] init];
    [roundView addSubview:roundBackView];
    [roundView sendSubviewToBack:roundBackView];
    
    roundFrontView.frame = roundView.frame;
    roundBackView.frame = roundView.frame;
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    roundBackView.backgroundColor = self.color;
    roundFrontView.backgroundColor = self.color;
    
    [self layoutView:self];
    [self layoutView:roundView];
    [self layoutView:roundFrontView];
    [self layoutView:roundBackView];
}

- (void)layoutView:(UIView *)view
{
    view.layer.cornerRadius = view.frame.size.height / 2;
    view.layer.masksToBounds = YES;
    view.layer.shadowColor = [UIColor clearColor].CGColor;
}

- (void)roundView
{
    if (!self.needRound)
        return;
    
//    [UIView transitionFromView:(_displayingPrimary ? roundFrontView : roundBackView)
//                        toView:(_displayingPrimary ? roundBackView : roundFrontView)
//                      duration: 0.5
//                       options: UIViewAnimationOptionTransitionFlipFromTop+UIViewAnimationOptionCurveEaseInOut
//                    completion:^(BOOL finished) {
//                        if (finished) {
//                            _displayingPrimary = !_displayingPrimary;
//                            [self roundView];
//                        }
//                    }
//     ];
    
    
    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
        self.layer.transform = CATransform3DMakeRotation(M_PI,1.0,0.0,0.0);
        self.backgroundColor = self.color;
    } completion:^(BOOL finished){
        self.layer.transform = CATransform3DConcat(self.layer.transform, CATransform3DMakeRotation(M_PI,1.0,0.0,0.0));
        if (finished) {
            _displayingPrimary = !_displayingPrimary;
            [self roundView];
        }
    }];
}

@end
