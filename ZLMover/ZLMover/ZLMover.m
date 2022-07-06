//
//  ZLMover.m
//  ZLMover
//
//  Created by ZhangLiang on 2022/7/6.
//  Copyright © 2022 jayZhang. All rights reserved.
//

#import "ZLMover.h"

@interface ZLMover ()
{
    CGPoint _point;
}

@end

@implementation ZLMover

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject] locationInView:self];
    _point = point;
    // 获取当前触摸的这个点在父视图上面的位置 x y
    CGPoint superPoint = [self convertPoint:point toView:self.superview];
    
    // 计算在父视图上面的位置(x y)减去 触摸的这个点在当前视图的位置(x y)
    // 计算出来的结果就是当前视图需要设置的位置(x y)
    CGRect rect = self.frame;
    rect.origin.x = superPoint.x - _point.x;
    rect.origin.y = superPoint.y - _point.y;
    self.frame = rect;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject] locationInView:self];
    NSLog(@"%f - %f",point.x,point.y);
    // 获取当前触摸的这个点在父视图上面的位置 x y
    CGPoint superPoint = [self convertPoint:point toView:self.superview];
    
    // 计算在父视图上面的位置(x y)减去 触摸的这个点在当前视图的位置(x y)
    // 计算出来的结果就是当前视图需要设置的位置(x y)
    CGRect rect = self.frame;
    rect.origin.x = superPoint.x - _point.x;
    rect.origin.y = superPoint.y - _point.y;
    self.frame = rect;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject] locationInView:self];
    NSLog(@"%f - %f",point.x,point.y);
    // 获取当前触摸的这个点在父视图上面的位置 x y
    CGPoint superPoint = [self convertPoint:point toView:self.superview];
    
    // 计算在父视图上面的位置(x y)减去 触摸的这个点在当前视图的位置(x y)
    // 计算出来的结果就是当前视图需要设置的位置(x y)
    CGRect rect = self.frame;
    rect.origin.x = superPoint.x - _point.x;
    rect.origin.y = superPoint.y - _point.y;
    self.frame = rect;
}

@end
