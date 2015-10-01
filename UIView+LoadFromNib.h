//
//  UIView+LoadFromNib.h
//  Sir
//
//  Created by Leonid Popescu on 9/10/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LoadFromNib)

+ (instancetype)loadFromDefaultNib;
+ (UINib*)defaultNib;

@end
