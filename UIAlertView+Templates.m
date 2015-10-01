//
//  UIAlertView+Templates.m
//  Sir
//
//  Created by Leonid Popescu on 9/15/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "UIAlertView+Templates.h"

@implementation UIAlertView (Templates)

+ (void)showOKAlertWithTitle:(NSString *)title message:(NSString *)message {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:NSLocalizedString(@"ok", @"OK")
                                          otherButtonTitles:nil];
    [alert show];
}

+ (void)showErrorAlertWithMessage:(NSString *)message {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"error", @"Error")
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:NSLocalizedString(@"ok", @"OK")
                                          otherButtonTitles:nil];
    [alert show];
}

@end
