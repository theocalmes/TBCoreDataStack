//
//  NSFileManager+TBDirectories.m
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "NSFileManager+TBDirectories.h"

@implementation NSFileManager (TBDirectories)

+ (NSURL *)appLibraryDirectory
{
    return [[[self defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
