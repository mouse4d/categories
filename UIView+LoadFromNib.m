//
//  UIView+LoadFromNib.m
//  Sir
//
//  Created by Leonid Popescu on 9/10/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "UIView+LoadFromNib.h"

@implementation UIView (LoadFromNib)

+ (instancetype)loadFromDefaultNib {
    
    NSString *className = NSStringFromClass([self class]);
    
    if ([[NSBundle mainBundle] pathForResource:className ofType:@"nib"] != nil) {
        
        return [[[NSBundle mainBundle] loadNibNamed:className owner:nil options:nil] firstObject];
        
    } else {
        
        DDLogDebug(@"Could not find nib with name %@", className);
        return [[self alloc] init];
    }
}

+ (UINib*)defaultNib {
    
    return [UINib nibWithNibName:NSStringFromClass(self) bundle:nil];
}

@end
