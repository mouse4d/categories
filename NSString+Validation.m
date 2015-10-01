//
//  NSString+Validation.m
//  Sir
//
//  Created by Leonid Popescu on 9/16/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)

- (BOOL)isNotEmpty {
    
    return self.length != 0;
}

@end
