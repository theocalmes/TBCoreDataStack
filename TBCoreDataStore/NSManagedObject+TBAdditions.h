//
//  NSManagedObject+TBAdditions.h
//  TBCoreDataStore
//
//  Created by Theodore Calmes on 1/17/14.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

@import CoreData;

@interface NSManagedObject (TBAdditions)

+ (instancetype)createManagedObjectInContext:(NSManagedObjectContext *)context;

@end
