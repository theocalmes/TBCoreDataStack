//
//  NSManagedObject+TBAdditions.m
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "NSManagedObject+TBAdditions.h"

@implementation NSManagedObject (TBAdditions)

+ (instancetype)createManagedObjectInContext:(NSManagedObjectContext *)context
{
    NSEntityDescription *entity = [NSEntityDescription entityForName:NSStringFromClass([self class]) inManagedObjectContext:context];
    return  [[[self class] alloc] initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end
