//
//  NSManagedObjectContext+TBAdditions.m
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "NSManagedObjectContext+TBAdditions.h"

@implementation NSManagedObjectContext (TBAdditions)

- (NSArray *)objectsWithObjectIDs:(NSArray *)objectIDs
{
    if (!objectIDs || objectIDs.count == 0) {
        return nil;
    }
    __block NSMutableArray *objects = [[NSMutableArray alloc] initWithCapacity:objectIDs.count];

    [self performBlockAndWait:^{
        for (NSManagedObjectID *objectID in objectIDs) {
            if ([objectID isKindOfClass:[NSNull class]]) {
                continue;
            }

            [objects addObject:[self objectWithID:objectID]];
        }
    }];

    return objects.copy;
}

@end
