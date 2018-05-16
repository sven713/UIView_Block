//
//  UIView+Block.m
//  UIView_block
//
//  Created by 宋锡铭 on 2018/5/16.
//  Copyright © 2018年 宋锡铭. All rights reserved.
//

#import "UIView+Block.h"
#import <objc/runtime.h>

@implementation UIView (Block)


static NSString *SVTapGesKey = @"SVTapGesKey";
static NSString *SVBlockKey = @"SVBlockKey";

- (void)tapActionWithBlock:(void(^)(void))block {
    UITapGestureRecognizer *tap = objc_getAssociatedObject(self, &SVTapGesKey);
    if (!tap) {
        tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTapAction)];
        [self addGestureRecognizer:tap];
        objc_setAssociatedObject(self, &SVTapGesKey, tap, OBJC_ASSOCIATION_RETAIN);
    }
    
    objc_setAssociatedObject(self, &SVBlockKey, block, OBJC_ASSOCIATION_COPY);
}

- (void)handleTapAction {
    
    void(^viewBlock)(void) = objc_getAssociatedObject(self, &SVBlockKey);
    
    viewBlock();
}

@end
