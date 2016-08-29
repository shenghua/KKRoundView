//
//  KKRoundView.h
//  KKRoundView
//
//  Created by 王胜华 on 8/24/16.
//  Copyright © 2016 王胜华. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKRoundView : UIView

@property (nonatomic, assign) bool needRound;
@property (nonatomic, assign) bool displayingPrimary;
@property (nonatomic, strong) UIColor *color;

- (void)roundView;

@end
