//
//  UIAlertView+Templates.h
//  Sir
//
//  Created by Leonid Popescu on 9/15/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Templates)

+ (void)showOKAlertWithTitle:(NSString*)title message:(NSString*)message;
+ (void)showErrorAlertWithMessage:(NSString*)message;

@end
