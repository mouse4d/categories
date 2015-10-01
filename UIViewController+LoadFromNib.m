//
//  UIViewController+LoadFromNib.m
//  Sir
//
//  Created by Leonid Popescu on 9/3/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "UIViewController+LoadFromNib.h"

@implementation UIViewController (LoadFromNib)

- (instancetype)initWithDefaultNib {
    
    NSString *className = NSStringFromClass([self class]);
    
    if ([[NSBundle mainBundle] pathForResource:className ofType:@"nib"] != nil) {
        
        return [self initWithNibName:className bundle:nil];
    
    } else {
        
        DDLogDebug(@"Could not find nib with name %@", className);
        return [self init];
    }
    
}

@end
