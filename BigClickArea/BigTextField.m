//
//  BigTextField.m
//  BigClickArea
//
//  Created by 李献红 on 17/6/2.
//  Copyright © 2017年 李献红. All rights reserved.
//

#import "BigTextField.h"

@implementation BigTextField

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event {
    CGRect bounds = self.bounds;
    //若原热区高度小于44，则放大热区，否则保持原大小不变
//    CGFloat widthDelta = MAX(44.0 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44.0 - bounds.size.height, 0);
    bounds = CGRectInset(bounds, 0, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}

@end
