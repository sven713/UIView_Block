//
//  UIView+Block.h
//  UIView_block
//
//  Created by 宋锡铭 on 2018/5/16.
//  Copyright © 2018年 宋锡铭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Block)
- (void)tapActionWithBlock:(void(^)(void))block;

@end
