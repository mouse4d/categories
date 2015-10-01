//
//  NSDate+SirTransformations.h
//  Sir
//
//  Created by Leonid Popescu on 10/6/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (SirTransformations)

+ (instancetype)dateWithMillisecondsSince1970:(long long)milliseconds;
- (long long)millisecondsSince1970;

@end
