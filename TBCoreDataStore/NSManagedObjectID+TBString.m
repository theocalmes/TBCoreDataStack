//
//  NSManagedObjectID+TBString.m
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "NSManagedObjectID+TBString.h"

@implementation NSManagedObjectID (TBString)

- (NSString *)stringRepresentation
{
    return [[self URIRepresentation] absoluteString];
}

@end
