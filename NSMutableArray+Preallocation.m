//------------------------------------------------------------------------------
//  NSMutableArray+Preallocation.m
//  Sir
//
//  Created by vmacari on 4/1/14.
//  Copyright (c) 2014 Otosense. All rights reserved.
//------------------------------------------------------------------------------

#import "NSMutableArray+Preallocation.h"

//------------------------------------------------------------------------------
@implementation NSMutableArray (Preallocation)

//------------------------------------------------------------------------------
+(instancetype) arrayWithDoubles : (double) value ofSize :(int) size {
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    for(int i = 0; i < size; i ++) {
        [l_array addObject:[NSNumber numberWithDouble:value]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayWithFloats : (float) value ofSize :(int) size {
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    for(int i = 0; i < size; i ++) {
        [l_array addObject:[NSNumber numberWithFloat:value]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayWithIntegers : (int) value ofSize :(int) size {
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    for(int i = 0; i < size; i ++) {
        [l_array addObject:[NSNumber numberWithInteger:value]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayWithShorts : (short) value ofSize :(int) size {
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    for(int i = 0; i < size; i ++) {
        [l_array addObject:[NSNumber numberWithShort:value]];
    }
    
    return l_array;
}



//------------------------------------------------------------------------------
+(instancetype) arrayWithMutableArray :(int)  size {

    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    for(int i = 0; i < size; i ++) {
        [l_array addObject:[NSMutableArray array]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayOfDoublesFromFloats :(NSMutableArray *) floatsArray {

    int size = (int)[floatsArray count];
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    
    for(int i = 0; i < size; i ++) {
       float value = [(NSNumber *)floatsArray[i] floatValue];
       [l_array addObject:[NSNumber numberWithDouble: (double)value]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayOfDoublesFromDoubles :(NSMutableArray *) doublesArray {
    int size = (int)[doublesArray count];
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    
    for(int i = 0; i < size; i ++) {
        double value = [(NSNumber *)doublesArray[i] doubleValue];
        [l_array addObject:[NSNumber numberWithDouble: value]];
    }
    
    return l_array;
   
}

//------------------------------------------------------------------------------
+(instancetype) arrayOfFloatsFromFloats :(NSMutableArray *) floatsArray{
    int size = (int)[floatsArray count];
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    
    for(int i = 0; i < size; i ++) {
        float value = [(NSNumber *)floatsArray[i] floatValue];
        [l_array addObject:[NSNumber numberWithFloat: value]];
    }
    
    return l_array;
}

//------------------------------------------------------------------------------
+(instancetype) arrayOfIntsFromInts :(NSMutableArray *) intsArray{
    int size = (int)[intsArray count];
    NSMutableArray * l_array = [[NSMutableArray alloc] initWithCapacity:size];
    
    for(int i = 0; i < size; i ++) {
        int value = (int)[(NSNumber *)intsArray[i] integerValue];
        [l_array addObject:[NSNumber numberWithInteger: value]];
    }
    
    return l_array;
}

@end
