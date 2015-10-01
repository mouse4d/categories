//
//  NSData+Base64.h
//  GWABA
//
//  Created by Maxim Guzun on 6/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSData (Base64)

/*!	@function	-base64EncodingWithLineLength:
 @discussion	This method returns a Base 64 encoded string representation of the data object.
 @param	inLineLength A value of zero means no line breaks.  This is crunched to a multiple of 4 (the next
 one greater than inLineLength).
 @result	The base 64 encoded data. */
- (NSString *) base64EncodingWithLineLength:(unsigned int) lineLength;

@end
