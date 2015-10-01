//
//  JSONValueTransformer+Sir.m
//  Sir
//
//  Created by Leonid Popescu on 9/23/14.
//  Copyright (c) 2014 Leonid Popescu. All rights reserved.
//

#import "JSONValueTransformer+Sir.h"
#import <objc/runtime.h>

@implementation JSONValueTransformer (Sir)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        // When swizzling a class method, use the following:
        // Class class = object_getClass((id)self);
        
        SEL originalSelector = @selector(NSDateFromNSNumber:);
        SEL swizzledSelector = @selector(NSDateFromLongNSNumber:);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);

        
        BOOL didAddMethod =
        class_addMethod(class,
                        originalSelector,
                        method_getImplementation(swizzledMethod),
                        method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class,
                                swizzledSelector,
                                method_getImplementation(originalMethod),
                                method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }

    });
}

- (NSDate*)NSDateFromLongNSNumber:(NSNumber*)number
{
    return [self NSDateFromLongNSNumber:@(number.doubleValue/1000)];
}


@end
