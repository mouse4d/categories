//
//  DDLogLog.m
//  Sir
//
//  Created by Leonid Popescu on 13/03/2015.
//  Copyright (c) 2015 Leonid Popescu. All rights reserved.
//

#import "DDLog+SirLoggers.h"
#import "DDTTYlogger.h"

@implementation DDLog(SirLoggers)

+ (void)addSirLoggers {

    [DDLog addLogger:[DDTTYLogger sharedInstance]];
}

+ (void)removeSirLoggers {

    [DDLog  removeLogger:[DDTTYLogger sharedInstance]];
}

@end
