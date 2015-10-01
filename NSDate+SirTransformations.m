//
//  NSDate+SirTransformations.m
//  Sir
//
//  Created by Leonid Popescu on 10/6/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "NSDate+SirTransformations.h"

@implementation NSDate (SirTransformations)

+ (instancetype)dateWithMillisecondsSince1970:(long long)milliseconds {

    return [NSDate dateWithTimeIntervalSince1970:milliseconds/1000];
}

- (long long)millisecondsSince1970 {

    return self.timeIntervalSince1970 * 1000;
}

@end
