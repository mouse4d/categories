//------------------------------------------------------------------------------
//  NSMutableArray+Preallocation.h
//  Sir
//
//  Created by vmacari on 4/1/14.
//  Copyright (c) 2014 Otosense. All rights reserved.
//------------------------------------------------------------------------------

#import <Foundation/Foundation.h>

//------------------------------------------------------------------------------
@interface NSMutableArray (Preallocation)

+(instancetype) arrayWithDoubles : (double) value ofSize :(int) size;
+(instancetype) arrayWithFloats : (float) value ofSize :(int) size;
+(instancetype) arrayWithIntegers : (int) value ofSize :(int) size;
+(instancetype) arrayWithShorts : (short) value ofSize :(int) size;

//------------------------------------------------------------------------------
+(instancetype) arrayWithMutableArray :(int)  size;

//------------------------------------------------------------------------------
// Array copy routines creates new instances of every element (does not keep
// reference only)
+(instancetype) arrayOfDoublesFromFloats :(NSMutableArray *) floatsArray;
+(instancetype) arrayOfDoublesFromDoubles :(NSMutableArray *) doublesArray;
+(instancetype) arrayOfFloatsFromFloats :(NSMutableArray *) floatsArray;
+(instancetype) arrayOfIntsFromInts :(NSMutableArray *) intsArray;
//------------------------------------------------------------------------------

@end
